// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flexible.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterFlexible _$$_FlutterFlexibleFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_FlutterFlexible',
      json,
      ($checkedConvert) {
        final val = _$_FlutterFlexible(
          key: $checkedConvert('key',
              (v) => v == null ? null : ZacBuilder<Key?>.fromJson(v as Object)),
          flex: $checkedConvert('flex',
              (v) => v == null ? null : ZacBuilder<int?>.fromJson(v as Object)),
          fit: $checkedConvert(
              'fit',
              (v) => v == null
                  ? null
                  : ZacBuilder<FlexFit?>.fromJson(v as Object)),
          child: $checkedConvert(
              'child', (v) => ZacBuilder<Widget>.fromJson(v as Object)),
        );
        return val;
      },
    );
