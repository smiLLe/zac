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
          : FlutterKey.fromJson(json['key'] as Object),
      child: json['child'] == null
          ? null
          : ZacWidget.fromJson(json['child'] as Object),
      onTap: json['onTap'] == null
          ? null
          : AnyActions.fromJson(json['onTap'] as Object),
      onSecondaryTap: json['onSecondaryTap'] == null
          ? null
          : AnyActions.fromJson(json['onSecondaryTap'] as Object),
      onDoubleTap: json['onDoubleTap'] == null
          ? null
          : AnyActions.fromJson(json['onDoubleTap'] as Object),
      onLongPress: json['onLongPress'] == null
          ? null
          : AnyActions.fromJson(json['onLongPress'] as Object),
      onSecondaryLongPress: json['onSecondaryLongPress'] == null
          ? null
          : AnyActions.fromJson(json['onSecondaryLongPress'] as Object),
      onTertiaryLongPress: json['onTertiaryLongPress'] == null
          ? null
          : AnyActions.fromJson(json['onTertiaryLongPress'] as Object),
      behavior: json['behavior'] == null
          ? null
          : FlutterHitTestBehavior.fromJson(
              json['behavior'] as Map<String, dynamic>),
      excludeFromSemantics: json['excludeFromSemantics'] == null
          ? null
          : ZacBool.fromJson(json['excludeFromSemantics'] as Object),
    );
