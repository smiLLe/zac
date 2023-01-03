// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rotated_box.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterRotatedBox _$$_FlutterRotatedBoxFromJson(Map<String, dynamic> json) =>
    _$_FlutterRotatedBox(
      key: json['key'] == null
          ? null
          : ZacBuilder<Key?>.fromJson(json['key'] as Object),
      child: json['child'] == null
          ? null
          : ZacBuilder<Widget?>.fromJson(json['child'] as Object),
      quarterTurns: json['quarterTurns'] as int,
    );
