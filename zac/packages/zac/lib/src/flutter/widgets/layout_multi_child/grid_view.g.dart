// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grid_view.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterGridView _$$_FlutterGridViewFromJson(Map<String, dynamic> json) =>
    _$_FlutterGridView(
      key: json['key'] == null
          ? null
          : ZacValue<Key?>.fromJson(json['key'] as Object),
      scrollDirection: json['scrollDirection'] == null
          ? null
          : ZacValue<Axis?>.fromJson(json['scrollDirection'] as Object),
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
          : ZacValue<EdgeInsetsGeometry?>.fromJson(json['padding'] as Object),
      gridDelegate:
          ZacValue<SliverGridDelegate>.fromJson(json['gridDelegate'] as Object),
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
          : ZacValue<Clip?>.fromJson(json['clipBehavior'] as Object),
      keyboardDismissBehavior: json['keyboardDismissBehavior'] == null
          ? null
          : ZacValue<ScrollViewKeyboardDismissBehavior?>.fromJson(
              json['keyboardDismissBehavior'] as Object),
      restorationId: json['restorationId'] == null
          ? null
          : ZacValue<String?>.fromJson(json['restorationId'] as Object),
    );
