import 'package:zac/src/zac/any_value/any_value.dart';
import 'package:zac/src/zac/context/widget_context.dart';
import 'package:zac/src/zac/widget_builder/widget_builder.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/converter.dart';
import 'package:zac/src/flutter/mixed/keys/keys.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'action.freezed.dart';
part 'action.g.dart';

Type _typeOf<T>() => T;

abstract class AnyAction {
  factory AnyAction.fromJson(Map<String, dynamic> data) {
    return ConverterHelper.convertToType<AnyAction>(data);
  }

  void execute(ZacBuildContext context, ActionPayload payload);
}

@defaultConverterFreezed
class ActionPayload with _$ActionPayload {
  const factory ActionPayload.none() = _ActionPayloadNone;
  factory ActionPayload.withData(Object? data) = _ActionPayloadWithData;
}

void Function()? actionsCallback(AnyActions? actions, ZacBuildContext context) {
  if (null == actions) return null;
  return () => actions.execute(context, const ActionPayload.none());
}

void Function(Object? data)? actionsCallback1(
    AnyActions? actions, ZacBuildContext context) {
  if (null == actions) return null;
  return (Object? data) =>
      actions.execute(context, ActionPayload.withData(data));
}

@defaultConverterFreezed
class AnyActions with _$AnyActions {
  const AnyActions._();

  static const String unionValue = 'z:1:Actions';

  factory AnyActions.fromJson(Object data) {
    /// allow a single action or the default implementation
    if (ConverterHelper.isConverter(data)) {
      if ((data as Map<String, dynamic>)[converterKey] as String !=
          AnyActions.unionValue) {
        return AnyActions([AnyAction.fromJson(data)]);
      }
      return _$AnyActionsFromJson(data);
    }

    /// allow a list of actions
    else if (data is List) {
      return AnyActions(
          data.cast<Map<String, dynamic>>().map(AnyAction.fromJson).toList());
    }

    throw Exception(
        'It was not possible to convert to "${_typeOf<AnyActions>()}" with data: $data ');
  }

  @FreezedUnionValue(AnyActions.unionValue)
  factory AnyActions(List<AnyAction> actions) = _AnyActions;

  void execute(ZacBuildContext context, ActionPayload payload) async {
    if (!context.isMounted()) return;
    for (var action in actions) {
      if (!context.isMounted()) return;
      action.execute(context, payload);
    }
  }
}

@defaultConverterFreezed
class ExecuteActionsBuilder with _$ExecuteActionsBuilder implements ZacWidget {
  const ExecuteActionsBuilder._();

  static const String unionValue = 'z:1:ExecuteActions';

  factory ExecuteActionsBuilder.fromJson(Map<String, dynamic> json) =>
      _$ExecuteActionsBuilderFromJson(json);

  @FreezedUnionValue(ExecuteActionsBuilder.unionValue)
  factory ExecuteActionsBuilder({
    FlutterKey? key,
    required AnyActions actions,
    ZacWidget? child,
  }) = _ExecuteActionsWidgetBuilder;

  @override
  ExecuteActions buildWidget(ZacBuildContext context) {
    return ExecuteActions(
      key: key?.build(context),
      actions: actions,
      child: child,
    );
  }
}

class ExecuteActions extends HookConsumerWidget {
  const ExecuteActions({required this.actions, required this.child, Key? key})
      : super(key: key);

  final AnyActions actions;
  final ZacWidget? child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final awContext = useAnyWidgetContext(ref);
    final doneState = useState(false);
    useEffect(() {
      var mounted = true;
      doneState.value = true;
      SchedulerBinding.instance.addPostFrameCallback((_) {
        if (!mounted) return;
        actions.execute(awContext, const ActionPayload.none());
        if (!mounted) return;
        doneState.value = false;
      });
      return () => mounted = false;
    }, [actions]);

    if (null == child || doneState.value) return const SizedBox.shrink();

    return AnyWidgetBuilder(
      anyWidget: child!,
    );
  }
}
