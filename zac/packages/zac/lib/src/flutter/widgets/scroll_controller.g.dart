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
          : ZacBuilder<double?>.fromJson(json['initialScrollOffset'] as Object),
      keepScrollOffset: json['keepScrollOffset'] == null
          ? null
          : ZacBuilder<bool?>.fromJson(json['keepScrollOffset'] as Object),
      debugLabel: json['debugLabel'] == null
          ? null
          : ZacBuilder<String?>.fromJson(json['debugLabel'] as Object),
      family: json['family'],
      child: ZacBuilder<Widget>.fromJson(json['child'] as Object),
    );
