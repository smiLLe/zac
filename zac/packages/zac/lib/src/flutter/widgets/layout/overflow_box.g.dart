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
          : ZacBuilder<Key?>.fromJson(json['key'] as Object),
      alignment: json['alignment'] == null
          ? null
          : ZacBuilder<AlignmentGeometry?>.fromJson(
              json['alignment'] as Object),
      minWidth: json['minWidth'] == null
          ? null
          : ZacBuilder<double?>.fromJson(json['minWidth'] as Object),
      maxWidth: json['maxWidth'] == null
          ? null
          : ZacBuilder<double?>.fromJson(json['maxWidth'] as Object),
      minHeight: json['minHeight'] == null
          ? null
          : ZacBuilder<double?>.fromJson(json['minHeight'] as Object),
      maxHeight: json['maxHeight'] == null
          ? null
          : ZacBuilder<double?>.fromJson(json['maxHeight'] as Object),
      child: json['child'] == null
          ? null
          : ZacBuilder<Widget?>.fromJson(json['child'] as Object),
    );
