// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clip_rect.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterClipRect _$$_FlutterClipRectFromJson(Map<String, dynamic> json) =>
    _$_FlutterClipRect(
      key: json['key'] == null
          ? null
          : FlutterKey.fromJson(json['key'] as Object),
      child: json['child'] == null
          ? null
          : ZacValue<Widget?>.fromJson(json['child'] as Object),
      clipBehavior: json['clipBehavior'] == null
          ? null
          : FlutterClip.fromJson(json['clipBehavior'] as Map<String, dynamic>),
    );
