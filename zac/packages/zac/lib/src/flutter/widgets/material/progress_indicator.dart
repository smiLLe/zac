import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_build.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';

part 'progress_indicator.freezed.dart';
part 'progress_indicator.g.dart';

@freezedZacBuilder
class FlutterProgressIndicator
    with _$FlutterProgressIndicator
    implements ZacBuild<ProgressIndicator> {
  const FlutterProgressIndicator._();

  static const String unionValueLinearProgressIndicator =
      'f:1:LinearProgressIndicator';
  static const String unionValueCircularProgressIndicator =
      'f:1:CircularProgressIndicator';

  factory FlutterProgressIndicator.fromJson(Map<String, dynamic> json) =>
      _$FlutterProgressIndicatorFromJson(json);

  @FreezedUnionValue(FlutterProgressIndicator.unionValueLinearProgressIndicator)
  factory FlutterProgressIndicator.linear({
    ZacValue<Key?>? key,
    ZacValue<double?>? value,
    ZacValue<Color?>? backgroundColor,
    ZacValue<Color?>? color,
// Animation<Color?>? valueColor,
    ZacValue<double?>? minHeight,
    ZacValue<String?>? semanticsLabel,
    ZacValue<String?>? semanticsValue,
  }) = _FlutterProgressIndicatorLinear;

  @FreezedUnionValue(
      FlutterProgressIndicator.unionValueCircularProgressIndicator)
  factory FlutterProgressIndicator.circular({
    ZacValue<Key?>? key,
    ZacValue<double?>? value,
    ZacValue<Color?>? backgroundColor,
    ZacValue<Color?>? color,
    // Animation<Color?>? valueColor,
    ZacValue<double?>? strokeWidth,
    ZacValue<String?>? semanticsLabel,
    ZacValue<String?>? semanticsValue,
  }) = _FlutterProgressIndicatorCircular;

  ProgressIndicator _buildWidget(ZacContext zacContext) {
    return map(
      linear: (value) => LinearProgressIndicator(
        key: value.key?.getValue(zacContext),
        value: value.value?.getValue(zacContext),
        backgroundColor: value.backgroundColor?.getValue(zacContext),
        color: value.color?.getValue(zacContext),
        minHeight: value.minHeight?.getValue(zacContext),
        semanticsLabel: value.semanticsLabel?.getValue(zacContext),
        semanticsValue: value.semanticsValue?.getValue(zacContext),
      ),
      circular: (value) => CircularProgressIndicator(
        key: value.key?.getValue(zacContext),
        value: value.value?.getValue(zacContext),
        backgroundColor: value.backgroundColor?.getValue(zacContext),
        color: value.color?.getValue(zacContext),
        strokeWidth: value.strokeWidth?.getValue(zacContext) ?? 4.0,
        semanticsLabel: value.semanticsLabel?.getValue(zacContext),
        semanticsValue: value.semanticsValue?.getValue(zacContext),
      ),
    );
  }

  @override
  ProgressIndicator build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
