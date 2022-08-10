import 'package:zac/src/zac/any_value.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'update_context.freezed.dart';
part 'update_context.g.dart';

@nonConverterFreezed
class ZacBuildContext with _$ZacBuildContext {
  factory ZacBuildContext({
    required BuildContext context,
    required WidgetRef ref,
    required bool Function() isMounted,
    required void Function(void Function() cb) onUnmount,
  }) = _ZacBuildContext;
}

@defaultConverterFreezed
class ZacUpdateContextBuilder
    with _$ZacUpdateContextBuilder
    implements ZacWidget {
  const ZacUpdateContextBuilder._();

  static const String unionValue = 'z:1:UpdateContext';

  factory ZacUpdateContextBuilder.fromJson(Map<String, dynamic> json) =>
      _$ZacUpdateContextBuilderFromJson(json);

  @FreezedUnionValue(ZacUpdateContextBuilder.unionValue)
  factory ZacUpdateContextBuilder({
    FlutterKey? key,
    required ZacWidget child,
  }) = _ZacUpdateContextBuilder;

  @override
  ZacUpdateContext buildWidget(ZacBuildContext context) {
    return ZacUpdateContext(
      builder: (context) => child.buildWidget(context),
      key: key?.buildKey(context),
    );
  }
}

class ZacUpdateContext extends HookConsumerWidget {
  const ZacUpdateContext({required this.builder, Key? key}) : super(key: key);

  final Widget Function(ZacBuildContext context) builder;

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    return builder(useZacBuildContext(ref));
  }
}

ZacBuildContext useZacBuildContext(WidgetRef ref) {
  final isMounted = useIsMounted();
  final context = useContext();
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
  return ZacBuildContext(
    ref: ref,
    context: context,
    isMounted: isMounted,
    onUnmount: addCb,
  );
}
