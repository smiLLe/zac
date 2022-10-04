import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/src/zac/zac_values.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/zac/interactions.dart';

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
  ZacUpdateWidget buildWidget(
      BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime) {
    return ZacUpdateWidget(
      builder: (context, ref, lifetime) =>
          child.buildWidget(context, ref, lifetime),
      key: key?.buildKey(context, ref, lifetime),
    );
  }
}

class ZacUpdateWidget extends HookConsumerWidget {
  const ZacUpdateWidget({required this.builder, Key? key}) : super(key: key);

  final Widget Function(
          BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime)
      builder;

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    final lifetime = useZacInteractionLifetime();
    return builder(context, ref, lifetime);
  }
}
