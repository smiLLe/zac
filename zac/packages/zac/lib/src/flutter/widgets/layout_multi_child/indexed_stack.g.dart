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
          : ZacBuilder<Key?>.fromJson(json['key'] as Object),
      alignment: json['alignment'] == null
          ? null
          : ZacBuilder<AlignmentGeometry?>.fromJson(
              json['alignment'] as Object),
      textDirection: json['textDirection'] == null
          ? null
          : ZacBuilder<TextDirection?>.fromJson(
              json['textDirection'] as Object),
      sizing: json['sizing'] == null
          ? null
          : ZacBuilder<StackFit?>.fromJson(json['sizing'] as Object),
      index: json['index'] == null
          ? null
          : ZacBuilder<int?>.fromJson(json['index'] as Object),
      children: json['children'] == null
          ? null
          : ZacBuilder<List<Widget>?>.fromJson(json['children'] as Object),
    );
