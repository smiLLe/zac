import 'package:zac/src/zac/interactions.dart';
import 'package:zac/src/zac/zac_values.dart';
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
    implements FlutterWidget {
  const FlutterGestureDetector._();

  static const String unionValue = 'f:1:GestureDetector';

  factory FlutterGestureDetector.fromJson(Map<String, dynamic> json) =>
      _$FlutterGestureDetectorFromJson(json);

  @FreezedUnionValue(FlutterGestureDetector.unionValue)
  factory FlutterGestureDetector({
    FlutterKey? key,
    FlutterWidget? child,
    ZacInteractions? onTap,
    ZacInteractions? onSecondaryTap,
    ZacInteractions? onDoubleTap,
    ZacInteractions? onLongPress,
    ZacInteractions? onSecondaryLongPress,
    ZacInteractions? onTertiaryLongPress,
    FlutterHitTestBehavior? behavior,
    ZacBool? excludeFromSemantics,
// DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  }) = _FlutterGestureDetector;

  @override
  GestureDetector buildWidget(
      BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime) {
    final zacRef = ZacRef.widget(ref);
    return GestureDetector(
      key: key?.buildKey(context, ref, lifetime),
      child: child?.buildWidget(context, ref, lifetime),
      behavior: behavior?.build(context, ref, lifetime),
      excludeFromSemantics: excludeFromSemantics?.getValue(zacRef) ?? false,
      onTap: onTap?.createCb(
        context: context,
        ref: ref,
        lifetime: lifetime,
      ),
      onSecondaryTap: onSecondaryTap?.createCb(
        context: context,
        ref: ref,
        lifetime: lifetime,
      ),
      onDoubleTap: onDoubleTap?.createCb(
        context: context,
        ref: ref,
        lifetime: lifetime,
      ),
      onLongPress: onLongPress?.createCb(
        context: context,
        ref: ref,
        lifetime: lifetime,
      ),
      onSecondaryLongPress: onSecondaryLongPress?.createCb(
        context: context,
        ref: ref,
        lifetime: lifetime,
      ),
      onTertiaryLongPress: onTertiaryLongPress?.createCb(
        context: context,
        ref: ref,
        lifetime: lifetime,
      ),
    );
  }
}
