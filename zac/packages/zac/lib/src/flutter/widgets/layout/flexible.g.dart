// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flexible.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterFlexible _$$_FlutterFlexibleFromJson(Map<String, dynamic> json) =>
    _$_FlutterFlexible(
      key: json['key'] == null
          ? null
          : ZacBuilder<Key?>.fromJson(json['key'] as Object),
      flex: json['flex'] == null
          ? null
          : ZacBuilder<int?>.fromJson(json['flex'] as Object),
      fit: json['fit'] == null
          ? null
          : ZacBuilder<FlexFit?>.fromJson(json['fit'] as Object),
      child: ZacBuilder<Widget>.fromJson(json['child'] as Object),
    );
