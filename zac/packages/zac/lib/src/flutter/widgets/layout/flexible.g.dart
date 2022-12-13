// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flexible.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterFlexible _$$_FlutterFlexibleFromJson(Map<String, dynamic> json) =>
    _$_FlutterFlexible(
      key: json['key'] == null
          ? null
          : FlutterKey.fromJson(json['key'] as Object),
      flex: json['flex'] == null
          ? null
          : ZacValue<int?>.fromJson(json['flex'] as Object),
      fit: json['fit'] == null
          ? null
          : FlutterFlexFit.fromJson(json['fit'] as Map<String, dynamic>),
      child: FlutterWidget.fromJson(json['child'] as Object),
    );
