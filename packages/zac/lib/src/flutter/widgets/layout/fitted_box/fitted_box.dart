import 'package:zac/src/zac/any_value/any_value.dart';

import 'package:zac/src/zac/context/widget_context.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui/dart_ui.dart';
import 'package:zac/src/flutter/mixed/alignment/alignment.dart';
import 'package:zac/src/flutter/mixed/keys/keys.dart';
import 'package:zac/src/flutter/painting/painting.dart';

part 'fitted_box.freezed.dart';
part 'fitted_box.g.dart';

@defaultConverterFreezed
class FlutterFittedBox with _$FlutterFittedBox implements ZacWidget {
  const FlutterFittedBox._();

  static const String unionValue = 'f:1:FittedBox';

  factory FlutterFittedBox.fromJson(Map<String, dynamic> json) =>
      _$FlutterFittedBoxFromJson(json);

  @FreezedUnionValue(FlutterFittedBox.unionValue)
  factory FlutterFittedBox({
    FlutterKey? key,
    FlutterBoxFit? fit,
    FlutterAlignmentGeometry? alignment,
    FlutterClip? clipBehavior,
    ZacWidget? child,
  }) = _FlutterFittedBox;

  @override
  FittedBox buildWidget(ZacBuildContext context) {
    return FittedBox(
      key: key?.build(context),
      fit: fit?.build(context) ?? BoxFit.contain,
      alignment: alignment?.build(context) ?? Alignment.center,
      clipBehavior: clipBehavior?.build(context) ?? Clip.none,
      child: child?.buildWidget(context),
    );
  }
}
