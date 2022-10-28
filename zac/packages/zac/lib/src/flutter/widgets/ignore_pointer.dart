import 'package:zac/src/zac/context.dart';
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
    ZacValue<bool>? ignoring,
    ZacValue<bool>? ignoringSemantics,
    FlutterWidget? child,
  }) = _FlutterIgnorePointer;

  @override
  IgnorePointer buildWidget(ZacContext zacContext) {
    return IgnorePointer(
      key: key?.buildKey(zacContext),
      ignoring: ignoring?.getValue(zacContext) ?? true,
      ignoringSemantics: ignoringSemantics?.getValue(zacContext),
      child: child?.buildWidget(zacContext),
    );
  }
}