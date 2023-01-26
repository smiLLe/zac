// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'center.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterCenter _$$_FlutterCenterFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_FlutterCenter',
      json,
      ($checkedConvert) {
        final val = _$_FlutterCenter(
          key: $checkedConvert('key',
              (v) => v == null ? null : ZacBuilder<Key?>.fromJson(v as Object)),
          widthFactor: $checkedConvert(
              'widthFactor',
              (v) =>
                  v == null ? null : ZacBuilder<double?>.fromJson(v as Object)),
          heightFactor: $checkedConvert(
              'heightFactor',
              (v) =>
                  v == null ? null : ZacBuilder<double?>.fromJson(v as Object)),
          child: $checkedConvert(
              'child',
              (v) =>
                  v == null ? null : ZacBuilder<Widget?>.fromJson(v as Object)),
        );
        return val;
      },
    );
