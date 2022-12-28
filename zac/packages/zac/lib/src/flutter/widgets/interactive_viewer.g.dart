// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interactive_viewer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterInteractiveViewer _$$_FlutterInteractiveViewerFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterInteractiveViewer(
      key: json['key'] == null
          ? null
          : ZacBuilder<Key?>.fromJson(json['key'] as Object),
      child: ZacBuilder<Widget>.fromJson(json['child'] as Object),
      clipBehavior: json['clipBehavior'] == null
          ? null
          : ZacBuilder<Clip?>.fromJson(json['clipBehavior'] as Object),
      alignPanAxis: json['alignPanAxis'] == null
          ? null
          : ZacBuilder<bool?>.fromJson(json['alignPanAxis'] as Object),
      boundaryMargin: json['boundaryMargin'] == null
          ? null
          : ZacBuilder<EdgeInsets?>.fromJson(json['boundaryMargin'] as Object),
      constrained: json['constrained'] == null
          ? null
          : ZacBuilder<bool?>.fromJson(json['constrained'] as Object),
      maxScale: json['maxScale'] == null
          ? null
          : ZacBuilder<double?>.fromJson(json['maxScale'] as Object),
      minScale: json['minScale'] == null
          ? null
          : ZacBuilder<double?>.fromJson(json['minScale'] as Object),
      onInteractionEnd: json['onInteractionEnd'] == null
          ? null
          : ZacActions.fromJson(json['onInteractionEnd'] as Object),
      onInteractionStart: json['onInteractionStart'] == null
          ? null
          : ZacActions.fromJson(json['onInteractionStart'] as Object),
      onInteractionUpdate: json['onInteractionUpdate'] == null
          ? null
          : ZacActions.fromJson(json['onInteractionUpdate'] as Object),
      panEnabled: json['panEnabled'] == null
          ? null
          : ZacBuilder<bool?>.fromJson(json['panEnabled'] as Object),
      scaleEnabled: json['scaleEnabled'] == null
          ? null
          : ZacBuilder<bool?>.fromJson(json['scaleEnabled'] as Object),
    );
