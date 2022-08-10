import 'package:zac/src/zac/any_value.dart';

import 'package:zac/src/zac/update_context.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/painting.dart';

part 'material.freezed.dart';
part 'material.g.dart';

@defaultConverterFreezed
class FlutterMaterial with _$FlutterMaterial implements ZacWidget {
  const FlutterMaterial._();

  static const String unionValue = 'f:1:Material';

  factory FlutterMaterial.fromJson(Map<String, dynamic> json) =>
      _$FlutterMaterialFromJson(json);

  @FreezedUnionValue(FlutterMaterial.unionValue)
  factory FlutterMaterial({
    FlutterKey? key,
    ZacWidget? child,
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
  Material buildWidget(ZacBuildContext context) {
    return Material(
      key: key?.buildKey(context),
      child: child?.buildWidget(context),
      // animationDuration: key?.toFlutter(context),
      borderOnForeground: borderOnForeground?.getValue(context) ?? true,
      borderRadius: borderRadius?.build(context),
      clipBehavior: clipBehavior?.build(context) ?? Clip.none,
      color: color?.build(context),
      elevation: elevation?.getValue(context) ?? 0,
      shadowColor: shadowColor?.build(context),
      shape: shape?.build(context),
      textStyle: textStyle?.build(context),
      // type: type?.toFlutter(context),
    );
  }
}
