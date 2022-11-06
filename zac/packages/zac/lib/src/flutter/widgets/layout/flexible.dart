import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/rendering.dart';

part 'flexible.freezed.dart';
part 'flexible.g.dart';

@defaultConverterFreezed
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterFlexible with _$FlutterFlexible implements FlutterWidget {
  const FlutterFlexible._();

  static const String unionValue = 'f:1:Flexible';

  factory FlutterFlexible.fromJson(Map<String, dynamic> json) =>
      _$FlutterFlexibleFromJson(json);

  @FreezedUnionValue(FlutterFlexible.unionValue)
  factory FlutterFlexible({
    FlutterKey? key,
    ZacValue<int>? flex,
    FlutterFlexFit? fit,
    required FlutterWidget child,
  }) = _FlutterFlexible;

  @override
  Flexible buildWidget(ZacContext zacContext) {
    return Flexible(
      key: key?.buildKey(zacContext),
      flex: flex?.getValue(zacContext) ?? 1,
      fit: fit?.build(zacContext) ?? FlexFit.loose,
      child: child.buildWidget(zacContext),
    );
  }
}
