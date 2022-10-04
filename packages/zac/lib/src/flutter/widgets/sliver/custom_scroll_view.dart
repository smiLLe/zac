import 'package:zac/src/zac/interactions.dart';
import 'package:zac/src/zac/any_value.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zac/src/zac/misc.dart';
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
      BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime) {
    final zacRef = ZacRef.widget(ref);
    return CustomScrollView(
      key: key?.buildKey(context, ref, lifetime),
      slivers: slivers?.getValue(context, ref, lifetime) ?? const <Widget>[],
      scrollDirection:
          scrollDirection?.build(context, ref, lifetime) ?? Axis.vertical,
      reverse: reverse?.getValue(zacRef) ?? false,
      primary: primary?.getValue(zacRef),
      physics: physics?.build(context, ref, lifetime),
      shrinkWrap: shrinkWrap?.getValue(zacRef) ?? false,
      center: center?.buildKey(context, ref, lifetime),
      anchor: anchor?.getValue(zacRef) ?? 0.0,
      cacheExtent: cacheExtent?.getValue(zacRef),
      semanticChildCount: semanticChildCount?.getValue(zacRef),
      keyboardDismissBehavior:
          keyboardDismissBehavior?.build(context, ref, lifetime) ??
              ScrollViewKeyboardDismissBehavior.manual,
      restorationId: restorationId?.getValue(zacRef),
      clipBehavior:
          clipBehavior?.build(context, ref, lifetime) ?? Clip.hardEdge,
    );
  }
}
