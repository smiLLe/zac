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
          : ZacValue<MainAxisAlignment?>.fromJson(
              json['mainAxisAlignment'] as Object),
      mainAxisSize: json['mainAxisSize'] == null
          ? null
          : ZacValue<MainAxisSize?>.fromJson(json['mainAxisSize'] as Object),
      crossAxisAlignment: json['crossAxisAlignment'] == null
          ? null
          : ZacValue<CrossAxisAlignment?>.fromJson(
              json['crossAxisAlignment'] as Object),
      textDirection: json['textDirection'] == null
          ? null
          : ZacValue<TextDirection?>.fromJson(json['textDirection'] as Object),
      verticalDirection: json['verticalDirection'] == null
          ? null
          : ZacValue<VerticalDirection?>.fromJson(
              json['verticalDirection'] as Object),
      textBaseline: json['textBaseline'] == null
          ? null
          : ZacValue<TextBaseline?>.fromJson(json['textBaseline'] as Object),
      children: json['children'] == null
          ? null
          : ZacValueList<Widget, List<Widget>?>.fromJson(
              json['children'] as Object),
    );
