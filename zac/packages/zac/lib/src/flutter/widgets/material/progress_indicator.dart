import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';

part 'progress_indicator.freezed.dart';
part 'progress_indicator.g.dart';

@freezedZacBuilder
class FlutterProgressIndicator
    with _$FlutterProgressIndicator
    implements ZacBuilder<ProgressIndicator> {
  const FlutterProgressIndicator._();

  static const String unionValueLinearProgressIndicator =
      'f:1:LinearProgressIndicator';
  static const String unionValueCircularProgressIndicator =
      'f:1:CircularProgressIndicator';

  factory FlutterProgressIndicator.fromJson(Map<String, dynamic> json) =>
      _$FlutterProgressIndicatorFromJson(json);

  @FreezedUnionValue(FlutterProgressIndicator.unionValueLinearProgressIndicator)
  factory FlutterProgressIndicator.linear({
    ZacBuilder<Key?>? key,
    ZacBuilder<double?>? value,
    ZacBuilder<Color?>? backgroundColor,
    ZacBuilder<Color?>? color,
// Animation<Color?>? valueColor,
    ZacBuilder<double?>? minHeight,
    ZacBuilder<String?>? semanticsLabel,
    ZacBuilder<String?>? semanticsValue,
  }) = _FlutterProgressIndicatorLinear;

  @FreezedUnionValue(
      FlutterProgressIndicator.unionValueCircularProgressIndicator)
  factory FlutterProgressIndicator.circular({
    ZacBuilder<Key?>? key,
    ZacBuilder<double?>? value,
    ZacBuilder<Color?>? backgroundColor,
    ZacBuilder<Color?>? color,
    // Animation<Color?>? valueColor,
    ZacBuilder<double?>? strokeWidth,
    ZacBuilder<String?>? semanticsLabel,
    ZacBuilder<String?>? semanticsValue,
  }) = _FlutterProgressIndicatorCircular;

  ProgressIndicator _buildWidget(BuildContext context, ZacContext zacContext) {
    return map(
      linear: (value) => LinearProgressIndicator(
        key: value.key?.build(context, zacContext),
        value: value.value?.build(context, zacContext),
        backgroundColor: value.backgroundColor?.build(context, zacContext),
        color: value.color?.build(context, zacContext),
        minHeight: value.minHeight?.build(context, zacContext),
        semanticsLabel: value.semanticsLabel?.build(context, zacContext),
        semanticsValue: value.semanticsValue?.build(context, zacContext),
      ),
      circular: (value) => CircularProgressIndicator(
        key: value.key?.build(context, zacContext),
        value: value.value?.build(context, zacContext),
        backgroundColor: value.backgroundColor?.build(context, zacContext),
        color: value.color?.build(context, zacContext),
        strokeWidth: value.strokeWidth?.build(context, zacContext) ?? 4.0,
        semanticsLabel: value.semanticsLabel?.build(context, zacContext),
        semanticsValue: value.semanticsValue?.build(context, zacContext),
      ),
    );
  }

  @override
  ProgressIndicator build(BuildContext context, ZacContext zacContext) {
    return _buildWidget(context, zacContext);
  }
}
