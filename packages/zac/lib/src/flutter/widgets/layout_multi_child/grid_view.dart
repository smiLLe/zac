import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/any_value.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zac/src/zac/misc.dart';
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
  GridView buildWidget(
      BuildContext context, WidgetRef ref, ZacActionHelper helper) {
    final zacRef = ZacRef.widget(ref);
    return GridView(
      gridDelegate: gridDelegate.build(context, ref, helper),
      key: key?.buildKey(context, ref, helper),
      scrollDirection:
          scrollDirection?.build(context, ref, helper) ?? Axis.vertical,
      reverse: reverse?.getValue(zacRef) ?? false,
      primary: primary?.getValue(zacRef),
      shrinkWrap: shrinkWrap?.getValue(zacRef) ?? false,
      padding: padding?.build(context, ref, helper),
      addAutomaticKeepAlives: addAutomaticKeepAlives?.getValue(zacRef) ?? true,
      addRepaintBoundaries: addRepaintBoundaries?.getValue(zacRef) ?? true,
      addSemanticIndexes: addSemanticIndexes?.getValue(zacRef) ?? true,
      cacheExtent: cacheExtent?.getValue(zacRef),
      children: children?.getValue(context, ref, helper) ?? const <Widget>[],
      semanticChildCount: semanticChildCount?.getValue(zacRef),
      keyboardDismissBehavior:
          keyboardDismissBehavior?.build(context, ref, helper) ??
              ScrollViewKeyboardDismissBehavior.manual,
      restorationId: restorationId?.getValue(zacRef),
      clipBehavior: clipBehavior?.build(context, ref, helper) ?? Clip.hardEdge,
    );
  }
}
