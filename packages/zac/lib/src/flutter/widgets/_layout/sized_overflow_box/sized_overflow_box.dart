import 'package:zac/src/flutter/painting/painting.dart';
import 'package:zac/src/zac/any_value/any_value.dart';

import 'package:zac/src/zac/context/widget_context.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui/dart_ui.dart';
import 'package:zac/src/flutter/foundation/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sized_overflow_box.freezed.dart';
part 'sized_overflow_box.g.dart';

@defaultConverterFreezed
class FlutterSizedOverflowBox
    with _$FlutterSizedOverflowBox
    implements ZacWidget {
  const FlutterSizedOverflowBox._();

  static const String unionValue = 'f:1:SizedOverflowBox';

  factory FlutterSizedOverflowBox.fromJson(Map<String, dynamic> json) =>
      _$FlutterSizedOverflowBoxFromJson(json);

  @FreezedUnionValue(FlutterSizedOverflowBox.unionValue)
  factory FlutterSizedOverflowBox({
    FlutterKey? key,
    required FlutterSize size,
    FlutterAlignmentGeometry? alignment,
    ZacWidget? child,
  }) = _FlutterSizedOverflowBox;

  @override
  SizedOverflowBox buildWidget(ZacBuildContext context) {
    return SizedOverflowBox(
      key: key?.buildKey(context),
      size: size.build(context),
      alignment: alignment?.build(context) ?? Alignment.center,
      child: child?.buildWidget(context),
    );
  }
}
