// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'padding.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterPadding _$$_FlutterPaddingFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_FlutterPadding',
      json,
      ($checkedConvert) {
        final val = _$_FlutterPadding(
          key: $checkedConvert('key',
              (v) => v == null ? null : ZacBuilder<Key?>.fromJson(v as Object)),
          padding: $checkedConvert('padding',
              (v) => ZacBuilder<EdgeInsetsGeometry>.fromJson(v as Object)),
          child: $checkedConvert(
              'child',
              (v) =>
                  v == null ? null : ZacBuilder<Widget?>.fromJson(v as Object)),
        );
        return val;
      },
    );
