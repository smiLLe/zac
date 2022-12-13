// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_child_scroll_view.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterSingleChildScrollView _$$_FlutterSingleChildScrollViewFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterSingleChildScrollView(
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
      padding: json['padding'] == null
          ? null
          : FlutterEdgeInsetsGeometry.fromJson(json['padding'] as Object),
      primary: json['primary'] == null
          ? null
          : ZacValue<bool?>.fromJson(json['primary'] as Object),
      controller: json['controller'] == null
          ? null
          : FlutterScrollController.fromJson(
              json['controller'] as Map<String, dynamic>),
      child: json['child'] == null
          ? null
          : FlutterWidget.fromJson(json['child'] as Object),
      clipBehavior: json['clipBehavior'] == null
          ? null
          : FlutterClip.fromJson(json['clipBehavior'] as Map<String, dynamic>),
      restorationId: json['restorationId'] == null
          ? null
          : ZacValue<String?>.fromJson(json['restorationId'] as Object),
      keyboardDismissBehavior: json['keyboardDismissBehavior'] == null
          ? null
          : FlutterScrollViewKeyboardDismissBehavior.fromJson(
              json['keyboardDismissBehavior'] as Map<String, dynamic>),
    );
