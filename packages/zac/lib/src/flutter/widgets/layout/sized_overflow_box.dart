import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/zac/origin.dart';

part 'sized_overflow_box.freezed.dart';
part 'sized_overflow_box.g.dart';

@defaultConverterFreezed
class FlutterSizedOverflowBox
    with _$FlutterSizedOverflowBox
    implements FlutterWidget {
  const FlutterSizedOverflowBox._();

  static const String unionValue = 'f:1:SizedOverflowBox';

  factory FlutterSizedOverflowBox.fromJson(Map<String, dynamic> json) =>
      _$FlutterSizedOverflowBoxFromJson(json);

  @FreezedUnionValue(FlutterSizedOverflowBox.unionValue)
  factory FlutterSizedOverflowBox({
    FlutterKey? key,
    required FlutterSize size,
    FlutterAlignmentGeometry? alignment,
    FlutterWidget? child,
  }) = _FlutterSizedOverflowBox;

  @override
  SizedOverflowBox buildWidget(ZacOriginWidgetTree origin) {
    return SizedOverflowBox(
      key: key?.buildKey(origin),
      size: size.build(origin),
      alignment: alignment?.build(origin) ?? Alignment.center,
      child: child?.buildWidget(origin),
    );
  }
}
