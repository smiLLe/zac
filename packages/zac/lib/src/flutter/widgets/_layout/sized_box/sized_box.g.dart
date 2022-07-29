// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sized_box.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterWidgetSizedBox _$$_FlutterWidgetSizedBoxFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterWidgetSizedBox(
      key: json['key'] == null
          ? null
          : FlutterKey.fromJson(json['key'] as Object),
      width: json['width'] == null
          ? null
          : ZacDouble.fromJson(json['width'] as Object),
      height: json['height'] == null
          ? null
          : ZacDouble.fromJson(json['height'] as Object),
      child: json['child'] == null
          ? null
          : ZacWidget.fromJson(json['child'] as Object),
      $type: json['_converter'] as String?,
    );

_$_FlutterWidgetSizedBoxExpand _$$_FlutterWidgetSizedBoxExpandFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterWidgetSizedBoxExpand(
      key: json['key'] == null
          ? null
          : FlutterKey.fromJson(json['key'] as Object),
      child: json['child'] == null
          ? null
          : ZacWidget.fromJson(json['child'] as Object),
      $type: json['_converter'] as String?,
    );

_$_FlutterWidgetSizedBoxFromSize _$$_FlutterWidgetSizedBoxFromSizeFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterWidgetSizedBoxFromSize(
      key: json['key'] == null
          ? null
          : FlutterKey.fromJson(json['key'] as Object),
      child: json['child'] == null
          ? null
          : ZacWidget.fromJson(json['child'] as Object),
      size: json['size'] == null
          ? null
          : FlutterSize.fromJson(json['size'] as Map<String, dynamic>),
      $type: json['_converter'] as String?,
    );

_$_FlutterWidgetSizedBoxShrink _$$_FlutterWidgetSizedBoxShrinkFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterWidgetSizedBoxShrink(
      key: json['key'] == null
          ? null
          : FlutterKey.fromJson(json['key'] as Object),
      child: json['child'] == null
          ? null
          : ZacWidget.fromJson(json['child'] as Object),
      $type: json['_converter'] as String?,
    );

_$_FlutterWidgetSizedBoxSquare _$$_FlutterWidgetSizedBoxSquareFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterWidgetSizedBoxSquare(
      key: json['key'] == null
          ? null
          : FlutterKey.fromJson(json['key'] as Object),
      child: json['child'] == null
          ? null
          : ZacWidget.fromJson(json['child'] as Object),
      dimension: json['dimension'] == null
          ? null
          : ZacDouble.fromJson(json['dimension'] as Object),
      $type: json['_converter'] as String?,
    );
