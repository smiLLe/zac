import 'package:zac/src/zac/origin.dart';
import 'package:zac/src/zac/zac_values.dart';
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
    implements FlutterWidget {
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
  ProgressIndicator buildWidget(ZacOriginWidgetTree origin) {
    return map(
      linear: (value) => LinearProgressIndicator(
        key: value.key?.buildKey(origin),
        value: value.value?.getValue(origin),
        backgroundColor: value.backgroundColor?.build(origin),
        color: value.color?.build(origin),
        minHeight: value.minHeight?.getValue(origin),
        semanticsLabel: value.semanticsLabel?.getValue(origin),
        semanticsValue: value.semanticsValue?.getValue(origin),
      ),
      circular: (value) => CircularProgressIndicator(
        key: value.key?.buildKey(origin),
        value: value.value?.getValue(origin),
        backgroundColor: value.backgroundColor?.build(origin),
        color: value.color?.build(origin),
        strokeWidth: value.strokeWidth?.getValue(origin) ?? 4.0,
        semanticsLabel: value.semanticsLabel?.getValue(origin),
        semanticsValue: value.semanticsValue?.getValue(origin),
      ),
    );
  }
}
