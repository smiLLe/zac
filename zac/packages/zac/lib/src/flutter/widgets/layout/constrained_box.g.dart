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
          : ZacBuilder<Key?>.fromJson(json['key'] as Object),
      constraints:
          ZacBuilder<BoxConstraints>.fromJson(json['constraints'] as Object),
      child: json['child'] == null
          ? null
          : ZacBuilder<Widget?>.fromJson(json['child'] as Object),
    );
