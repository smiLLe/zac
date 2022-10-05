import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/zac/origin.dart';
import 'package:zac/src/zac/zac_values.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'overflow_box.freezed.dart';
part 'overflow_box.g.dart';

@defaultConverterFreezed
class FlutterOverflowBox with _$FlutterOverflowBox implements FlutterWidget {
  const FlutterOverflowBox._();

  static const String unionValue = 'f:1:OverflowBox';

  factory FlutterOverflowBox.fromJson(Map<String, dynamic> json) =>
      _$FlutterOverflowBoxFromJson(json);

  @FreezedUnionValue(FlutterOverflowBox.unionValue)
  factory FlutterOverflowBox({
    FlutterKey? key,
    FlutterAlignmentGeometry? alignment,
    ZacDouble? minWidth,
    ZacDouble? maxWidth,
    ZacDouble? minHeight,
    ZacDouble? maxHeight,
    FlutterWidget? child,
  }) = _FlutterOverflowBox;

  @override
  OverflowBox buildWidget(ZacOriginWidgetTree origin) {
    return OverflowBox(
      key: key?.buildKey(origin),
      alignment: alignment?.build(origin) ?? Alignment.center,
      minWidth: minWidth?.getValue(origin),
      maxWidth: maxWidth?.getValue(origin),
      minHeight: minHeight?.getValue(origin),
      maxHeight: maxHeight?.getValue(origin),
      child: child?.buildWidget(origin),
    );
  }
}
