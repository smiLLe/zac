import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_build.dart';
import 'package:zac/src/base.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'card.freezed.dart';
part 'card.g.dart';

@freezedZacBuilder
class FlutterCard with _$FlutterCard implements ZacBuilder<Card> {
  const FlutterCard._();

  static const String unionValue = 'f:1:Card';

  factory FlutterCard.fromJson(Map<String, dynamic> json) =>
      _$FlutterCardFromJson(json);

  @FreezedUnionValue(FlutterCard.unionValue)
  factory FlutterCard({
    ZacBuilder<Key?>? key,
    ZacBuilder<Color?>? color,
    ZacBuilder<Color?>? shadowColor,
    ZacBuilder<double?>? elevation,
    ZacBuilder<ShapeBorder?>? shape,
    ZacBuilder<bool?>? borderOnForeground,
    ZacBuilder<EdgeInsetsGeometry?>? margin,
    ZacBuilder<Clip?>? clipBehavior,
    ZacBuilder<Widget?>? child,
    ZacBuilder<bool?>? semanticContainer,
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
