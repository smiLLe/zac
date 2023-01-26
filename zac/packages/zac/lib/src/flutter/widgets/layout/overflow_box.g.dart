// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'overflow_box.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterOverflowBox _$$_FlutterOverflowBoxFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_FlutterOverflowBox',
      json,
      ($checkedConvert) {
        final val = _$_FlutterOverflowBox(
          key: $checkedConvert('key',
              (v) => v == null ? null : ZacBuilder<Key?>.fromJson(v as Object)),
          alignment: $checkedConvert(
              'alignment',
              (v) => v == null
                  ? null
                  : ZacBuilder<AlignmentGeometry?>.fromJson(v as Object)),
          minWidth: $checkedConvert(
              'minWidth',
              (v) =>
                  v == null ? null : ZacBuilder<double?>.fromJson(v as Object)),
          maxWidth: $checkedConvert(
              'maxWidth',
              (v) =>
                  v == null ? null : ZacBuilder<double?>.fromJson(v as Object)),
          minHeight: $checkedConvert(
              'minHeight',
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
