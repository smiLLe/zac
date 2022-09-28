import 'package:zac/src/zac/any_value.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zac/src/zac/update_context.dart';
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
    implements ZacWidget {
  const FlutterUnconstrainedBox._();

  static const String unionValue = 'f:1:UnconstrainedBox';

  factory FlutterUnconstrainedBox.fromJson(Map<String, dynamic> json) =>
      _$FlutterUnconstrainedBoxFromJson(json);

  @FreezedUnionValue(FlutterUnconstrainedBox.unionValue)
  factory FlutterUnconstrainedBox({
    FlutterKey? key,
    ZacWidget? child,
    FlutterTextDirection? textDirection,
    FlutterAlignmentGeometry? alignment,
    FlutterAxis? constrainedAxis,
    FlutterClip? clipBehavior,
  }) = _FlutterUnconstrainedBox;

  @override
  UnconstrainedBox buildWidget(
      BuildContext context, WidgetRef ref, ZacBuildContext zacContext) {
    return UnconstrainedBox(
      key: key?.buildKey(context, ref, zacContext),
      child: child?.buildWidget(context, ref, zacContext),
      textDirection: textDirection?.build(context, ref, zacContext),
      alignment: alignment?.build(context, ref, zacContext) ?? Alignment.center,
      clipBehavior: clipBehavior?.build(context, ref, zacContext) ?? Clip.none,
      constrainedAxis: constrainedAxis?.build(context, ref, zacContext),
    );
  }
}
