import 'package:zac/src/zac/any_value/any_value.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/mixed/keys/keys.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'any_widget_context.freezed.dart';
part 'any_widget_context.g.dart';

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
class UpdateContextBuilderBuilder
    with _$UpdateContextBuilderBuilder
    implements ZacWidget {
  const UpdateContextBuilderBuilder._();

  static const String unionValue = 'z:1:UpdateContext';

  factory UpdateContextBuilderBuilder.fromJson(Map<String, dynamic> json) =>
      _$UpdateContextBuilderBuilderFromJson(json);

  @FreezedUnionValue(UpdateContextBuilderBuilder.unionValue)
  factory UpdateContextBuilderBuilder({
    FlutterKey? key,
    required ZacWidget child,
  }) = _UpdateContextBuilderBuilder;

  @override
  UpdateContextBuilder buildWidget(ZacBuildContext context) {
    return UpdateContextBuilder(
      builder: (context) => child.buildWidget(context),
      key: key?.build(context),
    );
  }
}

class UpdateContextBuilder extends HookConsumerWidget {
  const UpdateContextBuilder({required this.builder, Key? key})
      : super(key: key);

  final Widget Function(ZacBuildContext context) builder;

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    return builder(useAnyWidgetContext(ref));
  }
}

ZacBuildContext useAnyWidgetContext(WidgetRef ref) {
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
