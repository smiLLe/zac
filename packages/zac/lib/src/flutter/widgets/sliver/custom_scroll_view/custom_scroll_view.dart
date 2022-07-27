import 'package:zac/src/zac/any_value/any_value.dart';

import 'package:zac/src/zac/context/widget_context.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui/dart_ui.dart';
import 'package:zac/src/flutter/mixed/keys/keys.dart';
import 'package:zac/src/flutter/painting/painting.dart';
import 'package:zac/src/flutter/widgets/interaction/keyboard/keyboard.dart';
import 'package:zac/src/flutter/widgets/interaction/scroll_physics/scroll_physics.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'custom_scroll_view.freezed.dart';
part 'custom_scroll_view.g.dart';

@defaultConverterFreezed
class FlutterCustomScrollView
    with _$FlutterCustomScrollView
    implements ZacWidget {
  const FlutterCustomScrollView._();

  static const String unionValue = 'f:1:CustomScrollView';

  factory FlutterCustomScrollView.fromJson(Map<String, dynamic> json) =>
      _$FlutterCustomScrollViewFromJson(json);

  @FreezedUnionValue(FlutterCustomScrollView.unionValue)
  factory FlutterCustomScrollView({
    FlutterKey? key,
    FlutterAxis? scrollDirection,
    ZacBool? reverse,
// ScrollController? controller,
    ZacBool? primary,
    FlutterScrollPhysics? physics,
// FlutterScrollBehavior? scrollBehavior,
    ZacBool? shrinkWrap,
    FlutterKey? center,
    ZacDouble? anchor,
    ZacDouble? cacheExtent,
    ListOfZacWidget? slivers,
    ZacInt? semanticChildCount,
// FluDragStartBehavior dragStartBehavior = DragStartBehavior.start,
    FlutterScrollViewKeyboardDismissBehavior? keyboardDismissBehavior,
    ZacString? restorationId,
    FlutterClip? clipBehavior,
  }) = _FlutterCustomScrollView;

  @override
  CustomScrollView buildWidget(ZacBuildContext context) {
    return CustomScrollView(
      key: key?.build(context),
      slivers: slivers?.getValue(context) ?? const <Widget>[],
      scrollDirection: scrollDirection?.build(context) ?? Axis.vertical,
      reverse: this.reverse?.getValue(context) ?? false,
      primary: primary?.getValue(context),
      physics: physics?.build(context),
      shrinkWrap: shrinkWrap?.getValue(context) ?? false,
      center: center?.build(context),
      anchor: anchor?.getValue(context) ?? 0.0,
      cacheExtent: cacheExtent?.getValue(context),
      semanticChildCount: semanticChildCount?.getValue(context),
      keyboardDismissBehavior: keyboardDismissBehavior?.build(context) ??
          ScrollViewKeyboardDismissBehavior.manual,
      restorationId: restorationId?.getValue(context),
      clipBehavior: clipBehavior?.build(context) ?? Clip.hardEdge,
    );
  }
}
