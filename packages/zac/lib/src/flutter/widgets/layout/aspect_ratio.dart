import 'package:zac/src/zac/any_value.dart';

import 'package:zac/src/zac/update_context.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'aspect_ratio.freezed.dart';
part 'aspect_ratio.g.dart';

@defaultConverterFreezed
class FlutterAspectRatio with _$FlutterAspectRatio implements ZacWidget {
  const FlutterAspectRatio._();

  static const String unionValue = 'f:1:AspectRatio';

  factory FlutterAspectRatio.fromJson(Map<String, dynamic> json) =>
      _$FlutterAspectRatioFromJson(json);

  @FreezedUnionValue(FlutterAspectRatio.unionValue)
  factory FlutterAspectRatio({
    FlutterKey? key,
    required ZacDouble aspectRatio,
    ZacWidget? child,
  }) = _FlutterAspectRatio;

  @override
  AspectRatio buildWidget(ZacBuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio.getValue(context),
      key: key?.buildKey(context),
      child: child?.buildWidget(context),
    );
  }
}
