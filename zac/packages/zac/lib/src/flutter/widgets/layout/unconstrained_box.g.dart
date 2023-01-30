// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unconstrained_box.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterUnconstrainedBox _$$_FlutterUnconstrainedBoxFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_FlutterUnconstrainedBox',
      json,
      ($checkedConvert) {
        final val = _$_FlutterUnconstrainedBox(
          key: $checkedConvert('key',
              (v) => v == null ? null : ZacBuilder<Key?>.fromJson(v as Object)),
          child: $checkedConvert(
              'child',
              (v) =>
                  v == null ? null : ZacBuilder<Widget?>.fromJson(v as Object)),
          textDirection: $checkedConvert(
              'textDirection',
              (v) => v == null
                  ? null
                  : ZacBuilder<TextDirection?>.fromJson(v as Object)),
          alignment: $checkedConvert(
              'alignment',
              (v) => v == null
                  ? null
                  : ZacBuilder<AlignmentGeometry?>.fromJson(v as Object)),
          constrainedAxis: $checkedConvert(
              'constrainedAxis',
              (v) =>
                  v == null ? null : ZacBuilder<Axis?>.fromJson(v as Object)),
          clipBehavior: $checkedConvert(
              'clipBehavior',
              (v) =>
                  v == null ? null : ZacBuilder<Clip?>.fromJson(v as Object)),
        );
        return val;
      },
    );
