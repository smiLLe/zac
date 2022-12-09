// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_view.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterListView _$$_FlutterListViewFromJson(Map<String, dynamic> json) =>
    _$_FlutterListView(
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
      padding: json['padding'] == null
          ? null
          : FlutterEdgeInsetsGeometry.fromJson(json['padding'] as Object),
      itemExtent: json['itemExtent'] == null
          ? null
          : ZacValue<double>.fromJson(json['itemExtent'] as Object,
              (value) => (value as num).toDouble()),
      prototypeItem: json['prototypeItem'] == null
          ? null
          : FlutterWidget.fromJson(json['prototypeItem'] as Object),
      addAutomaticKeepAlives: json['addAutomaticKeepAlives'] == null
          ? null
          : ZacValue<bool>.fromJson(json['addAutomaticKeepAlives'] as Object,
              (value) => value as bool),
      addRepaintBoundaries: json['addRepaintBoundaries'] == null
          ? null
          : ZacValue<bool>.fromJson(
              json['addRepaintBoundaries'] as Object, (value) => value as bool),
      addSemanticIndexes: json['addSemanticIndexes'] == null
          ? null
          : ZacValue<bool>.fromJson(
              json['addSemanticIndexes'] as Object, (value) => value as bool),
      cacheExtent: json['cacheExtent'] == null
          ? null
          : ZacValue<double>.fromJson(json['cacheExtent'] as Object,
              (value) => (value as num).toDouble()),
      children: json['children'] == null
          ? null
          : ZacListOfFlutterWidget.fromJson(json['children'] as Object),
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
