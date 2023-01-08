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
    ZacListBuilder<ZacAction, List<ZacAction>?>? onTap,
    ZacListBuilder<ZacAction, List<ZacAction>?>? onSecondaryTap,
    ZacListBuilder<ZacAction, List<ZacAction>?>? onDoubleTap,
    ZacListBuilder<ZacAction, List<ZacAction>?>? onLongPress,
    ZacListBuilder<ZacAction, List<ZacAction>?>? onSecondaryLongPress,
    ZacListBuilder<ZacAction, List<ZacAction>?>? onTertiaryLongPress,
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
      onTap: onTap?.build(context, zacContext)?.createCb(context, zacContext),
      onSecondaryTap: onSecondaryTap
          ?.build(context, zacContext)
          ?.createCb(context, zacContext),
      onDoubleTap: onDoubleTap
          ?.build(context, zacContext)
          ?.createCb(context, zacContext),
      onLongPress: onLongPress
          ?.build(context, zacContext)
          ?.createCb(context, zacContext),
      onSecondaryLongPress: onSecondaryLongPress
          ?.build(context, zacContext)
          ?.createCb(context, zacContext),
      onTertiaryLongPress: onTertiaryLongPress
          ?.build(context, zacContext)
          ?.createCb(context, zacContext),
      child: child?.build(context, zacContext),
    );
  }

  @override
  GestureDetector build(BuildContext context, ZacContext zacContext) {
    return _buildWidget(context, zacContext);
  }
}
