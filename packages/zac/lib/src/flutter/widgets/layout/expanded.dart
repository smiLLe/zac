import 'package:zac/src/zac/origin.dart';
import 'package:zac/src/zac/zac_values.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'expanded.freezed.dart';
part 'expanded.g.dart';

@defaultConverterFreezed
class FlutterExpanded with _$FlutterExpanded implements FlutterWidget {
  const FlutterExpanded._();

  static const String unionValue = 'f:1:Expanded';

  factory FlutterExpanded.fromJson(Map<String, dynamic> json) =>
      _$FlutterExpandedFromJson(json);

  @FreezedUnionValue(FlutterExpanded.unionValue)
  factory FlutterExpanded({
    FlutterKey? key,
    ZacInt? flex,
    required FlutterWidget child,
  }) = _FlutterExpanded;

  @override
  Expanded buildWidget(ZacOriginWidgetTree origin) {
    return Expanded(
      key: key?.buildKey(origin),
      child: child.buildWidget(origin),
      flex: flex?.getValue(origin) ?? 1,
    );
  }
}
