import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_build.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';

part 'sized_box.freezed.dart';
part 'sized_box.g.dart';

@freezedZacBuilder
class FlutterSizedBox with _$FlutterSizedBox implements ZacBuild<SizedBox> {
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
    ZacValue<Key?>? key,
    ZacValue<double?>? width,
    ZacValue<double?>? height,
    ZacValue<Widget?>? child,
  }) = _FlutterWidgetSizedBox;

  @FreezedUnionValue(FlutterSizedBox.unionValueExpand)
  factory FlutterSizedBox.expand({
    ZacValue<Key?>? key,
    ZacValue<Widget?>? child,
  }) = _FlutterWidgetSizedBoxExpand;

  @FreezedUnionValue(FlutterSizedBox.unionValueFromSize)
  factory FlutterSizedBox.fromSize({
    ZacValue<Key?>? key,
    ZacValue<Widget?>? child,
    ZacValue<Size?>? size,
  }) = _FlutterWidgetSizedBoxFromSize;

  @FreezedUnionValue(FlutterSizedBox.unionValueShrink)
  const factory FlutterSizedBox.shrink({
    ZacValue<Key?>? key,
    ZacValue<Widget?>? child,
  }) = _FlutterWidgetSizedBoxShrink;

  @FreezedUnionValue(FlutterSizedBox.unionValueSquare)
  factory FlutterSizedBox.square({
    ZacValue<Key?>? key,
    ZacValue<Widget?>? child,
    ZacValue<double?>? dimension,
  }) = _FlutterWidgetSizedBoxSquare;

  SizedBox _buildWidget(ZacContext zacContext) {
    return map(
      (value) => SizedBox(
        key: value.key?.getValue(zacContext),
        width: value.width?.getValue(zacContext),
        height: value.height?.getValue(zacContext),
        child: value.child?.getValue(zacContext),
      ),
      expand: (value) => SizedBox.expand(
        key: value.key?.getValue(zacContext),
        child: value.child?.getValue(zacContext),
      ),
      fromSize: (value) => SizedBox.fromSize(
        key: value.key?.getValue(zacContext),
        size: value.size?.getValue(zacContext),
        child: value.child?.getValue(zacContext),
      ),
      shrink: (value) => SizedBox.shrink(
        key: value.key?.getValue(zacContext),
        child: value.child?.getValue(zacContext),
      ),
      square: (value) => SizedBox.square(
        key: value.key?.getValue(zacContext),
        dimension: value.dimension?.getValue(zacContext),
        child: value.child?.getValue(zacContext),
      ),
    );
  }

  @override
  SizedBox build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
