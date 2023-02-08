import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/rendering.dart';

part 'gesture_detector.freezed.dart';
part 'gesture_detector.g.dart';

@freezedZacBuilder
class FlutterGestureDetector
    with _$FlutterGestureDetector
    implements ZacBuilder<GestureDetector> {
  const FlutterGestureDetector._();

  static const String unionValue = 'f:1:GestureDetector';

  factory FlutterGestureDetector.fromJson(Map<String, dynamic> json) =>
      _$FlutterGestureDetectorFromJson(json);

  @FreezedUnionValue(FlutterGestureDetector.unionValue)
  factory FlutterGestureDetector({
    ZacBuilder<Key?>? key,
    ZacBuilder<Widget?>? child,
    ZacBuilder<List<ZacAction>?>? onTap,
    ZacBuilder<List<ZacAction>?>? onSecondaryTap,
    ZacBuilder<List<ZacAction>?>? onDoubleTap,
    ZacBuilder<List<ZacAction>?>? onLongPress,
    ZacBuilder<List<ZacAction>?>? onSecondaryLongPress,
    ZacBuilder<List<ZacAction>?>? onTertiaryLongPress,
    FlutterHitTestBehavior? behavior,
    ZacBuilder<bool?>? excludeFromSemantics,
// DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  }) = _FlutterGestureDetector;

  GestureDetector _buildWidget(BuildContext context, ZacContext zacContext) {
    return GestureDetector(
      key: key?.build(context, zacContext),
      behavior: behavior?.build(context, zacContext),
      excludeFromSemantics:
          excludeFromSemantics?.build(context, zacContext) ?? false,
      onTap: onTap?.build(context, zacContext)?.callack(context, zacContext),
      onSecondaryTap: onSecondaryTap
          ?.build(context, zacContext)
          ?.callack(context, zacContext),
      onDoubleTap:
          onDoubleTap?.build(context, zacContext)?.callack(context, zacContext),
      onLongPress:
          onLongPress?.build(context, zacContext)?.callack(context, zacContext),
      onSecondaryLongPress: onSecondaryLongPress
          ?.build(context, zacContext)
          ?.callack(context, zacContext),
      onTertiaryLongPress: onTertiaryLongPress
          ?.build(context, zacContext)
          ?.callack(context, zacContext),
      child: child?.build(context, zacContext),
    );
  }

  @override
  GestureDetector build(BuildContext context, ZacContext zacContext) {
    return _buildWidget(context, zacContext);
  }
}
