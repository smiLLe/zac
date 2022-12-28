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
    implements ZacBuilder<UnconstrainedBox> {
  const FlutterUnconstrainedBox._();

  static const String unionValue = 'f:1:UnconstrainedBox';

  factory FlutterUnconstrainedBox.fromJson(Map<String, dynamic> json) =>
      _$FlutterUnconstrainedBoxFromJson(json);

  @FreezedUnionValue(FlutterUnconstrainedBox.unionValue)
  factory FlutterUnconstrainedBox({
    ZacBuilder<Key?>? key,
    ZacBuilder<Widget?>? child,
    ZacBuilder<TextDirection?>? textDirection,
    ZacBuilder<AlignmentGeometry?>? alignment,
    ZacBuilder<Axis?>? constrainedAxis,
    ZacBuilder<Clip?>? clipBehavior,
  }) = _FlutterUnconstrainedBox;

  UnconstrainedBox _buildWidget(ZacContext zacContext) {
    return UnconstrainedBox(
      key: key?.build(zacContext),
      textDirection: textDirection?.build(zacContext),
      alignment: alignment?.build(zacContext) ?? Alignment.center,
      clipBehavior: clipBehavior?.build(zacContext) ?? Clip.none,
      constrainedAxis: constrainedAxis?.build(zacContext),
      child: child?.build(zacContext),
    );
  }

  @override
  UnconstrainedBox build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
