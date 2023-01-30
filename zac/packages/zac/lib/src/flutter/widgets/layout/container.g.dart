// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'container.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterContainer _$$_FlutterContainerFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_FlutterContainer',
      json,
      ($checkedConvert) {
        final val = _$_FlutterContainer(
          key: $checkedConvert('key',
              (v) => v == null ? null : ZacBuilder<Key?>.fromJson(v as Object)),
          child: $checkedConvert(
              'child',
              (v) =>
                  v == null ? null : ZacBuilder<Widget?>.fromJson(v as Object)),
          color: $checkedConvert(
              'color',
              (v) =>
                  v == null ? null : ZacBuilder<Color?>.fromJson(v as Object)),
          margin: $checkedConvert(
              'margin',
              (v) => v == null
                  ? null
                  : ZacBuilder<EdgeInsetsGeometry?>.fromJson(v as Object)),
          padding: $checkedConvert(
              'padding',
              (v) => v == null
                  ? null
                  : ZacBuilder<EdgeInsetsGeometry?>.fromJson(v as Object)),
          alignment: $checkedConvert(
              'alignment',
              (v) => v == null
                  ? null
                  : ZacBuilder<AlignmentGeometry?>.fromJson(v as Object)),
          decoration: $checkedConvert(
              'decoration',
              (v) => v == null
                  ? null
                  : ZacBuilder<Decoration?>.fromJson(v as Object)),
        );
        return val;
      },
    );
