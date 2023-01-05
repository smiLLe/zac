import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';

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

  SingleChildScrollView _buildWidget(
      BuildContext context, ZacContext zacContext) {
    return SingleChildScrollView(
      key: key?.build(context, zacContext),
      scrollDirection:
          scrollDirection?.build(context, zacContext) ?? Axis.vertical,
      reverse: reverse?.build(context, zacContext) ?? false,
      padding: padding?.build(context, zacContext),
      primary: primary?.build(context, zacContext),
      controller: controller?.build(context, zacContext),
      clipBehavior: clipBehavior?.build(context, zacContext) ?? Clip.hardEdge,
      restorationId: restorationId?.build(context, zacContext),
      keyboardDismissBehavior:
          keyboardDismissBehavior?.build(context, zacContext) ??
              ScrollViewKeyboardDismissBehavior.manual,
      child: child?.build(context, zacContext),
    );
  }

  @override
  SingleChildScrollView build(BuildContext context, ZacContext zacContext) {
    return _buildWidget(context, zacContext);
  }
}
