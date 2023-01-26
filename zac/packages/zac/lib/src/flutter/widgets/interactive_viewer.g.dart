// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interactive_viewer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterInteractiveViewer _$$_FlutterInteractiveViewerFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_FlutterInteractiveViewer',
      json,
      ($checkedConvert) {
        final val = _$_FlutterInteractiveViewer(
          key: $checkedConvert('key',
              (v) => v == null ? null : ZacBuilder<Key?>.fromJson(v as Object)),
          child: $checkedConvert(
              'child', (v) => ZacBuilder<Widget>.fromJson(v as Object)),
          clipBehavior: $checkedConvert(
              'clipBehavior',
              (v) =>
                  v == null ? null : ZacBuilder<Clip?>.fromJson(v as Object)),
          alignPanAxis: $checkedConvert(
              'alignPanAxis',
              (v) =>
                  v == null ? null : ZacBuilder<bool?>.fromJson(v as Object)),
          boundaryMargin: $checkedConvert(
              'boundaryMargin',
              (v) => v == null
                  ? null
                  : ZacBuilder<EdgeInsets?>.fromJson(v as Object)),
          constrained: $checkedConvert(
              'constrained',
              (v) =>
                  v == null ? null : ZacBuilder<bool?>.fromJson(v as Object)),
          maxScale: $checkedConvert(
              'maxScale',
              (v) =>
                  v == null ? null : ZacBuilder<double?>.fromJson(v as Object)),
          minScale: $checkedConvert(
              'minScale',
              (v) =>
                  v == null ? null : ZacBuilder<double?>.fromJson(v as Object)),
          onInteractionEnd: $checkedConvert(
              'onInteractionEnd',
              (v) => v == null
                  ? null
                  : ZacBuilder<List<ZacAction>?>.fromJson(v as Object)),
          onInteractionStart: $checkedConvert(
              'onInteractionStart',
              (v) => v == null
                  ? null
                  : ZacBuilder<List<ZacAction>?>.fromJson(v as Object)),
          onInteractionUpdate: $checkedConvert(
              'onInteractionUpdate',
              (v) => v == null
                  ? null
                  : ZacBuilder<List<ZacAction>?>.fromJson(v as Object)),
          panEnabled: $checkedConvert(
              'panEnabled',
              (v) =>
                  v == null ? null : ZacBuilder<bool?>.fromJson(v as Object)),
          scaleEnabled: $checkedConvert(
              'scaleEnabled',
              (v) =>
                  v == null ? null : ZacBuilder<bool?>.fromJson(v as Object)),
        );
        return val;
      },
    );
