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
          : ZacListBuilder<ZacAction, List<ZacAction>?>.fromJson(
              json['onTap'] as Object),
      onSecondaryTap: json['onSecondaryTap'] == null
          ? null
          : ZacListBuilder<ZacAction, List<ZacAction>?>.fromJson(
              json['onSecondaryTap'] as Object),
      onDoubleTap: json['onDoubleTap'] == null
          ? null
          : ZacListBuilder<ZacAction, List<ZacAction>?>.fromJson(
              json['onDoubleTap'] as Object),
      onLongPress: json['onLongPress'] == null
          ? null
          : ZacListBuilder<ZacAction, List<ZacAction>?>.fromJson(
              json['onLongPress'] as Object),
      onSecondaryLongPress: json['onSecondaryLongPress'] == null
          ? null
          : ZacListBuilder<ZacAction, List<ZacAction>?>.fromJson(
              json['onSecondaryLongPress'] as Object),
      onTertiaryLongPress: json['onTertiaryLongPress'] == null
          ? null
          : ZacListBuilder<ZacAction, List<ZacAction>?>.fromJson(
              json['onTertiaryLongPress'] as Object),
      behavior: json['behavior'] == null
          ? null
          : FlutterHitTestBehavior.fromJson(
              json['behavior'] as Map<String, dynamic>),
      excludeFromSemantics: json['excludeFromSemantics'] == null
          ? null
          : ZacBuilder<bool?>.fromJson(json['excludeFromSemantics'] as Object),
    );
