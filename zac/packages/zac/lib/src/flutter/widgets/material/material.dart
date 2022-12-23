import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/painting.dart';

part 'material.freezed.dart';
part 'material.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterMaterial with _$FlutterMaterial implements ZacBuilder<Material> {
  const FlutterMaterial._();

  static const String unionValue = 'f:1:Material';

  factory FlutterMaterial.fromJson(Map<String, dynamic> json) =>
      _$FlutterMaterialFromJson(json);

  @FreezedUnionValue(FlutterMaterial.unionValue)
  factory FlutterMaterial({
    ZacValue<Key?>? key,
    ZacValue<Widget?>? child,
    ZacValue<double?>? elevation,
    FlutterColor? color,
    FlutterColor? shadowColor,
    FlutterTextStyle? textStyle,
    ZacValue<BorderRadiusGeometry?>? borderRadius,
    ZacValue<ShapeBorder?>? shape,
    ZacValue<bool?>? borderOnForeground,
    FlutterClip? clipBehavior,
// Duration animationDuration = kThemeChangeDuration,
  }) = _FlutterMaterial;

  Material _buildWidget(ZacContext zacContext) {
    return Material(
      key: key?.build(zacContext),
      // animationDuration: key?.toFlutter(context),
      borderOnForeground: borderOnForeground?.build(zacContext) ?? true,
      borderRadius: borderRadius?.build(zacContext),
      clipBehavior: clipBehavior?.build(zacContext) ?? Clip.none,
      color: color?.build(zacContext),
      elevation: elevation?.build(zacContext) ?? 0,
      shadowColor: shadowColor?.build(zacContext),
      shape: shape?.build(zacContext),
      textStyle: textStyle?.build(zacContext),
      child: child?.build(zacContext),
      // type: type?.toFlutter(context),
    );
  }

  @override
  Material build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
