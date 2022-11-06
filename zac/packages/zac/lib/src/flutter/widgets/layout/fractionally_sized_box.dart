import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'fractionally_sized_box.freezed.dart';
part 'fractionally_sized_box.g.dart';

@defaultConverterFreezed
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterFractionallySizedBox
    with _$FlutterFractionallySizedBox
    implements FlutterWidget {
  const FlutterFractionallySizedBox._();

  static const String unionValue = 'f:1:FractionallySizedBox';

  factory FlutterFractionallySizedBox.fromJson(Map<String, dynamic> json) =>
      _$FlutterFractionallySizedBoxFromJson(json);

  @FreezedUnionValue(FlutterFractionallySizedBox.unionValue)
  factory FlutterFractionallySizedBox({
    FlutterKey? key,
    FlutterWidget? child,
    FlutterAlignmentGeometry? alignment,
    ZacValue<double>? widthFactor,
    ZacValue<double>? heightFactor,
  }) = _FlutterFractionallySizedBox;

  @override
  FractionallySizedBox buildWidget(ZacContext zacContext) {
    return FractionallySizedBox(
      key: key?.buildKey(zacContext),
      heightFactor: heightFactor?.getValue(zacContext),
      widthFactor: widthFactor?.getValue(zacContext),
      alignment: alignment?.build(zacContext) ?? Alignment.center,
      child: child?.buildWidget(zacContext),
    );
  }
}
