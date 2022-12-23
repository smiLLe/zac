// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'button_bar.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterButtonBar _$$_FlutterButtonBarFromJson(Map<String, dynamic> json) =>
    _$_FlutterButtonBar(
      key: json['key'] == null
          ? null
          : ZacValue<Key?>.fromJson(json['key'] as Object),
      alignment: json['alignment'] == null
          ? null
          : FlutterMainAxisAlignment.fromJson(
              json['alignment'] as Map<String, dynamic>),
      mainAxisSize: json['mainAxisSize'] == null
          ? null
          : ZacValue<MainAxisSize?>.fromJson(json['mainAxisSize'] as Object),
      buttonMinWidth: json['buttonMinWidth'] == null
          ? null
          : ZacValue<double?>.fromJson(json['buttonMinWidth'] as Object),
      buttonHeight: json['buttonHeight'] == null
          ? null
          : ZacValue<double?>.fromJson(json['buttonHeight'] as Object),
      buttonPadding: json['buttonPadding'] == null
          ? null
          : ZacValue<EdgeInsetsGeometry?>.fromJson(
              json['buttonPadding'] as Object),
      buttonAlignedDropdown: json['buttonAlignedDropdown'] == null
          ? null
          : ZacValue<bool?>.fromJson(json['buttonAlignedDropdown'] as Object),
      overflowDirection: json['overflowDirection'] == null
          ? null
          : ZacValue<VerticalDirection?>.fromJson(
              json['overflowDirection'] as Object),
      overflowButtonSpacing: json['overflowButtonSpacing'] == null
          ? null
          : ZacValue<double?>.fromJson(json['overflowButtonSpacing'] as Object),
      children: json['children'] == null
          ? null
          : ZacValueList<Widget, List<Widget>?>.fromJson(
              json['children'] as Object),
    );
