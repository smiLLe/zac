// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'safe_area.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterSafeArea _$$_FlutterSafeAreaFromJson(Map<String, dynamic> json) =>
    _$_FlutterSafeArea(
      key: json['key'] == null
          ? null
          : ZacBuilder<Key?>.fromJson(json['key'] as Object),
      left: json['left'] == null
          ? null
          : ZacBuilder<bool?>.fromJson(json['left'] as Object),
      top: json['top'] == null
          ? null
          : ZacBuilder<bool?>.fromJson(json['top'] as Object),
      right: json['right'] == null
          ? null
          : ZacBuilder<bool?>.fromJson(json['right'] as Object),
      bottom: json['bottom'] == null
          ? null
          : ZacBuilder<bool?>.fromJson(json['bottom'] as Object),
      minimum: json['minimum'] == null
          ? null
          : ZacBuilder<EdgeInsets?>.fromJson(json['minimum'] as Object),
      maintainBottomViewPadding: json['maintainBottomViewPadding'] == null
          ? null
          : ZacBuilder<bool?>.fromJson(
              json['maintainBottomViewPadding'] as Object),
      child: ZacBuilder<Widget>.fromJson(json['child'] as Object),
    );
