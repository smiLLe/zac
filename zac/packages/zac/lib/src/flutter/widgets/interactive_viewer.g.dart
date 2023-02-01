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
          panAxis: $checkedConvert(
              'panAxis',
              (v) => v == null
                  ? null
                  : ZacBuilder<PanAxis?>.fromJson(v as Object)),
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

_$_PanAxisHorizontal _$$_PanAxisHorizontalFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_PanAxisHorizontal',
      json,
      ($checkedConvert) {
        final val = _$_PanAxisHorizontal(
          $type: $checkedConvert('builder', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'builder'},
    );

_$_PanAxisVertical _$$_PanAxisVerticalFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_PanAxisVertical',
      json,
      ($checkedConvert) {
        final val = _$_PanAxisVertical(
          $type: $checkedConvert('builder', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'builder'},
    );

_$_PanAxisAligned _$$_PanAxisAlignedFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_PanAxisAligned',
      json,
      ($checkedConvert) {
        final val = _$_PanAxisAligned(
          $type: $checkedConvert('builder', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'builder'},
    );

_$_PanAxisFree _$$_PanAxisFreeFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_PanAxisFree',
      json,
      ($checkedConvert) {
        final val = _$_PanAxisFree(
          $type: $checkedConvert('builder', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'builder'},
    );
