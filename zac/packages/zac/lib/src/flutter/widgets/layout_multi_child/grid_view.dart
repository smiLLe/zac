import 'package:zac/src/flutter/widgets/scroll_controller.dart';
import 'package:zac/src/flutter/widgets/sliver/sliver_delegate/sliver_grid_delegate.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
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
    ZacValue<bool>? reverse,
    FlutterScrollController? controller,
    ZacValue<bool>? primary,
    // ScrollPhysics? physics,
    ZacValue<bool>? shrinkWrap,
    FlutterEdgeInsetsGeometry? padding,
    required FlutterSliverGridDelegate gridDelegate,
    ZacValue<bool>? addAutomaticKeepAlives,
    ZacValue<bool>? addRepaintBoundaries,
    ZacValue<bool>? addSemanticIndexes,
    ZacValue<double>? cacheExtent,
    ZacListOfFlutterWidget? children,
    ZacValue<int>? semanticChildCount,
    // DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    FlutterClip? clipBehavior,
    FlutterScrollViewKeyboardDismissBehavior? keyboardDismissBehavior,
    ZacValue<String>? restorationId,
  }) = _FlutterGridView;

  GridView _buildWidget(ZacContext zacContext) {
    return GridView(
      gridDelegate: gridDelegate.build(zacContext),
      key: key?.buildOrNull(zacContext),
      scrollDirection:
          scrollDirection?.buildOrNull(zacContext) ?? Axis.vertical,
      reverse: reverse?.buildOrNull(zacContext) ?? false,
      controller: controller?.buildOrNull(zacContext),
      primary: primary?.buildOrNull(zacContext),
      shrinkWrap: shrinkWrap?.buildOrNull(zacContext) ?? false,
      padding: padding?.buildOrNull(zacContext),
      addAutomaticKeepAlives:
          addAutomaticKeepAlives?.buildOrNull(zacContext) ?? true,
      addRepaintBoundaries:
          addRepaintBoundaries?.buildOrNull(zacContext) ?? true,
      addSemanticIndexes: addSemanticIndexes?.buildOrNull(zacContext) ?? true,
      cacheExtent: cacheExtent?.buildOrNull(zacContext),
      semanticChildCount: semanticChildCount?.buildOrNull(zacContext),
      keyboardDismissBehavior:
          keyboardDismissBehavior?.buildOrNull(zacContext) ??
              ScrollViewKeyboardDismissBehavior.manual,
      restorationId: restorationId?.buildOrNull(zacContext),
      clipBehavior: clipBehavior?.buildOrNull(zacContext) ?? Clip.hardEdge,
      children: children?.buildOrNull(zacContext) ?? const <Widget>[],
    );
  }

  @override
  GridView build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }

  @override
  GridView? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }
}
