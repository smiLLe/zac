import 'package:zac/src/zac/any_value/any_value.dart';

import 'package:zac/src/zac/context/widget_context.dart';
import 'package:zac/src/base.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/flutter/mixed/alignment/alignment.dart';
import 'package:zac/src/flutter/mixed/keys/keys.dart';

part 'align.freezed.dart';
part 'align.g.dart';

@defaultConverterFreezed
class FlutterAlign with _$FlutterAlign implements ZacWidget {
  const FlutterAlign._();

  static const String unionValue = 'f:1:Align';

  factory FlutterAlign.fromJson(Map<String, dynamic> json) =>
      _$FlutterAlignFromJson(json);

  @FreezedUnionValue(FlutterAlign.unionValue)
  factory FlutterAlign({
    FlutterKey? key,
    FlutterAlignmentGeometry? alignment,
    ZacDouble? widthFactor,
    ZacDouble? heightFactor,
    // @AnyWidgetNullableConverter() AnyWidget? child,
    ZacWidget? child,
  }) = _FlutterAlign;

  @override
  Align buildWidget(ZacBuildContext context) {
    return Align(
      key: key?.build(context),
      alignment: alignment?.build(context) ?? Alignment.center,
      widthFactor: widthFactor?.getValue(context),
      heightFactor: heightFactor?.getValue(context),
      // child: child?.buildWidget(context),
      child: child?.buildWidget(context),
    );
  }
}
