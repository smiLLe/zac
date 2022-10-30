import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_values.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'limited_box.freezed.dart';
part 'limited_box.g.dart';

@defaultConverterFreezed
@TsClass(order: tsOrderFlutterWidget)
class FlutterLimitedBox with _$FlutterLimitedBox implements FlutterWidget {
  const FlutterLimitedBox._();

  static const String unionValue = 'f:1:LimitedBox';

  factory FlutterLimitedBox.fromJson(Map<String, dynamic> json) =>
      _$FlutterLimitedBoxFromJson(json);

  @FreezedUnionValue(FlutterLimitedBox.unionValue)
  factory FlutterLimitedBox({
    FlutterKey? key,
    ZacValue<double>? maxWidth,
    ZacValue<double>? maxHeight,
    FlutterWidget? child,
  }) = _FlutterLimitedBox;

  @override
  LimitedBox buildWidget(ZacContext zacContext) {
    return LimitedBox(
      key: key?.buildKey(zacContext),
      maxHeight: maxHeight?.getValue(zacContext) ?? double.infinity,
      maxWidth: maxWidth?.getValue(zacContext) ?? double.infinity,
      child: child?.buildWidget(zacContext),
    );
  }
}
