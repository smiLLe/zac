import 'package:zac/src/zac/context.dart';
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

  @override
  Icon buildWidget(ZacContext zacContext) {
    return Icon(
      icon?.build(zacContext),
      key: key?.buildOrNull(zacContext),
      color: color?.build(zacContext),
      size: size?.buildOrNull(zacContext),
      semanticLabel: semanticLabel?.buildOrNull(zacContext),
      textDirection: textDirection?.build(zacContext),
    );
  }
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterIconData with _$FlutterIconData {
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

  IconData build(ZacContext zacContext) {
    return IconData(
      codePoint.build(zacContext),
      fontFamily: fontFamily?.build(zacContext),
      fontPackage: fontPackage?.build(zacContext),
      matchTextDirection: matchTextDirection?.buildOrNull(zacContext) ?? false,
    );
  }
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterIconThemeData with _$FlutterIconThemeData {
  const FlutterIconThemeData._();

  factory FlutterIconThemeData.fromJson(Map<String, dynamic> json) =>
      _$FlutterIconThemeDataFromJson(json);

  @FreezedUnionValue('f:1:IconThemeData')
  factory FlutterIconThemeData({
    FlutterColor? color,
    ZacDouble? opacity,
    ZacDouble? size,
  }) = _FlutterIconThemeData;

  IconThemeData build(ZacContext zacContext) {
    return IconThemeData(
      color: color?.build(zacContext),
      opacity: opacity?.build(zacContext),
      size: size?.build(zacContext),
    );
  }
}
