import 'package:zac/src/flutter/widgets/scroll_controller.dart';
import 'package:zac/src/flutter/widgets/sliver/sliver_delegate/sliver_grid_delegate.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/flutter/widgets/keyboard.dart';

part 'grid_view.freezed.dart';
part 'grid_view.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterGridView with _$FlutterGridView implements FlutterWidget {
  const FlutterGridView._();

  static const String unionValue = 'f:1:GridView';

  factory FlutterGridView.fromJson(Map<String, dynamic> json) =>
      _$FlutterGridViewFromJson(json);

  @FreezedUnionValue(FlutterGridView.unionValue)
  factory FlutterGridView({
    FlutterKey? key,
    FlutterAxis? scrollDirection,
    ZacBool? reverse,
    FlutterScrollController? controller,
    ZacBool? primary,
    // ScrollPhysics? physics,
    ZacBool? shrinkWrap,
    FlutterEdgeInsetsGeometry? padding,
    required FlutterSliverGridDelegate gridDelegate,
    ZacBool? addAutomaticKeepAlives,
    ZacBool? addRepaintBoundaries,
    ZacBool? addSemanticIndexes,
    ZacDouble? cacheExtent,
    ZacValueList<FlutterWidget>? children,
    ZacInt? semanticChildCount,
    // DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    FlutterClip? clipBehavior,
    FlutterScrollViewKeyboardDismissBehavior? keyboardDismissBehavior,
    ZacString? restorationId,
  }) = _FlutterGridView;

  @override
  GridView buildWidget(ZacContext zacContext) {
    return GridView(
      gridDelegate: gridDelegate.build(zacContext),
      key: key?.buildKey(zacContext),
      scrollDirection: scrollDirection?.build(zacContext) ?? Axis.vertical,
      reverse: reverse?.getValueOrNull(zacContext) ?? false,
      controller: controller?.getValueOrNull(zacContext),
      primary: primary?.getValueOrNull(zacContext),
      shrinkWrap: shrinkWrap?.getValueOrNull(zacContext) ?? false,
      padding: padding?.build(zacContext),
      addAutomaticKeepAlives:
          addAutomaticKeepAlives?.getValueOrNull(zacContext) ?? true,
      addRepaintBoundaries:
          addRepaintBoundaries?.getValueOrNull(zacContext) ?? true,
      addSemanticIndexes:
          addSemanticIndexes?.getValueOrNull(zacContext) ?? true,
      cacheExtent: cacheExtent?.getValueOrNull(zacContext),
      semanticChildCount: semanticChildCount?.getValueOrNull(zacContext),
      keyboardDismissBehavior: keyboardDismissBehavior?.build(zacContext) ??
          ScrollViewKeyboardDismissBehavior.manual,
      restorationId: restorationId?.getValueOrNull(zacContext),
      clipBehavior: clipBehavior?.build(zacContext) ?? Clip.hardEdge,
      children: children?.getWidgets(zacContext) ?? const <Widget>[],
    );
  }
}
