import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_build.dart';
import 'package:zac/src/zac/zac_value.dart';

part 'unconstrained_box.freezed.dart';
part 'unconstrained_box.g.dart';

@freezedZacBuilder
class FlutterUnconstrainedBox
    with _$FlutterUnconstrainedBox
    implements ZacBuild<UnconstrainedBox> {
  const FlutterUnconstrainedBox._();

  static const String unionValue = 'f:1:UnconstrainedBox';

  factory FlutterUnconstrainedBox.fromJson(Map<String, dynamic> json) =>
      _$FlutterUnconstrainedBoxFromJson(json);

  @FreezedUnionValue(FlutterUnconstrainedBox.unionValue)
  factory FlutterUnconstrainedBox({
    ZacValue<Key?>? key,
    ZacValue<Widget?>? child,
    ZacValue<TextDirection?>? textDirection,
    ZacValue<AlignmentGeometry?>? alignment,
    ZacValue<Axis?>? constrainedAxis,
    ZacValue<Clip?>? clipBehavior,
  }) = _FlutterUnconstrainedBox;

  UnconstrainedBox _buildWidget(ZacContext zacContext) {
    return UnconstrainedBox(
      key: key?.getValue(zacContext),
      textDirection: textDirection?.getValue(zacContext),
      alignment: alignment?.getValue(zacContext) ?? Alignment.center,
      clipBehavior: clipBehavior?.getValue(zacContext) ?? Clip.none,
      constrainedAxis: constrainedAxis?.getValue(zacContext),
      child: child?.getValue(zacContext),
    );
  }

  @override
  UnconstrainedBox build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
