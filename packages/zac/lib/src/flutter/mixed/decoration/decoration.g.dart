// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'decoration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterBoxDecoration _$$_FlutterBoxDecorationFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterBoxDecoration(
      color: json['color'] == null
          ? null
          : FlutterColor.fromJson(json['color'] as Map<String, dynamic>),
      border: json['border'] == null
          ? null
          : FlutterBoxBorder.fromJson(json['border'] as Object),
      borderRadius: json['borderRadius'] == null
          ? null
          : FlutterBorderRadiusGeometry.fromJson(
              json['borderRadius'] as Object),
      boxShadow: (json['boxShadow'] as List<dynamic>?)
          ?.map((e) => FlutterBoxShadow.fromJson(e as Map<String, dynamic>))
          .toList(),
      shape: json['shape'] == null
          ? null
          : FlutterBoxShape.fromJson(json['shape'] as Map<String, dynamic>),
      backgroundBlendMode: json['backgroundBlendMode'] == null
          ? null
          : FlutterBlendMode.fromJson(
              json['backgroundBlendMode'] as Map<String, dynamic>),
    );

_$_FlutterShapeDecoration _$$_FlutterShapeDecorationFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterShapeDecoration(
      color: json['color'] == null
          ? null
          : FlutterColor.fromJson(json['color'] as Map<String, dynamic>),
      shadows: (json['shadows'] as List<dynamic>?)
          ?.map((e) => FlutterBoxShadow.fromJson(e as Map<String, dynamic>))
          .toList(),
      shape: FlutterShapeBorder.fromJson(json['shape'] as Object),
    );
