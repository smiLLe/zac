import 'package:zac/src/zac/any_value/any_value.dart';

import 'package:zac/src/zac/context/widget_context.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui/dart_ui.dart';
import 'package:zac/src/flutter/foundation/foundation.dart';

part 'icon.freezed.dart';
part 'icon.g.dart';

@defaultConverterFreezed
class FlutterIcon with _$FlutterIcon implements ZacWidget {
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
  Icon buildWidget(ZacBuildContext context) {
    return Icon(
      icon?.build(context),
      key: key?.build(context),
      color: color?.build(context),
      size: size?.getValue(context),
      semanticLabel: semanticLabel?.getValue(context),
      textDirection: textDirection?.build(context),
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
    ZacInt codePoint, {
    ZacString? fontFamily,
    ZacString? fontPackage,
    ZacBool? matchTextDirection,
  }) = _FlutterIconData;

  IconData build(ZacBuildContext context) {
    return IconData(
      codePoint.getValue(context),
      fontFamily: fontFamily?.getValue(context),
      fontPackage: fontPackage?.getValue(context),
      matchTextDirection: matchTextDirection?.getValue(context) ?? false,
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
    ZacDouble? opacity,
    ZacDouble? size,
  }) = _FlutterIconThemeData;

  IconThemeData build(ZacBuildContext context) {
    return IconThemeData(
      color: color?.build(context),
      opacity: opacity?.getValue(context),
      size: size?.getValue(context),
    );
  }
}
