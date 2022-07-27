import 'package:zac/src/zac/any_value/any_value.dart';

import 'package:zac/src/zac/context/any_widget_context.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui/dart_ui.dart';
import 'package:zac/src/flutter/mixed/insets/edge_insets.dart';
import 'package:zac/src/flutter/mixed/keys/keys.dart';
import 'package:zac/src/flutter/painting/painting.dart';
import 'package:zac/src/flutter/widgets/interaction/keyboard/keyboard.dart';
import 'package:zac/src/flutter/widgets/interaction/scroll_physics/scroll_physics.dart';

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
  ListView buildWidget(ZacBuildContext context) {
    return ListView(
      key: key?.build(context),
      scrollDirection: scrollDirection?.build(context) ?? Axis.vertical,
      reverse: this.reverse?.getValue(context) ?? false,
      primary: primary?.getValue(context),
      shrinkWrap: shrinkWrap?.getValue(context) ?? false,
      padding: padding?.build(context),
      itemExtent: itemExtent?.getValue(context),
      prototypeItem: prototypeItem?.buildWidget(context),
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
      physics: physics?.build(context),
    );
  }
}
