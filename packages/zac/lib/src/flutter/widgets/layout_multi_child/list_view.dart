import 'package:zac/src/zac/origin.dart';
import 'package:zac/src/zac/zac_values.dart';
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

@defaultConverterFreezed
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
// ScrollController? controller,
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
    ListOfZacWidget? children,
    ZacInt? semanticChildCount,
// DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    FlutterScrollViewKeyboardDismissBehavior? keyboardDismissBehavior,
    ZacString? restorationId,
    FlutterClip? clipBehavior,
  }) = _FlutterListView;

  @override
  ListView buildWidget(ZacOriginWidgetTree origin) {
    return ListView(
      key: key?.buildKey(origin),
      scrollDirection: scrollDirection?.build(origin) ?? Axis.vertical,
      reverse: reverse?.getValue(origin) ?? false,
      primary: primary?.getValue(origin),
      shrinkWrap: shrinkWrap?.getValue(origin) ?? false,
      padding: padding?.build(origin),
      itemExtent: itemExtent?.getValue(origin),
      prototypeItem: prototypeItem?.buildWidget(origin),
      addAutomaticKeepAlives: addAutomaticKeepAlives?.getValue(origin) ?? true,
      addRepaintBoundaries: addRepaintBoundaries?.getValue(origin) ?? true,
      addSemanticIndexes: addSemanticIndexes?.getValue(origin) ?? true,
      cacheExtent: cacheExtent?.getValue(origin),
      children: children?.getValue(origin) ?? const <Widget>[],
      semanticChildCount: semanticChildCount?.getValue(origin),
      keyboardDismissBehavior: keyboardDismissBehavior?.build(origin) ??
          ScrollViewKeyboardDismissBehavior.manual,
      restorationId: restorationId?.getValue(origin),
      clipBehavior: clipBehavior?.build(origin) ?? Clip.hardEdge,
      physics: physics?.build(origin),
    );
  }
}
