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
          : ZacValue<double?>.fromJson(json['buttonMinWidth'] as Object),
      buttonHeight: json['buttonHeight'] == null
          ? null
          : ZacValue<double?>.fromJson(json['buttonHeight'] as Object),
      buttonPadding: json['buttonPadding'] == null
          ? null
          : FlutterEdgeInsetsGeometry.fromJson(json['buttonPadding'] as Object),
      buttonAlignedDropdown: json['buttonAlignedDropdown'] == null
          ? null
          : ZacValue<bool?>.fromJson(json['buttonAlignedDropdown'] as Object),
      overflowDirection: json['overflowDirection'] == null
          ? null
          : FlutterVerticalDirection.fromJson(
              json['overflowDirection'] as Map<String, dynamic>),
      overflowButtonSpacing: json['overflowButtonSpacing'] == null
          ? null
          : ZacValue<double?>.fromJson(json['overflowButtonSpacing'] as Object),
      children: json['children'] == null
          ? null
          : ZacValueList<Widget, List<Widget>?>.fromJson(
              json['children'] as Object),
    );
