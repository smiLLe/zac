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
class FlutterFittedBox
    with _$FlutterFittedBox
    implements ZacBuilder<FittedBox> {
  const FlutterFittedBox._();

  static const String unionValue = 'f:1:FittedBox';

  factory FlutterFittedBox.fromJson(Map<String, dynamic> json) =>
      _$FlutterFittedBoxFromJson(json);

  @FreezedUnionValue(FlutterFittedBox.unionValue)
  factory FlutterFittedBox({
    ZacBuilder<Key?>? key,
    ZacBuilder<BoxFit?>? fit,
    ZacBuilder<AlignmentGeometry?>? alignment,
    ZacBuilder<Clip?>? clipBehavior,
    ZacBuilder<Widget?>? child,
  }) = _FlutterFittedBox;

  FittedBox _buildWidget(ZacContext zacContext) {
    return FittedBox(
      key: key?.build(zacContext),
      fit: fit?.build(zacContext) ?? BoxFit.contain,
      alignment: alignment?.build(zacContext) ?? Alignment.center,
      clipBehavior: clipBehavior?.build(zacContext) ?? Clip.none,
      child: child?.build(zacContext),
    );
  }

  @override
  FittedBox build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
