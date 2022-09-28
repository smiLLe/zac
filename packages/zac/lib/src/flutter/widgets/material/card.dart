import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/zac/any_value.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zac/src/zac/misc.dart';
import 'package:zac/src/zac/update_context.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';
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
  Card buildWidget(
      BuildContext context, WidgetRef ref, ZacBuildContext zacContext) {
    final zacRef = ZacRef.widget(ref);
    return Card(
      key: key?.buildKey(context, ref, zacContext),
      color: color?.build(context, ref, zacContext),
      shadowColor: shadowColor?.build(context, ref, zacContext),
      elevation: elevation?.getValue(zacRef),
      shape: shape?.build(context, ref, zacContext),
      borderOnForeground: borderOnForeground?.getValue(zacRef) ?? true,
      margin: margin?.build(context, ref, zacContext),
      clipBehavior: clipBehavior?.build(context, ref, zacContext),
      child: child?.buildWidget(context, ref, zacContext),
      semanticContainer: semanticContainer?.getValue(zacRef) ?? true,
    );
  }
}
