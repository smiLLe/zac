import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/flutter/widgets/keyboard.dart';
import 'package:zac/src/flutter/widgets/scroll_physics.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'custom_scroll_view.freezed.dart';
part 'custom_scroll_view.g.dart';

@freezedZacBuilder
class FlutterCustomScrollView
    with _$FlutterCustomScrollView
    implements ZacBuilder<CustomScrollView> {
  const FlutterCustomScrollView._();

  static const String unionValue = 'f:1:CustomScrollView';

  factory FlutterCustomScrollView.fromJson(Map<String, dynamic> json) =>
      _$FlutterCustomScrollViewFromJson(json);

  @FreezedUnionValue(FlutterCustomScrollView.unionValue)
  factory FlutterCustomScrollView({
    ZacBuilder<Key?>? key,
    FlutterAxis? scrollDirection,
    ZacBuilder<bool?>? reverse,
    ZacBuilder<ScrollController?>? controller,
    ZacBuilder<bool?>? primary,
    FlutterScrollPhysics? physics,
// FlutterScrollBehavior? scrollBehavior,
    ZacBuilder<bool?>? shrinkWrap,
    ZacBuilder<Key?>? center,
    ZacBuilder<double?>? anchor,
    ZacBuilder<double?>? cacheExtent,
    ZacBuilder<List<Widget>?>? slivers,
    ZacBuilder<int?>? semanticChildCount,
// FluDragStartBehavior dragStartBehavior = DragStartBehavior.start,
    FlutterScrollViewKeyboardDismissBehavior? keyboardDismissBehavior,
    ZacBuilder<String?>? restorationId,
    ZacBuilder<Clip?>? clipBehavior,
  }) = _FlutterCustomScrollView;

  @override
  CustomScrollView build(BuildContext context, ZacContext zacContext) {
    return CustomScrollView(
      key: key?.build(context, zacContext),
      scrollDirection:
          scrollDirection?.build(context, zacContext) ?? Axis.vertical,
      reverse: reverse?.build(context, zacContext) ?? false,
      controller: controller?.build(context, zacContext),
      primary: primary?.build(context, zacContext),
      physics: physics?.build(context, zacContext),
// FlutterScrollBehavior? scrollBehavior,
      shrinkWrap: shrinkWrap?.build(context, zacContext) ?? false,
      center: center?.build(context, zacContext),
      anchor: anchor?.build(context, zacContext) ?? 0.0,
      cacheExtent: cacheExtent?.build(context, zacContext),
      slivers: slivers?.build(context, zacContext) ?? const <Widget>[],
      semanticChildCount: semanticChildCount?.build(context, zacContext),
// FluDragStartBehavior dragStartBehavior = DragStartBehavior.start,
      keyboardDismissBehavior:
          keyboardDismissBehavior?.build(context, zacContext) ??
              ScrollViewKeyboardDismissBehavior.manual,
      restorationId: restorationId?.build(context, zacContext),
      clipBehavior: clipBehavior?.build(context, zacContext) ?? Clip.hardEdge,
    );
  }
}
