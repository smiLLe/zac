import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
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
class FlutterCard with _$FlutterCard implements ZacBuilder<Card> {
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
      key: key?.build(zacContext),
      color: color?.build(zacContext),
      shadowColor: shadowColor?.build(zacContext),
      elevation: elevation?.build(zacContext),
      shape: shape?.build(zacContext),
      borderOnForeground: borderOnForeground?.build(zacContext) ?? true,
      margin: margin?.build(zacContext),
      clipBehavior: clipBehavior?.build(zacContext),
      semanticContainer: semanticContainer?.build(zacContext) ?? true,
      child: child?.build(zacContext),
    );
  }

  @override
  Card build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
