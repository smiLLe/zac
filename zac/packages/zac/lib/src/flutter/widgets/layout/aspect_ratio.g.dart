// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aspect_ratio.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterAspectRatio _$$_FlutterAspectRatioFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterAspectRatio(
      key: json['key'] == null
          ? null
          : FlutterKey.fromJson(json['key'] as Object),
      aspectRatio: ZacValue<double>.fromJson(json['aspectRatio'] as Object),
      child: json['child'] == null
          ? null
          : FlutterWidget.fromJson(json['child'] as Object),
    );
