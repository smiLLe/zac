import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:zac/src/zac/zac_value.dart';

part 'intrinsic_width.freezed.dart';
part 'intrinsic_width.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterIntrinsicWidth
    with _$FlutterIntrinsicWidth
    implements ZacBuilder<IntrinsicWidth> {
  const FlutterIntrinsicWidth._();

  static const String unionValue = 'f:1:IntrinsicWidth';

  factory FlutterIntrinsicWidth.fromJson(Map<String, dynamic> json) =>
      _$FlutterIntrinsicWidthFromJson(json);

  @FreezedUnionValue(FlutterIntrinsicWidth.unionValue)
  factory FlutterIntrinsicWidth({
    ZacValue<Key?>? key,
    ZacValue<Widget?>? child,
  }) = _FlutterIntrinsicWidth;

  IntrinsicWidth _buildWidget(ZacContext zacContext) {
    return IntrinsicWidth(
      key: key?.build(zacContext),
      child: child?.build(zacContext),
    );
  }

  @override
  IntrinsicWidth build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
