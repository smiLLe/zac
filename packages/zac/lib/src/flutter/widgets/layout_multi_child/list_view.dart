import 'package:zac/src/zac/interactions.dart';
import 'package:zac/src/zac/any_value.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zac/src/zac/misc.dart';
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
      BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime) {
    final zacRef = ZacRef.widget(ref);
    return ListView(
      key: key?.buildKey(context, ref, lifetime),
      scrollDirection:
          scrollDirection?.build(context, ref, lifetime) ?? Axis.vertical,
      reverse: reverse?.getValue(zacRef) ?? false,
      primary: primary?.getValue(zacRef),
      shrinkWrap: shrinkWrap?.getValue(zacRef) ?? false,
      padding: padding?.build(context, ref, lifetime),
      itemExtent: itemExtent?.getValue(zacRef),
      prototypeItem: prototypeItem?.buildWidget(context, ref, lifetime),
      addAutomaticKeepAlives: addAutomaticKeepAlives?.getValue(zacRef) ?? true,
      addRepaintBoundaries: addRepaintBoundaries?.getValue(zacRef) ?? true,
      addSemanticIndexes: addSemanticIndexes?.getValue(zacRef) ?? true,
      cacheExtent: cacheExtent?.getValue(zacRef),
      children: children?.getValue(context, ref, lifetime) ?? const <Widget>[],
      semanticChildCount: semanticChildCount?.getValue(zacRef),
      keyboardDismissBehavior:
          keyboardDismissBehavior?.build(context, ref, lifetime) ??
              ScrollViewKeyboardDismissBehavior.manual,
      restorationId: restorationId?.getValue(zacRef),
      clipBehavior:
          clipBehavior?.build(context, ref, lifetime) ?? Clip.hardEdge,
      physics: physics?.build(context, ref, lifetime),
    );
  }
}
