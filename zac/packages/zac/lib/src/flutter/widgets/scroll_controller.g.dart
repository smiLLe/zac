// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scroll_controller.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterScrollController _$$_FlutterScrollControllerFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_FlutterScrollController',
      json,
      ($checkedConvert) {
        final val = _$_FlutterScrollController(
          initialScrollOffset: $checkedConvert(
              'initialScrollOffset', (v) => (v as num?)?.toDouble()),
          keepScrollOffset:
              $checkedConvert('keepScrollOffset', (v) => v as bool?),
          debugLabel: $checkedConvert('debugLabel', (v) => v as String?),
        );
        return val;
      },
    );
