import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'interactive_viewer.freezed.dart';
part 'interactive_viewer.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
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
    ZacValue<bool?>? alignPanAxis,
    FlutterEdgeInsets? boundaryMargin,
    ZacValue<bool?>? constrained,
    ZacValue<double?>? maxScale,
    ZacValue<double?>? minScale,
    ZacActions? onInteractionEnd,
    ZacActions? onInteractionStart,
    ZacActions? onInteractionUpdate,
    ZacValue<bool?>? panEnabled,
    ZacValue<bool?>? scaleEnabled,
// TransformationController? transformationController,
  }) = _FlutterInteractiveViewer;

  InteractiveViewer _buildWidget(ZacContext zacContext) {
    return InteractiveViewer(
      key: key?.build(zacContext),
      clipBehavior: clipBehavior?.build(zacContext) ?? Clip.hardEdge,
      alignPanAxis: alignPanAxis?.build(zacContext) ?? false,
      boundaryMargin: boundaryMargin?.build(zacContext) ?? EdgeInsets.zero,
      constrained: constrained?.build(zacContext) ?? true,
      maxScale: maxScale?.build(zacContext) ?? 2.5,
      minScale: minScale?.build(zacContext) ?? 0.8,
      onInteractionEnd:
          onInteractionEnd?.createCbParam1<ScaleEndDetails>(zacContext),
      onInteractionStart:
          onInteractionStart?.createCbParam1<ScaleStartDetails>(zacContext),
      onInteractionUpdate:
          onInteractionUpdate?.createCbParam1<ScaleUpdateDetails>(zacContext),
      panEnabled: panEnabled?.build(zacContext) ?? true,
      scaleEnabled: scaleEnabled?.build(zacContext) ?? true,
      child: child.build(zacContext),
      // transformationController: key?.toFlutter(context),
    );
  }

  @override
  InteractiveViewer build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }

  @override
  InteractiveViewer? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }
}
