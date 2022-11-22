import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:zac/src/base.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'align.freezed.dart';
part 'align.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
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
  Align buildWidget(ZacContext zacContext) {
    return Align(
      key: key?.buildKey(zacContext),
      alignment: alignment?.build(zacContext) ?? Alignment.center,
      widthFactor: widthFactor?.getValueOrNull(zacContext),
      heightFactor: heightFactor?.getValueOrNull(zacContext),
      // child: child?.buildWidget(zacContext),
      child: child?.buildWidget(zacContext),
    );
  }
}
