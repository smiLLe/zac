// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'widget.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ZacWidgetBuilder _$$_ZacWidgetBuilderFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ZacWidgetBuilder',
      json,
      ($checkedConvert) {
        final val = _$_ZacWidgetBuilder(
          key: $checkedConvert('key',
              (v) => v == null ? null : ZacBuilder<Key?>.fromJson(v as Object)),
          data: $checkedConvert('data', (v) => v as Object),
          $type: $checkedConvert('builder', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'builder'},
    );

_$_ZacWidgetBuilderIsolate _$$_ZacWidgetBuilderIsolateFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ZacWidgetBuilderIsolate',
      json,
      ($checkedConvert) {
        final val = _$_ZacWidgetBuilderIsolate(
          key: $checkedConvert('key',
              (v) => v == null ? null : ZacBuilder<Key?>.fromJson(v as Object)),
          data: $checkedConvert('data', (v) => v as Object),
          errorChild: $checkedConvert(
              'errorChild',
              (v) =>
                  v == null ? null : ZacBuilder<Widget?>.fromJson(v as Object)),
          $type: $checkedConvert('builder', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'builder'},
    );
