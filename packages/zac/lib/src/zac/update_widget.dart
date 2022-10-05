import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/zac/origin.dart';

part 'update_widget.freezed.dart';
part 'update_widget.g.dart';

@defaultConverterFreezed
class ZacUpdateWidgetBuilder
    with _$ZacUpdateWidgetBuilder
    implements FlutterWidget {
  const ZacUpdateWidgetBuilder._();

  static const String unionValue = 'z:1:UpdateWidget';

  factory ZacUpdateWidgetBuilder.fromJson(Map<String, dynamic> json) =>
      _$ZacUpdateWidgetBuilderFromJson(json);

  @FreezedUnionValue(ZacUpdateWidgetBuilder.unionValue)
  factory ZacUpdateWidgetBuilder({
    FlutterKey? key,
    required FlutterWidget child,
  }) = _ZacUpdateWidgetBuilder;

  @override
  ZacUpdateWidget buildWidget(ZacOriginWidgetTree origin) {
    return ZacUpdateWidget(
      builder: (origin) => child.buildWidget(origin),
      key: key?.buildKey(origin),
    );
  }
}

class ZacUpdateWidget extends HookConsumerWidget {
  const ZacUpdateWidget({required this.builder, Key? key}) : super(key: key);

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
