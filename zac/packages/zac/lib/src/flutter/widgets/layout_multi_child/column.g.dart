// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'column.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterColumn _$$_FlutterColumnFromJson(Map<String, dynamic> json) =>
    _$_FlutterColumn(
      key: json['key'] == null
          ? null
          : ZacValue<Key?>.fromJson(json['key'] as Object),
      mainAxisAlignment: json['mainAxisAlignment'] == null
          ? null
          : FlutterMainAxisAlignment.fromJson(
              json['mainAxisAlignment'] as Map<String, dynamic>),
      mainAxisSize: json['mainAxisSize'] == null
          ? null
          : FlutterMainAxisSize.fromJson(
              json['mainAxisSize'] as Map<String, dynamic>),
      crossAxisAlignment: json['crossAxisAlignment'] == null
          ? null
          : FlutterCrossAxisAlignment.fromJson(
              json['crossAxisAlignment'] as Map<String, dynamic>),
      textDirection: json['textDirection'] == null
          ? null
          : FlutterTextDirection.fromJson(
              json['textDirection'] as Map<String, dynamic>),
      verticalDirection: json['verticalDirection'] == null
          ? null
          : FlutterVerticalDirection.fromJson(
              json['verticalDirection'] as Map<String, dynamic>),
      textBaseline: json['textBaseline'] == null
          ? null
          : FlutterTextBaseline.fromJson(
              json['textBaseline'] as Map<String, dynamic>),
      children: json['children'] == null
          ? null
          : ZacValueList<Widget, List<Widget>?>.fromJson(
              json['children'] as Object),
    );
