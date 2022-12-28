import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/builder.dart';

import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:zac/src/zac/transformers.dart';
import 'package:zac/src/zac/widget.dart';
import 'package:zac/src/zac/zac_build.dart';
import 'package:zac/src/zac/zac_value.dart';

part 'action.freezed.dart';
part 'action.g.dart';

abstract class ZacAction {
  factory ZacAction.fromJson(Map<String, dynamic> data) {
    return ConverterHelper.convertToType<ZacAction>(data);
  }

  void execute(ZacActionPayload payload, ZacContext zacContext);
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
class ZacActions with _$ZacActions {
  const ZacActions._();

  static const String unionValue = 'z:1:Actions';

  factory ZacActions.fromJson(Object data) {
    /// allow a single action or the default implementation
    if (ConverterHelper.isConverter(data)) {
      if ((data as Map<String, dynamic>)[builderKey] as String !=
          ZacActions.unionValue) {
        return ZacActions([ZacAction.fromJson(data)]);
      }
      return _$ZacActionsFromJson(data);
    }

    /// allow a list of actions
    else if (data is List) {
      return ZacActions(
          data.cast<Map<String, dynamic>>().map(ZacAction.fromJson).toList());
    }

    throw Exception(
        'It was not possible to convert to $ZacActions from data: $data ');
  }

  @FreezedUnionValue(ZacActions.unionValue)
  const factory ZacActions(List<ZacAction> actions) = _ZacActions;

  void execute(ZacActionPayload payload, ZacContext zacContext) async {
    if (!zacContext.isMounted()) return;
    for (var action in actions) {
      if (!zacContext.isMounted()) {
        return;
      }
      action.execute(payload, zacContext);
    }
  }
}

extension Interactions on ZacActions {
  void Function() createCb(ZacContext zacContext) {
    return () => execute(const ZacActionPayload(), zacContext);
  }

  void Function(T data) createCbParam1<T extends Object?>(
      ZacContext zacContext) {
    return (T data) => execute(ZacActionPayload.param(data), zacContext);
  }
}

@freezedZacBuilder
class ZacExecuteActionsBuilder
    with _$ZacExecuteActionsBuilder
    implements ZacBuild<Widget> {
  const ZacExecuteActionsBuilder._();

  static const String unionValue = 'z:1:ExecuteActions.once';
  static const String unionValueListen = 'z:1:ExecuteActions.listen';

  factory ZacExecuteActionsBuilder.fromJson(Map<String, dynamic> json) =>
      _$ZacExecuteActionsBuilderFromJson(json);

  @FreezedUnionValue(ZacExecuteActionsBuilder.unionValue)
  factory ZacExecuteActionsBuilder.once({
    required ZacActions actions,
    ZacValue<Widget>? child,
  }) = _ZacExecuteActionsBuilderOnce;

  @FreezedUnionValue(ZacExecuteActionsBuilder.unionValueListen)
  factory ZacExecuteActionsBuilder.listen({
    required ZacActions actions,
    required SharedValueFamily family,
    ZacValue<Widget>? child,
  }) = _ZacExecuteActionsBuilderListen;

  Widget _buildWidget(ZacContext zacContext) {
    return map(
      once: (obj) => ZacExecuteActionsOnce(
        actions: obj.actions,
        child: obj.child,
      ),
      listen: (obj) => ZacExecuteActionsListen(
        actions: obj.actions,
        family: obj.family,
        child: obj.child,
      ),
    );
  }

  @override
  Widget build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}

class ZacExecuteActionsListen extends HookConsumerWidget {
  const ZacExecuteActionsListen(
      {required this.actions, required this.family, this.child, Key? key})
      : super(key: key);

  final ZacActions actions;
  final SharedValueFamily family;
  final ZacValue<Widget>? child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final zacContext = useZacContext(ref);
    SharedValue.listenAndExecuteActions(zacContext, family, actions);

    return child?.getValue(zacContext) ?? const SizedBox.shrink();
  }
}

class ZacExecuteActionsOnce extends HookConsumerWidget {
  const ZacExecuteActionsOnce(
      {required this.actions, required this.child, Key? key})
      : super(key: key);

  final ZacActions actions;
  final ZacValue<Widget>? child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final zacContext = useZacContext(ref);
    final doneState = useState(false);
    useEffect(() {
      var mounted = true;
      doneState.value = false;
      SchedulerBinding.instance.addPostFrameCallback((_) {
        if (!mounted) return;
        actions.execute(const ZacActionPayload(), zacContext);
        if (!mounted) return;
        doneState.value = true;
      });
      return () => mounted = false;
    }, [actions]);

    if (null == child || !doneState.value) return const SizedBox.shrink();
    return child?.getValue(zacContext) ?? const SizedBox.shrink();
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
    required List<ZacTransformers> condition,
    required ZacActions ifTrue,
    ZacActions? ifFalse,
  }) = _ZacControlFlowActionIf;

  @override
  void execute(ZacActionPayload payload, ZacContext zacContext) {
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
        final trueOfFalse =
            condition.fold<bool>(true, (previousValue, element) {
          final cond =
              element.transform(ZacTransformValue(val), zacContext, payload);

          if (cond is! bool) {
            throw StateError(
                'It is not possible to execute "${ZacControlFlowAction.unionValue}". The $ZacTransformers condition did not result in a bool but "$cond"');
          }

          return cond && previousValue;
        });

        (trueOfFalse ? obj.ifTrue : obj.ifFalse)?.execute(payload, zacContext);
      },
    );
  }
}
