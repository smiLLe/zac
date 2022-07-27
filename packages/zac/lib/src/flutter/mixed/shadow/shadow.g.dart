// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shadow.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterUiShadow _$$_FlutterUiShadowFromJson(Map<String, dynamic> json) =>
    _$_FlutterUiShadow(
      color: json['color'] == null
          ? null
          : FlutterColor.fromJson(json['color'] as Map<String, dynamic>),
      offset: json['offset'] == null
          ? null
          : FlutterOffset.fromJson(json['offset'] as Map<String, dynamic>),
      blurRadius: json['blurRadius'] == null
          ? null
          : ZacDouble.fromJson(json['blurRadius'] as Object),
    );

_$_FlutterBoxShadow _$$_FlutterBoxShadowFromJson(Map<String, dynamic> json) =>
    _$_FlutterBoxShadow(
      color: json['color'] == null
          ? null
          : FlutterColor.fromJson(json['color'] as Map<String, dynamic>),
      offset: json['offset'] == null
          ? null
          : FlutterOffset.fromJson(json['offset'] as Map<String, dynamic>),
      blurRadius: json['blurRadius'] == null
          ? null
          : ZacDouble.fromJson(json['blurRadius'] as Object),
      spreadRadius: json['spreadRadius'] == null
          ? null
          : ZacDouble.fromJson(json['spreadRadius'] as Object),
      blurStyle: json['blurStyle'] == null
          ? null
          : FlutterBlurStyle.fromJson(
              json['blurStyle'] as Map<String, dynamic>),
    );
