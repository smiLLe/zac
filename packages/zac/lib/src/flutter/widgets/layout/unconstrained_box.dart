import 'package:zac/src/zac/interactions.dart';
import 'package:zac/src/zac/any_value.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/painting.dart';

part 'unconstrained_box.freezed.dart';
part 'unconstrained_box.g.dart';

@defaultConverterFreezed
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
  UnconstrainedBox buildWidget(
      BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime) {
    return UnconstrainedBox(
      key: key?.buildKey(context, ref, lifetime),
      child: child?.buildWidget(context, ref, lifetime),
      textDirection: textDirection?.build(context, ref, lifetime),
      alignment: alignment?.build(context, ref, lifetime) ?? Alignment.center,
      clipBehavior: clipBehavior?.build(context, ref, lifetime) ?? Clip.none,
      constrainedAxis: constrainedAxis?.build(context, ref, lifetime),
    );
  }
}
