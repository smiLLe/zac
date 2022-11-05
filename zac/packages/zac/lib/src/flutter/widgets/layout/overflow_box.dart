import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'overflow_box.freezed.dart';
part 'overflow_box.g.dart';

@defaultConverterFreezed
@TsClass(order: tsOrderFlutterWidget)
class FlutterOverflowBox with _$FlutterOverflowBox implements FlutterWidget {
  const FlutterOverflowBox._();

  static const String unionValue = 'f:1:OverflowBox';

  factory FlutterOverflowBox.fromJson(Map<String, dynamic> json) =>
      _$FlutterOverflowBoxFromJson(json);

  @FreezedUnionValue(FlutterOverflowBox.unionValue)
  factory FlutterOverflowBox({
    FlutterKey? key,
    FlutterAlignmentGeometry? alignment,
    ZacValue<double>? minWidth,
    ZacValue<double>? maxWidth,
    ZacValue<double>? minHeight,
    ZacValue<double>? maxHeight,
    FlutterWidget? child,
  }) = _FlutterOverflowBox;

  @override
  OverflowBox buildWidget(ZacContext zacContext) {
    return OverflowBox(
      key: key?.buildKey(zacContext),
      alignment: alignment?.build(zacContext) ?? Alignment.center,
      minWidth: minWidth?.getValue(zacContext),
      maxWidth: maxWidth?.getValue(zacContext),
      minHeight: minHeight?.getValue(zacContext),
      maxHeight: maxHeight?.getValue(zacContext),
      child: child?.buildWidget(zacContext),
    );
  }
}
