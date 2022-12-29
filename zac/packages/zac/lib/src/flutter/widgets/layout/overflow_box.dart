import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_build.dart';
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

  OverflowBox _buildWidget(ZacContext zacContext) {
    return OverflowBox(
      key: key?.build(zacContext),
      alignment: alignment?.build(zacContext) ?? Alignment.center,
      minWidth: minWidth?.build(zacContext),
      maxWidth: maxWidth?.build(zacContext),
      minHeight: minHeight?.build(zacContext),
      maxHeight: maxHeight?.build(zacContext),
      child: child?.build(zacContext),
    );
  }

  @override
  OverflowBox build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
