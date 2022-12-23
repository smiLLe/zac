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
          : ZacValue<Key?>.fromJson(json['key'] as Object),
      size: FlutterSize.fromJson(json['size'] as Map<String, dynamic>),
      alignment: json['alignment'] == null
          ? null
          : ZacValue<AlignmentGeometry?>.fromJson(json['alignment'] as Object),
      child: json['child'] == null
          ? null
          : ZacValue<Widget?>.fromJson(json['child'] as Object),
    );
