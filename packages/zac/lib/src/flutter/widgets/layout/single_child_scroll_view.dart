import 'package:zac/src/zac/interactions.dart';
import 'package:zac/src/zac/any_value.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zac/src/zac/misc.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/flutter/widgets/keyboard.dart';

part 'single_child_scroll_view.freezed.dart';
part 'single_child_scroll_view.g.dart';

@defaultConverterFreezed
class FlutterSingleChildScrollView
    with _$FlutterSingleChildScrollView
    implements ZacWidget {
  const FlutterSingleChildScrollView._();

  static const String unionValue = 'f:1:SingleChildScrollView';

  factory FlutterSingleChildScrollView.fromJson(Map<String, dynamic> json) =>
      _$FlutterSingleChildScrollViewFromJson(json);

  @FreezedUnionValue(FlutterSingleChildScrollView.unionValue)
  factory FlutterSingleChildScrollView({
    FlutterKey? key,
    FlutterAxis? scrollDirection,
    ZacBool? reverse,
    FlutterEdgeInsetsGeometry? padding,
    ZacBool? primary,
    // ScrollPhysics? physics,
    // ScrollController? controller,
    ZacWidget? child,
    // DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    FlutterClip? clipBehavior,
    ZacString? restorationId,
    FlutterScrollViewKeyboardDismissBehavior? keyboardDismissBehavior,
  }) = _FlutterSingleChildScrollView;

  @override
  SingleChildScrollView buildWidget(
      BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime) {
    final zacRef = ZacRef.widget(ref);
    return SingleChildScrollView(
      key: key?.buildKey(context, ref, lifetime),
      scrollDirection:
          scrollDirection?.build(context, ref, lifetime) ?? Axis.vertical,
      reverse: reverse?.getValue(zacRef) ?? false,
      padding: padding?.build(context, ref, lifetime),
      primary: primary?.getValue(zacRef),
      child: child?.buildWidget(context, ref, lifetime),
      clipBehavior:
          clipBehavior?.build(context, ref, lifetime) ?? Clip.hardEdge,
      restorationId: restorationId?.getValue(zacRef),
      keyboardDismissBehavior:
          keyboardDismissBehavior?.build(context, ref, lifetime) ??
              ScrollViewKeyboardDismissBehavior.manual,
    );
  }
}
