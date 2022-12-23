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
          : FlutterTextDirection.fromJson(
              json['textDirection'] as Map<String, dynamic>),
      alignment: json['alignment'] == null
          ? null
          : ZacValue<AlignmentGeometry?>.fromJson(json['alignment'] as Object),
      constrainedAxis: json['constrainedAxis'] == null
          ? null
          : FlutterAxis.fromJson(
              json['constrainedAxis'] as Map<String, dynamic>),
      clipBehavior: json['clipBehavior'] == null
          ? null
          : FlutterClip.fromJson(json['clipBehavior'] as Map<String, dynamic>),
    );
