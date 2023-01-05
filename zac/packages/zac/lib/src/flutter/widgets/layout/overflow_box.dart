import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';

part 'overflow_box.freezed.dart';
part 'overflow_box.g.dart';

@freezedZacBuilder
class FlutterOverflowBox
    with _$FlutterOverflowBox
    implements ZacBuilder<OverflowBox> {
  const FlutterOverflowBox._();

  static const String unionValue = 'f:1:OverflowBox';

  factory FlutterOverflowBox.fromJson(Map<String, dynamic> json) =>
      _$FlutterOverflowBoxFromJson(json);

  @FreezedUnionValue(FlutterOverflowBox.unionValue)
  factory FlutterOverflowBox({
    ZacBuilder<Key?>? key,
    ZacBuilder<AlignmentGeometry?>? alignment,
    ZacBuilder<double?>? minWidth,
    ZacBuilder<double?>? maxWidth,
    ZacBuilder<double?>? minHeight,
    ZacBuilder<double?>? maxHeight,
    ZacBuilder<Widget?>? child,
  }) = _FlutterOverflowBox;

  OverflowBox _buildWidget(BuildContext context, ZacContext zacContext) {
    return OverflowBox(
      key: key?.build(context, zacContext),
      alignment: alignment?.build(context, zacContext) ?? Alignment.center,
      minWidth: minWidth?.build(context, zacContext),
      maxWidth: maxWidth?.build(context, zacContext),
      minHeight: minHeight?.build(context, zacContext),
      maxHeight: maxHeight?.build(context, zacContext),
      child: child?.build(context, zacContext),
    );
  }

  @override
  OverflowBox build(BuildContext context, ZacContext zacContext) {
    return _buildWidget(context, zacContext);
  }
}
