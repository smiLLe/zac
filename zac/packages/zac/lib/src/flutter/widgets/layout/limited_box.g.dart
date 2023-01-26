// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'limited_box.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterLimitedBox _$$_FlutterLimitedBoxFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_FlutterLimitedBox',
      json,
      ($checkedConvert) {
        final val = _$_FlutterLimitedBox(
          key: $checkedConvert('key',
              (v) => v == null ? null : ZacBuilder<Key?>.fromJson(v as Object)),
          maxWidth: $checkedConvert(
              'maxWidth',
              (v) =>
                  v == null ? null : ZacBuilder<double?>.fromJson(v as Object)),
          maxHeight: $checkedConvert(
              'maxHeight',
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
