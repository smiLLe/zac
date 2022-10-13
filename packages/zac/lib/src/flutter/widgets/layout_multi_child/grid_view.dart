import 'package:zac/src/zac/origin.dart';
import 'package:zac/src/zac/zac_values.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/flutter/rendering.dart';
import 'package:zac/src/flutter/widgets/keyboard.dart';

part 'grid_view.freezed.dart';
part 'grid_view.g.dart';

@defaultConverterFreezed
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
    // ScrollController? controller,
    ZacBool? primary,
    // ScrollPhysics? physics,
    ZacBool? shrinkWrap,
    FlutterEdgeInsetsGeometry? padding,
    required FlutterSliverGridDelegate gridDelegate,
    ZacBool? addAutomaticKeepAlives,
    ZacBool? addRepaintBoundaries,
    ZacBool? addSemanticIndexes,
    ZacDouble? cacheExtent,
    ListOfZacWidget? children,
    ZacInt? semanticChildCount,
    // DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    FlutterClip? clipBehavior,
    FlutterScrollViewKeyboardDismissBehavior? keyboardDismissBehavior,
    ZacString? restorationId,
  }) = _FlutterGridView;

  @override
  GridView buildWidget(ZacOriginWidgetTree origin) {
    return GridView(
      gridDelegate: gridDelegate.build(origin),
      key: key?.buildKey(origin),
      scrollDirection: scrollDirection?.build(origin) ?? Axis.vertical,
      reverse: reverse?.getValue(origin) ?? false,
      primary: primary?.getValue(origin),
      shrinkWrap: shrinkWrap?.getValue(origin) ?? false,
      padding: padding?.build(origin),
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
    );
  }
}
