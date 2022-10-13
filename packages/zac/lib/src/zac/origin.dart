import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/zac/statemachine.dart';

part 'origin.freezed.dart';

@freezed
class ZacOrigin with _$ZacOrigin {
  factory ZacOrigin.widgetTree({
    required BuildContext context,
    required WidgetRef ref,
    required ZacOriginLifetimeWidgetTree lifetime,
  }) = ZacOriginWidgetTree;

  factory ZacOrigin.statemachineAction({
    /// @Todo: Chance Object to StateMachine
    required AutoDisposeStateNotifierProviderRef<StateMachine, CurrentState>
        ref,
    required ZacOriginLifetimeStateMachineAction lifetime,
  }) = ZacOriginStateMachineAction;
}

@freezed
class ZacOriginLifetime with _$ZacOriginLifetime {
  factory ZacOriginLifetime.widgetTree({
    required bool Function() isMounted,
    required void Function(void Function() cb) onUnmount,
  }) = ZacOriginLifetimeWidgetTree;

  factory ZacOriginLifetime.statemachineAction({
    required bool Function() isActive,
    required void Function(void Function() cb) onBecomeInactive,
  }) = ZacOriginLifetimeStateMachineAction;
}

ZacOriginWidgetTree useZacOrigin(WidgetRef ref) {
  final context = useContext();
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

  return ZacOriginWidgetTree(
    context: context,
    ref: ref,
    lifetime: ZacOriginLifetimeWidgetTree(
      isMounted: isMounted,
      onUnmount: addCb,
    ),
  );
}
