// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sliver_grid.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterSliverGrid _$$_FlutterSliverGridFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_FlutterSliverGrid',
      json,
      ($checkedConvert) {
        final val = _$_FlutterSliverGrid(
          key: $checkedConvert('key',
              (v) => v == null ? null : ZacBuilder<Key?>.fromJson(v as Object)),
          delegate: $checkedConvert(
              'delegate',
              (v) => FlutterSliverChildDelegate.fromJson(
                  v as Map<String, dynamic>)),
          gridDelegate: $checkedConvert(
              'gridDelegate',
              (v) => FlutterSliverGridDelegate.fromJson(
                  v as Map<String, dynamic>)),
        );
        return val;
      },
    );
