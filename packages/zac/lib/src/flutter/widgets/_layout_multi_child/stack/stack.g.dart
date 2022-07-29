// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stack.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterStack _$$_FlutterStackFromJson(Map<String, dynamic> json) =>
    _$_FlutterStack(
      key: json['key'] == null
          ? null
          : FlutterKey.fromJson(json['key'] as Object),
      alignment: json['alignment'] == null
          ? null
          : FlutterAlignmentGeometry.fromJson(json['alignment'] as Object),
      textDirection: json['textDirection'] == null
          ? null
          : FlutterTextDirection.fromJson(
              json['textDirection'] as Map<String, dynamic>),
      fit: json['fit'] == null
          ? null
          : FlutterStackFit.fromJson(json['fit'] as Map<String, dynamic>),
      clipBehavior: json['clipBehavior'] == null
          ? null
          : FlutterClip.fromJson(json['clipBehavior'] as Map<String, dynamic>),
      children: json['children'] == null
          ? null
          : ListOfZacWidget.fromJson(json['children'] as Object),
    );
