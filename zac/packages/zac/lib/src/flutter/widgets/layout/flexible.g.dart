// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flexible.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterFlexible _$$_FlutterFlexibleFromJson(Map<String, dynamic> json) =>
    _$_FlutterFlexible(
      key: json['key'] == null
          ? null
          : ZacValue<Key?>.fromJson(json['key'] as Object),
      flex: json['flex'] == null
          ? null
          : ZacValue<int?>.fromJson(json['flex'] as Object),
      fit: json['fit'] == null
          ? null
          : ZacValue<FlexFit?>.fromJson(json['fit'] as Object),
      child: ZacValue<Widget>.fromJson(json['child'] as Object),
    );
