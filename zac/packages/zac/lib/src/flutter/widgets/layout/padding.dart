import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_build.dart';
import 'package:zac/src/zac/zac_value.dart';

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

  Padding _buildWidget(ZacContext zacContext) {
    return Padding(
      key: key?.build(zacContext),
      padding: padding.build(zacContext),
      child: child?.build(zacContext),
    );
  }

  @override
  Padding build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
