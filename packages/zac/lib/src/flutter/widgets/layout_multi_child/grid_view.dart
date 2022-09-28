import 'package:zac/src/zac/any_value.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
  GridView buildWidget(
      BuildContext context, WidgetRef ref, ZacBuildContext zacContext) {
    return GridView(
      gridDelegate: gridDelegate.build(context, ref, zacContext),
      key: key?.buildKey(context, ref, zacContext),
      scrollDirection:
          scrollDirection?.build(context, ref, zacContext) ?? Axis.vertical,
      reverse: reverse?.getValue(zacContext) ?? false,
      primary: primary?.getValue(zacContext),
      shrinkWrap: shrinkWrap?.getValue(zacContext) ?? false,
      padding: padding?.build(context, ref, zacContext),
      addAutomaticKeepAlives:
          addAutomaticKeepAlives?.getValue(zacContext) ?? true,
      addRepaintBoundaries: addRepaintBoundaries?.getValue(zacContext) ?? true,
      addSemanticIndexes: addSemanticIndexes?.getValue(zacContext) ?? true,
      cacheExtent: cacheExtent?.getValue(zacContext),
      children:
          children?.getValue(context, ref, zacContext) ?? const <Widget>[],
      semanticChildCount: semanticChildCount?.getValue(zacContext),
      keyboardDismissBehavior:
          keyboardDismissBehavior?.build(context, ref, zacContext) ??
              ScrollViewKeyboardDismissBehavior.manual,
      restorationId: restorationId?.getValue(zacContext),
      clipBehavior:
          clipBehavior?.build(context, ref, zacContext) ?? Clip.hardEdge,
    );
  }
}
