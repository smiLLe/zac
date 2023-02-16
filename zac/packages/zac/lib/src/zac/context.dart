import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'context.freezed.dart';

@freezed
class ZacContext with _$ZacContext {
  factory ZacContext({
    required void Function(void Function() cb) onUnmount,
    required ZacContextConsume consume,
  }) = _ZacContext;
}

@freezed
class ZacContextConsume with _$ZacContextConsume {
  factory ZacContextConsume({required WidgetRef ref}) = _BuildingWidgets;

  factory ZacContextConsume.manual({required ProviderContainer container}) =
      _Manual;
}

ZacContext useZacContext(WidgetRef ref) {
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

  return ZacContext(
    onUnmount: addCb,
    consume: ZacContextConsume(ref: ref),
  );
}
