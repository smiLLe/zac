import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'opacity.freezed.dart';
part 'opacity.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterOpacity with _$FlutterOpacity implements FlutterWidget {
  const FlutterOpacity._();

  static const String unionValue = 'f:1:Opacity';

  factory FlutterOpacity.fromJson(Map<String, dynamic> json) =>
      _$FlutterOpacityFromJson(json);

  @FreezedUnionValue(FlutterOpacity.unionValue)
  factory FlutterOpacity({
    FlutterKey? key,
    required ZacValue<double> opacity,
    ZacValue<bool?>? alwaysIncludeSemantics,
    FlutterWidget? child,
  }) = _FlutterOpacity;

  Opacity _buildWidget(ZacContext zacContext) {
    return Opacity(
      key: key?.build(zacContext),
      opacity: opacity.build(zacContext),
      alwaysIncludeSemantics:
          alwaysIncludeSemantics?.build(zacContext) ?? false,
      child: child?.build(zacContext),
    );
  }

  @override
  Opacity build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }

  @override
  Opacity? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }
}
