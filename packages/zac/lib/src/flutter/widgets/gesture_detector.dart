import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/origin.dart';
import 'package:zac/src/zac/zac_values.dart';
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
    implements FlutterWidget {
  const FlutterGestureDetector._();

  static const String unionValue = 'f:1:GestureDetector';

  factory FlutterGestureDetector.fromJson(Map<String, dynamic> json) =>
      _$FlutterGestureDetectorFromJson(json);

  @FreezedUnionValue(FlutterGestureDetector.unionValue)
  factory FlutterGestureDetector({
    FlutterKey? key,
    FlutterWidget? child,
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
  GestureDetector buildWidget(ZacOriginWidgetTree origin) {
    return GestureDetector(
      key: key?.buildKey(origin),
      child: child?.buildWidget(origin),
      behavior: behavior?.build(origin),
      excludeFromSemantics: excludeFromSemantics?.getValue(origin) ?? false,
      onTap: onTap?.createCb(origin),
      onSecondaryTap: onSecondaryTap?.createCb(origin),
      onDoubleTap: onDoubleTap?.createCb(origin),
      onLongPress: onLongPress?.createCb(origin),
      onSecondaryLongPress: onSecondaryLongPress?.createCb(origin),
      onTertiaryLongPress: onTertiaryLongPress?.createCb(origin),
    );
  }
}
