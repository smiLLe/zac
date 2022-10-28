import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_values.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/painting.dart';

part 'material.freezed.dart';
part 'material.g.dart';

@defaultConverterFreezed
class FlutterMaterial with _$FlutterMaterial implements FlutterWidget {
  const FlutterMaterial._();

  static const String unionValue = 'f:1:Material';

  factory FlutterMaterial.fromJson(Map<String, dynamic> json) =>
      _$FlutterMaterialFromJson(json);

  @FreezedUnionValue(FlutterMaterial.unionValue)
  factory FlutterMaterial({
    FlutterKey? key,
    FlutterWidget? child,
    ZacValue<double>? elevation,
    FlutterColor? color,
    FlutterColor? shadowColor,
    FlutterTextStyle? textStyle,
    FlutterBorderRadiusGeometry? borderRadius,
    FlutterShapeBorder? shape,
    ZacValue<bool>? borderOnForeground,
    FlutterClip? clipBehavior,
// Duration animationDuration = kThemeChangeDuration,
  }) = _FlutterMaterial;

  @override
  Material buildWidget(ZacContext zacContext) {
    return Material(
      key: key?.buildKey(zacContext),
      // animationDuration: key?.toFlutter(context),
      borderOnForeground: borderOnForeground?.getValue(zacContext) ?? true,
      borderRadius: borderRadius?.build(zacContext),
      clipBehavior: clipBehavior?.build(zacContext) ?? Clip.none,
      color: color?.build(zacContext),
      elevation: elevation?.getValue(zacContext) ?? 0,
      shadowColor: shadowColor?.build(zacContext),
      shape: shape?.build(zacContext),
      textStyle: textStyle?.build(zacContext),
      child: child?.buildWidget(zacContext),
      // type: type?.toFlutter(context),
    );
  }
}