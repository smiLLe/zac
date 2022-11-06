import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'expanded.freezed.dart';
part 'expanded.g.dart';

@defaultConverterFreezed
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterExpanded with _$FlutterExpanded implements FlutterWidget {
  const FlutterExpanded._();

  static const String unionValue = 'f:1:Expanded';

  factory FlutterExpanded.fromJson(Map<String, dynamic> json) =>
      _$FlutterExpandedFromJson(json);

  @FreezedUnionValue(FlutterExpanded.unionValue)
  factory FlutterExpanded({
    FlutterKey? key,
    ZacValue<int>? flex,
    required FlutterWidget child,
  }) = _FlutterExpanded;

  @override
  Expanded buildWidget(ZacContext zacContext) {
    return Expanded(
      key: key?.buildKey(zacContext),
      flex: flex?.getValue(zacContext) ?? 1,
      child: child.buildWidget(zacContext),
    );
  }
}
