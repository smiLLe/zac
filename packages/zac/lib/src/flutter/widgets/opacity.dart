import 'package:zac/src/zac/any_value.dart';

import 'package:zac/src/zac/update_context.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'opacity.freezed.dart';
part 'opacity.g.dart';

@defaultConverterFreezed
class FlutterOpacity with _$FlutterOpacity implements ZacWidget {
  const FlutterOpacity._();

  static const String unionValue = 'f:1:Opacity';

  factory FlutterOpacity.fromJson(Map<String, dynamic> json) =>
      _$FlutterOpacityFromJson(json);

  @FreezedUnionValue(FlutterOpacity.unionValue)
  factory FlutterOpacity({
    FlutterKey? key,
    required ZacDouble opacity,
    ZacBool? alwaysIncludeSemantics,
    ZacWidget? child,
  }) = _FlutterOpacity;

  @override
  Opacity buildWidget(ZacBuildContext context) {
    return Opacity(
      key: key?.buildKey(context),
      opacity: opacity.getValue(context),
      alwaysIncludeSemantics:
          alwaysIncludeSemantics?.getValue(context) ?? false,
      child: child?.buildWidget(context),
    );
  }
}
