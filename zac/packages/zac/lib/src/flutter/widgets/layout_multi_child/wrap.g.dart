// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wrap.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterWrap _$$_FlutterWrapFromJson(Map<String, dynamic> json) =>
    _$_FlutterWrap(
      key: json['key'] == null
          ? null
          : ZacBuilder<Key?>.fromJson(json['key'] as Object),
      direction: json['direction'] == null
          ? null
          : ZacBuilder<Axis?>.fromJson(json['direction'] as Object),
      alignment: json['alignment'] == null
          ? null
          : ZacBuilder<WrapAlignment?>.fromJson(json['alignment'] as Object),
      spacing: json['spacing'] == null
          ? null
          : ZacBuilder<double?>.fromJson(json['spacing'] as Object),
      runSpacing: json['runSpacing'] == null
          ? null
          : ZacBuilder<double?>.fromJson(json['runSpacing'] as Object),
      runAlignment: json['runAlignment'] == null
          ? null
          : ZacBuilder<WrapAlignment?>.fromJson(json['runAlignment'] as Object),
      crossAxisAlignment: json['crossAxisAlignment'] == null
          ? null
          : ZacBuilder<WrapCrossAlignment?>.fromJson(
              json['crossAxisAlignment'] as Object),
      textDirection: json['textDirection'] == null
          ? null
          : ZacBuilder<TextDirection?>.fromJson(
              json['textDirection'] as Object),
      verticalDirection: json['verticalDirection'] == null
          ? null
          : ZacBuilder<VerticalDirection?>.fromJson(
              json['verticalDirection'] as Object),
      clipBehavior: json['clipBehavior'] == null
          ? null
          : ZacBuilder<Clip?>.fromJson(json['clipBehavior'] as Object),
      children: json['children'] == null
          ? null
          : ZacBuilder<List<Widget>?>.fromJson(json['children'] as Object),
    );
