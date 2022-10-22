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
          : FlutterKey.fromJson(json['key'] as Object),
      child: FlutterWidget.fromJson(json['child'] as Object),
      clipBehavior: json['clipBehavior'] == null
          ? null
          : FlutterClip.fromJson(json['clipBehavior'] as Map<String, dynamic>),
      alignPanAxis: json['alignPanAxis'] == null
          ? null
          : ZacBool.fromJson(json['alignPanAxis'] as Object),
      boundaryMargin: json['boundaryMargin'] == null
          ? null
          : FlutterEdgeInsets.fromJson(
              json['boundaryMargin'] as Map<String, dynamic>),
      constrained: json['constrained'] == null
          ? null
          : ZacBool.fromJson(json['constrained'] as Object),
      maxScale: json['maxScale'] == null
          ? null
          : ZacValue<double>.fromJson(json['maxScale'] as Object),
      minScale: json['minScale'] == null
          ? null
          : ZacValue<double>.fromJson(json['minScale'] as Object),
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
          : ZacBool.fromJson(json['panEnabled'] as Object),
      scaleEnabled: json['scaleEnabled'] == null
          ? null
          : ZacBool.fromJson(json['scaleEnabled'] as Object),
    );
