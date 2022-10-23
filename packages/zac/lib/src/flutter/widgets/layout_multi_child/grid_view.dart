import 'package:zac/src/zac/context.dart';
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
    ZacValue<bool>? reverse,
    // ScrollController? controller,
    ZacValue<bool>? primary,
    // ScrollPhysics? physics,
    ZacValue<bool>? shrinkWrap,
    FlutterEdgeInsetsGeometry? padding,
    required FlutterSliverGridDelegate gridDelegate,
    ZacValue<bool>? addAutomaticKeepAlives,
    ZacValue<bool>? addRepaintBoundaries,
    ZacValue<bool>? addSemanticIndexes,
    ZacValue<double>? cacheExtent,
    ZacValueList<FlutterWidget>? children,
    ZacValue<int>? semanticChildCount,
    // DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    FlutterClip? clipBehavior,
    FlutterScrollViewKeyboardDismissBehavior? keyboardDismissBehavior,
    ZacValue<String>? restorationId,
  }) = _FlutterGridView;

  @override
  GridView buildWidget(ZacContext zacContext) {
    return GridView(
      gridDelegate: gridDelegate.build(zacContext),
      key: key?.buildKey(zacContext),
      scrollDirection: scrollDirection?.build(zacContext) ?? Axis.vertical,
      reverse: reverse?.getValue(zacContext) ?? false,
      primary: primary?.getValue(zacContext),
      shrinkWrap: shrinkWrap?.getValue(zacContext) ?? false,
      padding: padding?.build(zacContext),
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
      children: children?.getWidgets(zacContext) ?? const <Widget>[],
    );
  }
}
