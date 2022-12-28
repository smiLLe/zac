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
          : ZacBuilder<Key?>.fromJson(json['key'] as Object),
      child: json['child'] == null
          ? null
          : ZacBuilder<Widget?>.fromJson(json['child'] as Object),
      decoration: ZacBuilder<Decoration>.fromJson(json['decoration'] as Object),
      position: json['position'] == null
          ? null
          : ZacBuilder<DecorationPosition?>.fromJson(
              json['position'] as Object),
    );
