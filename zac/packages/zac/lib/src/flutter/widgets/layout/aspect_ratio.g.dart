// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aspect_ratio.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterAspectRatio _$$_FlutterAspectRatioFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_FlutterAspectRatio',
      json,
      ($checkedConvert) {
        final val = _$_FlutterAspectRatio(
          key: $checkedConvert('key',
              (v) => v == null ? null : ZacBuilder<Key?>.fromJson(v as Object)),
          aspectRatio: $checkedConvert(
              'aspectRatio', (v) => ZacBuilder<double>.fromJson(v as Object)),
          child: $checkedConvert(
              'child',
              (v) =>
                  v == null ? null : ZacBuilder<Widget?>.fromJson(v as Object)),
        );
        return val;
      },
    );
