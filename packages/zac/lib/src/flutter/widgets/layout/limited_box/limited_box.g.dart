// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'limited_box.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterLimitedBox _$$_FlutterLimitedBoxFromJson(Map<String, dynamic> json) =>
    _$_FlutterLimitedBox(
      key: json['key'] == null
          ? null
          : FlutterKey.fromJson(json['key'] as Object),
      maxWidth: json['maxWidth'] == null
          ? null
          : ZacDouble.fromJson(json['maxWidth'] as Object),
      maxHeight: json['maxHeight'] == null
          ? null
          : ZacDouble.fromJson(json['maxHeight'] as Object),
      child: json['child'] == null
          ? null
          : ZacWidget.fromJson(json['child'] as Object),
    );
