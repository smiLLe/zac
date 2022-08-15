import 'package:zac/src/zac/any_value.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:zac/src/zac/update_context.dart';
import 'package:zac/src/zac/widget_builder.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/converter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'action.freezed.dart';
part 'action.g.dart';

abstract class ZacAction {
  factory ZacAction.fromJson(Map<String, dynamic> data) {
    return ConverterHelper.convertToType<ZacAction>(data);
  }

  void execute(ZacBuildContext context, ActionPayload payload);
}

@defaultConverterFreezed
class ActionPayload with _$ActionPayload {
  const factory ActionPayload.none() = _ActionPayloadNone;
  factory ActionPayload.withData(Object? data) = _ActionPayloadWithData;
}

void Function()? actionsCallback(ZacActions? actions, ZacBuildContext context) {
  if (null == actions) return null;
  return () => actions.execute(context, const ActionPayload.none());
}

void Function(Object? data)? actionsCallback1(
    ZacActions? actions, ZacBuildContext context) {
  if (null == actions) return null;
  return (Object? data) =>
      actions.execute(context, ActionPayload.withData(data));
}

@defaultConverterFreezed
class ZacActions with _$ZacActions {
  const ZacActions._();

  static const String unionValue = 'z:1:Actions';

  factory ZacActions.fromJson(Object data) {
    /// allow a single action or the default implementation
    if (ConverterHelper.isConverter(data)) {
      if ((data as Map<String, dynamic>)[converterKey] as String !=
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
  factory ZacActions(List<ZacAction> actions) = _ZacActions;

  void execute(ZacBuildContext context, ActionPayload payload) async {
    if (!context.isMounted()) return;
    for (var action in actions) {
      if (!context.isMounted()) return;
      action.execute(context, payload);
    }
  }
}

@defaultConverterFreezed
class ZacExecuteActionsBuilder
    with _$ZacExecuteActionsBuilder
    implements ZacWidget {
  const ZacExecuteActionsBuilder._();

  static const String unionValue = 'z:1:ExecuteActions.once';
  static const String unionValueListen = 'z:1:ExecuteActions.listen';

  factory ZacExecuteActionsBuilder.fromJson(Map<String, dynamic> json) =>
      _$ZacExecuteActionsBuilderFromJson(json);

  @FreezedUnionValue(ZacExecuteActionsBuilder.unionValue)
  factory ZacExecuteActionsBuilder.once({
    required ZacActions actions,
    ZacWidget? child,
  }) = _ZacExecuteActionsBuilderOnce;

  @FreezedUnionValue(ZacExecuteActionsBuilder.unionValueListen)
  factory ZacExecuteActionsBuilder.listen({
    required ZacActions actions,
    required SharedValueFamily family,
    ZacWidget? child,
  }) = _ZacExecuteActionsBuilderListen;

  @override
  Widget buildWidget(ZacBuildContext context) {
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
}

class ZacExecuteActionsListen extends HookConsumerWidget {
  const ZacExecuteActionsListen(
      {required this.actions, required this.family, this.child, Key? key})
      : super(key: key);

  final ZacActions actions;
  final SharedValueFamily family;
  final ZacWidget? child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final zacContext = useZacBuildContext(ref);
    SharedValue.listenAndExecuteActions(zacContext, family, actions);

    return null != child
        ? ZacWidgetBuilder(zacWidget: child!)
        : const SizedBox.shrink();
  }
}

class ZacExecuteActionsOnce extends HookConsumerWidget {
  const ZacExecuteActionsOnce(
      {required this.actions, required this.child, Key? key})
      : super(key: key);

  final ZacActions actions;
  final ZacWidget? child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final zacContext = useZacBuildContext(ref);
    final doneState = useState(false);
    useEffect(() {
      var mounted = true;
      doneState.value = false;
      SchedulerBinding.instance.addPostFrameCallback((_) {
        if (!mounted) return;
        actions.execute(zacContext, const ActionPayload.none());
        if (!mounted) return;
        doneState.value = true;
      });
      return () => mounted = false;
    }, [actions]);

    if (null == child || !doneState.value) return const SizedBox.shrink();

    return ZacWidgetBuilder(
      zacWidget: child!,
    );
  }
}
