import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/converter.dart';
import 'package:zac/src/zac/misc.dart';

part 'action.freezed.dart';
part 'action.g.dart';

abstract class ZacStateMachineAction {
  factory ZacStateMachineAction.fromJson(Map<String, dynamic> data) {
    return ConverterHelper.convertToType<ZacStateMachineAction>(data);
  }

  void execute(ZacRef ref, ContextBag bag);
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
class ZacStateMachineActions with _$ZacStateMachineActions {
  const ZacStateMachineActions._();

  static const String unionValue = 'z:1:StateMachineActions';

  factory ZacStateMachineActions.fromJson(Object data) {
    /// allow a single action or the default implementation
    if (ConverterHelper.isConverter(data)) {
      if ((data as Map<String, dynamic>)[converterKey] as String !=
          ZacStateMachineActions.unionValue) {
        return ZacStateMachineActions([ZacStateMachineAction.fromJson(data)]);
      }
      return _$ZacStateMachineActionsFromJson(data);
    }

    /// allow a list of interactions
    else if (data is List) {
      return ZacStateMachineActions(data
          .cast<Map<String, dynamic>>()
          .map(ZacStateMachineAction.fromJson)
          .toList());
    }

    throw Exception(
        'It was not possible to convert to $ZacStateMachineActions from data: $data ');
  }

  @FreezedUnionValue(ZacStateMachineActions.unionValue)
  factory ZacStateMachineActions(List<ZacStateMachineAction> actions) =
      _ZacStateMachineActions;

  void execute(
    ZacRef ref, {
    void Function(ContextBag bag)? prefillBag,
  }) async {
    // if (!lifetime.isMounted()) return;
    final bag = ContextBag();
    prefillBag?.call(bag);

    for (var action in actions) {
      // if (!lifetime.isMounted()) {
      //   return;
      // }
      action.execute(ref, bag);
    }
    bag.clear();
  }
}
