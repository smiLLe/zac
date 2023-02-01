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
    ZacBuilder<PanAxis?>? panAxis,
    ZacBuilder<EdgeInsets?>? boundaryMargin,
    ZacBuilder<bool?>? constrained,
    ZacBuilder<double?>? maxScale,
    ZacBuilder<double?>? minScale,
    ZacBuilder<List<ZacAction>?>? onInteractionEnd,
    ZacBuilder<List<ZacAction>?>? onInteractionStart,
    ZacBuilder<List<ZacAction>?>? onInteractionUpdate,
    ZacBuilder<bool?>? panEnabled,
    ZacBuilder<bool?>? scaleEnabled,
// TransformationController? transformationController,
  }) = _FlutterInteractiveViewer;

  InteractiveViewer _buildWidget(BuildContext context, ZacContext zacContext) {
    return InteractiveViewer(
      key: key?.build(context, zacContext),
      clipBehavior: clipBehavior?.build(context, zacContext) ?? Clip.hardEdge,
      panAxis: panAxis?.build(context, zacContext) ?? PanAxis.free,
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

@freezedZacBuilder
class FlutterPanAxis with _$FlutterPanAxis implements ZacBuilder<PanAxis> {
  const FlutterPanAxis._();

  static const String unionValue = 'f:1:PanAxis.horizontal';
  static const String unionValueVertical = 'f:1:PanAxis.vertical';
  static const String unionValueAligned = 'f:1:PanAxis.aligned';
  static const String unionValueFree = 'f:1:PanAxis.free';

  factory FlutterPanAxis.fromJson(Map<String, dynamic> json) =>
      _$FlutterPanAxisFromJson(json);

  @FreezedUnionValue(FlutterPanAxis.unionValue)
  factory FlutterPanAxis.horizontal() = _PanAxisHorizontal;

  @FreezedUnionValue(FlutterPanAxis.unionValueVertical)
  factory FlutterPanAxis.vertical() = _PanAxisVertical;

  @FreezedUnionValue(FlutterPanAxis.unionValueAligned)
  factory FlutterPanAxis.aligned() = _PanAxisAligned;

  @FreezedUnionValue(FlutterPanAxis.unionValueFree)
  factory FlutterPanAxis.free() = _PanAxisFree;

  @override
  PanAxis build(BuildContext context, ZacContext zacContext) {
    return map(
      horizontal: (_) => PanAxis.horizontal,
      vertical: (_) => PanAxis.vertical,
      aligned: (_) => PanAxis.aligned,
      free: (_) => PanAxis.free,
    );
  }
}
