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
          : ZacBuilder<Key?>.fromJson(json['key'] as Object),
      child: ZacBuilder<Widget>.fromJson(json['child'] as Object),
      displacement: json['displacement'] == null
          ? null
          : ZacBuilder<double?>.fromJson(json['displacement'] as Object),
      edgeOffset: json['edgeOffset'] == null
          ? null
          : ZacBuilder<double?>.fromJson(json['edgeOffset'] as Object),
      onRefresh: ZacActions.fromJson(json['onRefresh'] as Object),
      color: json['color'] == null
          ? null
          : ZacBuilder<Color?>.fromJson(json['color'] as Object),
      backgroundColor: json['backgroundColor'] == null
          ? null
          : ZacBuilder<Color?>.fromJson(json['backgroundColor'] as Object),
      semanticsLabel: json['semanticsLabel'] == null
          ? null
          : ZacBuilder<String?>.fromJson(json['semanticsLabel'] as Object),
      semanticsValue: json['semanticsValue'] == null
          ? null
          : ZacBuilder<String?>.fromJson(json['semanticsValue'] as Object),
      strokeWidth: json['strokeWidth'] == null
          ? null
          : ZacBuilder<double?>.fromJson(json['strokeWidth'] as Object),
      triggerMode: json['triggerMode'] == null
          ? null
          : ZacBuilder<RefreshIndicatorTriggerMode?>.fromJson(
              json['triggerMode'] as Object),
      onRefreshCompleter: json['onRefreshCompleter'] == null
          ? null
          : ConsumeSharedValue<Completer<dynamic>>.fromJson(
              json['onRefreshCompleter'] as Map<String, dynamic>),
    );

_$_FlutterRefreshIndicatorTriggerModeonEdge
    _$$_FlutterRefreshIndicatorTriggerModeonEdgeFromJson(
            Map<String, dynamic> json) =>
        _$_FlutterRefreshIndicatorTriggerModeonEdge(
          $type: json['builder'] as String?,
        );

_$_FlutterRefreshIndicatorTriggerModeanywhere
    _$$_FlutterRefreshIndicatorTriggerModeanywhereFromJson(
            Map<String, dynamic> json) =>
        _$_FlutterRefreshIndicatorTriggerModeanywhere(
          $type: json['builder'] as String?,
        );
