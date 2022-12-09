// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'safe_area.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterSafeArea _$$_FlutterSafeAreaFromJson(Map<String, dynamic> json) =>
    _$_FlutterSafeArea(
      key: json['key'] == null
          ? null
          : FlutterKey.fromJson(json['key'] as Object),
      left: json['left'] == null
          ? null
          : ZacValue<bool>.fromJson(
              json['left'] as Object, (value) => value as bool),
      top: json['top'] == null
          ? null
          : ZacValue<bool>.fromJson(
              json['top'] as Object, (value) => value as bool),
      right: json['right'] == null
          ? null
          : ZacValue<bool>.fromJson(
              json['right'] as Object, (value) => value as bool),
      bottom: json['bottom'] == null
          ? null
          : ZacValue<bool>.fromJson(
              json['bottom'] as Object, (value) => value as bool),
      minimum: json['minimum'] == null
          ? null
          : FlutterEdgeInsets.fromJson(json['minimum'] as Map<String, dynamic>),
      maintainBottomViewPadding: json['maintainBottomViewPadding'] == null
          ? null
          : ZacValue<bool>.fromJson(json['maintainBottomViewPadding'] as Object,
              (value) => value as bool),
      child: FlutterWidget.fromJson(json['child'] as Object),
    );
