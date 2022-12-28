import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_build.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/flutter/widgets/keyboard.dart';

part 'single_child_scroll_view.freezed.dart';
part 'single_child_scroll_view.g.dart';

@freezedZacBuilder
class FlutterSingleChildScrollView
    with _$FlutterSingleChildScrollView
    implements ZacBuild<SingleChildScrollView> {
  const FlutterSingleChildScrollView._();

  static const String unionValue = 'f:1:SingleChildScrollView';

  factory FlutterSingleChildScrollView.fromJson(Map<String, dynamic> json) =>
      _$FlutterSingleChildScrollViewFromJson(json);

  @FreezedUnionValue(FlutterSingleChildScrollView.unionValue)
  factory FlutterSingleChildScrollView({
    ZacValue<Key?>? key,
    ZacValue<Axis?>? scrollDirection,
    ZacValue<bool?>? reverse,
    ZacValue<EdgeInsetsGeometry?>? padding,
    ZacValue<bool?>? primary,
    // ScrollPhysics? physics,
    ZacValue<ScrollController?>? controller,
    ZacValue<Widget?>? child,
    // DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    ZacValue<Clip?>? clipBehavior,
    ZacValue<String?>? restorationId,
    ZacValue<ScrollViewKeyboardDismissBehavior?>? keyboardDismissBehavior,
  }) = _FlutterSingleChildScrollView;

  SingleChildScrollView _buildWidget(ZacContext zacContext) {
    return SingleChildScrollView(
      key: key?.getValue(zacContext),
      scrollDirection: scrollDirection?.getValue(zacContext) ?? Axis.vertical,
      reverse: reverse?.getValue(zacContext) ?? false,
      padding: padding?.getValue(zacContext),
      primary: primary?.getValue(zacContext),
      controller: controller?.getValue(zacContext),
      clipBehavior: clipBehavior?.getValue(zacContext) ?? Clip.hardEdge,
      restorationId: restorationId?.getValue(zacContext),
      keyboardDismissBehavior: keyboardDismissBehavior?.getValue(zacContext) ??
          ScrollViewKeyboardDismissBehavior.manual,
      child: child?.getValue(zacContext),
    );
  }

  @override
  SingleChildScrollView build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
