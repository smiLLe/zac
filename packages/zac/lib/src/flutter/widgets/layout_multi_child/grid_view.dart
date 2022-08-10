import 'package:zac/src/zac/any_value.dart';

import 'package:zac/src/zac/update_context.dart';
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
class FlutterGridView with _$FlutterGridView implements ZacWidget {
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
  GridView buildWidget(ZacBuildContext context) {
    return GridView(
      gridDelegate: gridDelegate.build(context),
      key: key?.buildKey(context),
      scrollDirection: scrollDirection?.build(context) ?? Axis.vertical,
      reverse: this.reverse?.getValue(context) ?? false,
      primary: primary?.getValue(context),
      shrinkWrap: shrinkWrap?.getValue(context) ?? false,
      padding: padding?.build(context),
      addAutomaticKeepAlives: addAutomaticKeepAlives?.getValue(context) ?? true,
      addRepaintBoundaries: addRepaintBoundaries?.getValue(context) ?? true,
      addSemanticIndexes: addSemanticIndexes?.getValue(context) ?? true,
      cacheExtent: cacheExtent?.getValue(context),
      children: children?.getValue(context) ?? const <Widget>[],
      semanticChildCount: semanticChildCount?.getValue(context),
      keyboardDismissBehavior: keyboardDismissBehavior?.build(context) ??
          ScrollViewKeyboardDismissBehavior.manual,
      restorationId: restorationId?.getValue(context),
      clipBehavior: clipBehavior?.build(context) ?? Clip.hardEdge,
    );
  }
}
