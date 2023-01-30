// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'constrained_box.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterConstrainedBox _$$_FlutterConstrainedBoxFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_FlutterConstrainedBox',
      json,
      ($checkedConvert) {
        final val = _$_FlutterConstrainedBox(
          key: $checkedConvert('key',
              (v) => v == null ? null : ZacBuilder<Key?>.fromJson(v as Object)),
          constraints: $checkedConvert('constraints',
              (v) => ZacBuilder<BoxConstraints>.fromJson(v as Object)),
          child: $checkedConvert(
              'child',
              (v) =>
                  v == null ? null : ZacBuilder<Widget?>.fromJson(v as Object)),
        );
        return val;
      },
    );
