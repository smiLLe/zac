// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sliver_padding.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterSliverPadding _$$_FlutterSliverPaddingFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_FlutterSliverPadding',
      json,
      ($checkedConvert) {
        final val = _$_FlutterSliverPadding(
          key: $checkedConvert('key',
              (v) => v == null ? null : ZacBuilder<Key?>.fromJson(v as Object)),
          sliver: $checkedConvert(
              'sliver',
              (v) =>
                  v == null ? null : ZacBuilder<Widget?>.fromJson(v as Object)),
          padding: $checkedConvert('padding',
              (v) => ZacBuilder<EdgeInsetsGeometry>.fromJson(v as Object)),
        );
        return val;
      },
    );
