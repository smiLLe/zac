import 'package:zac/src/zac/any_value/any_value.dart';

import 'package:zac/src/zac/context/widget_context.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/mixed/keys/keys.dart';
import 'package:zac/src/flutter/rendering/rendering.dart';

part 'flexible.freezed.dart';
part 'flexible.g.dart';

@defaultConverterFreezed
class FlutterFlexible with _$FlutterFlexible implements ZacWidget {
  const FlutterFlexible._();

  static const String unionValue = 'f:1:Flexible';

  factory FlutterFlexible.fromJson(Map<String, dynamic> json) =>
      _$FlutterFlexibleFromJson(json);

  @FreezedUnionValue(FlutterFlexible.unionValue)
  factory FlutterFlexible({
    FlutterKey? key,
    ZacInt? flex,
    FlutterFlexFit? fit,
    required ZacWidget child,
  }) = _FlutterFlexible;

  @override
  Flexible buildWidget(ZacBuildContext context) {
    return Flexible(
      key: key?.build(context),
      child: child.buildWidget(context),
      flex: flex?.getValue(context) ?? 1,
      fit: fit?.build(context) ?? FlexFit.loose,
    );
  }
}
