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
          : ZacValue<Key?>.fromJson(json['key'] as Object),
      child: json['child'] == null
          ? null
          : ZacValue<Widget?>.fromJson(json['child'] as Object),
      decoration: ZacValue<Decoration>.fromJson(json['decoration'] as Object),
      position: json['position'] == null
          ? null
          : FlutterDecorationPosition.fromJson(
              json['position'] as Map<String, dynamic>),
    );
