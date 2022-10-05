import 'package:zac/src/zac/origin.dart';
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
    ZacDouble? elevation,
    FlutterColor? color,
    FlutterColor? shadowColor,
    FlutterTextStyle? textStyle,
    FlutterBorderRadiusGeometry? borderRadius,
    FlutterShapeBorder? shape,
    ZacBool? borderOnForeground,
    FlutterClip? clipBehavior,
// Duration animationDuration = kThemeChangeDuration,
  }) = _FlutterMaterial;

  @override
  Material buildWidget(ZacOriginWidgetTree origin) {
    return Material(
      key: key?.buildKey(origin),
      child: child?.buildWidget(origin),
      // animationDuration: key?.toFlutter(context),
      borderOnForeground: borderOnForeground?.getValue(origin) ?? true,
      borderRadius: borderRadius?.build(origin),
      clipBehavior: clipBehavior?.build(origin) ?? Clip.none,
      color: color?.build(origin),
      elevation: elevation?.getValue(origin) ?? 0,
      shadowColor: shadowColor?.build(origin),
      shape: shape?.build(origin),
      textStyle: textStyle?.build(origin),
      // type: type?.toFlutter(context),
    );
  }
}
