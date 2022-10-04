import 'package:zac/src/zac/interactions.dart';
import 'package:zac/src/zac/any_value.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zac/src/zac/misc.dart';
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
    ZacDouble? size,
    FlutterColor? color,
    ZacString? semanticLabel,
    FlutterTextDirection? textDirection,
  }) = _FlutterIcon;

  @override
  Icon buildWidget(
      BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime) {
    final zacRef = ZacRef.widget(ref);
    return Icon(
      icon?.build(context, ref, lifetime),
      key: key?.buildKey(context, ref, lifetime),
      color: color?.build(context, ref, lifetime),
      size: size?.getValue(zacRef),
      semanticLabel: semanticLabel?.getValue(zacRef),
      textDirection: textDirection?.build(context, ref, lifetime),
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
      BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime) {
    final zacRef = ZacRef.widget(ref);
    return IconData(
      codePoint.getValue(zacRef),
      fontFamily: fontFamily?.getValue(zacRef),
      fontPackage: fontPackage?.getValue(zacRef),
      matchTextDirection: matchTextDirection?.getValue(zacRef) ?? false,
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
      BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime) {
    final zacRef = ZacRef.widget(ref);
    return IconThemeData(
      color: color?.build(context, ref, lifetime),
      opacity: opacity?.getValue(zacRef),
      size: size?.getValue(zacRef),
    );
  }
}
