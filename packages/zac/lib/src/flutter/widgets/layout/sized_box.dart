import 'package:zac/src/zac/interactions.dart';
import 'package:zac/src/zac/zac_values.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zac/src/zac/misc.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'sized_box.freezed.dart';
part 'sized_box.g.dart';

@defaultConverterFreezed
class FlutterSizedBox with _$FlutterSizedBox implements FlutterWidget {
  const FlutterSizedBox._();

  static const String unionValue = 'f:1:SizedBox';
  static const String unionValueExpand = 'f:1:SizedBox.expand';
  static const String unionValueFromSize = 'f:1:SizedBox.fromSize';
  static const String unionValueShrink = 'f:1:SizedBox.shrink';
  static const String unionValueSquare = 'f:1:SizedBox.square';

  factory FlutterSizedBox.fromJson(Map<String, dynamic> json) =>
      _$FlutterSizedBoxFromJson(json);

  @FreezedUnionValue(FlutterSizedBox.unionValue)
  factory FlutterSizedBox({
    FlutterKey? key,
    ZacDouble? width,
    ZacDouble? height,
    FlutterWidget? child,
  }) = _FlutterWidgetSizedBox;

  @FreezedUnionValue(FlutterSizedBox.unionValueExpand)
  factory FlutterSizedBox.expand({
    FlutterKey? key,
    FlutterWidget? child,
  }) = _FlutterWidgetSizedBoxExpand;

  @FreezedUnionValue(FlutterSizedBox.unionValueFromSize)
  factory FlutterSizedBox.fromSize({
    FlutterKey? key,
    FlutterWidget? child,
    FlutterSize? size,
  }) = _FlutterWidgetSizedBoxFromSize;

  @FreezedUnionValue(FlutterSizedBox.unionValueShrink)
  factory FlutterSizedBox.shrink({
    FlutterKey? key,
    FlutterWidget? child,
  }) = _FlutterWidgetSizedBoxShrink;

  @FreezedUnionValue(FlutterSizedBox.unionValueSquare)
  factory FlutterSizedBox.square({
    FlutterKey? key,
    FlutterWidget? child,
    ZacDouble? dimension,
  }) = _FlutterWidgetSizedBoxSquare;

  @override
  SizedBox buildWidget(
      BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime) {
    final zacRef = ZacRef.widget(ref);
    return map(
      (value) => SizedBox(
        key: value.key?.buildKey(context, ref, lifetime),
        width: value.width?.getValue(zacRef),
        height: value.height?.getValue(zacRef),
        child: value.child?.buildWidget(context, ref, lifetime),
      ),
      expand: (value) => SizedBox.expand(
        key: value.key?.buildKey(context, ref, lifetime),
        child: value.child?.buildWidget(context, ref, lifetime),
      ),
      fromSize: (value) => SizedBox.fromSize(
        key: value.key?.buildKey(context, ref, lifetime),
        child: value.child?.buildWidget(context, ref, lifetime),
        size: value.size?.build(context, ref, lifetime),
      ),
      shrink: (value) => SizedBox.shrink(
        key: value.key?.buildKey(context, ref, lifetime),
        child: value.child?.buildWidget(context, ref, lifetime),
      ),
      square: (value) => SizedBox.square(
        key: value.key?.buildKey(context, ref, lifetime),
        child: value.child?.buildWidget(context, ref, lifetime),
        dimension: value.dimension?.getValue(zacRef),
      ),
    );
  }
}
