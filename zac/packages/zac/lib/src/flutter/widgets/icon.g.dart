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
          : ZacValue<double>.fromJson(
              json['size'] as Object, (value) => (value as num).toDouble()),
      color: json['color'] == null
          ? null
          : FlutterColor.fromJson(json['color'] as Map<String, dynamic>),
      semanticLabel: json['semanticLabel'] == null
          ? null
          : ZacValue<String>.fromJson(
              json['semanticLabel'] as Object, (value) => value as String),
      textDirection: json['textDirection'] == null
          ? null
          : FlutterTextDirection.fromJson(
              json['textDirection'] as Map<String, dynamic>),
    );

_$_FlutterIconData _$$_FlutterIconDataFromJson(Map<String, dynamic> json) =>
    _$_FlutterIconData(
      ZacValue<int>.fromJson(
          json['codePoint'] as Object, (value) => value as int),
      fontFamily: json['fontFamily'] == null
          ? null
          : ZacValue<String>.fromJson(
              json['fontFamily'] as Object, (value) => value as String),
      fontPackage: json['fontPackage'] == null
          ? null
          : ZacValue<String>.fromJson(
              json['fontPackage'] as Object, (value) => value as String),
      matchTextDirection: json['matchTextDirection'] == null
          ? null
          : ZacValue<bool>.fromJson(
              json['matchTextDirection'] as Object, (value) => value as bool),
    );

_$_FlutterIconThemeData _$$_FlutterIconThemeDataFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterIconThemeData(
      color: json['color'] == null
          ? null
          : FlutterColor.fromJson(json['color'] as Map<String, dynamic>),
      opacity: json['opacity'] == null
          ? null
          : ZacValue<double>.fromJson(
              json['opacity'] as Object, (value) => (value as num).toDouble()),
      size: json['size'] == null
          ? null
          : ZacValue<double>.fromJson(
              json['size'] as Object, (value) => (value as num).toDouble()),
    );
