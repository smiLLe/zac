// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'container.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterContainer _$$_FlutterContainerFromJson(Map<String, dynamic> json) =>
    _$_FlutterContainer(
      key: json['key'] == null
          ? null
          : FlutterKey.fromJson(json['key'] as Object),
      child: json['child'] == null
          ? null
          : ZacWidget.fromJson(json['child'] as Object),
      color: json['color'] == null
          ? null
          : FlutterColor.fromJson(json['color'] as Map<String, dynamic>),
      margin: json['margin'] == null
          ? null
          : FlutterEdgeInsetsGeometry.fromJson(json['margin'] as Object),
      padding: json['padding'] == null
          ? null
          : FlutterEdgeInsetsGeometry.fromJson(json['padding'] as Object),
      alignment: json['alignment'] == null
          ? null
          : FlutterAlignmentGeometry.fromJson(json['alignment'] as Object),
      decoration: json['decoration'] == null
          ? null
          : FlutterDecoration.fromJson(json['decoration'] as Object),
    );
