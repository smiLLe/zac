import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/zac/registry.dart';

import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:zac/src/zac/transformers.dart';
import 'package:zac/src/zac/zac_builder.dart';

part 'action.freezed.dart';
part 'action.g.dart';

abstract class ZacAction {
  factory ZacAction.fromJson(Map<String, dynamic> json) {
    return ZacRegistry.ifBuilderLikeMap<ZacAction>(
      json,
      cb: (map, converterName) =>
          ZacRegistry().getRegisteredAction(converterName).call(map),
      orElse: () => throw StateError('Could not create $ZacAction from $json'),
    );
  }

  void execute(
      ZacActionPayload payload, BuildContext context, ZacContext zacContext);
}

@freezed
class ZacActionPayload with _$ZacActionPayload {
  const ZacActionPayload._();

  const factory ZacActionPayload() = _ZacActionPayloadNone;
  factory ZacActionPayload.param(Object? value) = _ZacActionPayloadParam;
  factory ZacActionPayload.param2(Object? first, Object? second) =
      _ZacActionPayloadParam2;

  Object? get params => map(
        (_) => null,
        param: (obj) => obj.value,
        param2: (obj) => [obj.first, obj.second],
      );
  List<Object?> get paramsAsList => map(
        (_) => [],
        param: (obj) => [obj.value],
        param2: (obj) => [obj.first, obj.second],
      );
}

@freezedZacBuilder
class ZacActions with _$ZacActions implements ZacBuilder<List<ZacAction>> {
  const ZacActions._();

  static const String unionValue = 'z:1:Actions';

  factory ZacActions.fromJson(Map<String, dynamic> json) =>
      _$ZacActionsFromJson(json);

  @FreezedUnionValue(ZacActions.unionValue)
  const factory ZacActions(List<ZacAction> actions) = _ZacActions;

  @override
  List<ZacAction> build(BuildContext context, ZacContext zacContext) {
    return actions;
  }
}

extension HandleActions on List<ZacAction> {
  void execute(ZacActionPayload payload, BuildContext context,
      ZacContext zacContext) async {
    if (!context.isMounted) return;
    for (var action in this) {
      if (!context.isMounted) {
        break;
      }
      action.execute(
        payload,
        context,
        zacContext.copyWith.call(buildIn: BuildIn.action),
      );
    }
  }

  void Function() createCb(BuildContext context, ZacContext zacContext) {
    return () => execute(const ZacActionPayload(), context, zacContext);
  }

  void Function(T data) createCbParam1<T extends Object?>(
      BuildContext context, ZacContext zacContext) {
    return (T data) =>
        execute(ZacActionPayload.param(data), context, zacContext);
  }
}

@freezedZacBuilder
class ZacExecuteActionsBuilder
    with _$ZacExecuteActionsBuilder
    implements ZacBuilder<Widget> {
  const ZacExecuteActionsBuilder._();

  static const String unionValue = 'z:1:ExecuteActions.once';
  static const String unionValueListen = 'z:1:ExecuteActions.listen';

  factory ZacExecuteActionsBuilder.fromJson(Map<String, dynamic> json) =>
      _$ZacExecuteActionsBuilderFromJson(json);

  @FreezedUnionValue(ZacExecuteActionsBuilder.unionValue)
  factory ZacExecuteActionsBuilder.once({
    required ZacBuilder<List<ZacAction>> actions,
    ZacBuilder<Widget>? child,
  }) = _ZacExecuteActionsBuilderOnce;

  @FreezedUnionValue(ZacExecuteActionsBuilder.unionValueListen)
  factory ZacExecuteActionsBuilder.listen({
    required ZacBuilder<List<ZacAction>> actions,
    required SharedValueFamily family,
    ZacBuilder<Widget>? child,
  }) = _ZacExecuteActionsBuilderListen;

  @override
  Widget build(BuildContext context, ZacContext zacContext) {
    return map(
      once: (obj) => ZacExecuteActionsOnce(
        actions: obj.actions.build,
        child: obj.child?.build,
      ),
      listen: (obj) => ZacExecuteActionsListen(
        actions: obj.actions.build,
        family: obj.family,
        child: obj.child?.build,
      ),
    );
  }
}

class ZacExecuteActionsListen extends HookConsumerWidget {
  const ZacExecuteActionsListen(
      {required this.actions, required this.family, this.child, Key? key})
      : super(key: key);

  final List<ZacAction> Function(BuildContext context, ZacContext zacContext)
      actions;
  final SharedValueFamily family;
  final Widget Function(BuildContext context, ZacContext zacContext)? child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final zacContext = useZacContext();
    ref.listen<SharedValueType>(SharedValue.provider(family), (previous, next) {
      actions(context, zacContext).execute(
          ZacActionPayload.param2(next, previous), context, zacContext);
    });

    return child?.call(context, zacContext) ?? const SizedBox.shrink();
  }
}

class ZacExecuteActionsOnce extends HookConsumerWidget {
  const ZacExecuteActionsOnce(
      {required this.actions, required this.child, Key? key})
      : super(key: key);

  final List<ZacAction> Function(BuildContext context, ZacContext zacContext)
      actions;
  final Widget Function(BuildContext context, ZacContext zacContext)? child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final zacContext = useZacContext();
    final doneState = useState(false);
    useEffect(() {
      var mounted = true;
      doneState.value = false;
      SchedulerBinding.instance.addPostFrameCallback((_) {
        if (!mounted) return;
        actions(context, zacContext)
            .execute(const ZacActionPayload(), context, zacContext);
        if (!mounted) return;
        doneState.value = true;
      });
      return () => mounted = false;
    }, [actions]);

    if (null == child || !doneState.value) return const SizedBox.shrink();
    return child?.call(context, zacContext) ?? const SizedBox.shrink();
  }
}

@freezedZacBuilder
class ZacControlFlowAction with _$ZacControlFlowAction implements ZacAction {
  const ZacControlFlowAction._();

  static const String unionValue = 'z:1:ControlFlowAction.if';

  factory ZacControlFlowAction.fromJson(Map<String, dynamic> json) =>
      _$ZacControlFlowActionFromJson(json);

  @FreezedUnionValue(ZacControlFlowAction.unionValue)
  factory ZacControlFlowAction.ifCond({
    required ZacBuilder<List<ZacTransformer>> condition,
    required ZacBuilder<List<ZacAction>> ifTrue,
    ZacBuilder<List<ZacAction>>? ifFalse,
  }) = _ZacControlFlowActionIf;

  @override
  void execute(
      ZacActionPayload payload, BuildContext context, ZacContext zacContext) {
    map(
      ifCond: (obj) {
        final val = payload.map(
          (value) {
            throw StateError(
                'It is not possible to execute "${ZacControlFlowAction.unionValue}". The $ZacActionPayload was empty');
          },
          param: (obj) => obj.params,
          param2: (obj) => obj.params,
        );
        final trueOfFalse = condition
            .build(context, zacContext)
            .fold<bool>(true, (previousValue, zacTransformers) {
          final cond = zacTransformers.transform(
              ZacTransformValue(val), context, zacContext, payload);

          if (cond is! bool) {
            throw StateError(
                'It is not possible to execute "${ZacControlFlowAction.unionValue}". The $ZacTransformers condition did not result in a bool but "$cond"');
          }

          return cond && previousValue;
        });

        (trueOfFalse ? obj.ifTrue : obj.ifFalse)
            ?.build(context, zacContext)
            .execute(payload, context, zacContext);
      },
    );
  }
}
