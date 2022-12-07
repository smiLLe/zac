import 'package:zac/src/flutter/widgets/scroll_controller.dart';
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
import 'package:zac/src/flutter/widgets/scroll_physics.dart';

part 'list_view.freezed.dart';
part 'list_view.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterListView with _$FlutterListView implements FlutterWidget {
  const FlutterListView._();

  static const String unionValue = 'f:1:ListView';

  factory FlutterListView.fromJson(Map<String, dynamic> json) =>
      _$FlutterListViewFromJson(json);

  @FreezedUnionValue(FlutterListView.unionValue)
  factory FlutterListView({
    FlutterKey? key,
    FlutterAxis? scrollDirection,
    ZacValue<bool>? reverse,
    FlutterScrollController? controller,
    ZacValue<bool>? primary,
    FlutterScrollPhysics? physics,
    ZacValue<bool>? shrinkWrap,
    FlutterEdgeInsetsGeometry? padding,
    ZacValue<double>? itemExtent,
    FlutterWidget? prototypeItem,
    ZacValue<bool>? addAutomaticKeepAlives,
    ZacValue<bool>? addRepaintBoundaries,
    ZacValue<bool>? addSemanticIndexes,
    ZacValue<double>? cacheExtent,
    ZacListOfFlutterWidget? children,
    ZacValue<int>? semanticChildCount,
// DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    FlutterScrollViewKeyboardDismissBehavior? keyboardDismissBehavior,
    ZacValue<String>? restorationId,
    FlutterClip? clipBehavior,
  }) = _FlutterListView;

  ListView _buildWidget(ZacContext zacContext) {
    return ListView(
      key: key?.buildOrNull(zacContext),
      scrollDirection:
          scrollDirection?.buildOrNull(zacContext) ?? Axis.vertical,
      reverse: reverse?.buildOrNull(zacContext) ?? false,
      controller: controller?.buildOrNull(zacContext),
      primary: primary?.buildOrNull(zacContext),
      shrinkWrap: shrinkWrap?.buildOrNull(zacContext) ?? false,
      padding: padding?.buildOrNull(zacContext),
      itemExtent: itemExtent?.buildOrNull(zacContext),
      prototypeItem: prototypeItem?.buildOrNull(zacContext),
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
      physics: physics?.buildOrNull(zacContext),
      children: children?.buildOrNull(zacContext) ?? const <Widget>[],
    );
  }

  @override
  ListView build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }

  @override
  ListView? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }
}
