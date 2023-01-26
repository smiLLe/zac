// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fractional_translation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterFractionalTranslation _$$_FlutterFractionalTranslationFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_FlutterFractionalTranslation',
      json,
      ($checkedConvert) {
        final val = _$_FlutterFractionalTranslation(
          key: $checkedConvert('key',
              (v) => v == null ? null : ZacBuilder<Key?>.fromJson(v as Object)),
          child: $checkedConvert(
              'child',
              (v) =>
                  v == null ? null : ZacBuilder<Widget?>.fromJson(v as Object)),
          translation: $checkedConvert('translation',
              (v) => FlutterOffset.fromJson(v as Map<String, dynamic>)),
          transformHitTests: $checkedConvert(
              'transformHitTests',
              (v) =>
                  v == null ? null : ZacBuilder<bool?>.fromJson(v as Object)),
        );
        return val;
      },
    );
