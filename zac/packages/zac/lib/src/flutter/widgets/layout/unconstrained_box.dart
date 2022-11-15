import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/zac/context.dart';

part 'unconstrained_box.freezed.dart';
part 'unconstrained_box.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterUnconstrainedBox
    with _$FlutterUnconstrainedBox
    implements FlutterWidget {
  const FlutterUnconstrainedBox._();

  static const String unionValue = 'f:1:UnconstrainedBox';

  factory FlutterUnconstrainedBox.fromJson(Map<String, dynamic> json) =>
      _$FlutterUnconstrainedBoxFromJson(json);

  @FreezedUnionValue(FlutterUnconstrainedBox.unionValue)
  factory FlutterUnconstrainedBox({
    FlutterKey? key,
    FlutterWidget? child,
    FlutterTextDirection? textDirection,
    FlutterAlignmentGeometry? alignment,
    FlutterAxis? constrainedAxis,
    FlutterClip? clipBehavior,
  }) = _FlutterUnconstrainedBox;

  @override
  UnconstrainedBox buildWidget(ZacContext zacContext) {
    return UnconstrainedBox(
      key: key?.buildKey(zacContext),
      textDirection: textDirection?.build(zacContext),
      alignment: alignment?.build(zacContext) ?? Alignment.center,
      clipBehavior: clipBehavior?.build(zacContext) ?? Clip.none,
      constrainedAxis: constrainedAxis?.build(zacContext),
      child: child?.buildWidget(zacContext),
    );
  }
}
