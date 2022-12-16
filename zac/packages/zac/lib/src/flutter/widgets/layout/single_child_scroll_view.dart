import 'package:zac/src/flutter/widgets/scroll_controller.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/flutter/widgets/keyboard.dart';

part 'single_child_scroll_view.freezed.dart';
part 'single_child_scroll_view.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
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
    ZacValue<bool?>? reverse,
    FlutterEdgeInsetsGeometry? padding,
    ZacValue<bool?>? primary,
    // ScrollPhysics? physics,
    ZacValue<ScrollController?>? controller,
    FlutterWidget? child,
    // DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    FlutterClip? clipBehavior,
    ZacValue<String?>? restorationId,
    FlutterScrollViewKeyboardDismissBehavior? keyboardDismissBehavior,
  }) = _FlutterSingleChildScrollView;

  SingleChildScrollView _buildWidget(ZacContext zacContext) {
    return SingleChildScrollView(
      key: key?.build(zacContext),
      scrollDirection: scrollDirection?.build(zacContext) ?? Axis.vertical,
      reverse: reverse?.build(zacContext) ?? false,
      padding: padding?.build(zacContext),
      primary: primary?.build(zacContext),
      controller: controller?.build(zacContext),
      clipBehavior: clipBehavior?.build(zacContext) ?? Clip.hardEdge,
      restorationId: restorationId?.build(zacContext),
      keyboardDismissBehavior: keyboardDismissBehavior?.build(zacContext) ??
          ScrollViewKeyboardDismissBehavior.manual,
      child: child?.build(zacContext),
    );
  }

  @override
  SingleChildScrollView build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
