// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'decorated_box.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterDecoratedBox _$$_FlutterDecoratedBoxFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterDecoratedBox(
      key: json['key'] == null
          ? null
          : FlutterKey.fromJson(json['key'] as Object),
      child: json['child'] == null
          ? null
          : FlutterWidget.fromJson(json['child'] as Object),
      decoration: FlutterDecoration.fromJson(json['decoration'] as Object),
      position: json['position'] == null
          ? null
          : FlutterDecorationPosition.fromJson(
              json['position'] as Map<String, dynamic>),
    );
