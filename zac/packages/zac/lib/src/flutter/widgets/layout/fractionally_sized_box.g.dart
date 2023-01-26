// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fractionally_sized_box.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterFractionallySizedBox _$$_FlutterFractionallySizedBoxFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_FlutterFractionallySizedBox',
      json,
      ($checkedConvert) {
        final val = _$_FlutterFractionallySizedBox(
          key: $checkedConvert('key',
              (v) => v == null ? null : ZacBuilder<Key?>.fromJson(v as Object)),
          child: $checkedConvert(
              'child',
              (v) =>
                  v == null ? null : ZacBuilder<Widget?>.fromJson(v as Object)),
          alignment: $checkedConvert(
              'alignment',
              (v) => v == null
                  ? null
                  : ZacBuilder<AlignmentGeometry?>.fromJson(v as Object)),
          widthFactor: $checkedConvert(
              'widthFactor',
              (v) =>
                  v == null ? null : ZacBuilder<double?>.fromJson(v as Object)),
          heightFactor: $checkedConvert(
              'heightFactor',
              (v) =>
                  v == null ? null : ZacBuilder<double?>.fromJson(v as Object)),
        );
        return val;
      },
    );
