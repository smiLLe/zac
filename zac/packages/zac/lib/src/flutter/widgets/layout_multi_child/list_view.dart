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
    ZacValue<bool>? reverse,
    ZacValue<FlutterScrollController>? controller,
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
    ZacValueList<FlutterWidget>? children,
    ZacValue<int>? semanticChildCount,
// DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    FlutterScrollViewKeyboardDismissBehavior? keyboardDismissBehavior,
    ZacValue<String>? restorationId,
    FlutterClip? clipBehavior,
  }) = _FlutterListView;

  @override
  ListView buildWidget(ZacContext zacContext) {
    return ListView(
      key: key?.buildKey(zacContext),
      scrollDirection: scrollDirection?.build(zacContext) ?? Axis.vertical,
      reverse: reverse?.getValue(zacContext) ?? false,
      controller:
          controller?.getValue(zacContext).getScrollController(zacContext),
      primary: primary?.getValue(zacContext),
      shrinkWrap: shrinkWrap?.getValue(zacContext) ?? false,
      padding: padding?.build(zacContext),
      itemExtent: itemExtent?.getValue(zacContext),
      prototypeItem: prototypeItem?.buildWidget(zacContext),
      addAutomaticKeepAlives:
          addAutomaticKeepAlives?.getValue(zacContext) ?? true,
      addRepaintBoundaries: addRepaintBoundaries?.getValue(zacContext) ?? true,
      addSemanticIndexes: addSemanticIndexes?.getValue(zacContext) ?? true,
      cacheExtent: cacheExtent?.getValue(zacContext),
      semanticChildCount: semanticChildCount?.getValue(zacContext),
      keyboardDismissBehavior: keyboardDismissBehavior?.build(zacContext) ??
          ScrollViewKeyboardDismissBehavior.manual,
      restorationId: restorationId?.getValue(zacContext),
      clipBehavior: clipBehavior?.build(zacContext) ?? Clip.hardEdge,
      physics: physics?.build(zacContext),
      children: children?.getWidgets(zacContext) ?? const <Widget>[],
    );
  }
}
