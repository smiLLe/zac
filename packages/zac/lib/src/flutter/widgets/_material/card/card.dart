import 'package:zac/src/flutter/painting/painting.dart';
import 'package:zac/src/zac/any_value/any_value.dart';

import 'package:zac/src/zac/context/widget_context.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui/dart_ui.dart';
import 'package:zac/src/flutter/foundation/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'card.freezed.dart';
part 'card.g.dart';

@defaultConverterFreezed
class FlutterCard with _$FlutterCard implements ZacWidget {
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
    ZacWidget? child,
    ZacBool? semanticContainer,
  }) = _FlutterCard;

  @override
  Card buildWidget(ZacBuildContext context) {
    return Card(
      key: key?.buildKey(context),
      color: color?.build(context),
      shadowColor: shadowColor?.build(context),
      elevation: elevation?.getValue(context),
      shape: shape?.build(context),
      borderOnForeground: borderOnForeground?.getValue(context) ?? true,
      margin: margin?.build(context),
      clipBehavior: clipBehavior?.build(context),
      child: child?.buildWidget(context),
      semanticContainer: semanticContainer?.getValue(context) ?? true,
    );
  }
}
