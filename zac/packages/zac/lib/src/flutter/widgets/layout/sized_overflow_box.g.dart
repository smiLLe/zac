// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sized_overflow_box.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterSizedOverflowBox _$$_FlutterSizedOverflowBoxFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_FlutterSizedOverflowBox',
      json,
      ($checkedConvert) {
        final val = _$_FlutterSizedOverflowBox(
          key: $checkedConvert('key',
              (v) => v == null ? null : ZacBuilder<Key?>.fromJson(v as Object)),
          size: $checkedConvert(
              'size', (v) => ZacBuilder<Size>.fromJson(v as Object)),
          alignment: $checkedConvert(
              'alignment',
              (v) => v == null
                  ? null
                  : ZacBuilder<AlignmentGeometry?>.fromJson(v as Object)),
          child: $checkedConvert(
              'child',
              (v) =>
                  v == null ? null : ZacBuilder<Widget?>.fromJson(v as Object)),
        );
        return val;
      },
    );
