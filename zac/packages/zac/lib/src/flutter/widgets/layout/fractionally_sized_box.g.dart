// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fractionally_sized_box.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterFractionallySizedBox _$$_FlutterFractionallySizedBoxFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterFractionallySizedBox(
      key: json['key'] == null
          ? null
          : ZacBuilder<Key?>.fromJson(json['key'] as Object),
      child: json['child'] == null
          ? null
          : ZacBuilder<Widget?>.fromJson(json['child'] as Object),
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
    );
