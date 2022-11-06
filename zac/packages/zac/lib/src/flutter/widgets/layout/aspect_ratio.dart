import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'aspect_ratio.freezed.dart';
part 'aspect_ratio.g.dart';

@defaultConverterFreezed
@TsClass(order: tsOrderFlutterWidget)
class FlutterAspectRatio with _$FlutterAspectRatio implements FlutterWidget {
  const FlutterAspectRatio._();

  static const String unionValue = 'f:1:AspectRatio';

  factory FlutterAspectRatio.fromJson(Map<String, dynamic> json) =>
      _$FlutterAspectRatioFromJson(json);

  @FreezedUnionValue(FlutterAspectRatio.unionValue)
  factory FlutterAspectRatio({
    FlutterKey? key,
    required ZacValue<double> aspectRatio,
    FlutterWidget? child,
  }) = _FlutterAspectRatio;

  @override
  AspectRatio buildWidget(ZacContext zacContext) {
    return AspectRatio(
      aspectRatio: aspectRatio.getValue(zacContext),
      key: key?.buildKey(zacContext),
      child: child?.buildWidget(zacContext),
    );
  }
}
