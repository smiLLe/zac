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
          : ZacValue<bool?>.fromJson(json['reverse'] as Object),
      controller: json['controller'] == null
          ? null
          : ZacValue<ScrollController?>.fromJson(json['controller'] as Object),
      primary: json['primary'] == null
          ? null
          : ZacValue<bool?>.fromJson(json['primary'] as Object),
      physics: json['physics'] == null
          ? null
          : FlutterScrollPhysics.fromJson(
              json['physics'] as Map<String, dynamic>),
      shrinkWrap: json['shrinkWrap'] == null
          ? null
          : ZacValue<bool?>.fromJson(json['shrinkWrap'] as Object),
      center: json['center'] == null
          ? null
          : FlutterKey.fromJson(json['center'] as Object),
      anchor: json['anchor'] == null
          ? null
          : ZacValue<double?>.fromJson(json['anchor'] as Object),
      cacheExtent: json['cacheExtent'] == null
          ? null
          : ZacValue<double?>.fromJson(json['cacheExtent'] as Object),
      slivers: json['slivers'] == null
          ? null
          : ZacValueList<Widget, List<Widget>?>.fromJson(
              json['slivers'] as Object),
      semanticChildCount: json['semanticChildCount'] == null
          ? null
          : ZacValue<int?>.fromJson(json['semanticChildCount'] as Object),
      keyboardDismissBehavior: json['keyboardDismissBehavior'] == null
          ? null
          : FlutterScrollViewKeyboardDismissBehavior.fromJson(
              json['keyboardDismissBehavior'] as Map<String, dynamic>),
      restorationId: json['restorationId'] == null
          ? null
          : ZacValue<String?>.fromJson(json['restorationId'] as Object),
      clipBehavior: json['clipBehavior'] == null
          ? null
          : FlutterClip.fromJson(json['clipBehavior'] as Map<String, dynamic>),
    );
