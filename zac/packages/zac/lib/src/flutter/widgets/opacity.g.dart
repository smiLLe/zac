// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'opacity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterOpacity _$$_FlutterOpacityFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_FlutterOpacity',
      json,
      ($checkedConvert) {
        final val = _$_FlutterOpacity(
          key: $checkedConvert('key',
              (v) => v == null ? null : ZacBuilder<Key?>.fromJson(v as Object)),
          opacity: $checkedConvert(
              'opacity', (v) => ZacBuilder<double>.fromJson(v as Object)),
          alwaysIncludeSemantics: $checkedConvert(
              'alwaysIncludeSemantics',
              (v) =>
                  v == null ? null : ZacBuilder<bool?>.fromJson(v as Object)),
          child: $checkedConvert(
              'child',
              (v) =>
                  v == null ? null : ZacBuilder<Widget?>.fromJson(v as Object)),
        );
        return val;
      },
    );
