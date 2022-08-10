// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'row.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterRow _$$_FlutterRowFromJson(Map<String, dynamic> json) =>
    _$_FlutterRow(
      key: json['key'] == null
          ? null
          : FlutterKey.fromJson(json['key'] as Object),
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
          : ListOfZacWidget.fromJson(json['children'] as Object),
    );
