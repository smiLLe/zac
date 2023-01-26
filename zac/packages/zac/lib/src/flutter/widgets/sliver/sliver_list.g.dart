// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sliver_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterSliverList _$$_FlutterSliverListFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_FlutterSliverList',
      json,
      ($checkedConvert) {
        final val = _$_FlutterSliverList(
          key: $checkedConvert('key',
              (v) => v == null ? null : ZacBuilder<Key?>.fromJson(v as Object)),
          delegate: $checkedConvert(
              'delegate',
              (v) => FlutterSliverChildDelegate.fromJson(
                  v as Map<String, dynamic>)),
        );
        return val;
      },
    );
