import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/zac/interactions.dart';
import 'package:zac/src/zac/zac_values.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zac/src/zac/misc.dart';
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
  Card buildWidget(
      BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime) {
    final zacRef = ZacRef.widget(ref);
    return Card(
      key: key?.buildKey(context, ref, lifetime),
      color: color?.build(context, ref, lifetime),
      shadowColor: shadowColor?.build(context, ref, lifetime),
      elevation: elevation?.getValue(zacRef),
      shape: shape?.build(context, ref, lifetime),
      borderOnForeground: borderOnForeground?.getValue(zacRef) ?? true,
      margin: margin?.build(context, ref, lifetime),
      clipBehavior: clipBehavior?.build(context, ref, lifetime),
      child: child?.buildWidget(context, ref, lifetime),
      semanticContainer: semanticContainer?.getValue(zacRef) ?? true,
    );
  }
}
