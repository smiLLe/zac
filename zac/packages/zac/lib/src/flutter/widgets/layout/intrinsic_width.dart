import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';

part 'intrinsic_width.freezed.dart';
part 'intrinsic_width.g.dart';

@freezedZacBuilder
class FlutterIntrinsicWidth
    with _$FlutterIntrinsicWidth
    implements ZacBuilder<IntrinsicWidth> {
  const FlutterIntrinsicWidth._();

  static const String unionValue = 'f:1:IntrinsicWidth';

  factory FlutterIntrinsicWidth.fromJson(Map<String, dynamic> json) =>
      _$FlutterIntrinsicWidthFromJson(json);

  @FreezedUnionValue(FlutterIntrinsicWidth.unionValue)
  factory FlutterIntrinsicWidth({
    ZacBuilder<Key?>? key,
    ZacBuilder<Widget?>? child,
  }) = _FlutterIntrinsicWidth;

  IntrinsicWidth _buildWidget(BuildContext context, ZacContext zacContext) {
    return IntrinsicWidth(
      key: key?.build(context, zacContext),
      child: child?.build(context, zacContext),
    );
  }

  @override
  IntrinsicWidth build(BuildContext context, ZacContext zacContext) {
    return _buildWidget(context, zacContext);
  }
}
