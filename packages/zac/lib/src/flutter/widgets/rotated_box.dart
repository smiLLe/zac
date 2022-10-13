import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/zac/origin.dart';

part 'rotated_box.freezed.dart';
part 'rotated_box.g.dart';

@defaultConverterFreezed
class FlutterRotatedBox with _$FlutterRotatedBox implements FlutterWidget {
  const FlutterRotatedBox._();

  static const String unionValue = 'f:1:RotatedBox';

  factory FlutterRotatedBox.fromJson(Map<String, dynamic> json) =>
      _$FlutterRotatedBoxFromJson(json);

  @FreezedUnionValue(FlutterRotatedBox.unionValue)
  factory FlutterRotatedBox({
    FlutterKey? key,
    FlutterWidget? child,
    required int quarterTurns,
  }) = _FlutterRotatedBox;

  @override
  RotatedBox buildWidget(ZacOriginWidgetTree origin) {
    return RotatedBox(
      key: key?.buildKey(origin),
      child: child?.buildWidget(origin),
      quarterTurns: quarterTurns,
    );
  }
}
