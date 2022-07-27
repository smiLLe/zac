import 'package:zac/src/zac/any_value/any_value.dart';

import 'package:zac/src/zac/context/widget_context.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui/dart_ui.dart';
import 'package:zac/src/flutter/foundation/foundation.dart';
import 'package:zac/src/flutter/painting/painting.dart';
import 'package:zac/src/flutter/widgets/interaction/keyboard/keyboard.dart';

part 'single_child_scroll_view.freezed.dart';
part 'single_child_scroll_view.g.dart';

@defaultConverterFreezed
class FlutterSingleChildScrollView
    with _$FlutterSingleChildScrollView
    implements ZacWidget {
  const FlutterSingleChildScrollView._();

  static const String unionValue = 'f:1:SingleChildScrollView';

  factory FlutterSingleChildScrollView.fromJson(Map<String, dynamic> json) =>
      _$FlutterSingleChildScrollViewFromJson(json);

  @FreezedUnionValue(FlutterSingleChildScrollView.unionValue)
  factory FlutterSingleChildScrollView({
    FlutterKey? key,
    FlutterAxis? scrollDirection,
    ZacBool? reverse,
    FlutterEdgeInsetsGeometry? padding,
    ZacBool? primary,
    // ScrollPhysics? physics,
    // ScrollController? controller,
    ZacWidget? child,
    // DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    FlutterClip? clipBehavior,
    ZacString? restorationId,
    FlutterScrollViewKeyboardDismissBehavior? keyboardDismissBehavior,
  }) = _FlutterSingleChildScrollView;

  @override
  SingleChildScrollView buildWidget(ZacBuildContext context) {
    return SingleChildScrollView(
      key: key?.build(context),
      scrollDirection: scrollDirection?.build(context) ?? Axis.vertical,
      reverse: this.reverse?.getValue(context) ?? false,
      padding: padding?.build(context),
      primary: primary?.getValue(context),
      child: child?.buildWidget(context),
      clipBehavior: clipBehavior?.build(context) ?? Clip.hardEdge,
      restorationId: restorationId?.getValue(context),
      keyboardDismissBehavior: keyboardDismissBehavior?.build(context) ??
          ScrollViewKeyboardDismissBehavior.manual,
    );
  }
}
