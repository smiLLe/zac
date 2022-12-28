import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_build.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'card.freezed.dart';
part 'card.g.dart';

@freezedZacBuilder
class FlutterCard with _$FlutterCard implements ZacBuild<Card> {
  const FlutterCard._();

  static const String unionValue = 'f:1:Card';

  factory FlutterCard.fromJson(Map<String, dynamic> json) =>
      _$FlutterCardFromJson(json);

  @FreezedUnionValue(FlutterCard.unionValue)
  factory FlutterCard({
    ZacValue<Key?>? key,
    ZacValue<Color?>? color,
    ZacValue<Color?>? shadowColor,
    ZacValue<double?>? elevation,
    ZacValue<ShapeBorder?>? shape,
    ZacValue<bool?>? borderOnForeground,
    ZacValue<EdgeInsetsGeometry?>? margin,
    ZacValue<Clip?>? clipBehavior,
    ZacValue<Widget?>? child,
    ZacValue<bool?>? semanticContainer,
  }) = _FlutterCard;

  Card _buildWidget(ZacContext zacContext) {
    return Card(
      key: key?.getValue(zacContext),
      color: color?.getValue(zacContext),
      shadowColor: shadowColor?.getValue(zacContext),
      elevation: elevation?.getValue(zacContext),
      shape: shape?.getValue(zacContext),
      borderOnForeground: borderOnForeground?.getValue(zacContext) ?? true,
      margin: margin?.getValue(zacContext),
      clipBehavior: clipBehavior?.getValue(zacContext),
      semanticContainer: semanticContainer?.getValue(zacContext) ?? true,
      child: child?.getValue(zacContext),
    );
  }

  @override
  Card build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
