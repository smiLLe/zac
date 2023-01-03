// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'align.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterAlign _$$_FlutterAlignFromJson(Map<String, dynamic> json) =>
    _$_FlutterAlign(
      key: json['key'] == null
          ? null
          : ZacBuilder<Key?>.fromJson(json['key'] as Object),
      alignment: json['alignment'] == null
          ? null
          : ZacBuilder<AlignmentGeometry?>.fromJson(
              json['alignment'] as Object),
      widthFactor: json['widthFactor'] == null
          ? null
          : ZacBuilder<double?>.fromJson(json['widthFactor'] as Object),
      heightFactor: json['heightFactor'] == null
          ? null
          : ZacBuilder<double?>.fromJson(json['heightFactor'] as Object),
      child: json['child'] == null
          ? null
          : ZacBuilder<Widget?>.fromJson(json['child'] as Object),
    );
