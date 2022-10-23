// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fitted_box.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterFittedBox _$$_FlutterFittedBoxFromJson(Map<String, dynamic> json) =>
    _$_FlutterFittedBox(
      key: json['key'] == null
          ? null
          : FlutterKey.fromJson(json['key'] as Object),
      fit: json['fit'] == null
          ? null
          : FlutterBoxFit.fromJson(json['fit'] as Map<String, dynamic>),
      alignment: json['alignment'] == null
          ? null
          : FlutterAlignmentGeometry.fromJson(json['alignment'] as Object),
      clipBehavior: json['clipBehavior'] == null
          ? null
          : FlutterClip.fromJson(json['clipBehavior'] as Map<String, dynamic>),
      child: json['child'] == null
          ? null
          : FlutterWidget.fromJson(json['child'] as Object),
    );
