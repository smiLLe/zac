import 'package:zac/src/zac/any_value.dart';
import 'package:zac/src/zac/misc.dart';
import 'package:zac/src/zac/shared_value.dart';
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

abstract class ZacBaseAction {
  factory ZacBaseAction.fromJson(Map<String, dynamic> data) {
    return ConverterHelper.convertToType<ZacBaseAction>(data);
  }
}

abstract class ZacUiAction extends ZacBaseAction {
  factory ZacUiAction.fromJson(Map<String, dynamic> data) {
    return ConverterHelper.convertToType<ZacUiAction>(data);
  }

  void execute(BuildContext context, WidgetRef ref, ZacActionHelper helper,
      ContextBag bag);
}

abstract class ZacStateMachineAction extends ZacBaseAction {
  factory ZacStateMachineAction.fromJson(Map<String, dynamic> data) {
    return ConverterHelper.convertToType<ZacStateMachineAction>(data);
  }

  void execute(ZacRef ref, ZacActionHelper helper, ContextBag bag);
}

abstract class ZacAction extends ZacBaseAction {
  factory ZacAction.fromJson(Map<String, dynamic> data) {
    return ConverterHelper.convertToType<ZacAction>(data);
  }

  void execute(ZacRef ref, ZacActionHelper helper, ContextBag bag);
}

ZacActionHelper useZacActionHelper() {
  final isMounted = useIsMounted();
  final unmountCallbacks = useRef(<void Function()>[]);
  final addCb = useMemoized(
    () => (void Function() cb) => unmountCallbacks.value.add(cb),
    [unmountCallbacks.value],
  );
  useEffect(
    () => () {
      for (var cb in unmountCallbacks.value.reversed) {
        cb();
      }
      unmountCallbacks.value.clear();
    },
    [unmountCallbacks.value],
  );
  return ZacActionHelper(
    isActive: isMounted,
    onBecomeInactive: addCb,
  );
}

@freezed
class ZacActionHelper with _$ZacActionHelper {
  factory ZacActionHelper({
    required bool Function() isActive,
    required void Function(void Function() cb) onBecomeInactive,
  }) = _ZacActionHelper;
}

@defaultConverterFreezed
class ZacUiActions with _$ZacUiActions {
  const ZacUiActions._();

  static const String unionValue = 'z:1:UiActions';

  static void validate(ZacUiActions uiActions) {
    for (var action in uiActions.actions) {
      if (action is! ZacUiAction && action is! ZacAction) {
        throw StateError(
            'An invalid action was found in $ZacUiActions of type ${action.runtimeType}');
      }
    }
  }

  factory ZacUiActions.fromJson(Object data) {
    /// allow a single action or the default implementation
    if (ConverterHelper.isConverter(data)) {
      if ((data as Map<String, dynamic>)[converterKey] as String !=
          ZacUiActions.unionValue) {
        final actions = ZacUiActions([ZacBaseAction.fromJson(data)]);
        assert(() {
          validate(actions);
          return true;
        }(), '');
        return actions;
      }
      final actions = _$ZacUiActionsFromJson(data);
      assert(() {
        validate(actions);
        return true;
      }(), '');
      return actions;
    }

    /// allow a list of actions
    else if (data is List) {
      final actions = ZacUiActions(data
          .cast<Map<String, dynamic>>()
          .map(ZacBaseAction.fromJson)
          .toList());
      assert(() {
        validate(actions);
        return true;
      }(), '');
      return actions;
    }

    throw Exception(
        'It was not possible to convert to $ZacUiActions from data: $data ');
  }

  @FreezedUnionValue(ZacUiActions.unionValue)
  factory ZacUiActions(List<ZacBaseAction> actions) = _ZacUiActions;

  void Function() createCb({
    required BuildContext context,
    required WidgetRef ref,
    required ZacActionHelper helper,
  }) {
    return () => execute(context, ref, helper);
  }

  void Function(T data) createCbParam1<T extends Object?>({
    required BuildContext context,
    required WidgetRef ref,
    required ZacActionHelper helper,
  }) {
    return (T data) => execute(context, ref, helper,
        prefillBag: (bag) => bag..addKeyValue(kBagActionPayload, data));
  }

  void execute(
    BuildContext context,
    WidgetRef ref,
    ZacActionHelper helper, {
    void Function(ContextBag bag)? prefillBag,
  }) async {
    assert(() {
      validate(this);
      return true;
    }(), '');

    if (!helper.isActive()) return;
    final bag = ContextBag();
    prefillBag?.call(bag);

    for (var action in actions) {
      if (!helper.isActive()) {
        bag.clear();
        return;
      }
      if (action is ZacUiAction) {
        action.execute(context, ref, helper, bag);
      } else if (action is ZacAction) {
        action.execute(ZacRef.widget(ref), helper, bag);
      }
    }
    bag.clear();
  }
}

@defaultConverterFreezed
class ZacStateMachineActions with _$ZacStateMachineActions {
  const ZacStateMachineActions._();

  static const String unionValue = 'z:1:StateMachineActions';

  factory ZacStateMachineActions.fromJson(Object data) {
    /// allow a single action or the default implementation
    if (ConverterHelper.isConverter(data)) {
      if ((data as Map<String, dynamic>)[converterKey] as String !=
          ZacStateMachineActions.unionValue) {
        return ZacStateMachineActions([ZacAction.fromJson(data)]);
      }
      return _$ZacStateMachineActionsFromJson(data);
    }

    /// allow a list of actions
    else if (data is List) {
      return ZacStateMachineActions(
          data.cast<Map<String, dynamic>>().map(ZacAction.fromJson).toList());
    }

    throw Exception(
        'It was not possible to convert to $ZacStateMachineActions from data: $data ');
  }

  @FreezedUnionValue(ZacStateMachineActions.unionValue)
  factory ZacStateMachineActions(List<ZacBaseAction> actions) =
      _ZacStateMachineActions;

  void execute(
    ZacRef ref,
    ZacActionHelper helper, {
    void Function(ContextBag bag)? prefillBag,
  }) async {
    if (!helper.isActive()) return;
    final bag = ContextBag();
    prefillBag?.call(bag);

    for (var action in actions) {
      if (!helper.isActive()) {
        bag.clear();
        return;
      }
      if (action is ZacStateMachineAction) {
        action.execute(ref, helper, bag);
      } else if (action is ZacAction) {
        action.execute(ref, helper, bag);
      }
    }
    bag.clear();
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
    required ZacUiActions actions,
    ZacWidget? child,
  }) = _ZacExecuteActionsBuilderOnce;

  @FreezedUnionValue(ZacExecuteActionsBuilder.unionValueListen)
  factory ZacExecuteActionsBuilder.listen({
    required ZacUiActions actions,
    required SharedValueFamily family,
    ZacWidget? child,
  }) = _ZacExecuteActionsBuilderListen;

  @override
  Widget buildWidget(
      BuildContext context, WidgetRef ref, ZacActionHelper helper) {
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

  final ZacUiActions actions;
  final SharedValueFamily family;
  final ZacWidget? child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final helper = useZacActionHelper();
    SharedValue.listenAndExecuteActions(context, ref, helper, family, actions);

    return null != child
        ? ZacWidgetBuilder(zacWidget: child!)
        : const SizedBox.shrink();
  }
}

class ZacExecuteActionsOnce extends HookConsumerWidget {
  const ZacExecuteActionsOnce(
      {required this.actions, required this.child, Key? key})
      : super(key: key);

  final ZacUiActions actions;
  final ZacWidget? child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final helper = useZacActionHelper();
    final doneState = useState(false);
    useEffect(() {
      var mounted = true;
      doneState.value = false;
      SchedulerBinding.instance.addPostFrameCallback((_) {
        if (!mounted) return;
        actions.execute(context, ref, helper);
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
