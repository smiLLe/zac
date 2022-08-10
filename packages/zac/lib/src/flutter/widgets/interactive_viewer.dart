import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/any_value.dart';

import 'package:zac/src/zac/widget_context.dart';
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
    implements ZacWidget {
  const FlutterInteractiveViewer._();

  static const String unionValue = 'f:1:InteractiveViewer';

  factory FlutterInteractiveViewer.fromJson(Map<String, dynamic> json) =>
      _$FlutterInteractiveViewerFromJson(json);

  @FreezedUnionValue(FlutterInteractiveViewer.unionValue)
  factory FlutterInteractiveViewer({
    FlutterKey? key,
    required ZacWidget child,
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
  InteractiveViewer buildWidget(ZacBuildContext context) {
    return InteractiveViewer(
      key: key?.buildKey(context),
      child: child.buildWidget(context),
      clipBehavior: clipBehavior?.build(context) ?? Clip.hardEdge,
      alignPanAxis: alignPanAxis?.getValue(context) ?? false,
      boundaryMargin: boundaryMargin?.build(context) ?? EdgeInsets.zero,
      constrained: constrained?.getValue(context) ?? true,
      maxScale: maxScale?.getValue(context) ?? 2.5,
      minScale: minScale?.getValue(context) ?? 0.8,
      onInteractionEnd: actionsCallback1(onInteractionEnd, context),
      onInteractionStart: actionsCallback1(onInteractionStart, context),
      onInteractionUpdate: actionsCallback1(onInteractionUpdate, context),
      panEnabled: panEnabled?.getValue(context) ?? true,
      scaleEnabled: scaleEnabled?.getValue(context) ?? true,
      // transformationController: key?.toFlutter(context),
    );
  }
}
