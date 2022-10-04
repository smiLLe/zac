import 'package:zac/src/zac/interactions.dart';
import 'package:zac/src/zac/any_value.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zac/src/zac/misc.dart';
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
  Material buildWidget(
      BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime) {
    final zacRef = ZacRef.widget(ref);
    return Material(
      key: key?.buildKey(context, ref, lifetime),
      child: child?.buildWidget(context, ref, lifetime),
      // animationDuration: key?.toFlutter(context),
      borderOnForeground: borderOnForeground?.getValue(zacRef) ?? true,
      borderRadius: borderRadius?.build(context, ref, lifetime),
      clipBehavior: clipBehavior?.build(context, ref, lifetime) ?? Clip.none,
      color: color?.build(context, ref, lifetime),
      elevation: elevation?.getValue(zacRef) ?? 0,
      shadowColor: shadowColor?.build(context, ref, lifetime),
      shape: shape?.build(context, ref, lifetime),
      textStyle: textStyle?.build(context, ref, lifetime),
      // type: type?.toFlutter(context),
    );
  }
}
