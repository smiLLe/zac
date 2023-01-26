// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'safe_area.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterSafeArea _$$_FlutterSafeAreaFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_FlutterSafeArea',
      json,
      ($checkedConvert) {
        final val = _$_FlutterSafeArea(
          key: $checkedConvert('key',
              (v) => v == null ? null : ZacBuilder<Key?>.fromJson(v as Object)),
          left: $checkedConvert(
              'left',
              (v) =>
                  v == null ? null : ZacBuilder<bool?>.fromJson(v as Object)),
          top: $checkedConvert(
              'top',
              (v) =>
                  v == null ? null : ZacBuilder<bool?>.fromJson(v as Object)),
          right: $checkedConvert(
              'right',
              (v) =>
                  v == null ? null : ZacBuilder<bool?>.fromJson(v as Object)),
          bottom: $checkedConvert(
              'bottom',
              (v) =>
                  v == null ? null : ZacBuilder<bool?>.fromJson(v as Object)),
          minimum: $checkedConvert(
              'minimum',
              (v) => v == null
                  ? null
                  : ZacBuilder<EdgeInsets?>.fromJson(v as Object)),
          maintainBottomViewPadding: $checkedConvert(
              'maintainBottomViewPadding',
              (v) =>
                  v == null ? null : ZacBuilder<bool?>.fromJson(v as Object)),
          child: $checkedConvert(
              'child', (v) => ZacBuilder<Widget>.fromJson(v as Object)),
        );
        return val;
      },
    );
