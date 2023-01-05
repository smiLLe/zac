import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';

part 'opacity.freezed.dart';
part 'opacity.g.dart';

@freezedZacBuilder
class FlutterOpacity with _$FlutterOpacity implements ZacBuilder<Opacity> {
  const FlutterOpacity._();

  static const String unionValue = 'f:1:Opacity';

  factory FlutterOpacity.fromJson(Map<String, dynamic> json) =>
      _$FlutterOpacityFromJson(json);

  @FreezedUnionValue(FlutterOpacity.unionValue)
  factory FlutterOpacity({
    ZacBuilder<Key?>? key,
    required ZacBuilder<double> opacity,
    ZacBuilder<bool?>? alwaysIncludeSemantics,
    ZacBuilder<Widget?>? child,
  }) = _FlutterOpacity;

  Opacity _buildWidget(BuildContext context, ZacContext zacContext) {
    return Opacity(
      key: key?.build(context, zacContext),
      opacity: opacity.build(context, zacContext),
      alwaysIncludeSemantics:
          alwaysIncludeSemantics?.build(context, zacContext) ?? false,
      child: child?.build(context, zacContext),
    );
  }

  @override
  Opacity build(BuildContext context, ZacContext zacContext) {
    return _buildWidget(context, zacContext);
  }
}
