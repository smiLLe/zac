import 'package:zac/src/zac/origin.dart';
import 'package:zac/src/zac/zac_values.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/rendering.dart';

part 'flexible.freezed.dart';
part 'flexible.g.dart';

@defaultConverterFreezed
class FlutterFlexible with _$FlutterFlexible implements FlutterWidget {
  const FlutterFlexible._();

  static const String unionValue = 'f:1:Flexible';

  factory FlutterFlexible.fromJson(Map<String, dynamic> json) =>
      _$FlutterFlexibleFromJson(json);

  @FreezedUnionValue(FlutterFlexible.unionValue)
  factory FlutterFlexible({
    FlutterKey? key,
    ZacInt? flex,
    FlutterFlexFit? fit,
    required FlutterWidget child,
  }) = _FlutterFlexible;

  @override
  Flexible buildWidget(ZacOriginWidgetTree origin) {
    return Flexible(
      key: key?.buildKey(origin),
      child: child.buildWidget(origin),
      flex: flex?.getValue(origin) ?? 1,
      fit: fit?.build(origin) ?? FlexFit.loose,
    );
  }
}
