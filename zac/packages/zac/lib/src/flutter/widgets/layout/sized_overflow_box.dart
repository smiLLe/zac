import 'package:zac/src/base.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_build.dart';
import 'package:zac/src/zac/zac_value.dart';

part 'sized_overflow_box.freezed.dart';
part 'sized_overflow_box.g.dart';

@freezedZacBuilder
class FlutterSizedOverflowBox
    with _$FlutterSizedOverflowBox
    implements ZacBuild<SizedOverflowBox> {
  const FlutterSizedOverflowBox._();

  static const String unionValue = 'f:1:SizedOverflowBox';

  factory FlutterSizedOverflowBox.fromJson(Map<String, dynamic> json) =>
      _$FlutterSizedOverflowBoxFromJson(json);

  @FreezedUnionValue(FlutterSizedOverflowBox.unionValue)
  factory FlutterSizedOverflowBox({
    ZacValue<Key?>? key,
    required ZacValue<Size> size,
    ZacValue<AlignmentGeometry?>? alignment,
    ZacValue<Widget?>? child,
  }) = _FlutterSizedOverflowBox;

  SizedOverflowBox _buildWidget(ZacContext zacContext) {
    return SizedOverflowBox(
      key: key?.build(zacContext),
      size: size.build(zacContext),
      alignment: alignment?.build(zacContext) ?? Alignment.center,
      child: child?.build(zacContext),
    );
  }

  @override
  SizedOverflowBox build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
