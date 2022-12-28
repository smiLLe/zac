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
    implements ZacBuilder<SingleChildScrollView> {
  const FlutterSingleChildScrollView._();

  static const String unionValue = 'f:1:SingleChildScrollView';

  factory FlutterSingleChildScrollView.fromJson(Map<String, dynamic> json) =>
      _$FlutterSingleChildScrollViewFromJson(json);

  @FreezedUnionValue(FlutterSingleChildScrollView.unionValue)
  factory FlutterSingleChildScrollView({
    ZacBuilder<Key?>? key,
    ZacBuilder<Axis?>? scrollDirection,
    ZacBuilder<bool?>? reverse,
    ZacBuilder<EdgeInsetsGeometry?>? padding,
    ZacBuilder<bool?>? primary,
    // ScrollPhysics? physics,
    ZacBuilder<ScrollController?>? controller,
    ZacBuilder<Widget?>? child,
    // DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    ZacBuilder<Clip?>? clipBehavior,
    ZacBuilder<String?>? restorationId,
    ZacBuilder<ScrollViewKeyboardDismissBehavior?>? keyboardDismissBehavior,
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
