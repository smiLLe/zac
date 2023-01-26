// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'icon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterIcon _$$_FlutterIconFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_FlutterIcon',
      json,
      ($checkedConvert) {
        final val = _$_FlutterIcon(
          $checkedConvert(
              'icon',
              (v) => v == null
                  ? null
                  : FlutterIconData.fromJson(v as Map<String, dynamic>)),
          key: $checkedConvert('key',
              (v) => v == null ? null : ZacBuilder<Key?>.fromJson(v as Object)),
          size: $checkedConvert(
              'size',
              (v) =>
                  v == null ? null : ZacBuilder<double?>.fromJson(v as Object)),
          color: $checkedConvert(
              'color',
              (v) =>
                  v == null ? null : ZacBuilder<Color?>.fromJson(v as Object)),
          semanticLabel: $checkedConvert(
              'semanticLabel',
              (v) =>
                  v == null ? null : ZacBuilder<String?>.fromJson(v as Object)),
          textDirection: $checkedConvert(
              'textDirection',
              (v) => v == null
                  ? null
                  : ZacBuilder<TextDirection?>.fromJson(v as Object)),
        );
        return val;
      },
    );

_$_FlutterIconData _$$_FlutterIconDataFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_FlutterIconData',
      json,
      ($checkedConvert) {
        final val = _$_FlutterIconData(
          $checkedConvert(
              'codePoint', (v) => ZacBuilder<int>.fromJson(v as Object)),
          fontFamily: $checkedConvert(
              'fontFamily',
              (v) =>
                  v == null ? null : ZacBuilder<String?>.fromJson(v as Object)),
          fontPackage: $checkedConvert(
              'fontPackage',
              (v) =>
                  v == null ? null : ZacBuilder<String?>.fromJson(v as Object)),
          matchTextDirection: $checkedConvert(
              'matchTextDirection',
              (v) =>
                  v == null ? null : ZacBuilder<bool?>.fromJson(v as Object)),
        );
        return val;
      },
    );

_$_FlutterIconThemeData _$$_FlutterIconThemeDataFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_FlutterIconThemeData',
      json,
      ($checkedConvert) {
        final val = _$_FlutterIconThemeData(
          color: $checkedConvert(
              'color',
              (v) =>
                  v == null ? null : ZacBuilder<Color?>.fromJson(v as Object)),
          opacity: $checkedConvert(
              'opacity',
              (v) =>
                  v == null ? null : ZacBuilder<double?>.fromJson(v as Object)),
          size: $checkedConvert(
              'size',
              (v) =>
                  v == null ? null : ZacBuilder<double?>.fromJson(v as Object)),
        );
        return val;
      },
    );
