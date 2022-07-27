// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edge_insets.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterEdgeInsetsAll _$$_FlutterEdgeInsetsAllFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterEdgeInsetsAll(
      ZacDouble.fromJson(json['value'] as Object),
      $type: json['_converter'] as String?,
    );

_$_FlutterEdgeInsetsSymmetric _$$_FlutterEdgeInsetsSymmetricFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterEdgeInsetsSymmetric(
      vertical: json['vertical'] == null
          ? null
          : ZacDouble.fromJson(json['vertical'] as Object),
      horizontal: json['horizontal'] == null
          ? null
          : ZacDouble.fromJson(json['horizontal'] as Object),
      $type: json['_converter'] as String?,
    );

_$_FlutterEdgeInsetsOnly _$$_FlutterEdgeInsetsOnlyFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterEdgeInsetsOnly(
      left: json['left'] == null
          ? null
          : ZacDouble.fromJson(json['left'] as Object),
      top: json['top'] == null
          ? null
          : ZacDouble.fromJson(json['top'] as Object),
      right: json['right'] == null
          ? null
          : ZacDouble.fromJson(json['right'] as Object),
      bottom: json['bottom'] == null
          ? null
          : ZacDouble.fromJson(json['bottom'] as Object),
      $type: json['_converter'] as String?,
    );

_$_FlutterEdgeInsetsDirectionalAll _$$_FlutterEdgeInsetsDirectionalAllFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterEdgeInsetsDirectionalAll(
      ZacDouble.fromJson(json['value'] as Object),
      $type: json['_converter'] as String?,
    );

_$_FlutterEdgeInsetsDirectionalOnly
    _$$_FlutterEdgeInsetsDirectionalOnlyFromJson(Map<String, dynamic> json) =>
        _$_FlutterEdgeInsetsDirectionalOnly(
          start: json['start'] == null
              ? null
              : ZacDouble.fromJson(json['start'] as Object),
          top: json['top'] == null
              ? null
              : ZacDouble.fromJson(json['top'] as Object),
          end: json['end'] == null
              ? null
              : ZacDouble.fromJson(json['end'] as Object),
          bottom: json['bottom'] == null
              ? null
              : ZacDouble.fromJson(json['bottom'] as Object),
          $type: json['_converter'] as String?,
        );
