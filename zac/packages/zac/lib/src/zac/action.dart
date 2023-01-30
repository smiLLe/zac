import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/src/base.dart';

import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/registry.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:zac/src/zac/transformers.dart';
import 'package:zac/src/zac/zac_builder.dart';

part 'action.freezed.dart';
part 'action.g.dart';

@freezed
class ZacAction with _$ZacAction {
  factory ZacAction(
    void Function(ZacActionPayload payload, BuildContext context,
            ZacContext zacContext)
        execute,
  ) = _ZacAction;
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
class ZacActionPayloadTransformer
    with _$ZacActionPayloadTransformer
    implements ZacBuilder<ZacTransform> {
  ZacActionPayloadTransformer._();

  factory ZacActionPayloadTransformer.fromJson(Map<String, dynamic> json) =>
      _$ZacActionPayloadTransformerFromJson(json);

  @FreezedUnionValue('z:1:Transformer:ActionPayload.toList')
  factory ZacActionPayloadTransformer.toList() =
      _ZacActionPayloadTransformerToList;

  @FreezedUnionValue('z:1:Transformer:ActionPayload.toObject')
  factory ZacActionPayloadTransformer.toObject() =
      _ZacActionPayloadTransformerToObject;

  late final ZacTransform _transformer = ZacTransform(
    (transformValue, context, zacContext, payload) {
      final value = transformValue.value;
      assert(value is ZacActionPayload);
      return map(
        toList: (obj) => (value as ZacActionPayload).paramsAsList,
        toObject: (obj) => (value as ZacActionPayload).params,
      );
    },
  );

  @override
  ZacTransform build(BuildContext context, ZacContext zacContext) =>
      _transformer;
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
    required ZacListBuilder<ZacAction, List<ZacAction>> actions,
    ZacBuilder<Widget>? child,
  }) = _ZacExecuteActionsBuilderOnce;

  @FreezedUnionValue(ZacExecuteActionsBuilder.unionValueListen)
  factory ZacExecuteActionsBuilder.listen({
    required ZacListBuilder<ZacAction, List<ZacAction>> actions,
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
class ZacBuiltInActions
    with _$ZacBuiltInActions
    implements ZacBuilder<ZacAction> {
  ZacBuiltInActions._();

  factory ZacBuiltInActions.fromJson(Map<String, dynamic> json) =>
      _$ZacBuiltInActionsFromJson(json);

  /// This will convert the payload to a ZacBuilder if given a Map
  @FreezedUnionValue('z:1:Action.withPayload')
  factory ZacBuiltInActions.withPayload({
    required Object payload,
    required ZacListBuilder<ZacAction, List<ZacAction>> actions,
    ZacListBuilder<ZacTransform, List<ZacTransform>>? transformer,
  }) = _OverridePayload;

  late final ZacAction _action = ZacAction(
      (ZacActionPayload payload, BuildContext context, ZacContext zacContext) {
    map(withPayload: (obj) {
      var subPayload = ZacRegistry.ifBuilderLikeMap<Object>(
        obj.payload,
        cb: (map, converterName) => ZacRegistry().when<Object>(
          name: converterName,
          noType: (builder) => builder.call(map),
          withType: (builder) => builder.call<Object>(map),
        ),
        orElse: () => obj.payload,
      );

      subPayload = transformer?.build(context, zacContext).transform(
              ZacTransformValue(subPayload), context, zacContext, payload) ??
          subPayload;

      actions
          .build(context, zacContext)
          .execute(ZacActionPayload.param(subPayload), context, zacContext);
    });
  });

  @override
  ZacAction build(BuildContext context, ZacContext zacContext) => _action;
}

@freezedZacBuilder
class ZacControlFlowAction
    with _$ZacControlFlowAction
    implements ZacBuilder<ZacAction> {
  ZacControlFlowAction._();

  static const String unionValue = 'z:1:ControlFlowAction.if';

  factory ZacControlFlowAction.fromJson(Map<String, dynamic> json) =>
      _$ZacControlFlowActionFromJson(json);

  @FreezedUnionValue(ZacControlFlowAction.unionValue)
  factory ZacControlFlowAction.ifCond({
    required ZacListBuilder<ZacTransform, List<ZacTransform>> condition,
    required ZacListBuilder<ZacAction, List<ZacAction>> ifTrue,
    ZacListBuilder<ZacAction, List<ZacAction>>? ifFalse,
  }) = _ZacControlFlowActionIf;

  late final ZacAction _action = ZacAction(
      (ZacActionPayload payload, BuildContext context, ZacContext zacContext) {
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
        final trueOrFalse = condition
            .build(context, zacContext)
            .fold<bool>(true, (previousValue, zacTransformers) {
          final cond = zacTransformers.transform(
              ZacTransformValue(val), context, zacContext, payload);

          if (cond is! bool) {
            throw StateError(
                'It is not possible to execute "${ZacControlFlowAction.unionValue}". The $ZacTransform condition did not result in a bool but "$cond"');
          }

          return cond && previousValue;
        });

        (trueOrFalse ? obj.ifTrue : obj.ifFalse)
            ?.build(context, zacContext)
            .execute(payload, context, zacContext);
      },
    );
  });

  @override
  ZacAction build(BuildContext context, ZacContext zacContext) => _action;
}
