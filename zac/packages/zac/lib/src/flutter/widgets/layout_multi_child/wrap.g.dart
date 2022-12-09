// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wrap.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterWrap _$$_FlutterWrapFromJson(Map<String, dynamic> json) =>
    _$_FlutterWrap(
      key: json['key'] == null
          ? null
          : ZacValue<Key>.fromJson(json['key'] as Object),
      direction: json['direction'] == null
          ? null
          : ZacValue<Axis>.fromJson(json['direction'] as Object),
      alignment: json['alignment'] == null
          ? null
          : ZacValue<WrapAlignment>.fromJson(json['alignment'] as Object),
      spacing: json['spacing'] == null
          ? null
          : ZacValue<double>.fromJson(json['spacing'] as Object),
      runSpacing: json['runSpacing'] == null
          ? null
          : ZacValue<double>.fromJson(json['runSpacing'] as Object),
      runAlignment: json['runAlignment'] == null
          ? null
          : ZacValue<WrapAlignment>.fromJson(json['runAlignment'] as Object),
      crossAxisAlignment: json['crossAxisAlignment'] == null
          ? null
          : ZacValue<WrapCrossAlignment>.fromJson(
              json['crossAxisAlignment'] as Object),
      textDirection: json['textDirection'] == null
          ? null
          : ZacValue<dynamic>.fromJson(json['textDirection'] as Object),
      verticalDirection: json['verticalDirection'] == null
          ? null
          : ZacValue<VerticalDirection>.fromJson(
              json['verticalDirection'] as Object),
      clipBehavior: json['clipBehavior'] == null
          ? null
          : ZacValue<dynamic>.fromJson(json['clipBehavior'] as Object),
      children: json['children'] == null
          ? null
          : ZacListOfFlutterWidget.fromJson(json['children'] as Object),
    );
