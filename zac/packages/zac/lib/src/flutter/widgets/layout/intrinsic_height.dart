import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';

part 'intrinsic_height.freezed.dart';
part 'intrinsic_height.g.dart';

@freezedZacBuilder
class FlutterIntrinsicHeight
    with _$FlutterIntrinsicHeight
    implements ZacBuilder<IntrinsicHeight> {
  const FlutterIntrinsicHeight._();

  static const String unionValue = 'f:1:IntrinsicHeight';

  factory FlutterIntrinsicHeight.fromJson(Map<String, dynamic> json) =>
      _$FlutterIntrinsicHeightFromJson(json);

  @FreezedUnionValue(FlutterIntrinsicHeight.unionValue)
  factory FlutterIntrinsicHeight({
    ZacBuilder<Key?>? key,
    ZacBuilder<Widget?>? child,
  }) = _FlutterIntrinsicHeight;

  IntrinsicHeight _buildWidget(BuildContext context, ZacContext zacContext) {
    return IntrinsicHeight(
      key: key?.build(context, zacContext),
      child: child?.build(context, zacContext),
    );
  }

  @override
  IntrinsicHeight build(BuildContext context, ZacContext zacContext) {
    return _buildWidget(context, zacContext);
  }
}
