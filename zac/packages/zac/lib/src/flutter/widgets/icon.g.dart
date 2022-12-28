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
          : ZacBuilder<Key?>.fromJson(json['key'] as Object),
      size: json['size'] == null
          ? null
          : ZacBuilder<double?>.fromJson(json['size'] as Object),
      color: json['color'] == null
          ? null
          : ZacBuilder<Color?>.fromJson(json['color'] as Object),
      semanticLabel: json['semanticLabel'] == null
          ? null
          : ZacBuilder<String?>.fromJson(json['semanticLabel'] as Object),
      textDirection: json['textDirection'] == null
          ? null
          : ZacBuilder<TextDirection?>.fromJson(
              json['textDirection'] as Object),
    );

_$_FlutterIconData _$$_FlutterIconDataFromJson(Map<String, dynamic> json) =>
    _$_FlutterIconData(
      ZacBuilder<int>.fromJson(json['codePoint'] as Object),
      fontFamily: json['fontFamily'] == null
          ? null
          : ZacBuilder<String?>.fromJson(json['fontFamily'] as Object),
      fontPackage: json['fontPackage'] == null
          ? null
          : ZacBuilder<String?>.fromJson(json['fontPackage'] as Object),
      matchTextDirection: json['matchTextDirection'] == null
          ? null
          : ZacBuilder<bool?>.fromJson(json['matchTextDirection'] as Object),
    );

_$_FlutterIconThemeData _$$_FlutterIconThemeDataFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterIconThemeData(
      color: json['color'] == null
          ? null
          : ZacBuilder<Color?>.fromJson(json['color'] as Object),
      opacity: json['opacity'] == null
          ? null
          : ZacBuilder<double?>.fromJson(json['opacity'] as Object),
      size: json['size'] == null
          ? null
          : ZacBuilder<double?>.fromJson(json['size'] as Object),
    );
