// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grid_view.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterGridView _$$_FlutterGridViewFromJson(Map<String, dynamic> json) =>
    _$_FlutterGridView(
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
      shrinkWrap: json['shrinkWrap'] == null
          ? null
          : ZacValue<bool?>.fromJson(json['shrinkWrap'] as Object),
      padding: json['padding'] == null
          ? null
          : FlutterEdgeInsetsGeometry.fromJson(json['padding'] as Object),
      gridDelegate: FlutterSliverGridDelegate.fromJson(
          json['gridDelegate'] as Map<String, dynamic>),
      addAutomaticKeepAlives: json['addAutomaticKeepAlives'] == null
          ? null
          : ZacValue<bool?>.fromJson(json['addAutomaticKeepAlives'] as Object),
      addRepaintBoundaries: json['addRepaintBoundaries'] == null
          ? null
          : ZacValue<bool?>.fromJson(json['addRepaintBoundaries'] as Object),
      addSemanticIndexes: json['addSemanticIndexes'] == null
          ? null
          : ZacValue<bool?>.fromJson(json['addSemanticIndexes'] as Object),
      cacheExtent: json['cacheExtent'] == null
          ? null
          : ZacValue<double?>.fromJson(json['cacheExtent'] as Object),
      children: json['children'] == null
          ? null
          : ZacValueList<Widget, List<Widget>?>.fromJson(
              json['children'] as Object),
      semanticChildCount: json['semanticChildCount'] == null
          ? null
          : ZacValue<int?>.fromJson(json['semanticChildCount'] as Object),
      clipBehavior: json['clipBehavior'] == null
          ? null
          : FlutterClip.fromJson(json['clipBehavior'] as Map<String, dynamic>),
      keyboardDismissBehavior: json['keyboardDismissBehavior'] == null
          ? null
          : FlutterScrollViewKeyboardDismissBehavior.fromJson(
              json['keyboardDismissBehavior'] as Map<String, dynamic>),
      restorationId: json['restorationId'] == null
          ? null
          : ZacValue<String?>.fromJson(json['restorationId'] as Object),
    );
