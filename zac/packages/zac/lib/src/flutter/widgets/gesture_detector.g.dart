// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gesture_detector.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterGestureDetector _$$_FlutterGestureDetectorFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterGestureDetector(
      key: json['key'] == null
          ? null
          : ZacBuilder<Key?>.fromJson(json['key'] as Object),
      child: json['child'] == null
          ? null
          : ZacBuilder<Widget?>.fromJson(json['child'] as Object),
      onTap: json['onTap'] == null
          ? null
          : ZacActions.fromJson(json['onTap'] as Map<String, dynamic>),
      onSecondaryTap: json['onSecondaryTap'] == null
          ? null
          : ZacActions.fromJson(json['onSecondaryTap'] as Map<String, dynamic>),
      onDoubleTap: json['onDoubleTap'] == null
          ? null
          : ZacActions.fromJson(json['onDoubleTap'] as Map<String, dynamic>),
      onLongPress: json['onLongPress'] == null
          ? null
          : ZacActions.fromJson(json['onLongPress'] as Map<String, dynamic>),
      onSecondaryLongPress: json['onSecondaryLongPress'] == null
          ? null
          : ZacActions.fromJson(
              json['onSecondaryLongPress'] as Map<String, dynamic>),
      onTertiaryLongPress: json['onTertiaryLongPress'] == null
          ? null
          : ZacActions.fromJson(
              json['onTertiaryLongPress'] as Map<String, dynamic>),
      behavior: json['behavior'] == null
          ? null
          : FlutterHitTestBehavior.fromJson(
              json['behavior'] as Map<String, dynamic>),
      excludeFromSemantics: json['excludeFromSemantics'] == null
          ? null
          : ZacBuilder<bool?>.fromJson(json['excludeFromSemantics'] as Object),
    );
