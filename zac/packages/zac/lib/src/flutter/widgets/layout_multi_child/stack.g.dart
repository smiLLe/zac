// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stack.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterStack _$$_FlutterStackFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_FlutterStack',
      json,
      ($checkedConvert) {
        final val = _$_FlutterStack(
          key: $checkedConvert('key',
              (v) => v == null ? null : ZacBuilder<Key?>.fromJson(v as Object)),
          alignment: $checkedConvert(
              'alignment',
              (v) => v == null
                  ? null
                  : ZacBuilder<AlignmentGeometry?>.fromJson(v as Object)),
          textDirection: $checkedConvert(
              'textDirection',
              (v) => v == null
                  ? null
                  : ZacBuilder<TextDirection?>.fromJson(v as Object)),
          fit: $checkedConvert(
              'fit',
              (v) => v == null
                  ? null
                  : ZacBuilder<StackFit?>.fromJson(v as Object)),
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
