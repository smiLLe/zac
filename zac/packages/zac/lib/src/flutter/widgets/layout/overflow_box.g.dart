// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'overflow_box.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterOverflowBox _$$_FlutterOverflowBoxFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterOverflowBox(
      key: json['key'] == null
          ? null
          : FlutterKey.fromJson(json['key'] as Object),
      alignment: json['alignment'] == null
          ? null
          : FlutterAlignmentGeometry.fromJson(json['alignment'] as Object),
      minWidth: json['minWidth'] == null
          ? null
          : ZacDouble.fromJson(json['minWidth'] as Object),
      maxWidth: json['maxWidth'] == null
          ? null
          : ZacDouble.fromJson(json['maxWidth'] as Object),
      minHeight: json['minHeight'] == null
          ? null
          : ZacDouble.fromJson(json['minHeight'] as Object),
      maxHeight: json['maxHeight'] == null
          ? null
          : ZacDouble.fromJson(json['maxHeight'] as Object),
      child: json['child'] == null
          ? null
          : FlutterWidget.fromJson(json['child'] as Object),
    );
