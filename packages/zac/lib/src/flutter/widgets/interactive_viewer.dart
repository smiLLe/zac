import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/origin.dart';
import 'package:zac/src/zac/zac_values.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'interactive_viewer.freezed.dart';
part 'interactive_viewer.g.dart';

@defaultConverterFreezed
class FlutterInteractiveViewer
    with _$FlutterInteractiveViewer
    implements FlutterWidget {
  const FlutterInteractiveViewer._();

  static const String unionValue = 'f:1:InteractiveViewer';

  factory FlutterInteractiveViewer.fromJson(Map<String, dynamic> json) =>
      _$FlutterInteractiveViewerFromJson(json);

  @FreezedUnionValue(FlutterInteractiveViewer.unionValue)
  factory FlutterInteractiveViewer({
    FlutterKey? key,
    required FlutterWidget child,
    FlutterClip? clipBehavior,
    ZacBool? alignPanAxis,
    FlutterEdgeInsets? boundaryMargin,
    ZacBool? constrained,
    ZacDouble? maxScale,
    ZacDouble? minScale,
    ZacActions? onInteractionEnd,
    ZacActions? onInteractionStart,
    ZacActions? onInteractionUpdate,
    ZacBool? panEnabled,
    ZacBool? scaleEnabled,
// TransformationController? transformationController,
  }) = _FlutterInteractiveViewer;

  @override
  InteractiveViewer buildWidget(ZacOriginWidgetTree origin) {
    return InteractiveViewer(
      key: key?.buildKey(origin),
      child: child.buildWidget(origin),
      clipBehavior: clipBehavior?.build(origin) ?? Clip.hardEdge,
      alignPanAxis: alignPanAxis?.getValue(origin) ?? false,
      boundaryMargin: boundaryMargin?.build(origin) ?? EdgeInsets.zero,
      constrained: constrained?.getValue(origin) ?? true,
      maxScale: maxScale?.getValue(origin) ?? 2.5,
      minScale: minScale?.getValue(origin) ?? 0.8,
      onInteractionEnd:
          onInteractionEnd?.createCbParam1<ScaleEndDetails>(origin),
      onInteractionStart:
          onInteractionStart?.createCbParam1<ScaleStartDetails>(origin),
      onInteractionUpdate:
          onInteractionUpdate?.createCbParam1<ScaleUpdateDetails>(origin),
      panEnabled: panEnabled?.getValue(origin) ?? true,
      scaleEnabled: scaleEnabled?.getValue(origin) ?? true,
      // transformationController: key?.toFlutter(context),
    );
  }
}
