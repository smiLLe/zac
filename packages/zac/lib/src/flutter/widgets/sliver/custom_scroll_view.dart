import 'package:zac/src/zac/any_value.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zac/src/zac/update_context.dart';
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
    implements ZacWidget {
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
  CustomScrollView buildWidget(
      BuildContext context, WidgetRef ref, ZacBuildContext zacContext) {
    return CustomScrollView(
      key: key?.buildKey(context, ref, zacContext),
      slivers: slivers?.getValue(context, ref, zacContext) ?? const <Widget>[],
      scrollDirection:
          scrollDirection?.build(context, ref, zacContext) ?? Axis.vertical,
      reverse: reverse?.getValue(zacContext) ?? false,
      primary: primary?.getValue(zacContext),
      physics: physics?.build(context, ref, zacContext),
      shrinkWrap: shrinkWrap?.getValue(zacContext) ?? false,
      center: center?.buildKey(context, ref, zacContext),
      anchor: anchor?.getValue(zacContext) ?? 0.0,
      cacheExtent: cacheExtent?.getValue(zacContext),
      semanticChildCount: semanticChildCount?.getValue(zacContext),
      keyboardDismissBehavior:
          keyboardDismissBehavior?.build(context, ref, zacContext) ??
              ScrollViewKeyboardDismissBehavior.manual,
      restorationId: restorationId?.getValue(zacContext),
      clipBehavior:
          clipBehavior?.build(context, ref, zacContext) ?? Clip.hardEdge,
    );
  }
}
