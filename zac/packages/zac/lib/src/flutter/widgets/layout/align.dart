import 'package:zac/src/zac/context.dart';
import 'package:zac/src/base.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/zac/zac_builder.dart';

part 'align.freezed.dart';
part 'align.g.dart';

@freezedZacBuilder
class FlutterAlign with _$FlutterAlign implements ZacBuilder<Align> {
  const FlutterAlign._();

  static const String unionValue = 'f:1:Align';

  factory FlutterAlign.fromJson(Map<String, dynamic> json) =>
      _$FlutterAlignFromJson(json);

  @FreezedUnionValue(FlutterAlign.unionValue)
  factory FlutterAlign({
    ZacBuilder<Key?>? key,
    ZacBuilder<AlignmentGeometry?>? alignment,
    ZacBuilder<double?>? widthFactor,
    ZacBuilder<double?>? heightFactor,
    ZacBuilder<Widget?>? child,
  }) = _FlutterAlign;

  Align buildWidget(ZacContext zacContext) {
    return Align(
      key: key?.build(zacContext),
      alignment: alignment?.build(zacContext) ?? Alignment.center,
      widthFactor: widthFactor?.build(zacContext),
      heightFactor: heightFactor?.build(zacContext),
      // child: child?.build(zacContext),
      child: child?.build(zacContext),
    );
  }

  @override
  Align build(ZacContext zacContext) {
    return buildWidget(zacContext);
  }
}
