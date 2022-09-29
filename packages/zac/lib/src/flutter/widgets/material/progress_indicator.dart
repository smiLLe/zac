import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/any_value.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zac/src/zac/misc.dart';
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
  ProgressIndicator buildWidget(
      BuildContext context, WidgetRef ref, ZacActionHelper helper) {
    final zacRef = ZacRef.widget(ref);
    return map(
      linear: (value) => LinearProgressIndicator(
        key: value.key?.buildKey(context, ref, helper),
        value: value.value?.getValue(zacRef),
        backgroundColor: value.backgroundColor?.build(context, ref, helper),
        color: value.color?.build(context, ref, helper),
        minHeight: value.minHeight?.getValue(zacRef),
        semanticsLabel: value.semanticsLabel?.getValue(zacRef),
        semanticsValue: value.semanticsValue?.getValue(zacRef),
      ),
      circular: (value) => CircularProgressIndicator(
        key: value.key?.buildKey(context, ref, helper),
        value: value.value?.getValue(zacRef),
        backgroundColor: value.backgroundColor?.build(context, ref, helper),
        color: value.color?.build(context, ref, helper),
        strokeWidth: value.strokeWidth?.getValue(zacRef) ?? 4.0,
        semanticsLabel: value.semanticsLabel?.getValue(zacRef),
        semanticsValue: value.semanticsValue?.getValue(zacRef),
      ),
    );
  }
}
