import 'package:zac/src/flutter/widgets/scroll_controller.dart';
import 'package:zac/src/zac/context.dart';
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
    ZacBool? reverse,
    ZacValue<FlutterScrollController>? controller,
    ZacBool? primary,
    FlutterScrollPhysics? physics,
    ZacBool? shrinkWrap,
    FlutterEdgeInsetsGeometry? padding,
    ZacDouble? itemExtent,
    FlutterWidget? prototypeItem,
    ZacBool? addAutomaticKeepAlives,
    ZacBool? addRepaintBoundaries,
    ZacBool? addSemanticIndexes,
    ZacDouble? cacheExtent,
    ZacValueList<FlutterWidget>? children,
    ZacInt? semanticChildCount,
// DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    FlutterScrollViewKeyboardDismissBehavior? keyboardDismissBehavior,
    ZacString? restorationId,
    FlutterClip? clipBehavior,
  }) = _FlutterListView;

  @override
  ListView buildWidget(ZacContext zacContext) {
    return ListView(
      key: key?.buildKey(zacContext),
      scrollDirection: scrollDirection?.build(zacContext) ?? Axis.vertical,
      reverse: reverse?.getValueOrNull(zacContext) ?? false,
      controller:
          controller?.getValue(zacContext).getScrollController(zacContext),
      primary: primary?.getValueOrNull(zacContext),
      shrinkWrap: shrinkWrap?.getValueOrNull(zacContext) ?? false,
      padding: padding?.build(zacContext),
      itemExtent: itemExtent?.getValueOrNull(zacContext),
      prototypeItem: prototypeItem?.buildWidget(zacContext),
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
      physics: physics?.build(zacContext),
      children: children?.getWidgets(zacContext) ?? const <Widget>[],
    );
  }
}
