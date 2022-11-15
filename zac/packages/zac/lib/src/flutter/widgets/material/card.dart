import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'card.freezed.dart';
part 'card.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
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
    ZacValue<double>? elevation,
    FlutterShapeBorder? shape,
    ZacValue<bool>? borderOnForeground,
    FlutterEdgeInsetsGeometry? margin,
    FlutterClip? clipBehavior,
    FlutterWidget? child,
    ZacValue<bool>? semanticContainer,
  }) = _FlutterCard;

  @override
  Card buildWidget(ZacContext zacContext) {
    return Card(
      key: key?.buildKey(zacContext),
      color: color?.build(zacContext),
      shadowColor: shadowColor?.build(zacContext),
      elevation: elevation?.getValue(zacContext),
      shape: shape?.build(zacContext),
      borderOnForeground: borderOnForeground?.getValue(zacContext) ?? true,
      margin: margin?.build(zacContext),
      clipBehavior: clipBehavior?.build(zacContext),
      semanticContainer: semanticContainer?.getValue(zacContext) ?? true,
      child: child?.buildWidget(zacContext),
    );
  }
}
