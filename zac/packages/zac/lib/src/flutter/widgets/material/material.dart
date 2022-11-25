import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/painting.dart';

part 'material.freezed.dart';
part 'material.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
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

  Material _buildWidget(ZacContext zacContext) {
    return Material(
      key: key?.buildOrNull(zacContext),
      // animationDuration: key?.toFlutter(context),
      borderOnForeground: borderOnForeground?.buildOrNull(zacContext) ?? true,
      borderRadius: borderRadius?.build(zacContext),
      clipBehavior: clipBehavior?.build(zacContext) ?? Clip.none,
      color: color?.build(zacContext),
      elevation: elevation?.buildOrNull(zacContext) ?? 0,
      shadowColor: shadowColor?.build(zacContext),
      shape: shape?.build(zacContext),
      textStyle: textStyle?.build(zacContext),
      child: child?.buildOrNull(zacContext),
      // type: type?.toFlutter(context),
    );
  }

  @override
  Material build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }

  @override
  Material? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }
}
