// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'progress_indicator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterProgressIndicatorLinear _$$_FlutterProgressIndicatorLinearFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterProgressIndicatorLinear(
      key: json['key'] == null
          ? null
          : FlutterKey.fromJson(json['key'] as Object),
      value: json['value'] == null
          ? null
          : ZacValue<double>.fromJson(json['value'] as Object),
      backgroundColor: json['backgroundColor'] == null
          ? null
          : FlutterColor.fromJson(
              json['backgroundColor'] as Map<String, dynamic>),
      color: json['color'] == null
          ? null
          : FlutterColor.fromJson(json['color'] as Map<String, dynamic>),
      minHeight: json['minHeight'] == null
          ? null
          : ZacValue<double>.fromJson(json['minHeight'] as Object),
      semanticsLabel: json['semanticsLabel'] == null
          ? null
          : ZacValue<String>.fromJson(json['semanticsLabel'] as Object),
      semanticsValue: json['semanticsValue'] == null
          ? null
          : ZacValue<String>.fromJson(json['semanticsValue'] as Object),
      $type: json['converter'] as String?,
    );

_$_FlutterProgressIndicatorCircular
    _$$_FlutterProgressIndicatorCircularFromJson(Map<String, dynamic> json) =>
        _$_FlutterProgressIndicatorCircular(
          key: json['key'] == null
              ? null
              : FlutterKey.fromJson(json['key'] as Object),
          value: json['value'] == null
              ? null
              : ZacValue<double>.fromJson(json['value'] as Object),
          backgroundColor: json['backgroundColor'] == null
              ? null
              : FlutterColor.fromJson(
                  json['backgroundColor'] as Map<String, dynamic>),
          color: json['color'] == null
              ? null
              : FlutterColor.fromJson(json['color'] as Map<String, dynamic>),
          strokeWidth: json['strokeWidth'] == null
              ? null
              : ZacValue<double>.fromJson(json['strokeWidth'] as Object),
          semanticsLabel: json['semanticsLabel'] == null
              ? null
              : ZacValue<String>.fromJson(json['semanticsLabel'] as Object),
          semanticsValue: json['semanticsValue'] == null
              ? null
              : ZacValue<String>.fromJson(json['semanticsValue'] as Object),
          $type: json['converter'] as String?,
        );
