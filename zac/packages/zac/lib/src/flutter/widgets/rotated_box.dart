import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';

part 'rotated_box.freezed.dart';
part 'rotated_box.g.dart';

@freezedZacBuilder
class FlutterRotatedBox
    with _$FlutterRotatedBox
    implements ZacBuilder<RotatedBox> {
  const FlutterRotatedBox._();

  static const String unionValue = 'f:1:RotatedBox';

  factory FlutterRotatedBox.fromJson(Map<String, dynamic> json) =>
      _$FlutterRotatedBoxFromJson(json);

  @FreezedUnionValue(FlutterRotatedBox.unionValue)
  factory FlutterRotatedBox({
    ZacBuilder<Key?>? key,
    ZacBuilder<Widget?>? child,
    required int quarterTurns,
  }) = _FlutterRotatedBox;

  RotatedBox _buildWidget(BuildContext context, ZacContext zacContext) {
    return RotatedBox(
      key: key?.build(context, zacContext),
      quarterTurns: quarterTurns,
      child: child?.build(context, zacContext),
    );
  }

  @override
  RotatedBox build(BuildContext context, ZacContext zacContext) {
    return _buildWidget(context, zacContext);
  }
}
