import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/zac/origin.dart';

part 'update_widget.freezed.dart';
part 'update_widget.g.dart';

@defaultConverterFreezed
class ZacUpdateOriginBuilder
    with _$ZacUpdateOriginBuilder
    implements FlutterWidget {
  const ZacUpdateOriginBuilder._();

  static const String unionValue = 'z:1:UpdateOrigin';

  factory ZacUpdateOriginBuilder.fromJson(Map<String, dynamic> json) =>
      _$ZacUpdateOriginBuilderFromJson(json);

  @FreezedUnionValue(ZacUpdateOriginBuilder.unionValue)
  factory ZacUpdateOriginBuilder({
    FlutterKey? key,
    required FlutterWidget child,
  }) = _ZacUpdateOriginBuilder;

  @override
  ZacUpdateOrigin buildWidget(ZacOriginWidgetTree origin) {
    return ZacUpdateOrigin(
      builder: (origin) => child.buildWidget(origin),
      key: key?.buildKey(origin),
    );
  }
}

class ZacUpdateOrigin extends HookConsumerWidget {
  const ZacUpdateOrigin({required this.builder, Key? key}) : super(key: key);

  final Widget Function(ZacOriginWidgetTree origin) builder;

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    final origin = useZacOrigin(ref);
    return builder(origin);
  }
}
