// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fractional_translation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterFractionalTranslation _$$_FlutterFractionalTranslationFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterFractionalTranslation(
      key: json['key'] == null
          ? null
          : FlutterKey.fromJson(json['key'] as Object),
      child: json['child'] == null
          ? null
          : FlutterWidget.fromJson(json['child'] as Object),
      translation:
          FlutterOffset.fromJson(json['translation'] as Map<String, dynamic>),
      transformHitTests: json['transformHitTests'] == null
          ? null
          : ZacBool.fromJson(json['transformHitTests'] as Object),
    );
