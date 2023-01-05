import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';

part 'material.freezed.dart';
part 'material.g.dart';

@freezedZacBuilder
class FlutterMaterial with _$FlutterMaterial implements ZacBuilder<Material> {
  const FlutterMaterial._();

  static const String unionValue = 'f:1:Material';

  factory FlutterMaterial.fromJson(Map<String, dynamic> json) =>
      _$FlutterMaterialFromJson(json);

  @FreezedUnionValue(FlutterMaterial.unionValue)
  factory FlutterMaterial({
    ZacBuilder<Key?>? key,
    ZacBuilder<Widget?>? child,
    ZacBuilder<double?>? elevation,
    ZacBuilder<Color?>? color,
    ZacBuilder<Color?>? shadowColor,
    ZacBuilder<TextStyle?>? textStyle,
    ZacBuilder<BorderRadiusGeometry?>? borderRadius,
    ZacBuilder<ShapeBorder?>? shape,
    ZacBuilder<bool?>? borderOnForeground,
    ZacBuilder<Clip?>? clipBehavior,
// Duration animationDuration = kThemeChangeDuration,
  }) = _FlutterMaterial;

  Material _buildWidget(BuildContext context, ZacContext zacContext) {
    return Material(
      key: key?.build(context, zacContext),
      // animationDuration: key?.toFlutter(context),
      borderOnForeground:
          borderOnForeground?.build(context, zacContext) ?? true,
      borderRadius: borderRadius?.build(context, zacContext),
      clipBehavior: clipBehavior?.build(context, zacContext) ?? Clip.none,
      color: color?.build(context, zacContext),
      elevation: elevation?.build(context, zacContext) ?? 0,
      shadowColor: shadowColor?.build(context, zacContext),
      shape: shape?.build(context, zacContext),
      textStyle: textStyle?.build(context, zacContext),
      child: child?.build(context, zacContext),
      // type: type?.toFlutter(context),
    );
  }

  @override
  Material build(BuildContext context, ZacContext zacContext) {
    return _buildWidget(context, zacContext);
  }
}
