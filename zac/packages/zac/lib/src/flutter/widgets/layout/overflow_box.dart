import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_build.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';

part 'overflow_box.freezed.dart';
part 'overflow_box.g.dart';

@freezedZacBuilder
class FlutterOverflowBox
    with _$FlutterOverflowBox
    implements ZacBuild<OverflowBox> {
  const FlutterOverflowBox._();

  static const String unionValue = 'f:1:OverflowBox';

  factory FlutterOverflowBox.fromJson(Map<String, dynamic> json) =>
      _$FlutterOverflowBoxFromJson(json);

  @FreezedUnionValue(FlutterOverflowBox.unionValue)
  factory FlutterOverflowBox({
    ZacValue<Key?>? key,
    ZacValue<AlignmentGeometry?>? alignment,
    ZacValue<double?>? minWidth,
    ZacValue<double?>? maxWidth,
    ZacValue<double?>? minHeight,
    ZacValue<double?>? maxHeight,
    ZacValue<Widget?>? child,
  }) = _FlutterOverflowBox;

  OverflowBox _buildWidget(ZacContext zacContext) {
    return OverflowBox(
      key: key?.getValue(zacContext),
      alignment: alignment?.getValue(zacContext) ?? Alignment.center,
      minWidth: minWidth?.getValue(zacContext),
      maxWidth: maxWidth?.getValue(zacContext),
      minHeight: minHeight?.getValue(zacContext),
      maxHeight: maxHeight?.getValue(zacContext),
      child: child?.getValue(zacContext),
    );
  }

  @override
  OverflowBox build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
