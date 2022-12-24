// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stack.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterStack _$$_FlutterStackFromJson(Map<String, dynamic> json) =>
    _$_FlutterStack(
      key: json['key'] == null
          ? null
          : ZacValue<Key?>.fromJson(json['key'] as Object),
      alignment: json['alignment'] == null
          ? null
          : ZacValue<AlignmentGeometry?>.fromJson(json['alignment'] as Object),
      textDirection: json['textDirection'] == null
          ? null
          : ZacValue<TextDirection?>.fromJson(json['textDirection'] as Object),
      fit: json['fit'] == null
          ? null
          : ZacValue<StackFit?>.fromJson(json['fit'] as Object),
      clipBehavior: json['clipBehavior'] == null
          ? null
          : ZacValue<Clip?>.fromJson(json['clipBehavior'] as Object),
      children: json['children'] == null
          ? null
          : ZacValueList<Widget, List<Widget>?>.fromJson(
              json['children'] as Object),
    );
