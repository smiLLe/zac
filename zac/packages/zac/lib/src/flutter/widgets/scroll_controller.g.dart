// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scroll_controller.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ScrollControllerProvide _$$_ScrollControllerProvideFromJson(
        Map<String, dynamic> json) =>
    _$_ScrollControllerProvide(
      initialScrollOffset: json['initialScrollOffset'] == null
          ? null
          : ZacValue<double?>.fromJson(json['initialScrollOffset'] as Object),
      keepScrollOffset: json['keepScrollOffset'] == null
          ? null
          : ZacValue<bool?>.fromJson(json['keepScrollOffset'] as Object),
      debugLabel: json['debugLabel'] == null
          ? null
          : ZacValue<String?>.fromJson(json['debugLabel'] as Object),
      family: json['family'],
      child: ZacValue<Widget>.fromJson(json['child'] as Object),
    );
