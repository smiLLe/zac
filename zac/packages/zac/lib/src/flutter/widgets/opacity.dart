import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_build.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'opacity.freezed.dart';
part 'opacity.g.dart';

@freezedZacBuilder
class FlutterOpacity with _$FlutterOpacity implements ZacBuild<Opacity> {
  const FlutterOpacity._();

  static const String unionValue = 'f:1:Opacity';

  factory FlutterOpacity.fromJson(Map<String, dynamic> json) =>
      _$FlutterOpacityFromJson(json);

  @FreezedUnionValue(FlutterOpacity.unionValue)
  factory FlutterOpacity({
    ZacValue<Key?>? key,
    required ZacValue<double> opacity,
    ZacValue<bool?>? alwaysIncludeSemantics,
    ZacValue<Widget?>? child,
  }) = _FlutterOpacity;

  Opacity _buildWidget(ZacContext zacContext) {
    return Opacity(
      key: key?.getValue(zacContext),
      opacity: opacity.getValue(zacContext),
      alwaysIncludeSemantics:
          alwaysIncludeSemantics?.getValue(zacContext) ?? false,
      child: child?.getValue(zacContext),
    );
  }

  @override
  Opacity build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
