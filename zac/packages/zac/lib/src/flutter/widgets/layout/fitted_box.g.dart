// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fitted_box.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterFittedBox _$$_FlutterFittedBoxFromJson(Map<String, dynamic> json) =>
    _$_FlutterFittedBox(
      key: json['key'] == null
          ? null
          : ZacValue<Key?>.fromJson(json['key'] as Object),
      fit: json['fit'] == null
          ? null
          : ZacValue<BoxFit?>.fromJson(json['fit'] as Object),
      alignment: json['alignment'] == null
          ? null
          : ZacValue<AlignmentGeometry?>.fromJson(json['alignment'] as Object),
      clipBehavior: json['clipBehavior'] == null
          ? null
          : ZacValue<Clip?>.fromJson(json['clipBehavior'] as Object),
      child: json['child'] == null
          ? null
          : ZacValue<Widget?>.fromJson(json['child'] as Object),
    );
