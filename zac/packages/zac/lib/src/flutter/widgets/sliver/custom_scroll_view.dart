import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_value.dart';
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
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
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
    ZacValue<bool>? reverse,
// ScrollController? controller,
    ZacValue<bool>? primary,
    FlutterScrollPhysics? physics,
// FlutterScrollBehavior? scrollBehavior,
    ZacValue<bool>? shrinkWrap,
    FlutterKey? center,
    ZacValue<double>? anchor,
    ZacValue<double>? cacheExtent,
    ZacValueList<FlutterWidget>? slivers,
    ZacValue<int>? semanticChildCount,
// FluDragStartBehavior dragStartBehavior = DragStartBehavior.start,
    FlutterScrollViewKeyboardDismissBehavior? keyboardDismissBehavior,
    ZacValue<String>? restorationId,
    FlutterClip? clipBehavior,
  }) = _FlutterCustomScrollView;

  @override
  CustomScrollView buildWidget(ZacContext zacContext) {
    return CustomScrollView(
      key: key?.buildKey(zacContext),
      slivers: slivers?.getWidgets(zacContext) ?? const <Widget>[],
      scrollDirection: scrollDirection?.build(zacContext) ?? Axis.vertical,
      reverse: reverse?.getValue(zacContext) ?? false,
      primary: primary?.getValue(zacContext),
      physics: physics?.build(zacContext),
      shrinkWrap: shrinkWrap?.getValue(zacContext) ?? false,
      center: center?.buildKey(zacContext),
      anchor: anchor?.getValue(zacContext) ?? 0.0,
      cacheExtent: cacheExtent?.getValue(zacContext),
      semanticChildCount: semanticChildCount?.getValue(zacContext),
      keyboardDismissBehavior: keyboardDismissBehavior?.build(zacContext) ??
          ScrollViewKeyboardDismissBehavior.manual,
      restorationId: restorationId?.getValue(zacContext),
      clipBehavior: clipBehavior?.build(zacContext) ?? Clip.hardEdge,
    );
  }
}
