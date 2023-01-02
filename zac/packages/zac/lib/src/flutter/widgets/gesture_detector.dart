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

  GestureDetector _buildWidget(ZacContext zacContext) {
    return GestureDetector(
      key: key?.build(zacContext),
      behavior: behavior?.build(zacContext),
      excludeFromSemantics: excludeFromSemantics?.build(zacContext) ?? false,
      onTap: onTap?.build(zacContext)?.createCb(zacContext),
      onSecondaryTap: onSecondaryTap?.build(zacContext)?.createCb(zacContext),
      onDoubleTap: onDoubleTap?.build(zacContext)?.createCb(zacContext),
      onLongPress: onLongPress?.build(zacContext)?.createCb(zacContext),
      onSecondaryLongPress:
          onSecondaryLongPress?.build(zacContext)?.createCb(zacContext),
      onTertiaryLongPress:
          onTertiaryLongPress?.build(zacContext)?.createCb(zacContext),
      child: child?.build(zacContext),
    );
  }

  @override
  GestureDetector build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
