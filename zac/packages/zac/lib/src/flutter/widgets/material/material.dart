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

  Material _buildWidget(ZacContext zacContext) {
    return Material(
      key: key?.buildOrNull(zacContext),
      // animationDuration: key?.toFlutter(context),
      borderOnForeground: borderOnForeground?.buildOrNull(zacContext) ?? true,
      borderRadius: borderRadius?.buildOrNull(zacContext),
      clipBehavior: clipBehavior?.buildOrNull(zacContext) ?? Clip.none,
      color: color?.buildOrNull(zacContext),
      elevation: elevation?.buildOrNull(zacContext) ?? 0,
      shadowColor: shadowColor?.buildOrNull(zacContext),
      shape: shape?.buildOrNull(zacContext),
      textStyle: textStyle?.buildOrNull(zacContext),
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
