// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wrap.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterWrap _$$_FlutterWrapFromJson(Map<String, dynamic> json) =>
    _$_FlutterWrap(
      key: json['key'] == null
          ? null
          : FlutterKey.fromJson(json['key'] as Object),
      direction: json['direction'] == null
          ? null
          : FlutterAxis.fromJson(json['direction'] as Map<String, dynamic>),
      alignment: json['alignment'] == null
          ? null
          : FlutterWrapAlignment.fromJson(
              json['alignment'] as Map<String, dynamic>),
      spacing: json['spacing'] == null
          ? null
          : ZacDouble.fromJson(json['spacing'] as Object),
      runSpacing: json['runSpacing'] == null
          ? null
          : ZacDouble.fromJson(json['runSpacing'] as Object),
      runAlignment: json['runAlignment'] == null
          ? null
          : FlutterWrapAlignment.fromJson(
              json['runAlignment'] as Map<String, dynamic>),
      crossAxisAlignment: json['crossAxisAlignment'] == null
          ? null
          : FlutterWrapCrossAlignment.fromJson(
              json['crossAxisAlignment'] as Map<String, dynamic>),
      textDirection: json['textDirection'] == null
          ? null
          : FlutterTextDirection.fromJson(
              json['textDirection'] as Map<String, dynamic>),
      verticalDirection: json['verticalDirection'] == null
          ? null
          : FlutterVerticalDirection.fromJson(
              json['verticalDirection'] as Map<String, dynamic>),
      clipBehavior: json['clipBehavior'] == null
          ? null
          : FlutterClip.fromJson(json['clipBehavior'] as Map<String, dynamic>),
      children: json['children'] == null
          ? null
          : ZacListOfFlutterWidget.fromJson(json['children'] as Object),
    );
