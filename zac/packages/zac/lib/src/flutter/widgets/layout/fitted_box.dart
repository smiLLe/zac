import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/zac/context.dart';

part 'fitted_box.freezed.dart';
part 'fitted_box.g.dart';

@defaultConverterFreezed
class FlutterFittedBox with _$FlutterFittedBox implements FlutterWidget {
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
    FlutterWidget? child,
  }) = _FlutterFittedBox;

  @override
  FittedBox buildWidget(ZacContext zacContext) {
    return FittedBox(
      key: key?.buildKey(zacContext),
      fit: fit?.build(zacContext) ?? BoxFit.contain,
      alignment: alignment?.build(zacContext) ?? Alignment.center,
      clipBehavior: clipBehavior?.build(zacContext) ?? Clip.none,
      child: child?.buildWidget(zacContext),
    );
  }
}