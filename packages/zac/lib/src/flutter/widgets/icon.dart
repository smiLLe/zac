import 'package:zac/src/zac/any_value.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zac/src/zac/update_context.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';

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
  Icon buildWidget(
      BuildContext context, WidgetRef ref, ZacBuildContext zacContext) {
    return Icon(
      icon?.build(context, ref, zacContext),
      key: key?.buildKey(context, ref, zacContext),
      color: color?.build(context, ref, zacContext),
      size: size?.getValue(zacContext),
      semanticLabel: semanticLabel?.getValue(zacContext),
      textDirection: textDirection?.build(context, ref, zacContext),
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

  IconData build(
      BuildContext context, WidgetRef ref, ZacBuildContext zacContext) {
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
    ZacDouble? opacity,
    ZacDouble? size,
  }) = _FlutterIconThemeData;

  IconThemeData build(
      BuildContext context, WidgetRef ref, ZacBuildContext zacContext) {
    return IconThemeData(
      color: color?.build(context, ref, zacContext),
      opacity: opacity?.getValue(zacContext),
      size: size?.getValue(zacContext),
    );
  }
}
