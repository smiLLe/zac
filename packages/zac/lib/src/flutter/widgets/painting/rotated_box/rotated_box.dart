import 'package:zac/src/zac/any_value/any_value.dart';

import 'package:zac/src/zac/context/widget_context.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/mixed/keys/keys.dart';

part 'rotated_box.freezed.dart';
part 'rotated_box.g.dart';

@defaultConverterFreezed
class FlutterRotatedBox with _$FlutterRotatedBox implements ZacWidget {
  const FlutterRotatedBox._();

  static const String unionValue = 'f:1:RotatedBox';

  factory FlutterRotatedBox.fromJson(Map<String, dynamic> json) =>
      _$FlutterRotatedBoxFromJson(json);

  @FreezedUnionValue(FlutterRotatedBox.unionValue)
  factory FlutterRotatedBox({
    FlutterKey? key,
    ZacWidget? child,
    required int quarterTurns,
  }) = _FlutterRotatedBox;

  @override
  RotatedBox buildWidget(ZacBuildContext context) {
    return RotatedBox(
      key: key?.build(context),
      child: child?.buildWidget(context),
      quarterTurns: quarterTurns,
    );
  }
}
