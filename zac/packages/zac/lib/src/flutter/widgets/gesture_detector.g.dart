// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gesture_detector.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterGestureDetector _$$_FlutterGestureDetectorFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_FlutterGestureDetector',
      json,
      ($checkedConvert) {
        final val = _$_FlutterGestureDetector(
          key: $checkedConvert('key',
              (v) => v == null ? null : ZacBuilder<Key?>.fromJson(v as Object)),
          child: $checkedConvert(
              'child',
              (v) =>
                  v == null ? null : ZacBuilder<Widget?>.fromJson(v as Object)),
          onTap: $checkedConvert(
              'onTap',
              (v) => v == null
                  ? null
                  : ZacBuilder<List<ZacAction>?>.fromJson(v as Object)),
          onSecondaryTap: $checkedConvert(
              'onSecondaryTap',
              (v) => v == null
                  ? null
                  : ZacBuilder<List<ZacAction>?>.fromJson(v as Object)),
          onDoubleTap: $checkedConvert(
              'onDoubleTap',
              (v) => v == null
                  ? null
                  : ZacBuilder<List<ZacAction>?>.fromJson(v as Object)),
          onLongPress: $checkedConvert(
              'onLongPress',
              (v) => v == null
                  ? null
                  : ZacBuilder<List<ZacAction>?>.fromJson(v as Object)),
          onSecondaryLongPress: $checkedConvert(
              'onSecondaryLongPress',
              (v) => v == null
                  ? null
                  : ZacBuilder<List<ZacAction>?>.fromJson(v as Object)),
          onTertiaryLongPress: $checkedConvert(
              'onTertiaryLongPress',
              (v) => v == null
                  ? null
                  : ZacBuilder<List<ZacAction>?>.fromJson(v as Object)),
          behavior: $checkedConvert(
              'behavior',
              (v) => v == null
                  ? null
                  : FlutterHitTestBehavior.fromJson(v as Map<String, dynamic>)),
          excludeFromSemantics: $checkedConvert(
              'excludeFromSemantics',
              (v) =>
                  v == null ? null : ZacBuilder<bool?>.fromJson(v as Object)),
        );
        return val;
      },
    );
