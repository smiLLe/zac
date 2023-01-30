// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_indicator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterRefreshIndicator _$$_FlutterRefreshIndicatorFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_FlutterRefreshIndicator',
      json,
      ($checkedConvert) {
        final val = _$_FlutterRefreshIndicator(
          key: $checkedConvert('key',
              (v) => v == null ? null : ZacBuilder<Key?>.fromJson(v as Object)),
          child: $checkedConvert(
              'child', (v) => ZacBuilder<Widget>.fromJson(v as Object)),
          displacement: $checkedConvert(
              'displacement',
              (v) =>
                  v == null ? null : ZacBuilder<double?>.fromJson(v as Object)),
          edgeOffset: $checkedConvert(
              'edgeOffset',
              (v) =>
                  v == null ? null : ZacBuilder<double?>.fromJson(v as Object)),
          onRefresh: $checkedConvert('onRefresh',
              (v) => ZacBuilder<List<ZacAction>>.fromJson(v as Object)),
          color: $checkedConvert(
              'color',
              (v) =>
                  v == null ? null : ZacBuilder<Color?>.fromJson(v as Object)),
          backgroundColor: $checkedConvert(
              'backgroundColor',
              (v) =>
                  v == null ? null : ZacBuilder<Color?>.fromJson(v as Object)),
          semanticsLabel: $checkedConvert(
              'semanticsLabel',
              (v) =>
                  v == null ? null : ZacBuilder<String?>.fromJson(v as Object)),
          semanticsValue: $checkedConvert(
              'semanticsValue',
              (v) =>
                  v == null ? null : ZacBuilder<String?>.fromJson(v as Object)),
          strokeWidth: $checkedConvert(
              'strokeWidth',
              (v) =>
                  v == null ? null : ZacBuilder<double?>.fromJson(v as Object)),
          triggerMode: $checkedConvert(
              'triggerMode',
              (v) => v == null
                  ? null
                  : ZacBuilder<RefreshIndicatorTriggerMode?>.fromJson(
                      v as Object)),
        );
        return val;
      },
    );

_$_FlutterRefreshIndicatorTriggerModeonEdge
    _$$_FlutterRefreshIndicatorTriggerModeonEdgeFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          r'_$_FlutterRefreshIndicatorTriggerModeonEdge',
          json,
          ($checkedConvert) {
            final val = _$_FlutterRefreshIndicatorTriggerModeonEdge(
              $type: $checkedConvert('builder', (v) => v as String?),
            );
            return val;
          },
          fieldKeyMap: const {r'$type': 'builder'},
        );

_$_FlutterRefreshIndicatorTriggerModeanywhere
    _$$_FlutterRefreshIndicatorTriggerModeanywhereFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          r'_$_FlutterRefreshIndicatorTriggerModeanywhere',
          json,
          ($checkedConvert) {
            final val = _$_FlutterRefreshIndicatorTriggerModeanywhere(
              $type: $checkedConvert('builder', (v) => v as String?),
            );
            return val;
          },
          fieldKeyMap: const {r'$type': 'builder'},
        );
