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
          : ZacBool.fromJson(json['reverse'] as Object),
      primary: json['primary'] == null
          ? null
          : ZacBool.fromJson(json['primary'] as Object),
      shrinkWrap: json['shrinkWrap'] == null
          ? null
          : ZacBool.fromJson(json['shrinkWrap'] as Object),
      padding: json['padding'] == null
          ? null
          : FlutterEdgeInsetsGeometry.fromJson(json['padding'] as Object),
      gridDelegate: FlutterSliverGridDelegate.fromJson(
          json['gridDelegate'] as Map<String, dynamic>),
      addAutomaticKeepAlives: json['addAutomaticKeepAlives'] == null
          ? null
          : ZacBool.fromJson(json['addAutomaticKeepAlives'] as Object),
      addRepaintBoundaries: json['addRepaintBoundaries'] == null
          ? null
          : ZacBool.fromJson(json['addRepaintBoundaries'] as Object),
      addSemanticIndexes: json['addSemanticIndexes'] == null
          ? null
          : ZacBool.fromJson(json['addSemanticIndexes'] as Object),
      cacheExtent: json['cacheExtent'] == null
          ? null
          : ZacDouble.fromJson(json['cacheExtent'] as Object),
      children: json['children'] == null
          ? null
          : ListOfZacWidget.fromJson(json['children'] as Object),
      semanticChildCount: json['semanticChildCount'] == null
          ? null
          : ZacInt.fromJson(json['semanticChildCount'] as Object),
      clipBehavior: json['clipBehavior'] == null
          ? null
          : FlutterClip.fromJson(json['clipBehavior'] as Map<String, dynamic>),
      keyboardDismissBehavior: json['keyboardDismissBehavior'] == null
          ? null
          : FlutterScrollViewKeyboardDismissBehavior.fromJson(
              json['keyboardDismissBehavior'] as Map<String, dynamic>),
      restorationId: json['restorationId'] == null
          ? null
          : ZacString.fromJson(json['restorationId'] as Object),
    );