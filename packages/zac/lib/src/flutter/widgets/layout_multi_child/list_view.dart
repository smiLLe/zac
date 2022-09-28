import 'package:zac/src/zac/any_value.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zac/src/zac/update_context.dart';
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
class FlutterListView with _$FlutterListView implements ZacWidget {
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
    ZacWidget? prototypeItem,
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
  ListView buildWidget(
      BuildContext context, WidgetRef ref, ZacBuildContext zacContext) {
    return ListView(
      key: key?.buildKey(context, ref, zacContext),
      scrollDirection:
          scrollDirection?.build(context, ref, zacContext) ?? Axis.vertical,
      reverse: reverse?.getValue(zacContext) ?? false,
      primary: primary?.getValue(zacContext),
      shrinkWrap: shrinkWrap?.getValue(zacContext) ?? false,
      padding: padding?.build(context, ref, zacContext),
      itemExtent: itemExtent?.getValue(zacContext),
      prototypeItem: prototypeItem?.buildWidget(context, ref, zacContext),
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
      physics: physics?.build(context, ref, zacContext),
    );
  }
}
