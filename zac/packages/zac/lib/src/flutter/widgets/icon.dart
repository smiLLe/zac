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
class FlutterIcon with _$FlutterIcon implements ZacBuilder<Icon> {
  const FlutterIcon._();

  static const String unionValue = 'f:1:Icon';

  factory FlutterIcon.fromJson(Map<String, dynamic> json) =>
      _$FlutterIconFromJson(json);

  @FreezedUnionValue(FlutterIcon.unionValue)
  factory FlutterIcon(
    FlutterIconData? icon, {
    ZacBuilder<Key?>? key,
    ZacBuilder<double?>? size,
    ZacBuilder<Color?>? color,
    ZacBuilder<String?>? semanticLabel,
    ZacBuilder<TextDirection?>? textDirection,
  }) = _FlutterIcon;

  Icon _buildWidget(ZacContext zacContext) {
    return Icon(
      icon?.build(zacContext),
      key: key?.build(zacContext),
      color: color?.build(zacContext),
      size: size?.build(zacContext),
      semanticLabel: semanticLabel?.build(zacContext),
      textDirection: textDirection?.build(zacContext),
    );
  }

  @override
  Icon build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}

@freezedZacBuilder
class FlutterIconData with _$FlutterIconData, ZacBuilder<IconData> {
  const FlutterIconData._();

  factory FlutterIconData.fromJson(Map<String, dynamic> json) =>
      _$FlutterIconDataFromJson(json);

  @FreezedUnionValue('f:1:IconData')
  factory FlutterIconData(
    ZacBuilder<int> codePoint, {
    ZacBuilder<String?>? fontFamily,
    ZacBuilder<String?>? fontPackage,
    ZacBuilder<bool?>? matchTextDirection,
  }) = _FlutterIconData;

  IconData _build(ZacContext zacContext) {
    return IconData(
      codePoint.build(zacContext),
      fontFamily: fontFamily?.build(zacContext),
      fontPackage: fontPackage?.build(zacContext),
      matchTextDirection: matchTextDirection?.build(zacContext) ?? false,
    );
  }

  @override
  IconData build(ZacContext zacContext) {
    return _build(zacContext);
  }
}

@freezedZacBuilder
class FlutterIconThemeData
    with _$FlutterIconThemeData, ZacBuilder<IconThemeData> {
  const FlutterIconThemeData._();

  factory FlutterIconThemeData.fromJson(Map<String, dynamic> json) =>
      _$FlutterIconThemeDataFromJson(json);

  @FreezedUnionValue('f:1:IconThemeData')
  factory FlutterIconThemeData({
    ZacBuilder<Color?>? color,
    ZacBuilder<double?>? opacity,
    ZacBuilder<double?>? size,
  }) = _FlutterIconThemeData;

  IconThemeData _build(ZacContext zacContext) {
    return IconThemeData(
      color: color?.build(zacContext),
      opacity: opacity?.build(zacContext),
      size: size?.build(zacContext),
    );
  }

  @override
  IconThemeData build(ZacContext zacContext) {
    return _build(zacContext);
  }
}
