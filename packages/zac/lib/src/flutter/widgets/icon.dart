import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_values.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'icon.freezed.dart';
part 'icon.g.dart';

@defaultConverterFreezed
class FlutterIcon with _$FlutterIcon implements FlutterWidget {
  const FlutterIcon._();

  static const String unionValue = 'f:1:Icon';

  factory FlutterIcon.fromJson(Map<String, dynamic> json) =>
      _$FlutterIconFromJson(json);

  @FreezedUnionValue(FlutterIcon.unionValue)
  factory FlutterIcon(
    FlutterIconData? icon, {
    FlutterKey? key,
    ZacValue<double>? size,
    FlutterColor? color,
    ZacValue<String>? semanticLabel,
    FlutterTextDirection? textDirection,
  }) = _FlutterIcon;

  @override
  Icon buildWidget(ZacContext zacContext) {
    return Icon(
      icon?.build(zacContext),
      key: key?.buildKey(zacContext),
      color: color?.build(zacContext),
      size: size?.getValue(zacContext),
      semanticLabel: semanticLabel?.getValue(zacContext),
      textDirection: textDirection?.build(zacContext),
    );
  }
}

@defaultConverterFreezed
class FlutterIconData with _$FlutterIconData {
  const FlutterIconData._();

  factory FlutterIconData.fromJson(Map<String, dynamic> json) =>
      _$FlutterIconDataFromJson(json);

  @FreezedUnionValue('f:1:IconData')
  factory FlutterIconData(
    ZacValue<int> codePoint, {
    ZacValue<String>? fontFamily,
    ZacValue<String>? fontPackage,
    ZacBool? matchTextDirection,
  }) = _FlutterIconData;

  IconData build(ZacContext zacContext) {
    return IconData(
      codePoint.getValue(zacContext),
      fontFamily: fontFamily?.getValue(zacContext),
      fontPackage: fontPackage?.getValue(zacContext),
      matchTextDirection: matchTextDirection?.getValue(zacContext) ?? false,
    );
  }
}

@defaultConverterFreezed
class FlutterIconThemeData with _$FlutterIconThemeData {
  const FlutterIconThemeData._();

  factory FlutterIconThemeData.fromJson(Map<String, dynamic> json) =>
      _$FlutterIconThemeDataFromJson(json);

  @FreezedUnionValue('f:1:IconThemeData')
  factory FlutterIconThemeData({
    FlutterColor? color,
    ZacValue<double>? opacity,
    ZacValue<double>? size,
  }) = _FlutterIconThemeData;

  IconThemeData build(ZacContext zacContext) {
    return IconThemeData(
      color: color?.build(zacContext),
      opacity: opacity?.getValue(zacContext),
      size: size?.getValue(zacContext),
    );
  }
}
