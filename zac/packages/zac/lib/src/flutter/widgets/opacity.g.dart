// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'opacity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterOpacity _$$_FlutterOpacityFromJson(Map<String, dynamic> json) =>
    _$_FlutterOpacity(
      key: json['key'] == null
          ? null
          : FlutterKey.fromJson(json['key'] as Object),
      opacity: ZacDouble.fromJson(json['opacity'] as Object),
      alwaysIncludeSemantics: json['alwaysIncludeSemantics'] == null
          ? null
          : ZacValue<bool>.fromJson(json['alwaysIncludeSemantics'] as Object),
      child: json['child'] == null
          ? null
          : FlutterWidget.fromJson(json['child'] as Object),
    );
