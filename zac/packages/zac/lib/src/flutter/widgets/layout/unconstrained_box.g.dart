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
          : ZacBuilder<Key?>.fromJson(json['key'] as Object),
      child: json['child'] == null
          ? null
          : ZacBuilder<Widget?>.fromJson(json['child'] as Object),
      textDirection: json['textDirection'] == null
          ? null
          : ZacBuilder<TextDirection?>.fromJson(
              json['textDirection'] as Object),
      alignment: json['alignment'] == null
          ? null
          : ZacBuilder<AlignmentGeometry?>.fromJson(
              json['alignment'] as Object),
      constrainedAxis: json['constrainedAxis'] == null
          ? null
          : ZacBuilder<Axis?>.fromJson(json['constrainedAxis'] as Object),
      clipBehavior: json['clipBehavior'] == null
          ? null
          : ZacBuilder<Clip?>.fromJson(json['clipBehavior'] as Object),
    );
