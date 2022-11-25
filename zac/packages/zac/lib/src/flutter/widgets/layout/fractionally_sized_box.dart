import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'fractionally_sized_box.freezed.dart';
part 'fractionally_sized_box.g.dart';

@freezedZacBuilder
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
    ZacDouble? widthFactor,
    ZacDouble? heightFactor,
  }) = _FlutterFractionallySizedBox;

  @override
  FractionallySizedBox buildWidget(ZacContext zacContext) {
    return FractionallySizedBox(
      key: key?.buildOrNull(zacContext),
      heightFactor: heightFactor?.buildOrNull(zacContext),
      widthFactor: widthFactor?.buildOrNull(zacContext),
      alignment: alignment?.build(zacContext) ?? Alignment.center,
      child: child?.buildWidget(zacContext),
    );
  }
}
