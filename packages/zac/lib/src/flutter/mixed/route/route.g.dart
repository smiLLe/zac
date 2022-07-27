// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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

_$_FlutterPageRouteBuilder _$$_FlutterPageRouteBuilderFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterPageRouteBuilder(
      child: ZacWidget.fromJson(json['child'] as Object),
      settings: json['settings'] == null
          ? null
          : FlutterRouteSettings.fromJson(
              json['settings'] as Map<String, dynamic>),
      opaque: json['opaque'] == null
          ? null
          : ZacBool.fromJson(json['opaque'] as Object),
      barrierDismissible: json['barrierDismissible'] == null
          ? null
          : ZacBool.fromJson(json['barrierDismissible'] as Object),
      barrierColor: json['barrierColor'] == null
          ? null
          : FlutterColor.fromJson(json['barrierColor'] as Map<String, dynamic>),
      barrierLabel: json['barrierLabel'] == null
          ? null
          : ZacString.fromJson(json['barrierLabel'] as Object),
      maintainState: json['maintainState'] == null
          ? null
          : ZacBool.fromJson(json['maintainState'] as Object),
      fullscreenDialog: json['fullscreenDialog'] == null
          ? null
          : ZacBool.fromJson(json['fullscreenDialog'] as Object),
    );

_$_FlutterRouteSettings _$$_FlutterRouteSettingsFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterRouteSettings(
      name: json['name'] == null
          ? null
          : ZacString.fromJson(json['name'] as Object),
      arguments: json['arguments'],
    );
