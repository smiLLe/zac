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
          : FlutterTextDirection.fromJson(
              json['textDirection'] as Map<String, dynamic>),
      sizing: json['sizing'] == null
          ? null
          : FlutterStackFit.fromJson(json['sizing'] as Map<String, dynamic>),
      index: json['index'] == null
          ? null
          : ZacValue<int?>.fromJson(json['index'] as Object),
      children: json['children'] == null
          ? null
          : ZacValueList<Widget, List<Widget>?>.fromJson(
              json['children'] as Object),
    );
