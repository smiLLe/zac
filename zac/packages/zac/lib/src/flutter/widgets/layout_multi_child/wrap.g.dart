// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wrap.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterWrap _$$_FlutterWrapFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_FlutterWrap',
      json,
      ($checkedConvert) {
        final val = _$_FlutterWrap(
          key: $checkedConvert('key',
              (v) => v == null ? null : ZacBuilder<Key?>.fromJson(v as Object)),
          direction: $checkedConvert(
              'direction',
              (v) =>
                  v == null ? null : ZacBuilder<Axis?>.fromJson(v as Object)),
          alignment: $checkedConvert(
              'alignment',
              (v) => v == null
                  ? null
                  : ZacBuilder<WrapAlignment?>.fromJson(v as Object)),
          spacing: $checkedConvert(
              'spacing',
              (v) =>
                  v == null ? null : ZacBuilder<double?>.fromJson(v as Object)),
          runSpacing: $checkedConvert(
              'runSpacing',
              (v) =>
                  v == null ? null : ZacBuilder<double?>.fromJson(v as Object)),
          runAlignment: $checkedConvert(
              'runAlignment',
              (v) => v == null
                  ? null
                  : ZacBuilder<WrapAlignment?>.fromJson(v as Object)),
          crossAxisAlignment: $checkedConvert(
              'crossAxisAlignment',
              (v) => v == null
                  ? null
                  : ZacBuilder<WrapCrossAlignment?>.fromJson(v as Object)),
          textDirection: $checkedConvert(
              'textDirection',
              (v) => v == null
                  ? null
                  : ZacBuilder<TextDirection?>.fromJson(v as Object)),
          verticalDirection: $checkedConvert(
              'verticalDirection',
              (v) => v == null
                  ? null
                  : ZacBuilder<VerticalDirection?>.fromJson(v as Object)),
          clipBehavior: $checkedConvert(
              'clipBehavior',
              (v) =>
                  v == null ? null : ZacBuilder<Clip?>.fromJson(v as Object)),
          children: $checkedConvert(
              'children',
              (v) => v == null
                  ? null
                  : ZacBuilder<List<Widget>?>.fromJson(v as Object)),
        );
        return val;
      },
    );
