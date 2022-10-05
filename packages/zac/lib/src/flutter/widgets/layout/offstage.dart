import 'package:zac/src/zac/origin.dart';
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
    ZacBool? offstage,
    FlutterWidget? child,
  }) = _FlutterOffstage;

  @override
  Offstage buildWidget(ZacOriginWidgetTree origin) {
    return Offstage(
      key: key?.buildKey(origin),
      offstage: offstage?.getValue(origin) ?? true,
      child: child?.buildWidget(origin),
    );
  }
}
