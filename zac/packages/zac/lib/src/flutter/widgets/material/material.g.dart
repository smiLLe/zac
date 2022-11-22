// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'material.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterMaterial _$$_FlutterMaterialFromJson(Map<String, dynamic> json) =>
    _$_FlutterMaterial(
      key: json['key'] == null
          ? null
          : FlutterKey.fromJson(json['key'] as Object),
      child: json['child'] == null
          ? null
          : FlutterWidget.fromJson(json['child'] as Object),
      elevation: json['elevation'] == null
          ? null
          : ZacDouble.fromJson(json['elevation'] as Object),
      color: json['color'] == null
          ? null
          : FlutterColor.fromJson(json['color'] as Map<String, dynamic>),
      shadowColor: json['shadowColor'] == null
          ? null
          : FlutterColor.fromJson(json['shadowColor'] as Map<String, dynamic>),
      textStyle: json['textStyle'] == null
          ? null
          : FlutterTextStyle.fromJson(
              json['textStyle'] as Map<String, dynamic>),
      borderRadius: json['borderRadius'] == null
          ? null
          : FlutterBorderRadiusGeometry.fromJson(
              json['borderRadius'] as Object),
      shape: json['shape'] == null
          ? null
          : FlutterShapeBorder.fromJson(json['shape'] as Object),
      borderOnForeground: json['borderOnForeground'] == null
          ? null
          : ZacValue<bool>.fromJson(json['borderOnForeground'] as Object),
      clipBehavior: json['clipBehavior'] == null
          ? null
          : FlutterClip.fromJson(json['clipBehavior'] as Map<String, dynamic>),
    );
