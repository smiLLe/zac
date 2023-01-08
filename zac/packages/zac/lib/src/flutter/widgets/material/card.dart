import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
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

  Card _buildWidget(BuildContext context, ZacContext zacContext) {
    return Card(
      key: key?.build(context, zacContext),
      color: color?.build(context, zacContext),
      shadowColor: shadowColor?.build(context, zacContext),
      elevation: elevation?.build(context, zacContext),
      shape: shape?.build(context, zacContext),
      borderOnForeground:
          borderOnForeground?.build(context, zacContext) ?? true,
      margin: margin?.build(context, zacContext),
      clipBehavior: clipBehavior?.build(context, zacContext),
      semanticContainer: semanticContainer?.build(context, zacContext) ?? true,
      child: child?.build(context, zacContext),
    );
  }

  @override
  Card build(BuildContext context, ZacContext zacContext) {
    return _buildWidget(context, zacContext);
  }
}
