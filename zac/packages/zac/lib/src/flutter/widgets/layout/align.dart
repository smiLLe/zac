import 'package:zac/src/zac/context.dart';
import 'package:zac/src/base.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/zac/zac_build.dart';
import 'package:zac/src/zac/zac_value.dart';

part 'align.freezed.dart';
part 'align.g.dart';

@freezedZacBuilder
class FlutterAlign with _$FlutterAlign implements ZacBuild<Align> {
  const FlutterAlign._();

  static const String unionValue = 'f:1:Align';

  factory FlutterAlign.fromJson(Map<String, dynamic> json) =>
      _$FlutterAlignFromJson(json);

  @FreezedUnionValue(FlutterAlign.unionValue)
  factory FlutterAlign({
    ZacValue<Key?>? key,
    ZacValue<AlignmentGeometry?>? alignment,
    ZacValue<double?>? widthFactor,
    ZacValue<double?>? heightFactor,
    ZacValue<Widget?>? child,
  }) = _FlutterAlign;

  Align buildWidget(ZacContext zacContext) {
    return Align(
      key: key?.getValue(zacContext),
      alignment: alignment?.getValue(zacContext) ?? Alignment.center,
      widthFactor: widthFactor?.getValue(zacContext),
      heightFactor: heightFactor?.getValue(zacContext),
      // child: child?.build(zacContext),
      child: child?.getValue(zacContext),
    );
  }

  @override
  Align build(ZacContext zacContext) {
    return buildWidget(zacContext);
  }
}
