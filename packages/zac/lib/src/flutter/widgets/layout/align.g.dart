// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'align.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterAlign _$$_FlutterAlignFromJson(Map<String, dynamic> json) =>
    _$_FlutterAlign(
      key: json['key'] == null
          ? null
          : FlutterKey.fromJson(json['key'] as Object),
      alignment: json['alignment'] == null
          ? null
          : FlutterAlignmentGeometry.fromJson(json['alignment'] as Object),
      widthFactor: json['widthFactor'] == null
          ? null
          : ZacValue<double>.fromJson(json['widthFactor'] as Object),
      heightFactor: json['heightFactor'] == null
          ? null
          : ZacValue<double>.fromJson(json['heightFactor'] as Object),
      child: json['child'] == null
          ? null
          : FlutterWidget.fromJson(json['child'] as Object),
    );
