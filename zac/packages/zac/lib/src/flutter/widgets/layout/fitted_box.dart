import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';

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

  FittedBox _buildWidget(BuildContext context, ZacContext zacContext) {
    return FittedBox(
      key: key?.build(context, zacContext),
      fit: fit?.build(context, zacContext) ?? BoxFit.contain,
      alignment: alignment?.build(context, zacContext) ?? Alignment.center,
      clipBehavior: clipBehavior?.build(context, zacContext) ?? Clip.none,
      child: child?.build(context, zacContext),
    );
  }

  @override
  FittedBox build(BuildContext context, ZacContext zacContext) {
    return _buildWidget(context, zacContext);
  }
}
