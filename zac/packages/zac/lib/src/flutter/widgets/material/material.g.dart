// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'material.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterMaterial _$$_FlutterMaterialFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_FlutterMaterial',
      json,
      ($checkedConvert) {
        final val = _$_FlutterMaterial(
          key: $checkedConvert('key',
              (v) => v == null ? null : ZacBuilder<Key?>.fromJson(v as Object)),
          child: $checkedConvert(
              'child',
              (v) =>
                  v == null ? null : ZacBuilder<Widget?>.fromJson(v as Object)),
          elevation: $checkedConvert(
              'elevation',
              (v) =>
                  v == null ? null : ZacBuilder<double?>.fromJson(v as Object)),
          color: $checkedConvert(
              'color',
              (v) =>
                  v == null ? null : ZacBuilder<Color?>.fromJson(v as Object)),
          shadowColor: $checkedConvert(
              'shadowColor',
              (v) =>
                  v == null ? null : ZacBuilder<Color?>.fromJson(v as Object)),
          textStyle: $checkedConvert(
              'textStyle',
              (v) => v == null
                  ? null
                  : ZacBuilder<TextStyle?>.fromJson(v as Object)),
          borderRadius: $checkedConvert(
              'borderRadius',
              (v) => v == null
                  ? null
                  : ZacBuilder<BorderRadiusGeometry?>.fromJson(v as Object)),
          shape: $checkedConvert(
              'shape',
              (v) => v == null
                  ? null
                  : ZacBuilder<ShapeBorder?>.fromJson(v as Object)),
          borderOnForeground: $checkedConvert(
              'borderOnForeground',
              (v) =>
                  v == null ? null : ZacBuilder<bool?>.fromJson(v as Object)),
          clipBehavior: $checkedConvert(
              'clipBehavior',
              (v) =>
                  v == null ? null : ZacBuilder<Clip?>.fromJson(v as Object)),
        );
        return val;
      },
    );
