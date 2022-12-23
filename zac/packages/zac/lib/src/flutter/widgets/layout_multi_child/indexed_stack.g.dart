// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'indexed_stack.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterIndexedStack _$$_FlutterIndexedStackFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterIndexedStack(
      key: json['key'] == null
          ? null
          : ZacValue<Key?>.fromJson(json['key'] as Object),
      alignment: json['alignment'] == null
          ? null
          : ZacValue<AlignmentGeometry?>.fromJson(json['alignment'] as Object),
      textDirection: json['textDirection'] == null
          ? null
          : ZacValue<TextDirection?>.fromJson(json['textDirection'] as Object),
      sizing: json['sizing'] == null
          ? null
          : ZacValue<StackFit?>.fromJson(json['sizing'] as Object),
      index: json['index'] == null
          ? null
          : ZacValue<int?>.fromJson(json['index'] as Object),
      children: json['children'] == null
          ? null
          : ZacValueList<Widget, List<Widget>?>.fromJson(
              json['children'] as Object),
    );
