import 'package:flutter/material.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_build.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';

part 'material.freezed.dart';
part 'material.g.dart';

@freezedZacBuilder
class FlutterOutlineInputBorder
    with _$FlutterOutlineInputBorder
    implements ZacBuild<OutlineInputBorder> {
  const FlutterOutlineInputBorder._();

  static const String unionValue = 'f:1:OutlineInputBorder';

  factory FlutterOutlineInputBorder.fromJson(Map<String, dynamic> json) =>
      _$FlutterOutlineInputBorderFromJson(json);

  @FreezedUnionValue(FlutterOutlineInputBorder.unionValue)
  factory FlutterOutlineInputBorder({
    ZacValue<BorderSide?>? borderSide,
    ZacValue<BorderRadius?>? borderRadius,
    ZacValue<double?>? gapPadding,
  }) = _FlutterOutlineInputBorder;

  OutlineInputBorder _build(ZacContext zacContext) {
    return OutlineInputBorder(
      borderSide: borderSide?.build(zacContext) ?? const BorderSide(),
      borderRadius: borderRadius?.build(zacContext) ??
          const BorderRadius.all(Radius.circular(4.0)),
      gapPadding: gapPadding?.build(zacContext) ?? 4.0,
    );
  }

  @override
  OutlineInputBorder build(ZacContext zacContext) {
    return _build(zacContext);
  }
}

@freezedZacBuilder
class FlutterUnderlineInputBorder
    with _$FlutterUnderlineInputBorder
    implements ZacBuild<UnderlineInputBorder> {
  const FlutterUnderlineInputBorder._();

  static const String unionValue = 'f:1:UnderlineInputBorder';

  factory FlutterUnderlineInputBorder.fromJson(Map<String, dynamic> json) =>
      _$FlutterUnderlineInputBorderFromJson(json);

  @FreezedUnionValue(FlutterUnderlineInputBorder.unionValue)
  factory FlutterUnderlineInputBorder({
    ZacValue<BorderSide?>? borderSide,
    ZacValue<BorderRadius?>? borderRadius,
  }) = _FlutterUnderlineInputBorder;

  UnderlineInputBorder _build(ZacContext zacContext) {
    return UnderlineInputBorder(
      borderSide: borderSide?.build(zacContext) ?? const BorderSide(),
      borderRadius: borderRadius?.build(zacContext) ??
          const BorderRadius.only(
            topLeft: Radius.circular(4.0),
            topRight: Radius.circular(4.0),
          ),
    );
  }

  @override
  UnderlineInputBorder build(ZacContext zacContext) {
    return _build(zacContext);
  }
}
