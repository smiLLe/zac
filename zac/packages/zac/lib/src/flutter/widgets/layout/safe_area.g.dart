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
          : ZacBool.fromJson(json['left'] as Object),
      top: json['top'] == null ? null : ZacBool.fromJson(json['top'] as Object),
      right: json['right'] == null
          ? null
          : ZacBool.fromJson(json['right'] as Object),
      bottom: json['bottom'] == null
          ? null
          : ZacBool.fromJson(json['bottom'] as Object),
      minimum: json['minimum'] == null
          ? null
          : FlutterEdgeInsets.fromJson(json['minimum'] as Map<String, dynamic>),
      maintainBottomViewPadding: json['maintainBottomViewPadding'] == null
          ? null
          : ZacBool.fromJson(json['maintainBottomViewPadding'] as Object),
      child: FlutterWidget.fromJson(json['child'] as Object),
    );
