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
          : ZacBuilder<Key?>.fromJson(json['key'] as Object),
      child: json['child'] == null
          ? null
          : ZacBuilder<Widget?>.fromJson(json['child'] as Object),
      translation:
          FlutterOffset.fromJson(json['translation'] as Map<String, dynamic>),
      transformHitTests: json['transformHitTests'] == null
          ? null
          : ZacBuilder<bool?>.fromJson(json['transformHitTests'] as Object),
    );
