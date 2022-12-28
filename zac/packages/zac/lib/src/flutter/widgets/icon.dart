import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_build.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'icon.freezed.dart';
part 'icon.g.dart';

@freezedZacBuilder
class FlutterIcon with _$FlutterIcon implements ZacBuild<Icon> {
  const FlutterIcon._();

  static const String unionValue = 'f:1:Icon';

  factory FlutterIcon.fromJson(Map<String, dynamic> json) =>
      _$FlutterIconFromJson(json);

  @FreezedUnionValue(FlutterIcon.unionValue)
  factory FlutterIcon(
    FlutterIconData? icon, {
    ZacValue<Key?>? key,
    ZacValue<double?>? size,
    ZacValue<Color?>? color,
    ZacValue<String?>? semanticLabel,
    ZacValue<TextDirection?>? textDirection,
  }) = _FlutterIcon;

  Icon _buildWidget(ZacContext zacContext) {
    return Icon(
      icon?.build(zacContext),
      key: key?.getValue(zacContext),
      color: color?.getValue(zacContext),
      size: size?.getValue(zacContext),
      semanticLabel: semanticLabel?.getValue(zacContext),
      textDirection: textDirection?.getValue(zacContext),
    );
  }

  @override
  Icon build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}

@freezedZacBuilder
class FlutterIconData with _$FlutterIconData, ZacBuild<IconData> {
  const FlutterIconData._();

  factory FlutterIconData.fromJson(Map<String, dynamic> json) =>
      _$FlutterIconDataFromJson(json);

  @FreezedUnionValue('f:1:IconData')
  factory FlutterIconData(
    ZacValue<int> codePoint, {
    ZacValue<String?>? fontFamily,
    ZacValue<String?>? fontPackage,
    ZacValue<bool?>? matchTextDirection,
  }) = _FlutterIconData;

  IconData _build(ZacContext zacContext) {
    return IconData(
      codePoint.getValue(zacContext),
      fontFamily: fontFamily?.getValue(zacContext),
      fontPackage: fontPackage?.getValue(zacContext),
      matchTextDirection: matchTextDirection?.getValue(zacContext) ?? false,
    );
  }

  @override
  IconData build(ZacContext zacContext) {
    return _build(zacContext);
  }
}

@freezedZacBuilder
class FlutterIconThemeData
    with _$FlutterIconThemeData, ZacBuild<IconThemeData> {
  const FlutterIconThemeData._();

  factory FlutterIconThemeData.fromJson(Map<String, dynamic> json) =>
      _$FlutterIconThemeDataFromJson(json);

  @FreezedUnionValue('f:1:IconThemeData')
  factory FlutterIconThemeData({
    ZacValue<Color?>? color,
    ZacValue<double?>? opacity,
    ZacValue<double?>? size,
  }) = _FlutterIconThemeData;

  IconThemeData _build(ZacContext zacContext) {
    return IconThemeData(
      color: color?.getValue(zacContext),
      opacity: opacity?.getValue(zacContext),
      size: size?.getValue(zacContext),
    );
  }

  @override
  IconThemeData build(ZacContext zacContext) {
    return _build(zacContext);
  }
}
