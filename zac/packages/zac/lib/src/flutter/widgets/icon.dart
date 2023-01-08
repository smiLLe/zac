import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
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

  Icon _buildWidget(BuildContext context, ZacContext zacContext) {
    return Icon(
      icon?.build(context, zacContext),
      key: key?.build(context, zacContext),
      color: color?.build(context, zacContext),
      size: size?.build(context, zacContext),
      semanticLabel: semanticLabel?.build(context, zacContext),
      textDirection: textDirection?.build(context, zacContext),
    );
  }

  @override
  Icon build(BuildContext context, ZacContext zacContext) {
    return _buildWidget(context, zacContext);
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

  IconData _build(BuildContext context, ZacContext zacContext) {
    return IconData(
      codePoint.build(context, zacContext),
      fontFamily: fontFamily?.build(context, zacContext),
      fontPackage: fontPackage?.build(context, zacContext),
      matchTextDirection:
          matchTextDirection?.build(context, zacContext) ?? false,
    );
  }

  @override
  IconData build(BuildContext context, ZacContext zacContext) {
    return _build(context, zacContext);
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

  IconThemeData _build(BuildContext context, ZacContext zacContext) {
    return IconThemeData(
      color: color?.build(context, zacContext),
      opacity: opacity?.build(context, zacContext),
      size: size?.build(context, zacContext),
    );
  }

  @override
  IconThemeData build(BuildContext context, ZacContext zacContext) {
    return _build(context, zacContext);
  }
}
