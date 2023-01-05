import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';

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

  UnconstrainedBox _buildWidget(BuildContext context, ZacContext zacContext) {
    return UnconstrainedBox(
      key: key?.build(context, zacContext),
      textDirection: textDirection?.build(context, zacContext),
      alignment: alignment?.build(context, zacContext) ?? Alignment.center,
      clipBehavior: clipBehavior?.build(context, zacContext) ?? Clip.none,
      constrainedAxis: constrainedAxis?.build(context, zacContext),
      child: child?.build(context, zacContext),
    );
  }

  @override
  UnconstrainedBox build(BuildContext context, ZacContext zacContext) {
    return _buildWidget(context, zacContext);
  }
}
