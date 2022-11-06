import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'progress_indicator.freezed.dart';
part 'progress_indicator.g.dart';

@defaultConverterFreezed
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
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
    ZacValue<double>? value,
    FlutterColor? backgroundColor,
    FlutterColor? color,
// Animation<Color?>? valueColor,
    ZacValue<double>? minHeight,
    ZacValue<String>? semanticsLabel,
    ZacValue<String>? semanticsValue,
  }) = _FlutterProgressIndicatorLinear;

  @FreezedUnionValue(
      FlutterProgressIndicator.unionValueCircularProgressIndicator)
  factory FlutterProgressIndicator.circular({
    FlutterKey? key,
    ZacValue<double>? value,
    FlutterColor? backgroundColor,
    FlutterColor? color,
    // Animation<Color?>? valueColor,
    ZacValue<double>? strokeWidth,
    ZacValue<String>? semanticsLabel,
    ZacValue<String>? semanticsValue,
  }) = _FlutterProgressIndicatorCircular;

  @override
  ProgressIndicator buildWidget(ZacContext zacContext) {
    return map(
      linear: (value) => LinearProgressIndicator(
        key: value.key?.buildKey(zacContext),
        value: value.value?.getValue(zacContext),
        backgroundColor: value.backgroundColor?.build(zacContext),
        color: value.color?.build(zacContext),
        minHeight: value.minHeight?.getValue(zacContext),
        semanticsLabel: value.semanticsLabel?.getValue(zacContext),
        semanticsValue: value.semanticsValue?.getValue(zacContext),
      ),
      circular: (value) => CircularProgressIndicator(
        key: value.key?.buildKey(zacContext),
        value: value.value?.getValue(zacContext),
        backgroundColor: value.backgroundColor?.build(zacContext),
        color: value.color?.build(zacContext),
        strokeWidth: value.strokeWidth?.getValue(zacContext) ?? 4.0,
        semanticsLabel: value.semanticsLabel?.getValue(zacContext),
        semanticsValue: value.semanticsValue?.getValue(zacContext),
      ),
    );
  }
}
