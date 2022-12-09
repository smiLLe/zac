// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'button_bar.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterButtonBar _$$_FlutterButtonBarFromJson(Map<String, dynamic> json) =>
    _$_FlutterButtonBar(
      key: json['key'] == null
          ? null
          : FlutterKey.fromJson(json['key'] as Object),
      alignment: json['alignment'] == null
          ? null
          : FlutterMainAxisAlignment.fromJson(
              json['alignment'] as Map<String, dynamic>),
      mainAxisSize: json['mainAxisSize'] == null
          ? null
          : FlutterMainAxisSize.fromJson(
              json['mainAxisSize'] as Map<String, dynamic>),
      buttonMinWidth: json['buttonMinWidth'] == null
          ? null
          : ZacValue<double>.fromJson(json['buttonMinWidth'] as Object,
              (value) => (value as num).toDouble()),
      buttonHeight: json['buttonHeight'] == null
          ? null
          : ZacValue<double>.fromJson(json['buttonHeight'] as Object,
              (value) => (value as num).toDouble()),
      buttonPadding: json['buttonPadding'] == null
          ? null
          : FlutterEdgeInsetsGeometry.fromJson(json['buttonPadding'] as Object),
      buttonAlignedDropdown: json['buttonAlignedDropdown'] == null
          ? null
          : ZacValue<bool>.fromJson(json['buttonAlignedDropdown'] as Object,
              (value) => value as bool),
      overflowDirection: json['overflowDirection'] == null
          ? null
          : FlutterVerticalDirection.fromJson(
              json['overflowDirection'] as Map<String, dynamic>),
      overflowButtonSpacing: json['overflowButtonSpacing'] == null
          ? null
          : ZacValue<double>.fromJson(json['overflowButtonSpacing'] as Object,
              (value) => (value as num).toDouble()),
      children: json['children'] == null
          ? null
          : ZacListOfFlutterWidget.fromJson(json['children'] as Object),
    );
