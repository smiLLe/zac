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
    ZacListBuilder<Widget, List<Widget>?>? slivers,
    ZacBuilder<int?>? semanticChildCount,
// FluDragStartBehavior dragStartBehavior = DragStartBehavior.start,
    FlutterScrollViewKeyboardDismissBehavior? keyboardDismissBehavior,
    ZacBuilder<String?>? restorationId,
    ZacBuilder<Clip?>? clipBehavior,
  }) = _FlutterCustomScrollView;

  @override
  CustomScrollView build(ZacContext zacContext) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
