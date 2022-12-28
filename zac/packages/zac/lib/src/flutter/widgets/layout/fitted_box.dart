import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_build.dart';
import 'package:zac/src/zac/zac_value.dart';

part 'fitted_box.freezed.dart';
part 'fitted_box.g.dart';

@freezedZacBuilder
class FlutterFittedBox with _$FlutterFittedBox implements ZacBuild<FittedBox> {
  const FlutterFittedBox._();

  static const String unionValue = 'f:1:FittedBox';

  factory FlutterFittedBox.fromJson(Map<String, dynamic> json) =>
      _$FlutterFittedBoxFromJson(json);

  @FreezedUnionValue(FlutterFittedBox.unionValue)
  factory FlutterFittedBox({
    ZacValue<Key?>? key,
    ZacValue<BoxFit?>? fit,
    ZacValue<AlignmentGeometry?>? alignment,
    ZacValue<Clip?>? clipBehavior,
    ZacValue<Widget?>? child,
  }) = _FlutterFittedBox;

  FittedBox _buildWidget(ZacContext zacContext) {
    return FittedBox(
      key: key?.getValue(zacContext),
      fit: fit?.getValue(zacContext) ?? BoxFit.contain,
      alignment: alignment?.getValue(zacContext) ?? Alignment.center,
      clipBehavior: clipBehavior?.getValue(zacContext) ?? Clip.none,
      child: child?.getValue(zacContext),
    );
  }

  @override
  FittedBox build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
