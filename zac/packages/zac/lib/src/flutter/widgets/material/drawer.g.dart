// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drawer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterDrawer _$$_FlutterDrawerFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_FlutterDrawer',
      json,
      ($checkedConvert) {
        final val = _$_FlutterDrawer(
          key: $checkedConvert('key',
              (v) => v == null ? null : ZacBuilder<Key?>.fromJson(v as Object)),
          backgroundColor: $checkedConvert(
              'backgroundColor',
              (v) =>
                  v == null ? null : ZacBuilder<Color?>.fromJson(v as Object)),
          elevation: $checkedConvert(
              'elevation',
              (v) =>
                  v == null ? null : ZacBuilder<double?>.fromJson(v as Object)),
          shape: $checkedConvert(
              'shape',
              (v) => v == null
                  ? null
                  : ZacBuilder<ShapeBorder?>.fromJson(v as Object)),
          child: $checkedConvert(
              'child',
              (v) =>
                  v == null ? null : ZacBuilder<Widget?>.fromJson(v as Object)),
          semanticLabel: $checkedConvert(
              'semanticLabel',
              (v) =>
                  v == null ? null : ZacBuilder<String?>.fromJson(v as Object)),
        );
        return val;
      },
    );
