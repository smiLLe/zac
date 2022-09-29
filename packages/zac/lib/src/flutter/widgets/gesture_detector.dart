import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/any_value.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zac/src/zac/misc.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/rendering.dart';

part 'gesture_detector.freezed.dart';
part 'gesture_detector.g.dart';

@defaultConverterFreezed
class FlutterGestureDetector
    with _$FlutterGestureDetector
    implements ZacWidget {
  const FlutterGestureDetector._();

  static const String unionValue = 'f:1:GestureDetector';

  factory FlutterGestureDetector.fromJson(Map<String, dynamic> json) =>
      _$FlutterGestureDetectorFromJson(json);

  @FreezedUnionValue(FlutterGestureDetector.unionValue)
  factory FlutterGestureDetector({
    FlutterKey? key,
    ZacWidget? child,
    ZacUiActions? onTap,
    ZacUiActions? onSecondaryTap,
    ZacUiActions? onDoubleTap,
    ZacUiActions? onLongPress,
    ZacUiActions? onSecondaryLongPress,
    ZacUiActions? onTertiaryLongPress,
    FlutterHitTestBehavior? behavior,
    ZacBool? excludeFromSemantics,
// DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  }) = _FlutterGestureDetector;

  @override
  GestureDetector buildWidget(
      BuildContext context, WidgetRef ref, ZacActionHelper helper) {
    final zacRef = ZacRef.widget(ref);
    return GestureDetector(
      key: key?.buildKey(context, ref, helper),
      child: child?.buildWidget(context, ref, helper),
      behavior: behavior?.build(context, ref, helper),
      excludeFromSemantics: excludeFromSemantics?.getValue(zacRef) ?? false,
      onTap: onTap?.createCb(
        context: context,
        ref: ref,
        helper: helper,
      ),
      onSecondaryTap: onSecondaryTap?.createCb(
        context: context,
        ref: ref,
        helper: helper,
      ),
      onDoubleTap: onDoubleTap?.createCb(
        context: context,
        ref: ref,
        helper: helper,
      ),
      onLongPress: onLongPress?.createCb(
        context: context,
        ref: ref,
        helper: helper,
      ),
      onSecondaryLongPress: onSecondaryLongPress?.createCb(
        context: context,
        ref: ref,
        helper: helper,
      ),
      onTertiaryLongPress: onTertiaryLongPress?.createCb(
        context: context,
        ref: ref,
        helper: helper,
      ),
    );
  }
}
