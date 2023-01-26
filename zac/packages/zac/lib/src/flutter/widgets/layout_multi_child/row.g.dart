// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'row.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterRow _$$_FlutterRowFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_FlutterRow',
      json,
      ($checkedConvert) {
        final val = _$_FlutterRow(
          key: $checkedConvert('key',
              (v) => v == null ? null : ZacBuilder<Key?>.fromJson(v as Object)),
          mainAxisAlignment: $checkedConvert(
              'mainAxisAlignment',
              (v) => v == null
                  ? null
                  : ZacBuilder<MainAxisAlignment?>.fromJson(v as Object)),
          mainAxisSize: $checkedConvert(
              'mainAxisSize',
              (v) => v == null
                  ? null
                  : ZacBuilder<MainAxisSize?>.fromJson(v as Object)),
          crossAxisAlignment: $checkedConvert(
              'crossAxisAlignment',
              (v) => v == null
                  ? null
                  : ZacBuilder<CrossAxisAlignment?>.fromJson(v as Object)),
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
          textBaseline: $checkedConvert(
              'textBaseline',
              (v) => v == null
                  ? null
                  : ZacBuilder<TextBaseline?>.fromJson(v as Object)),
          children: $checkedConvert(
              'children',
              (v) => v == null
                  ? null
                  : ZacBuilder<List<Widget>?>.fromJson(v as Object)),
        );
        return val;
      },
    );
