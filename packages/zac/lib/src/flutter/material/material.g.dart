// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'material.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterOutlineInputBorder _$$_FlutterOutlineInputBorderFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterOutlineInputBorder(
      borderSide: json['borderSide'] == null
          ? null
          : FlutterBorderSide.fromJson(
              json['borderSide'] as Map<String, dynamic>),
      borderRadius: json['borderRadius'] == null
          ? null
          : FlutterBorderRadius.fromJson(
              json['borderRadius'] as Map<String, dynamic>),
      gapPadding: json['gapPadding'] == null
          ? null
          : ZacDouble.fromJson(json['gapPadding'] as Object),
    );

_$_FlutterUnderlineInputBorder _$$_FlutterUnderlineInputBorderFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterUnderlineInputBorder(
      borderSide: json['borderSide'] == null
          ? null
          : FlutterBorderSide.fromJson(
              json['borderSide'] as Map<String, dynamic>),
      borderRadius: json['borderRadius'] == null
          ? null
          : FlutterBorderRadius.fromJson(
              json['borderRadius'] as Map<String, dynamic>),
    );

_$_FlutterMaterialPageRoute _$$_FlutterMaterialPageRouteFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterMaterialPageRoute(
      child: ZacWidget.fromJson(json['child'] as Object),
      settings: json['settings'] == null
          ? null
          : FlutterRouteSettings.fromJson(
              json['settings'] as Map<String, dynamic>),
      maintainState: json['maintainState'] == null
          ? null
          : ZacBool.fromJson(json['maintainState'] as Object),
      fullscreenDialog: json['fullscreenDialog'] == null
          ? null
          : ZacBool.fromJson(json['fullscreenDialog'] as Object),
    );
