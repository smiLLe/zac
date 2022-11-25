import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'icon.freezed.dart';
part 'icon.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterIcon with _$FlutterIcon implements FlutterWidget {
  const FlutterIcon._();

  static const String unionValue = 'f:1:Icon';

  factory FlutterIcon.fromJson(Map<String, dynamic> json) =>
      _$FlutterIconFromJson(json);

  @FreezedUnionValue(FlutterIcon.unionValue)
  factory FlutterIcon(
    FlutterIconData? icon, {
    FlutterKey? key,
    ZacDouble? size,
    FlutterColor? color,
    ZacString? semanticLabel,
    FlutterTextDirection? textDirection,
  }) = _FlutterIcon;

  Icon _buildWidget(ZacContext zacContext) {
    return Icon(
      icon?.buildOrNull(zacContext),
      key: key?.buildOrNull(zacContext),
      color: color?.buildOrNull(zacContext),
      size: size?.buildOrNull(zacContext),
      semanticLabel: semanticLabel?.buildOrNull(zacContext),
      textDirection: textDirection?.buildOrNull(zacContext),
    );
  }

  @override
  Icon build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }

  @override
  Icon? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterIconData with _$FlutterIconData, ZacBuilder<IconData> {
  const FlutterIconData._();

  factory FlutterIconData.fromJson(Map<String, dynamic> json) =>
      _$FlutterIconDataFromJson(json);

  @FreezedUnionValue('f:1:IconData')
  factory FlutterIconData(
    ZacInt codePoint, {
    ZacString? fontFamily,
    ZacString? fontPackage,
    ZacBool? matchTextDirection,
  }) = _FlutterIconData;

  IconData _build(ZacContext zacContext) {
    return IconData(
      codePoint.build(zacContext),
      fontFamily: fontFamily?.buildOrNull(zacContext),
      fontPackage: fontPackage?.buildOrNull(zacContext),
      matchTextDirection: matchTextDirection?.buildOrNull(zacContext) ?? false,
    );
  }

  @override
  IconData build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _build(zacContext);
  }

  @override
  IconData? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _build(zacContext);
  }
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterIconThemeData
    with _$FlutterIconThemeData, ZacBuilder<IconThemeData> {
  const FlutterIconThemeData._();

  factory FlutterIconThemeData.fromJson(Map<String, dynamic> json) =>
      _$FlutterIconThemeDataFromJson(json);

  @FreezedUnionValue('f:1:IconThemeData')
  factory FlutterIconThemeData({
    FlutterColor? color,
    ZacDouble? opacity,
    ZacDouble? size,
  }) = _FlutterIconThemeData;

  IconThemeData _build(ZacContext zacContext) {
    return IconThemeData(
      color: color?.buildOrNull(zacContext),
      opacity: opacity?.buildOrNull(zacContext),
      size: size?.buildOrNull(zacContext),
    );
  }

  @override
  IconThemeData build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _build(zacContext);
  }

  @override
  IconThemeData? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _build(zacContext);
  }
}
