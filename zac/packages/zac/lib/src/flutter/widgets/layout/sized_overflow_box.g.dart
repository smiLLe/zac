// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sized_overflow_box.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterSizedOverflowBox _$$_FlutterSizedOverflowBoxFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterSizedOverflowBox(
      key: json['key'] == null
          ? null
          : FlutterKey.fromJson(json['key'] as Object),
      size: FlutterSize.fromJson(json['size'] as Map<String, dynamic>),
      alignment: json['alignment'] == null
          ? null
          : FlutterAlignmentGeometry.fromJson(json['alignment'] as Object),
      child: json['child'] == null
          ? null
          : FlutterWidget.fromJson(json['child'] as Object),
    );
