// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grid_view.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterGridView _$$_FlutterGridViewFromJson(Map<String, dynamic> json) =>
    _$_FlutterGridView(
      key: json['key'] == null
          ? null
          : ZacBuilder<Key?>.fromJson(json['key'] as Object),
      scrollDirection: json['scrollDirection'] == null
          ? null
          : ZacBuilder<Axis?>.fromJson(json['scrollDirection'] as Object),
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
      shrinkWrap: json['shrinkWrap'] == null
          ? null
          : ZacBuilder<bool?>.fromJson(json['shrinkWrap'] as Object),
      padding: json['padding'] == null
          ? null
          : ZacBuilder<EdgeInsetsGeometry?>.fromJson(json['padding'] as Object),
      gridDelegate: ZacBuilder<SliverGridDelegate>.fromJson(
          json['gridDelegate'] as Object),
      addAutomaticKeepAlives: json['addAutomaticKeepAlives'] == null
          ? null
          : ZacBuilder<bool?>.fromJson(
              json['addAutomaticKeepAlives'] as Object),
      addRepaintBoundaries: json['addRepaintBoundaries'] == null
          ? null
          : ZacBuilder<bool?>.fromJson(json['addRepaintBoundaries'] as Object),
      addSemanticIndexes: json['addSemanticIndexes'] == null
          ? null
          : ZacBuilder<bool?>.fromJson(json['addSemanticIndexes'] as Object),
      cacheExtent: json['cacheExtent'] == null
          ? null
          : ZacBuilder<double?>.fromJson(json['cacheExtent'] as Object),
      children: json['children'] == null
          ? null
          : ZacListBuilder<Widget, List<Widget>?>.fromJson(
              json['children'] as Object),
      semanticChildCount: json['semanticChildCount'] == null
          ? null
          : ZacBuilder<int?>.fromJson(json['semanticChildCount'] as Object),
      clipBehavior: json['clipBehavior'] == null
          ? null
          : ZacBuilder<Clip?>.fromJson(json['clipBehavior'] as Object),
      keyboardDismissBehavior: json['keyboardDismissBehavior'] == null
          ? null
          : ZacBuilder<ScrollViewKeyboardDismissBehavior?>.fromJson(
              json['keyboardDismissBehavior'] as Object),
      restorationId: json['restorationId'] == null
          ? null
          : ZacBuilder<String?>.fromJson(json['restorationId'] as Object),
    );
