import 'package:zac/src/zac/any_value.dart';

import 'package:zac/src/zac/update_context.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'sized_box.freezed.dart';
part 'sized_box.g.dart';

@defaultConverterFreezed
class FlutterSizedBox with _$FlutterSizedBox implements ZacWidget {
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
    ZacWidget? child,
  }) = _FlutterWidgetSizedBox;

  @FreezedUnionValue(FlutterSizedBox.unionValueExpand)
  factory FlutterSizedBox.expand({
    FlutterKey? key,
    ZacWidget? child,
  }) = _FlutterWidgetSizedBoxExpand;

  @FreezedUnionValue(FlutterSizedBox.unionValueFromSize)
  factory FlutterSizedBox.fromSize({
    FlutterKey? key,
    ZacWidget? child,
    FlutterSize? size,
  }) = _FlutterWidgetSizedBoxFromSize;

  @FreezedUnionValue(FlutterSizedBox.unionValueShrink)
  factory FlutterSizedBox.shrink({
    FlutterKey? key,
    ZacWidget? child,
  }) = _FlutterWidgetSizedBoxShrink;

  @FreezedUnionValue(FlutterSizedBox.unionValueSquare)
  factory FlutterSizedBox.square({
    FlutterKey? key,
    ZacWidget? child,
    ZacDouble? dimension,
  }) = _FlutterWidgetSizedBoxSquare;

  @override
  SizedBox buildWidget(ZacBuildContext context) {
    return map(
      (value) => SizedBox(
        key: value.key?.buildKey(context),
        width: value.width?.getValue(context),
        height: value.height?.getValue(context),
        child: value.child?.buildWidget(context),
      ),
      expand: (value) => SizedBox.expand(
        key: value.key?.buildKey(context),
        child: value.child?.buildWidget(context),
      ),
      fromSize: (value) => SizedBox.fromSize(
        key: value.key?.buildKey(context),
        child: value.child?.buildWidget(context),
        size: value.size?.build(context),
      ),
      shrink: (value) => SizedBox.shrink(
        key: value.key?.buildKey(context),
        child: value.child?.buildWidget(context),
      ),
      square: (value) => SizedBox.square(
        key: value.key?.buildKey(context),
        child: value.child?.buildWidget(context),
        dimension: value.dimension?.getValue(context),
      ),
    );
  }
}
