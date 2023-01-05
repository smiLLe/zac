import 'package:flutter/material.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';

part 'material.freezed.dart';
part 'material.g.dart';

@freezedZacBuilder
class FlutterOutlineInputBorder
    with _$FlutterOutlineInputBorder
    implements ZacBuilder<OutlineInputBorder> {
  const FlutterOutlineInputBorder._();

  static const String unionValue = 'f:1:OutlineInputBorder';

  factory FlutterOutlineInputBorder.fromJson(Map<String, dynamic> json) =>
      _$FlutterOutlineInputBorderFromJson(json);

  @FreezedUnionValue(FlutterOutlineInputBorder.unionValue)
  factory FlutterOutlineInputBorder({
    ZacBuilder<BorderSide?>? borderSide,
    ZacBuilder<BorderRadius?>? borderRadius,
    ZacBuilder<double?>? gapPadding,
  }) = _FlutterOutlineInputBorder;

  OutlineInputBorder _build(BuildContext context, ZacContext zacContext) {
    return OutlineInputBorder(
      borderSide: borderSide?.build(context, zacContext) ?? const BorderSide(),
      borderRadius: borderRadius?.build(context, zacContext) ??
          const BorderRadius.all(Radius.circular(4.0)),
      gapPadding: gapPadding?.build(context, zacContext) ?? 4.0,
    );
  }

  @override
  OutlineInputBorder build(BuildContext context, ZacContext zacContext) {
    return _build(context, zacContext);
  }
}

@freezedZacBuilder
class FlutterUnderlineInputBorder
    with _$FlutterUnderlineInputBorder
    implements ZacBuilder<UnderlineInputBorder> {
  const FlutterUnderlineInputBorder._();

  static const String unionValue = 'f:1:UnderlineInputBorder';

  factory FlutterUnderlineInputBorder.fromJson(Map<String, dynamic> json) =>
      _$FlutterUnderlineInputBorderFromJson(json);

  @FreezedUnionValue(FlutterUnderlineInputBorder.unionValue)
  factory FlutterUnderlineInputBorder({
    ZacBuilder<BorderSide?>? borderSide,
    ZacBuilder<BorderRadius?>? borderRadius,
  }) = _FlutterUnderlineInputBorder;

  UnderlineInputBorder _build(BuildContext context, ZacContext zacContext) {
    return UnderlineInputBorder(
      borderSide: borderSide?.build(context, zacContext) ?? const BorderSide(),
      borderRadius: borderRadius?.build(context, zacContext) ??
          const BorderRadius.only(
            topLeft: Radius.circular(4.0),
            topRight: Radius.circular(4.0),
          ),
    );
  }

  @override
  UnderlineInputBorder build(BuildContext context, ZacContext zacContext) {
    return _build(context, zacContext);
  }
}
