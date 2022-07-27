import 'package:zac/src/flutter/painting/painting.dart';
import 'package:zac/src/zac/any_value/any_value.dart';

import 'package:zac/src/zac/context/widget_context.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation/foundation.dart';

part 'overflow_box.freezed.dart';
part 'overflow_box.g.dart';

@defaultConverterFreezed
class FlutterOverflowBox with _$FlutterOverflowBox implements ZacWidget {
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
    ZacWidget? child,
  }) = _FlutterOverflowBox;

  @override
  OverflowBox buildWidget(ZacBuildContext context) {
    return OverflowBox(
      key: key?.build(context),
      alignment: alignment?.build(context) ?? Alignment.center,
      minWidth: minWidth?.getValue(context),
      maxWidth: maxWidth?.getValue(context),
      minHeight: minHeight?.getValue(context),
      maxHeight: maxHeight?.getValue(context),
      child: child?.buildWidget(context),
    );
  }
}
