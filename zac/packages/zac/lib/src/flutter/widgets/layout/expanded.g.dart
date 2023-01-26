// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expanded.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterExpanded _$$_FlutterExpandedFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_FlutterExpanded',
      json,
      ($checkedConvert) {
        final val = _$_FlutterExpanded(
          key: $checkedConvert('key',
              (v) => v == null ? null : ZacBuilder<Key?>.fromJson(v as Object)),
          flex: $checkedConvert('flex',
              (v) => v == null ? null : ZacBuilder<int?>.fromJson(v as Object)),
          child: $checkedConvert(
              'child', (v) => ZacBuilder<Widget>.fromJson(v as Object)),
        );
        return val;
      },
    );
