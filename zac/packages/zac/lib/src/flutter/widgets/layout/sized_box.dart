import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';

part 'sized_box.freezed.dart';
part 'sized_box.g.dart';

@freezedZacBuilder
class FlutterSizedBox with _$FlutterSizedBox implements ZacBuilder<SizedBox> {
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
    ZacBuilder<Key?>? key,
    ZacBuilder<double?>? width,
    ZacBuilder<double?>? height,
    ZacBuilder<Widget?>? child,
  }) = _FlutterWidgetSizedBox;

  @FreezedUnionValue(FlutterSizedBox.unionValueExpand)
  factory FlutterSizedBox.expand({
    ZacBuilder<Key?>? key,
    ZacBuilder<Widget?>? child,
  }) = _FlutterWidgetSizedBoxExpand;

  @FreezedUnionValue(FlutterSizedBox.unionValueFromSize)
  factory FlutterSizedBox.fromSize({
    ZacBuilder<Key?>? key,
    ZacBuilder<Widget?>? child,
    ZacBuilder<Size?>? size,
  }) = _FlutterWidgetSizedBoxFromSize;

  @FreezedUnionValue(FlutterSizedBox.unionValueShrink)
  const factory FlutterSizedBox.shrink({
    ZacBuilder<Key?>? key,
    ZacBuilder<Widget?>? child,
  }) = _FlutterWidgetSizedBoxShrink;

  @FreezedUnionValue(FlutterSizedBox.unionValueSquare)
  factory FlutterSizedBox.square({
    ZacBuilder<Key?>? key,
    ZacBuilder<Widget?>? child,
    ZacBuilder<double?>? dimension,
  }) = _FlutterWidgetSizedBoxSquare;

  SizedBox _buildWidget(BuildContext context, ZacContext zacContext) {
    return map(
      (value) => SizedBox(
        key: value.key?.build(context, zacContext),
        width: value.width?.build(context, zacContext),
        height: value.height?.build(context, zacContext),
        child: value.child?.build(context, zacContext),
      ),
      expand: (value) => SizedBox.expand(
        key: value.key?.build(context, zacContext),
        child: value.child?.build(context, zacContext),
      ),
      fromSize: (value) => SizedBox.fromSize(
        key: value.key?.build(context, zacContext),
        size: value.size?.build(context, zacContext),
        child: value.child?.build(context, zacContext),
      ),
      shrink: (value) => SizedBox.shrink(
        key: value.key?.build(context, zacContext),
        child: value.child?.build(context, zacContext),
      ),
      square: (value) => SizedBox.square(
        key: value.key?.build(context, zacContext),
        dimension: value.dimension?.build(context, zacContext),
        child: value.child?.build(context, zacContext),
      ),
    );
  }

  @override
  SizedBox build(BuildContext context, ZacContext zacContext) {
    return _buildWidget(context, zacContext);
  }
}
