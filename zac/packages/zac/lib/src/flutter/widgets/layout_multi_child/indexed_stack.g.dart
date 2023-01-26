// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'indexed_stack.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterIndexedStack _$$_FlutterIndexedStackFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_FlutterIndexedStack',
      json,
      ($checkedConvert) {
        final val = _$_FlutterIndexedStack(
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
          sizing: $checkedConvert(
              'sizing',
              (v) => v == null
                  ? null
                  : ZacBuilder<StackFit?>.fromJson(v as Object)),
          index: $checkedConvert('index',
              (v) => v == null ? null : ZacBuilder<int?>.fromJson(v as Object)),
          children: $checkedConvert(
              'children',
              (v) => v == null
                  ? null
                  : ZacBuilder<List<Widget>?>.fromJson(v as Object)),
        );
        return val;
      },
    );
