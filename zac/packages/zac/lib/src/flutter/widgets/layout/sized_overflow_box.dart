import 'package:zac/src/base.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';

part 'sized_overflow_box.freezed.dart';
part 'sized_overflow_box.g.dart';

@freezedZacBuilder
class FlutterSizedOverflowBox
    with _$FlutterSizedOverflowBox
    implements ZacBuilder<SizedOverflowBox> {
  const FlutterSizedOverflowBox._();

  static const String unionValue = 'f:1:SizedOverflowBox';

  factory FlutterSizedOverflowBox.fromJson(Map<String, dynamic> json) =>
      _$FlutterSizedOverflowBoxFromJson(json);

  @FreezedUnionValue(FlutterSizedOverflowBox.unionValue)
  factory FlutterSizedOverflowBox({
    ZacBuilder<Key?>? key,
    required ZacBuilder<Size> size,
    ZacBuilder<AlignmentGeometry?>? alignment,
    ZacBuilder<Widget?>? child,
  }) = _FlutterSizedOverflowBox;

  SizedOverflowBox _buildWidget(BuildContext context, ZacContext zacContext) {
    return SizedOverflowBox(
      key: key?.build(context, zacContext),
      size: size.build(context, zacContext),
      alignment: alignment?.build(context, zacContext) ?? Alignment.center,
      child: child?.build(context, zacContext),
    );
  }

  @override
  SizedOverflowBox build(BuildContext context, ZacContext zacContext) {
    return _buildWidget(context, zacContext);
  }
}
