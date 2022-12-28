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
          : ZacBuilder<Key?>.fromJson(json['key'] as Object),
      scrollDirection: json['scrollDirection'] == null
          ? null
          : FlutterAxis.fromJson(
              json['scrollDirection'] as Map<String, dynamic>),
      reverse: json['reverse'] == null
          ? null
          : ZacBuilder<bool?>.fromJson(json['reverse'] as Object),
      controller: json['controller'] == null
          ? null
          : ZacBuilder<ScrollController?>.fromJson(
              json['controller'] as Object),
      primary: json['primary'] == null
          ? null
          : ZacBuilder<bool?>.fromJson(json['primary'] as Object),
      physics: json['physics'] == null
          ? null
          : FlutterScrollPhysics.fromJson(
              json['physics'] as Map<String, dynamic>),
      shrinkWrap: json['shrinkWrap'] == null
          ? null
          : ZacBuilder<bool?>.fromJson(json['shrinkWrap'] as Object),
      center: json['center'] == null
          ? null
          : ZacBuilder<Key?>.fromJson(json['center'] as Object),
      anchor: json['anchor'] == null
          ? null
          : ZacBuilder<double?>.fromJson(json['anchor'] as Object),
      cacheExtent: json['cacheExtent'] == null
          ? null
          : ZacBuilder<double?>.fromJson(json['cacheExtent'] as Object),
      slivers: json['slivers'] == null
          ? null
          : ZacListBuilder<Widget, List<Widget>?>.fromJson(
              json['slivers'] as Object),
      semanticChildCount: json['semanticChildCount'] == null
          ? null
          : ZacBuilder<int?>.fromJson(json['semanticChildCount'] as Object),
      keyboardDismissBehavior: json['keyboardDismissBehavior'] == null
          ? null
          : FlutterScrollViewKeyboardDismissBehavior.fromJson(
              json['keyboardDismissBehavior'] as Map<String, dynamic>),
      restorationId: json['restorationId'] == null
          ? null
          : ZacBuilder<String?>.fromJson(json['restorationId'] as Object),
      clipBehavior: json['clipBehavior'] == null
          ? null
          : ZacBuilder<Clip?>.fromJson(json['clipBehavior'] as Object),
    );
