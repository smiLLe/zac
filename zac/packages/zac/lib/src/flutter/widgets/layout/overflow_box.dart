import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'overflow_box.freezed.dart';
part 'overflow_box.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterOverflowBox
    with _$FlutterOverflowBox
    implements ZacBuilder<OverflowBox> {
  const FlutterOverflowBox._();

  static const String unionValue = 'f:1:OverflowBox';

  factory FlutterOverflowBox.fromJson(Map<String, dynamic> json) =>
      _$FlutterOverflowBoxFromJson(json);

  @FreezedUnionValue(FlutterOverflowBox.unionValue)
  factory FlutterOverflowBox({
    ZacValue<Key?>? key,
    ZacValue<AlignmentGeometry?>? alignment,
    ZacValue<double?>? minWidth,
    ZacValue<double?>? maxWidth,
    ZacValue<double?>? minHeight,
    ZacValue<double?>? maxHeight,
    ZacValue<Widget?>? child,
  }) = _FlutterOverflowBox;

  OverflowBox _buildWidget(ZacContext zacContext) {
    return OverflowBox(
      key: key?.build(zacContext),
      alignment: alignment?.build(zacContext) ?? Alignment.center,
      minWidth: minWidth?.build(zacContext),
      maxWidth: maxWidth?.build(zacContext),
      minHeight: minHeight?.build(zacContext),
      maxHeight: maxHeight?.build(zacContext),
      child: child?.build(zacContext),
    );
  }

  @override
  OverflowBox build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
