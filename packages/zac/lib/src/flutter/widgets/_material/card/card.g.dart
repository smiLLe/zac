// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterCard _$$_FlutterCardFromJson(Map<String, dynamic> json) =>
    _$_FlutterCard(
      key: json['key'] == null
          ? null
          : FlutterKey.fromJson(json['key'] as Object),
      color: json['color'] == null
          ? null
          : FlutterColor.fromJson(json['color'] as Map<String, dynamic>),
      shadowColor: json['shadowColor'] == null
          ? null
          : FlutterColor.fromJson(json['shadowColor'] as Map<String, dynamic>),
      elevation: json['elevation'] == null
          ? null
          : ZacDouble.fromJson(json['elevation'] as Object),
      shape: json['shape'] == null
          ? null
          : FlutterShapeBorder.fromJson(json['shape'] as Object),
      borderOnForeground: json['borderOnForeground'] == null
          ? null
          : ZacBool.fromJson(json['borderOnForeground'] as Object),
      margin: json['margin'] == null
          ? null
          : FlutterEdgeInsetsGeometry.fromJson(json['margin'] as Object),
      clipBehavior: json['clipBehavior'] == null
          ? null
          : FlutterClip.fromJson(json['clipBehavior'] as Map<String, dynamic>),
      child: json['child'] == null
          ? null
          : ZacWidget.fromJson(json['child'] as Object),
      semanticContainer: json['semanticContainer'] == null
          ? null
          : ZacBool.fromJson(json['semanticContainer'] as Object),
    );