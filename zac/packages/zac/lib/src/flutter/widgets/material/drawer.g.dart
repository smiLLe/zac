// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drawer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterDrawer _$$_FlutterDrawerFromJson(Map<String, dynamic> json) =>
    _$_FlutterDrawer(
      key: json['key'] == null
          ? null
          : ZacValue<Key?>.fromJson(json['key'] as Object),
      backgroundColor: json['backgroundColor'] == null
          ? null
          : FlutterColor.fromJson(
              json['backgroundColor'] as Map<String, dynamic>),
      elevation: json['elevation'] == null
          ? null
          : ZacValue<double?>.fromJson(json['elevation'] as Object),
      shape: json['shape'] == null
          ? null
          : ZacValue<ShapeBorder?>.fromJson(json['shape'] as Object),
      child: json['child'] == null
          ? null
          : ZacValue<Widget?>.fromJson(json['child'] as Object),
      semanticLabel: json['semanticLabel'] == null
          ? null
          : ZacValue<String?>.fromJson(json['semanticLabel'] as Object),
    );
