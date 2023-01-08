import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';

part 'padding.freezed.dart';
part 'padding.g.dart';

@freezedZacBuilder
class FlutterPadding with _$FlutterPadding implements ZacBuilder<Padding> {
  const FlutterPadding._();

  static const String unionValue = 'f:1:Padding';

  factory FlutterPadding.fromJson(Map<String, dynamic> json) =>
      _$FlutterPaddingFromJson(json);

  @FreezedUnionValue(FlutterPadding.unionValue)
  factory FlutterPadding({
    ZacBuilder<Key?>? key,
    required ZacBuilder<EdgeInsetsGeometry> padding,
    ZacBuilder<Widget?>? child,
  }) = _FlutterPadding;

  Padding _buildWidget(BuildContext context, ZacContext zacContext) {
    return Padding(
      key: key?.build(context, zacContext),
      padding: padding.build(context, zacContext),
      child: child?.build(context, zacContext),
    );
  }

  @override
  Padding build(BuildContext context, ZacContext zacContext) {
    return _buildWidget(context, zacContext);
  }
}
