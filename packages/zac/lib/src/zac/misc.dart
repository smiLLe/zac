import 'package:collection/collection.dart';

const kBagPayload = 'payload';
const kBagActionPayload = 'action.payload';
const kBagSharedValueReplaceWith = 'SharedValue.replaceWith';
const kBagSharedValueCurrent = 'SharedValue.current';
const kBagTransformerMapEntryValue = 'MapEntry.value';
const kBagTransformerMapEntryKey = 'MapEntry.key';
const kBagStateMachineSendEvent = 'StateMachine.sendEvent';
const kBagStateMachineCurrentContext = 'StateMachine.currentContext';
const kBagStateMachineUpdateContext = 'StateMachine.updateContext';
const kBagStateMachineSendPayload = 'StateMachine.sendPayload';

class ContextBag extends DelegatingMap<String, dynamic> {
  ContextBag() : super(<String, dynamic>{});

  late final List<void Function()> _onClear = [];

  /// @Todo: remove
  void addKeyValue(String key, Object? data) {
    this[key] = data;
  }

  T saveGet<T>({required String key, required T Function()? notFound}) {
    if (!containsKey(key)) {
      if (null == notFound) {
        throw StateError(
            'Trying to get a $ContextBag value for key "$key" which is not found in the bag.');
      }
      return notFound();
    }

    if (this[key] is! T) {
      throw StateError(
          'Expected $ContextBag.$key to be of type $T but got ${this[key]}');
    }

    return this[key] as T;
  }

  void setActionPayload(Object? data) {
    addKeyValue(kBagActionPayload, data);
    addKeyValue(kBagPayload, data);
  }

  void setStateMachinePayload(Object? data) {
    addKeyValue(kBagStateMachineSendPayload, data);
    addKeyValue(kBagPayload, data);
  }

  void onClear(void Function() cb) {
    _onClear.add(cb);
  }

  @override
  void clear() {
    for (var cb in _onClear) {
      cb();
    }
    _onClear.clear();
    super.clear();
  }
}
