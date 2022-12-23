// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unconstrained_box.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterUnconstrainedBox _$$_FlutterUnconstrainedBoxFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterUnconstrainedBox(
      key: json['key'] == null
          ? null
          : ZacValue<Key?>.fromJson(json['key'] as Object),
      child: json['child'] == null
          ? null
          : ZacValue<Widget?>.fromJson(json['child'] as Object),
      textDirection: json['textDirection'] == null
          ? null
          : ZacValue<TextDirection?>.fromJson(json['textDirection'] as Object),
      alignment: json['alignment'] == null
          ? null
          : ZacValue<AlignmentGeometry?>.fromJson(json['alignment'] as Object),
      constrainedAxis: json['constrainedAxis'] == null
          ? null
          : ZacValue<Axis?>.fromJson(json['constrainedAxis'] as Object),
      clipBehavior: json['clipBehavior'] == null
          ? null
          : ZacValue<Clip?>.fromJson(json['clipBehavior'] as Object),
    );
