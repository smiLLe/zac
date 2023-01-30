// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fitted_box.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterFittedBox _$$_FlutterFittedBoxFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_FlutterFittedBox',
      json,
      ($checkedConvert) {
        final val = _$_FlutterFittedBox(
          key: $checkedConvert('key',
              (v) => v == null ? null : ZacBuilder<Key?>.fromJson(v as Object)),
          fit: $checkedConvert(
              'fit',
              (v) =>
                  v == null ? null : ZacBuilder<BoxFit?>.fromJson(v as Object)),
          alignment: $checkedConvert(
              'alignment',
              (v) => v == null
                  ? null
                  : ZacBuilder<AlignmentGeometry?>.fromJson(v as Object)),
          clipBehavior: $checkedConvert(
              'clipBehavior',
              (v) =>
                  v == null ? null : ZacBuilder<Clip?>.fromJson(v as Object)),
          child: $checkedConvert(
              'child',
              (v) =>
                  v == null ? null : ZacBuilder<Widget?>.fromJson(v as Object)),
        );
        return val;
      },
    );
