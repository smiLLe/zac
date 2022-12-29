import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';

part 'divider.freezed.dart';
part 'divider.g.dart';

@freezedZacBuilder
class FlutterDivider with _$FlutterDivider implements ZacBuilder<Divider> {
  const FlutterDivider._();

  static const String unionValue = 'f:1:Divider';

  factory FlutterDivider.fromJson(Map<String, dynamic> json) =>
      _$FlutterDividerFromJson(json);

  @FreezedUnionValue(FlutterDivider.unionValue)
  factory FlutterDivider({
    ZacBuilder<Key?>? key,
    ZacBuilder<double?>? height,
    ZacBuilder<double?>? thickness,
    ZacBuilder<double?>? indent,
    ZacBuilder<double?>? endIndent,
    ZacBuilder<Color?>? color,
  }) = _FlutterDivider;

  Divider _buildWidget(ZacContext zacContext) {
    return Divider(
      key: key?.build(zacContext),
      height: height?.build(zacContext),
      thickness: thickness?.build(zacContext),
      indent: indent?.build(zacContext),
      endIndent: endIndent?.build(zacContext),
      color: color?.build(zacContext),
    );
  }

  @override
  Divider build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
