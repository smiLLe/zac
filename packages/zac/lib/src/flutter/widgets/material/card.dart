import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/zac/origin.dart';
import 'package:zac/src/zac/zac_values.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'card.freezed.dart';
part 'card.g.dart';

@defaultConverterFreezed
class FlutterCard with _$FlutterCard implements FlutterWidget {
  const FlutterCard._();

  static const String unionValue = 'f:1:Card';

  factory FlutterCard.fromJson(Map<String, dynamic> json) =>
      _$FlutterCardFromJson(json);

  @FreezedUnionValue(FlutterCard.unionValue)
  factory FlutterCard({
    FlutterKey? key,
    FlutterColor? color,
    FlutterColor? shadowColor,
    ZacDouble? elevation,
    FlutterShapeBorder? shape,
    ZacBool? borderOnForeground,
    FlutterEdgeInsetsGeometry? margin,
    FlutterClip? clipBehavior,
    FlutterWidget? child,
    ZacBool? semanticContainer,
  }) = _FlutterCard;

  @override
  Card buildWidget(ZacOriginWidgetTree origin) {
    return Card(
      key: key?.buildKey(origin),
      color: color?.build(origin),
      shadowColor: shadowColor?.build(origin),
      elevation: elevation?.getValue(origin),
      shape: shape?.build(origin),
      borderOnForeground: borderOnForeground?.getValue(origin) ?? true,
      margin: margin?.build(origin),
      clipBehavior: clipBehavior?.build(origin),
      child: child?.buildWidget(origin),
      semanticContainer: semanticContainer?.getValue(origin) ?? true,
    );
  }
}
