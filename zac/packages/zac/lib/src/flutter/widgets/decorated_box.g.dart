// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'decorated_box.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterDecoratedBox _$$_FlutterDecoratedBoxFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_FlutterDecoratedBox',
      json,
      ($checkedConvert) {
        final val = _$_FlutterDecoratedBox(
          key: $checkedConvert('key',
              (v) => v == null ? null : ZacBuilder<Key?>.fromJson(v as Object)),
          child: $checkedConvert(
              'child',
              (v) =>
                  v == null ? null : ZacBuilder<Widget?>.fromJson(v as Object)),
          decoration: $checkedConvert('decoration',
              (v) => ZacBuilder<Decoration>.fromJson(v as Object)),
          position: $checkedConvert(
              'position',
              (v) => v == null
                  ? null
                  : ZacBuilder<DecorationPosition?>.fromJson(v as Object)),
        );
        return val;
      },
    );
