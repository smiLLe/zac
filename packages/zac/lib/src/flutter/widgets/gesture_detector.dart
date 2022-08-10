import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/any_value.dart';

import 'package:zac/src/zac/widget_context.dart';
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
    ZacActions? onTap,
    ZacActions? onSecondaryTap,
    ZacActions? onDoubleTap,
    ZacActions? onLongPress,
    ZacActions? onSecondaryLongPress,
    ZacActions? onTertiaryLongPress,
    FlutterHitTestBehavior? behavior,
    ZacBool? excludeFromSemantics,
// DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  }) = _FlutterGestureDetector;

  @override
  GestureDetector buildWidget(ZacBuildContext context) {
    return GestureDetector(
      key: key?.buildKey(context),
      child: child?.buildWidget(context),
      behavior: behavior?.build(context),
      excludeFromSemantics: excludeFromSemantics?.getValue(context) ?? false,
      onTap: actionsCallback(onTap, context),
      onSecondaryTap: actionsCallback(onSecondaryTap, context),
      onDoubleTap: actionsCallback(onDoubleTap, context),
      onLongPress: actionsCallback(onLongPress, context),
      onSecondaryLongPress: actionsCallback(onSecondaryLongPress, context),
      onTertiaryLongPress: actionsCallback(onTertiaryLongPress, context),
    );
  }
}
