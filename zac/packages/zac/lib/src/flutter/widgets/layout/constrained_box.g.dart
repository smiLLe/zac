// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'constrained_box.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterConstrainedBox _$$_FlutterConstrainedBoxFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterConstrainedBox(
      key: json['key'] == null
          ? null
          : ZacValue<Key?>.fromJson(json['key'] as Object),
      constraints: FlutterBoxConstraints.fromJson(
          json['constraints'] as Map<String, dynamic>),
      child: json['child'] == null
          ? null
          : ZacValue<Widget?>.fromJson(json['child'] as Object),
    );
