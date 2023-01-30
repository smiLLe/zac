// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offstage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterOffstage _$$_FlutterOffstageFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_FlutterOffstage',
      json,
      ($checkedConvert) {
        final val = _$_FlutterOffstage(
          key: $checkedConvert('key',
              (v) => v == null ? null : ZacBuilder<Key?>.fromJson(v as Object)),
          offstage: $checkedConvert(
              'offstage',
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
