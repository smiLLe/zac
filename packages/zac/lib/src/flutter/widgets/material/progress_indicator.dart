import 'package:zac/src/zac/any_value.dart';

import 'package:zac/src/zac/update_context.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'progress_indicator.freezed.dart';
part 'progress_indicator.g.dart';

@defaultConverterFreezed
class FlutterProgressIndicator
    with _$FlutterProgressIndicator
    implements ZacWidget {
  const FlutterProgressIndicator._();

  static const String unionValueLinearProgressIndicator =
      'f:1:LinearProgressIndicator';
  static const String unionValueCircularProgressIndicator =
      'f:1:CircularProgressIndicator';

  factory FlutterProgressIndicator.fromJson(Map<String, dynamic> json) =>
      _$FlutterProgressIndicatorFromJson(json);

  @FreezedUnionValue(FlutterProgressIndicator.unionValueLinearProgressIndicator)
  factory FlutterProgressIndicator.linear({
    FlutterKey? key,
    ZacDouble? value,
    FlutterColor? backgroundColor,
    FlutterColor? color,
// Animation<Color?>? valueColor,
    ZacDouble? minHeight,
    ZacString? semanticsLabel,
    ZacString? semanticsValue,
  }) = _FlutterProgressIndicatorLinear;

  @FreezedUnionValue(
      FlutterProgressIndicator.unionValueCircularProgressIndicator)
  factory FlutterProgressIndicator.circular({
    FlutterKey? key,
    ZacDouble? value,
    FlutterColor? backgroundColor,
    FlutterColor? color,
    // Animation<Color?>? valueColor,
    ZacDouble? strokeWidth,
    ZacString? semanticsLabel,
    ZacString? semanticsValue,
  }) = _FlutterProgressIndicatorCircular;

  @override
  ProgressIndicator buildWidget(ZacBuildContext context) {
    return map(
      linear: (value) => LinearProgressIndicator(
        key: value.key?.buildKey(context),
        value: value.value?.getValue(context),
        backgroundColor: value.backgroundColor?.build(context),
        color: value.color?.build(context),
        minHeight: value.minHeight?.getValue(context),
        semanticsLabel: value.semanticsLabel?.getValue(context),
        semanticsValue: value.semanticsValue?.getValue(context),
      ),
      circular: (value) => CircularProgressIndicator(
        key: value.key?.buildKey(context),
        value: value.value?.getValue(context),
        backgroundColor: value.backgroundColor?.build(context),
        color: value.color?.build(context),
        strokeWidth: value.strokeWidth?.getValue(context) ?? 4.0,
        semanticsLabel: value.semanticsLabel?.getValue(context),
        semanticsValue: value.semanticsValue?.getValue(context),
      ),
    );
  }
}
