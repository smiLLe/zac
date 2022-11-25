import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'aspect_ratio.freezed.dart';
part 'aspect_ratio.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterAspectRatio with _$FlutterAspectRatio implements FlutterWidget {
  const FlutterAspectRatio._();

  static const String unionValue = 'f:1:AspectRatio';

  factory FlutterAspectRatio.fromJson(Map<String, dynamic> json) =>
      _$FlutterAspectRatioFromJson(json);

  @FreezedUnionValue(FlutterAspectRatio.unionValue)
  factory FlutterAspectRatio({
    FlutterKey? key,
    required ZacDouble aspectRatio,
    FlutterWidget? child,
  }) = _FlutterAspectRatio;

  AspectRatio _buildWidget(ZacContext zacContext) {
    return AspectRatio(
      aspectRatio: aspectRatio.build(zacContext),
      key: key?.buildOrNull(zacContext),
      child: child?.buildOrNull(zacContext),
    );
  }

  @override
  AspectRatio build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }

  @override
  AspectRatio? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }
}
