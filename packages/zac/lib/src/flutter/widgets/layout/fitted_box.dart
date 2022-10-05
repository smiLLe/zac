import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/zac/origin.dart';

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
  FittedBox buildWidget(ZacOriginWidgetTree origin) {
    return FittedBox(
      key: key?.buildKey(origin),
      fit: fit?.build(origin) ?? BoxFit.contain,
      alignment: alignment?.build(origin) ?? Alignment.center,
      clipBehavior: clipBehavior?.build(origin) ?? Clip.none,
      child: child?.buildWidget(origin),
    );
  }
}
