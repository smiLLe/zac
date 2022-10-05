import 'package:zac/src/zac/origin.dart';
import 'package:zac/src/zac/zac_values.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'ignore_pointer.freezed.dart';
part 'ignore_pointer.g.dart';

@defaultConverterFreezed
class FlutterIgnorePointer
    with _$FlutterIgnorePointer
    implements FlutterWidget {
  const FlutterIgnorePointer._();

  static const String unionValue = 'f:1:IgnorePointer';

  factory FlutterIgnorePointer.fromJson(Map<String, dynamic> json) =>
      _$FlutterIgnorePointerFromJson(json);

  @FreezedUnionValue(FlutterIgnorePointer.unionValue)
  factory FlutterIgnorePointer({
    FlutterKey? key,
    ZacBool? ignoring,
    ZacBool? ignoringSemantics,
    FlutterWidget? child,
  }) = _FlutterIgnorePointer;

  @override
  IgnorePointer buildWidget(ZacOriginWidgetTree origin) {
    return IgnorePointer(
      key: key?.buildKey(origin),
      ignoring: ignoring?.getValue(origin) ?? true,
      ignoringSemantics: ignoringSemantics?.getValue(origin),
      child: child?.buildWidget(origin),
    );
  }
}
