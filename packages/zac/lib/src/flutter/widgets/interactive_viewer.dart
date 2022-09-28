import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/any_value.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zac/src/zac/misc.dart';
import 'package:zac/src/zac/update_context.dart';
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
  InteractiveViewer buildWidget(
      BuildContext context, WidgetRef ref, ZacBuildContext zacContext) {
    final zacRef = ZacRef.widget(ref);
    return InteractiveViewer(
      key: key?.buildKey(context, ref, zacContext),
      child: child.buildWidget(context, ref, zacContext),
      clipBehavior:
          clipBehavior?.build(context, ref, zacContext) ?? Clip.hardEdge,
      alignPanAxis: alignPanAxis?.getValue(zacRef) ?? false,
      boundaryMargin:
          boundaryMargin?.build(context, ref, zacContext) ?? EdgeInsets.zero,
      constrained: constrained?.getValue(zacRef) ?? true,
      maxScale: maxScale?.getValue(zacRef) ?? 2.5,
      minScale: minScale?.getValue(zacRef) ?? 0.8,
      onInteractionEnd: actionsCallback1(onInteractionEnd, zacContext),
      onInteractionStart: actionsCallback1(onInteractionStart, zacContext),
      onInteractionUpdate: actionsCallback1(onInteractionUpdate, zacContext),
      panEnabled: panEnabled?.getValue(zacRef) ?? true,
      scaleEnabled: scaleEnabled?.getValue(zacRef) ?? true,
      // transformationController: key?.toFlutter(context),
    );
  }
}
