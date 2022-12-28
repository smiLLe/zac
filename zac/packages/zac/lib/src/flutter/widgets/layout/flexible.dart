import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_build.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/rendering.dart';

part 'flexible.freezed.dart';
part 'flexible.g.dart';

@freezedZacBuilder
class FlutterFlexible with _$FlutterFlexible implements ZacBuild<Flexible> {
  const FlutterFlexible._();

  static const String unionValue = 'f:1:Flexible';

  factory FlutterFlexible.fromJson(Map<String, dynamic> json) =>
      _$FlutterFlexibleFromJson(json);

  @FreezedUnionValue(FlutterFlexible.unionValue)
  factory FlutterFlexible({
    ZacValue<Key?>? key,
    ZacValue<int?>? flex,
    ZacValue<FlexFit?>? fit,
    required ZacValue<Widget> child,
  }) = _FlutterFlexible;

  Flexible _buildWidget(ZacContext zacContext) {
    return Flexible(
      key: key?.getValue(zacContext),
      flex: flex?.getValue(zacContext) ?? 1,
      fit: fit?.getValue(zacContext) ?? FlexFit.loose,
      child: child.getValue(zacContext),
    );
  }

  @override
  Flexible build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
