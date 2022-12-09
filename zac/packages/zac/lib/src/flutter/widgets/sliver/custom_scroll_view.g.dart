// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_scroll_view.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterCustomScrollView _$$_FlutterCustomScrollViewFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterCustomScrollView(
      key: json['key'] == null
          ? null
          : FlutterKey.fromJson(json['key'] as Object),
      scrollDirection: json['scrollDirection'] == null
          ? null
          : FlutterAxis.fromJson(
              json['scrollDirection'] as Map<String, dynamic>),
      reverse: json['reverse'] == null
          ? null
          : ZacValue<bool>.fromJson(
              json['reverse'] as Object, (value) => value as bool),
      controller: json['controller'] == null
          ? null
          : FlutterScrollController.fromJson(
              json['controller'] as Map<String, dynamic>),
      primary: json['primary'] == null
          ? null
          : ZacValue<bool>.fromJson(
              json['primary'] as Object, (value) => value as bool),
      physics: json['physics'] == null
          ? null
          : FlutterScrollPhysics.fromJson(
              json['physics'] as Map<String, dynamic>),
      shrinkWrap: json['shrinkWrap'] == null
          ? null
          : ZacValue<bool>.fromJson(
              json['shrinkWrap'] as Object, (value) => value as bool),
      center: json['center'] == null
          ? null
          : FlutterKey.fromJson(json['center'] as Object),
      anchor: json['anchor'] == null
          ? null
          : ZacValue<double>.fromJson(
              json['anchor'] as Object, (value) => (value as num).toDouble()),
      cacheExtent: json['cacheExtent'] == null
          ? null
          : ZacValue<double>.fromJson(json['cacheExtent'] as Object,
              (value) => (value as num).toDouble()),
      slivers: json['slivers'] == null
          ? null
          : ZacListOfFlutterWidget.fromJson(json['slivers'] as Object),
      semanticChildCount: json['semanticChildCount'] == null
          ? null
          : ZacValue<int>.fromJson(
              json['semanticChildCount'] as Object, (value) => value as int),
      keyboardDismissBehavior: json['keyboardDismissBehavior'] == null
          ? null
          : FlutterScrollViewKeyboardDismissBehavior.fromJson(
              json['keyboardDismissBehavior'] as Map<String, dynamic>),
      restorationId: json['restorationId'] == null
          ? null
          : ZacValue<String>.fromJson(
              json['restorationId'] as Object, (value) => value as String),
      clipBehavior: json['clipBehavior'] == null
          ? null
          : FlutterClip.fromJson(json['clipBehavior'] as Map<String, dynamic>),
    );
