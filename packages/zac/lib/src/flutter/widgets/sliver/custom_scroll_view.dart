import 'package:zac/src/zac/origin.dart';
import 'package:zac/src/zac/zac_values.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/flutter/widgets/keyboard.dart';
import 'package:zac/src/flutter/widgets/scroll_physics.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'custom_scroll_view.freezed.dart';
part 'custom_scroll_view.g.dart';

@defaultConverterFreezed
class FlutterCustomScrollView
    with _$FlutterCustomScrollView
    implements FlutterWidget {
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
  CustomScrollView buildWidget(ZacOriginWidgetTree origin) {
    return CustomScrollView(
      key: key?.buildKey(origin),
      slivers: slivers?.getValue(origin) ?? const <Widget>[],
      scrollDirection: scrollDirection?.build(origin) ?? Axis.vertical,
      reverse: reverse?.getValue(origin) ?? false,
      primary: primary?.getValue(origin),
      physics: physics?.build(origin),
      shrinkWrap: shrinkWrap?.getValue(origin) ?? false,
      center: center?.buildKey(origin),
      anchor: anchor?.getValue(origin) ?? 0.0,
      cacheExtent: cacheExtent?.getValue(origin),
      semanticChildCount: semanticChildCount?.getValue(origin),
      keyboardDismissBehavior: keyboardDismissBehavior?.build(origin) ??
          ScrollViewKeyboardDismissBehavior.manual,
      restorationId: restorationId?.getValue(origin),
      clipBehavior: clipBehavior?.build(origin) ?? Clip.hardEdge,
    );
  }
}
