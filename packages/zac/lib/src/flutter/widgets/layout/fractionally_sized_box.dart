import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_values.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'fractionally_sized_box.freezed.dart';
part 'fractionally_sized_box.g.dart';

@defaultConverterFreezed
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
      key: key?.buildKey(zacContext),
      child: child?.buildWidget(zacContext),
      heightFactor: heightFactor?.getValue(zacContext),
      widthFactor: widthFactor?.getValue(zacContext),
      alignment: alignment?.build(zacContext) ?? Alignment.center,
    );
  }
}
