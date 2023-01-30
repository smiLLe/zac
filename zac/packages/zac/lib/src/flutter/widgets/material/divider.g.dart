// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'divider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterDivider _$$_FlutterDividerFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_FlutterDivider',
      json,
      ($checkedConvert) {
        final val = _$_FlutterDivider(
          key: $checkedConvert('key',
              (v) => v == null ? null : ZacBuilder<Key?>.fromJson(v as Object)),
          height: $checkedConvert(
              'height',
              (v) =>
                  v == null ? null : ZacBuilder<double?>.fromJson(v as Object)),
          thickness: $checkedConvert(
              'thickness',
              (v) =>
                  v == null ? null : ZacBuilder<double?>.fromJson(v as Object)),
          indent: $checkedConvert(
              'indent',
              (v) =>
                  v == null ? null : ZacBuilder<double?>.fromJson(v as Object)),
          endIndent: $checkedConvert(
              'endIndent',
              (v) =>
                  v == null ? null : ZacBuilder<double?>.fromJson(v as Object)),
          color: $checkedConvert(
              'color',
              (v) =>
                  v == null ? null : ZacBuilder<Color?>.fromJson(v as Object)),
        );
        return val;
      },
    );
