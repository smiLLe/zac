import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_build.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';

part 'material.freezed.dart';
part 'material.g.dart';

@freezedZacBuilder
class FlutterMaterial with _$FlutterMaterial implements ZacBuild<Material> {
  const FlutterMaterial._();

  static const String unionValue = 'f:1:Material';

  factory FlutterMaterial.fromJson(Map<String, dynamic> json) =>
      _$FlutterMaterialFromJson(json);

  @FreezedUnionValue(FlutterMaterial.unionValue)
  factory FlutterMaterial({
    ZacValue<Key?>? key,
    ZacValue<Widget?>? child,
    ZacValue<double?>? elevation,
    ZacValue<Color?>? color,
    ZacValue<Color?>? shadowColor,
    ZacValue<TextStyle?>? textStyle,
    ZacValue<BorderRadiusGeometry?>? borderRadius,
    ZacValue<ShapeBorder?>? shape,
    ZacValue<bool?>? borderOnForeground,
    ZacValue<Clip?>? clipBehavior,
// Duration animationDuration = kThemeChangeDuration,
  }) = _FlutterMaterial;

  Material _buildWidget(ZacContext zacContext) {
    return Material(
      key: key?.getValue(zacContext),
      // animationDuration: key?.toFlutter(context),
      borderOnForeground: borderOnForeground?.getValue(zacContext) ?? true,
      borderRadius: borderRadius?.getValue(zacContext),
      clipBehavior: clipBehavior?.getValue(zacContext) ?? Clip.none,
      color: color?.getValue(zacContext),
      elevation: elevation?.getValue(zacContext) ?? 0,
      shadowColor: shadowColor?.getValue(zacContext),
      shape: shape?.getValue(zacContext),
      textStyle: textStyle?.getValue(zacContext),
      child: child?.getValue(zacContext),
      // type: type?.toFlutter(context),
    );
  }

  @override
  Material build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
