import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_build.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';

part 'fractionally_sized_box.freezed.dart';
part 'fractionally_sized_box.g.dart';

@freezedZacBuilder
class FlutterFractionallySizedBox
    with _$FlutterFractionallySizedBox
    implements ZacBuild<FractionallySizedBox> {
  const FlutterFractionallySizedBox._();

  static const String unionValue = 'f:1:FractionallySizedBox';

  factory FlutterFractionallySizedBox.fromJson(Map<String, dynamic> json) =>
      _$FlutterFractionallySizedBoxFromJson(json);

  @FreezedUnionValue(FlutterFractionallySizedBox.unionValue)
  factory FlutterFractionallySizedBox({
    ZacValue<Key?>? key,
    ZacValue<Widget?>? child,
    ZacValue<AlignmentGeometry?>? alignment,
    ZacValue<double?>? widthFactor,
    ZacValue<double?>? heightFactor,
  }) = _FlutterFractionallySizedBox;

  FractionallySizedBox _buildWidget(ZacContext zacContext) {
    return FractionallySizedBox(
      key: key?.build(zacContext),
      heightFactor: heightFactor?.build(zacContext),
      widthFactor: widthFactor?.build(zacContext),
      alignment: alignment?.build(zacContext) ?? Alignment.center,
      child: child?.build(zacContext),
    );
  }

  @override
  FractionallySizedBox build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
