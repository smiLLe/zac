import 'package:zac/src/zac/any_value.dart';

import 'package:zac/src/zac/widget_context.dart';
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
  UnconstrainedBox buildWidget(ZacBuildContext context) {
    return UnconstrainedBox(
      key: key?.buildKey(context),
      child: child?.buildWidget(context),
      textDirection: textDirection?.build(context),
      alignment: alignment?.build(context) ?? Alignment.center,
      clipBehavior: clipBehavior?.build(context) ?? Clip.none,
      constrainedAxis: constrainedAxis?.build(context),
    );
  }
}
