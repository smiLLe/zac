// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clip_oval.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterClipOval _$$_FlutterClipOvalFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_FlutterClipOval',
      json,
      ($checkedConvert) {
        final val = _$_FlutterClipOval(
          key: $checkedConvert('key',
              (v) => v == null ? null : ZacBuilder<Key?>.fromJson(v as Object)),
          child: $checkedConvert(
              'child',
              (v) =>
                  v == null ? null : ZacBuilder<Widget?>.fromJson(v as Object)),
          clipBehavior: $checkedConvert(
              'clipBehavior',
              (v) =>
                  v == null ? null : ZacBuilder<Clip?>.fromJson(v as Object)),
        );
        return val;
      },
    );
