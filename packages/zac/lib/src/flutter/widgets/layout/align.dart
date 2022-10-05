import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/zac/origin.dart';
import 'package:zac/src/zac/zac_values.dart';
import 'package:zac/src/base.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'align.freezed.dart';
part 'align.g.dart';

@defaultConverterFreezed
class FlutterAlign with _$FlutterAlign implements FlutterWidget {
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
    // @ZacWidgetNullableConverter() ZacWidget? child,
    FlutterWidget? child,
  }) = _FlutterAlign;

  @override
  Align buildWidget(ZacOriginWidgetTree origin) {
    return Align(
      key: key?.buildKey(origin),
      alignment: alignment?.build(origin) ?? Alignment.center,
      widthFactor: widthFactor?.getValue(origin),
      heightFactor: heightFactor?.getValue(origin),
      // child: child?.buildWidget(origin),
      child: child?.buildWidget(origin),
    );
  }
}
