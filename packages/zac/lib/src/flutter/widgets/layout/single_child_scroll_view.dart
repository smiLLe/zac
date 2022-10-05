import 'package:zac/src/zac/origin.dart';
import 'package:zac/src/zac/zac_values.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/flutter/widgets/keyboard.dart';

part 'single_child_scroll_view.freezed.dart';
part 'single_child_scroll_view.g.dart';

@defaultConverterFreezed
class FlutterSingleChildScrollView
    with _$FlutterSingleChildScrollView
    implements FlutterWidget {
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
    FlutterWidget? child,
    // DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    FlutterClip? clipBehavior,
    ZacString? restorationId,
    FlutterScrollViewKeyboardDismissBehavior? keyboardDismissBehavior,
  }) = _FlutterSingleChildScrollView;

  @override
  SingleChildScrollView buildWidget(ZacOriginWidgetTree origin) {
    return SingleChildScrollView(
      key: key?.buildKey(origin),
      scrollDirection: scrollDirection?.build(origin) ?? Axis.vertical,
      reverse: reverse?.getValue(origin) ?? false,
      padding: padding?.build(origin),
      primary: primary?.getValue(origin),
      child: child?.buildWidget(origin),
      clipBehavior: clipBehavior?.build(origin) ?? Clip.hardEdge,
      restorationId: restorationId?.getValue(origin),
      keyboardDismissBehavior: keyboardDismissBehavior?.build(origin) ??
          ScrollViewKeyboardDismissBehavior.manual,
    );
  }
}
