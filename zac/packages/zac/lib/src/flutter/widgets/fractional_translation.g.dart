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
          : ZacValue<Key?>.fromJson(json['key'] as Object),
      child: json['child'] == null
          ? null
          : ZacValue<Widget?>.fromJson(json['child'] as Object),
      translation:
          FlutterOffset.fromJson(json['translation'] as Map<String, dynamic>),
      transformHitTests: json['transformHitTests'] == null
          ? null
          : ZacValue<bool?>.fromJson(json['transformHitTests'] as Object),
    );
