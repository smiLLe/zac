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

  Card _buildWidget(ZacContext zacContext) {
    return Card(
      key: key?.buildOrNull(zacContext),
      color: color?.buildOrNull(zacContext),
      shadowColor: shadowColor?.buildOrNull(zacContext),
      elevation: elevation?.buildOrNull(zacContext),
      shape: shape?.buildOrNull(zacContext),
      borderOnForeground: borderOnForeground?.buildOrNull(zacContext) ?? true,
      margin: margin?.buildOrNull(zacContext),
      clipBehavior: clipBehavior?.buildOrNull(zacContext),
      semanticContainer: semanticContainer?.buildOrNull(zacContext) ?? true,
      child: child?.buildOrNull(zacContext),
    );
  }

  @override
  Card build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }

  @override
  Card? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }
}
