import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
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
    ZacListBuilder<ZacAction, List<ZacAction>?>? onInteractionEnd,
    ZacListBuilder<ZacAction, List<ZacAction>?>? onInteractionStart,
    ZacListBuilder<ZacAction, List<ZacAction>?>? onInteractionUpdate,
    ZacBuilder<bool?>? panEnabled,
    ZacBuilder<bool?>? scaleEnabled,
// TransformationController? transformationController,
  }) = _FlutterInteractiveViewer;

  InteractiveViewer _buildWidget(BuildContext context, ZacContext zacContext) {
    return InteractiveViewer(
      key: key?.build(context, zacContext),
      clipBehavior: clipBehavior?.build(context, zacContext) ?? Clip.hardEdge,
      alignPanAxis: alignPanAxis?.build(context, zacContext) ?? false,
      boundaryMargin:
          boundaryMargin?.build(context, zacContext) ?? EdgeInsets.zero,
      constrained: constrained?.build(context, zacContext) ?? true,
      maxScale: maxScale?.build(context, zacContext) ?? 2.5,
      minScale: minScale?.build(context, zacContext) ?? 0.8,
      onInteractionEnd: onInteractionEnd
          ?.build(context, zacContext)
          ?.createCbParam1<ScaleEndDetails>(context, zacContext),
      onInteractionStart: onInteractionStart
          ?.build(context, zacContext)
          ?.createCbParam1<ScaleStartDetails>(context, zacContext),
      onInteractionUpdate: onInteractionUpdate
          ?.build(context, zacContext)
          ?.createCbParam1<ScaleUpdateDetails>(context, zacContext),
      panEnabled: panEnabled?.build(context, zacContext) ?? true,
      scaleEnabled: scaleEnabled?.build(context, zacContext) ?? true,
      child: child.build(context, zacContext),
      // transformationController: key?.toFlutter(context),
    );
  }

  @override
  InteractiveViewer build(BuildContext context, ZacContext zacContext) {
    return _buildWidget(context, zacContext);
  }
}
