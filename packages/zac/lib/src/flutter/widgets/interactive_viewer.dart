import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/zac/interactions.dart';
import 'package:zac/src/zac/any_value.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zac/src/zac/misc.dart';
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
    ZacInteractions? onInteractionEnd,
    ZacInteractions? onInteractionStart,
    ZacInteractions? onInteractionUpdate,
    ZacBool? panEnabled,
    ZacBool? scaleEnabled,
// TransformationController? transformationController,
  }) = _FlutterInteractiveViewer;

  @override
  InteractiveViewer buildWidget(
      BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime) {
    final zacRef = ZacRef.widget(ref);
    return InteractiveViewer(
      key: key?.buildKey(context, ref, lifetime),
      child: child.buildWidget(context, ref, lifetime),
      clipBehavior:
          clipBehavior?.build(context, ref, lifetime) ?? Clip.hardEdge,
      alignPanAxis: alignPanAxis?.getValue(zacRef) ?? false,
      boundaryMargin:
          boundaryMargin?.build(context, ref, lifetime) ?? EdgeInsets.zero,
      constrained: constrained?.getValue(zacRef) ?? true,
      maxScale: maxScale?.getValue(zacRef) ?? 2.5,
      minScale: minScale?.getValue(zacRef) ?? 0.8,
      onInteractionEnd: onInteractionEnd?.createCbParam1<ScaleEndDetails>(
        context: context,
        ref: ref,
        lifetime: lifetime,
      ),
      onInteractionStart: onInteractionStart?.createCbParam1<ScaleStartDetails>(
        context: context,
        ref: ref,
        lifetime: lifetime,
      ),
      onInteractionUpdate:
          onInteractionUpdate?.createCbParam1<ScaleUpdateDetails>(
        context: context,
        ref: ref,
        lifetime: lifetime,
      ),
      panEnabled: panEnabled?.getValue(zacRef) ?? true,
      scaleEnabled: scaleEnabled?.getValue(zacRef) ?? true,
      // transformationController: key?.toFlutter(context),
    );
  }
}
