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
class FlutterAspectRatio
    with _$FlutterAspectRatio
    implements ZacBuilder<AspectRatio> {
  const FlutterAspectRatio._();

  static const String unionValue = 'f:1:AspectRatio';

  factory FlutterAspectRatio.fromJson(Map<String, dynamic> json) =>
      _$FlutterAspectRatioFromJson(json);

  @FreezedUnionValue(FlutterAspectRatio.unionValue)
  factory FlutterAspectRatio({
    FlutterKey? key,
    required ZacValue<double> aspectRatio,
    ZacValue<Widget?>? child,
  }) = _FlutterAspectRatio;

  AspectRatio _buildWidget(ZacContext zacContext) {
    return AspectRatio(
      aspectRatio: aspectRatio.build(zacContext),
      key: key?.build(zacContext),
      child: child?.build(zacContext),
    );
  }

  @override
  AspectRatio build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
