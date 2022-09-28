import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/any_value.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zac/src/zac/misc.dart';
import 'package:zac/src/zac/update_context.dart';
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
  GestureDetector buildWidget(
      BuildContext context, WidgetRef ref, ZacBuildContext zacContext) {
    final zacRef = ZacRef.widget(ref);
    return GestureDetector(
      key: key?.buildKey(context, ref, zacContext),
      child: child?.buildWidget(context, ref, zacContext),
      behavior: behavior?.build(context, ref, zacContext),
      excludeFromSemantics: excludeFromSemantics?.getValue(zacRef) ?? false,
      onTap: actionsCallback(onTap, zacContext),
      onSecondaryTap: actionsCallback(onSecondaryTap, zacContext),
      onDoubleTap: actionsCallback(onDoubleTap, zacContext),
      onLongPress: actionsCallback(onLongPress, zacContext),
      onSecondaryLongPress: actionsCallback(onSecondaryLongPress, zacContext),
      onTertiaryLongPress: actionsCallback(onTertiaryLongPress, zacContext),
    );
  }
}
