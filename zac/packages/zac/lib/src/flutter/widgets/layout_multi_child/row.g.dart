// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'row.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterRow _$$_FlutterRowFromJson(Map<String, dynamic> json) =>
    _$_FlutterRow(
      key: json['key'] == null
          ? null
          : ZacBuilder<Key?>.fromJson(json['key'] as Object),
      mainAxisAlignment: json['mainAxisAlignment'] == null
          ? null
          : ZacBuilder<MainAxisAlignment?>.fromJson(
              json['mainAxisAlignment'] as Object),
      mainAxisSize: json['mainAxisSize'] == null
          ? null
          : ZacBuilder<MainAxisSize?>.fromJson(json['mainAxisSize'] as Object),
      crossAxisAlignment: json['crossAxisAlignment'] == null
          ? null
          : ZacBuilder<CrossAxisAlignment?>.fromJson(
              json['crossAxisAlignment'] as Object),
      textDirection: json['textDirection'] == null
          ? null
          : ZacBuilder<TextDirection?>.fromJson(
              json['textDirection'] as Object),
      verticalDirection: json['verticalDirection'] == null
          ? null
          : ZacBuilder<VerticalDirection?>.fromJson(
              json['verticalDirection'] as Object),
      textBaseline: json['textBaseline'] == null
          ? null
          : ZacBuilder<TextBaseline?>.fromJson(json['textBaseline'] as Object),
      children: json['children'] == null
          ? null
          : ZacListBuilder<Widget, List<Widget>?>.fromJson(
              json['children'] as Object),
    );
