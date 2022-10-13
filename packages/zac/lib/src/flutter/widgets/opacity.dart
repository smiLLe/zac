import 'package:zac/src/zac/origin.dart';
import 'package:zac/src/zac/zac_values.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'opacity.freezed.dart';
part 'opacity.g.dart';

@defaultConverterFreezed
class FlutterOpacity with _$FlutterOpacity implements FlutterWidget {
  const FlutterOpacity._();

  static const String unionValue = 'f:1:Opacity';

  factory FlutterOpacity.fromJson(Map<String, dynamic> json) =>
      _$FlutterOpacityFromJson(json);

  @FreezedUnionValue(FlutterOpacity.unionValue)
  factory FlutterOpacity({
    FlutterKey? key,
    required ZacDouble opacity,
    ZacBool? alwaysIncludeSemantics,
    FlutterWidget? child,
  }) = _FlutterOpacity;

  @override
  Opacity buildWidget(ZacOriginWidgetTree origin) {
    return Opacity(
      key: key?.buildKey(origin),
      opacity: opacity.getValue(origin),
      alwaysIncludeSemantics: alwaysIncludeSemantics?.getValue(origin) ?? false,
      child: child?.buildWidget(origin),
    );
  }
}
