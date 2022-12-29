import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_build.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';

part 'interactive_viewer.freezed.dart';
part 'interactive_viewer.g.dart';

@freezedZacBuilder
class FlutterInteractiveViewer
    with _$FlutterInteractiveViewer
    implements ZacBuilder<InteractiveViewer> {
  const FlutterInteractiveViewer._();

  static const String unionValue = 'f:1:InteractiveViewer';

  factory FlutterInteractiveViewer.fromJson(Map<String, dynamic> json) =>
      _$FlutterInteractiveViewerFromJson(json);

  @FreezedUnionValue(FlutterInteractiveViewer.unionValue)
  factory FlutterInteractiveViewer({
    ZacBuilder<Key?>? key,
    required ZacBuilder<Widget> child,
    ZacBuilder<Clip?>? clipBehavior,
    ZacBuilder<bool?>? alignPanAxis,
    ZacBuilder<EdgeInsets?>? boundaryMargin,
    ZacBuilder<bool?>? constrained,
    ZacBuilder<double?>? maxScale,
    ZacBuilder<double?>? minScale,
    ZacActions? onInteractionEnd,
    ZacActions? onInteractionStart,
    ZacActions? onInteractionUpdate,
    ZacBuilder<bool?>? panEnabled,
    ZacBuilder<bool?>? scaleEnabled,
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
  InteractiveViewer build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
