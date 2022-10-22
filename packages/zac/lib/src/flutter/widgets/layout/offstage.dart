import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_values.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'offstage.freezed.dart';
part 'offstage.g.dart';

@defaultConverterFreezed
class FlutterOffstage with _$FlutterOffstage implements FlutterWidget {
  const FlutterOffstage._();

  static const String unionValue = 'f:1:Offstage';

  factory FlutterOffstage.fromJson(Map<String, dynamic> json) =>
      _$FlutterOffstageFromJson(json);

  @FreezedUnionValue(FlutterOffstage.unionValue)
  factory FlutterOffstage({
    FlutterKey? key,
    ZacValue<bool>? offstage,
    FlutterWidget? child,
  }) = _FlutterOffstage;

  @override
  Offstage buildWidget(ZacContext zacContext) {
    return Offstage(
      key: key?.buildKey(zacContext),
      offstage: offstage?.getValue(zacContext) ?? true,
      child: child?.buildWidget(zacContext),
    );
  }
}
