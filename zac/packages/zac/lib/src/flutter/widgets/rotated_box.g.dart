// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rotated_box.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterRotatedBox _$$_FlutterRotatedBoxFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_FlutterRotatedBox',
      json,
      ($checkedConvert) {
        final val = _$_FlutterRotatedBox(
          key: $checkedConvert('key',
              (v) => v == null ? null : ZacBuilder<Key?>.fromJson(v as Object)),
          child: $checkedConvert(
              'child',
              (v) =>
                  v == null ? null : ZacBuilder<Widget?>.fromJson(v as Object)),
          quarterTurns: $checkedConvert('quarterTurns', (v) => v as int),
        );
        return val;
      },
    );
