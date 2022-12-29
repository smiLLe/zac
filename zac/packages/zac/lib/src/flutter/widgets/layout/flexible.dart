import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_build.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';

part 'flexible.freezed.dart';
part 'flexible.g.dart';

@freezedZacBuilder
class FlutterFlexible with _$FlutterFlexible implements ZacBuilder<Flexible> {
  const FlutterFlexible._();

  static const String unionValue = 'f:1:Flexible';

  factory FlutterFlexible.fromJson(Map<String, dynamic> json) =>
      _$FlutterFlexibleFromJson(json);

  @FreezedUnionValue(FlutterFlexible.unionValue)
  factory FlutterFlexible({
    ZacBuilder<Key?>? key,
    ZacBuilder<int?>? flex,
    ZacBuilder<FlexFit?>? fit,
    required ZacBuilder<Widget> child,
  }) = _FlutterFlexible;

  Flexible _buildWidget(ZacContext zacContext) {
    return Flexible(
      key: key?.build(zacContext),
      flex: flex?.build(zacContext) ?? 1,
      fit: fit?.build(zacContext) ?? FlexFit.loose,
      child: child.build(zacContext),
    );
  }

  @override
  Flexible build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
