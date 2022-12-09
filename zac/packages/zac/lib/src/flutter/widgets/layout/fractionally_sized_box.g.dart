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
          : FlutterKey.fromJson(json['key'] as Object),
      child: json['child'] == null
          ? null
          : FlutterWidget.fromJson(json['child'] as Object),
      alignment: json['alignment'] == null
          ? null
          : FlutterAlignmentGeometry.fromJson(json['alignment'] as Object),
      widthFactor: json['widthFactor'] == null
          ? null
          : ZacValue<double>.fromJson(json['widthFactor'] as Object,
              (value) => (value as num).toDouble()),
      heightFactor: json['heightFactor'] == null
          ? null
          : ZacValue<double>.fromJson(json['heightFactor'] as Object,
              (value) => (value as num).toDouble()),
    );
