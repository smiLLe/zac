// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_indicator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterRefreshIndicator _$$_FlutterRefreshIndicatorFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterRefreshIndicator(
      key: json['key'] == null
          ? null
          : FlutterKey.fromJson(json['key'] as Object),
      child: ZacWidget.fromJson(json['child'] as Object),
      displacement: json['displacement'] == null
          ? null
          : ZacDouble.fromJson(json['displacement'] as Object),
      edgeOffset: json['edgeOffset'] == null
          ? null
          : ZacDouble.fromJson(json['edgeOffset'] as Object),
      onRefresh: ZacUiActions.fromJson(json['onRefresh'] as Object),
      color: json['color'] == null
          ? null
          : FlutterColor.fromJson(json['color'] as Map<String, dynamic>),
      backgroundColor: json['backgroundColor'] == null
          ? null
          : FlutterColor.fromJson(
              json['backgroundColor'] as Map<String, dynamic>),
      semanticsLabel: json['semanticsLabel'] == null
          ? null
          : ZacString.fromJson(json['semanticsLabel'] as Object),
      semanticsValue: json['semanticsValue'] == null
          ? null
          : ZacString.fromJson(json['semanticsValue'] as Object),
      strokeWidth: json['strokeWidth'] == null
          ? null
          : ZacDouble.fromJson(json['strokeWidth'] as Object),
      triggerMode: json['triggerMode'] == null
          ? null
          : FlutterRefreshIndicatorTriggerMode.fromJson(
              json['triggerMode'] as Map<String, dynamic>),
    );

_$_FlutterRefreshIndicatorTriggerModeonEdge
    _$$_FlutterRefreshIndicatorTriggerModeonEdgeFromJson(
            Map<String, dynamic> json) =>
        _$_FlutterRefreshIndicatorTriggerModeonEdge(
          $type: json['_converter'] as String?,
        );

_$_FlutterRefreshIndicatorTriggerModeanywhere
    _$$_FlutterRefreshIndicatorTriggerModeanywhereFromJson(
            Map<String, dynamic> json) =>
        _$_FlutterRefreshIndicatorTriggerModeanywhere(
          $type: json['_converter'] as String?,
        );
