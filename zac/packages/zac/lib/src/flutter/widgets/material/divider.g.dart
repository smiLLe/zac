// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'divider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterDivider _$$_FlutterDividerFromJson(Map<String, dynamic> json) =>
    _$_FlutterDivider(
      key: json['key'] == null
          ? null
          : FlutterKey.fromJson(json['key'] as Object),
      height: json['height'] == null
          ? null
          : ZacValue<double>.fromJson(
              json['height'] as Object, (value) => (value as num).toDouble()),
      thickness: json['thickness'] == null
          ? null
          : ZacValue<double>.fromJson(json['thickness'] as Object,
              (value) => (value as num).toDouble()),
      indent: json['indent'] == null
          ? null
          : ZacValue<double>.fromJson(
              json['indent'] as Object, (value) => (value as num).toDouble()),
      endIndent: json['endIndent'] == null
          ? null
          : ZacValue<double>.fromJson(json['endIndent'] as Object,
              (value) => (value as num).toDouble()),
      color: json['color'] == null
          ? null
          : FlutterColor.fromJson(json['color'] as Map<String, dynamic>),
    );
