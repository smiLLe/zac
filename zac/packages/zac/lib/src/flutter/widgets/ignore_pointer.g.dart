// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ignore_pointer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterIgnorePointer _$$_FlutterIgnorePointerFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_FlutterIgnorePointer',
      json,
      ($checkedConvert) {
        final val = _$_FlutterIgnorePointer(
          key: $checkedConvert('key',
              (v) => v == null ? null : ZacBuilder<Key?>.fromJson(v as Object)),
          ignoring: $checkedConvert(
              'ignoring',
              (v) =>
                  v == null ? null : ZacBuilder<bool?>.fromJson(v as Object)),
          ignoringSemantics: $checkedConvert(
              'ignoringSemantics',
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
