// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'icon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterIcon _$$_FlutterIconFromJson(Map<String, dynamic> json) =>
    _$_FlutterIcon(
      json['icon'] == null
          ? null
          : FlutterIconData.fromJson(json['icon'] as Map<String, dynamic>),
      key: json['key'] == null
          ? null
          : FlutterKey.fromJson(json['key'] as Object),
      size: json['size'] == null
          ? null
          : ZacDouble.fromJson(json['size'] as Object),
      color: json['color'] == null
          ? null
          : FlutterColor.fromJson(json['color'] as Map<String, dynamic>),
      semanticLabel: json['semanticLabel'] == null
          ? null
          : ZacValue<String>.fromJson(json['semanticLabel'] as Object),
      textDirection: json['textDirection'] == null
          ? null
          : FlutterTextDirection.fromJson(
              json['textDirection'] as Map<String, dynamic>),
    );

_$_FlutterIconData _$$_FlutterIconDataFromJson(Map<String, dynamic> json) =>
    _$_FlutterIconData(
      ZacInt.fromJson(json['codePoint'] as Object),
      fontFamily: json['fontFamily'] == null
          ? null
          : ZacValue<String>.fromJson(json['fontFamily'] as Object),
      fontPackage: json['fontPackage'] == null
          ? null
          : ZacValue<String>.fromJson(json['fontPackage'] as Object),
      matchTextDirection: json['matchTextDirection'] == null
          ? null
          : ZacValue<bool>.fromJson(json['matchTextDirection'] as Object),
    );

_$_FlutterIconThemeData _$$_FlutterIconThemeDataFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterIconThemeData(
      color: json['color'] == null
          ? null
          : FlutterColor.fromJson(json['color'] as Map<String, dynamic>),
      opacity: json['opacity'] == null
          ? null
          : ZacDouble.fromJson(json['opacity'] as Object),
      size: json['size'] == null
          ? null
          : ZacDouble.fromJson(json['size'] as Object),
    );
