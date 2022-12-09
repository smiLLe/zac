// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expanded.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterExpanded _$$_FlutterExpandedFromJson(Map<String, dynamic> json) =>
    _$_FlutterExpanded(
      key: json['key'] == null
          ? null
          : FlutterKey.fromJson(json['key'] as Object),
      flex: json['flex'] == null
          ? null
          : ZacValue<int>.fromJson(
              json['flex'] as Object, (value) => value as int),
      child: FlutterWidget.fromJson(json['child'] as Object),
    );
