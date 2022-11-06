import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/rendering.dart';

part 'gesture_detector.freezed.dart';
part 'gesture_detector.g.dart';

@defaultConverterFreezed
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
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
    ZacValue<bool>? excludeFromSemantics,
// DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  }) = _FlutterGestureDetector;

  @override
  GestureDetector buildWidget(ZacContext zacContext) {
    return GestureDetector(
      key: key?.buildKey(zacContext),
      behavior: behavior?.build(zacContext),
      excludeFromSemantics: excludeFromSemantics?.getValue(zacContext) ?? false,
      onTap: onTap?.createCb(zacContext),
      onSecondaryTap: onSecondaryTap?.createCb(zacContext),
      onDoubleTap: onDoubleTap?.createCb(zacContext),
      onLongPress: onLongPress?.createCb(zacContext),
      onSecondaryLongPress: onSecondaryLongPress?.createCb(zacContext),
      onTertiaryLongPress: onTertiaryLongPress?.createCb(zacContext),
      child: child?.buildWidget(zacContext),
    );
  }
}
