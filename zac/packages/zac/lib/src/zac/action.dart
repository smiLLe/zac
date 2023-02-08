import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/src/base.dart';

import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/shared_state.dart';
import 'package:zac/src/zac/transformers.dart';
import 'package:zac/src/zac/zac_builder.dart';

part 'action.freezed.dart';
part 'action.g.dart';

@freezed
class ZacAction with _$ZacAction {
  factory ZacAction(
    void Function(BuildContext context, ZacContext zacContext) execute,
  ) = _ZacAction;
}

extension HandleActions on List<ZacAction> {
  void _execute(
    BuildContext context,
    ZacContext zacContext,
    Object? arg1,
    Object? arg2,
    Object? arg3,
  ) async {
    if (!context.mounted) return;
    final args = [arg1, arg2, arg3];
    for (var i = 0; i < args.length; i++) {
      final arg = args[i];
      if (arg == Never) continue;
      context.widgetRef
          .read(SharedState.provider('actionArg.${i + 1}'))
          .update((_) => arg);
    }
    for (var action in this) {
      if (!context.mounted) {
        break;
      }
      action.execute(
        context,
        zacContext.copyWith.call(buildIn: BuildIn.action),
      );
    }

    for (var i = 0; i < args.length; i++) {
      context.widgetRef.invalidate(SharedState.provider('actionArg.${i + 1}'));
    }
  }

  void Function() callack(BuildContext context, ZacContext zacContext) {
    return () => _execute(context, zacContext, Never, Never, Never);
  }

  void Function(Object? p) callbackOneParam(
      BuildContext context, ZacContext zacContext) {
    return (Object? p) => _execute(context, zacContext, p, Never, Never);
  }

  void Function(Object? p1, Object? p2) callbackTwoParams(
      BuildContext context, ZacContext zacContext) {
    return (Object? p1, Object? p2) =>
        _execute(context, zacContext, p1, p2, Never);
  }

  void Function(Object? p1, Object? p2, Object? p3) callbackThreeParams(
      BuildContext context, ZacContext zacContext) {
    return (Object? p1, Object? p2, Object? p3) =>
        _execute(context, zacContext, p1, p2, p3);
  }
}

@freezedZacBuilder
class ZacExecuteActionsBuilder
    with _$ZacExecuteActionsBuilder
    implements ZacBuilder<Widget> {
  const ZacExecuteActionsBuilder._();

  static const String unionValue = 'z:1:ExecuteActionsOnce';
  static const String unionValueListen = 'z:1:ExecuteActionsOnChange';

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
    required SharedStateFamily family,
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
  final SharedStateFamily family;
  final Widget Function(BuildContext context, ZacContext zacContext)? child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final zacContext = useZacContext();
    final buildActions = actions(context, zacContext);
    ref.listen<SharedState>(SharedState.provider(family),
        buildActions.callbackTwoParams(context, zacContext));

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
        actions(context, zacContext).callack(context, zacContext)();
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
class ZacControlFlowAction
    with _$ZacControlFlowAction
    implements ZacBuilder<ZacAction> {
  ZacControlFlowAction._();

  static const String unionValue = 'z:1:Action:If';

  factory ZacControlFlowAction.fromJson(Map<String, dynamic> json) =>
      _$ZacControlFlowActionFromJson(json);

  @FreezedUnionValue(ZacControlFlowAction.unionValue)
  factory ZacControlFlowAction.ifCond({
    required ZacBuilder<Object?> conditionValue,
    required ZacBuilder<List<ZacTransform>> condition,
    required ZacBuilder<List<ZacAction>> ifTrue,
    ZacBuilder<List<ZacAction>>? ifFalse,
  }) = _ZacControlFlowActionIf;

  late final ZacAction _action =
      ZacAction((BuildContext context, ZacContext zacContext) {
    map(
      ifCond: (obj) {
        final val = obj.conditionValue.build(context, zacContext);
        final trueOrFalse = condition
            .build(context, zacContext)
            .fold<bool>(true, (previousValue, zacTransformers) {
          final cond = zacTransformers.transform(
              ZacTransformValue(val), context, zacContext);

          if (cond is! bool) {
            throw StateError(
                'It is not possible to execute "${ZacControlFlowAction.unionValue}". The $ZacTransform condition did not result in a bool but "$cond"');
          }

          return cond && previousValue;
        });

        (trueOrFalse ? obj.ifTrue : obj.ifFalse)
            ?.build(context, zacContext)
            .callack(context, zacContext)();
      },
    );
  });

  @override
  ZacAction build(BuildContext context, ZacContext zacContext) => _action;
}

@freezedZacBuilder
class CaptureActionArgs with _$CaptureActionArgs implements ZacBuilder<Widget> {
  CaptureActionArgs._();

  factory CaptureActionArgs.fromJson(Map<String, dynamic> json) =>
      _$CaptureActionArgsFromJson(json);

  @FreezedUnionValue('z:1:CaptureActionArgs')
  factory CaptureActionArgs({required ZacBuilder<Widget> child}) =
      _CaptureActionArgs;

  @override
  Widget build(BuildContext context, ZacContext zacContext) {
    return CaptureActionArgsWidget(
      buildChild: child.build,
    );
  }
}

class CaptureActionArgsWidget extends StatelessWidget {
  const CaptureActionArgsWidget({required this.buildChild, super.key});

  final Widget Function(BuildContext context, ZacContext zacContext) buildChild;

  @override
  Widget build(BuildContext context) {
    return ZacSharedStateProviderWidget(
      states: {
        for (var i = 1; i <= 3; i++) 'actionArg.$i': Never,
      },
      buildChild: buildChild,
    );
  }
}
