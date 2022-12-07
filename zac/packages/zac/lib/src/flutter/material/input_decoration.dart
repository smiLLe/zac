import 'package:zac/src/flutter/material/material.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/flutter/rendering.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/base.dart';

part 'input_decoration.freezed.dart';
part 'input_decoration.g.dart';

@freezedZacBuilder
@ZacGenerate()
class FlutterInputDecoration
    with _$FlutterInputDecoration, ZacBuilder<InputDecoration> {
  const FlutterInputDecoration._();

  factory FlutterInputDecoration.fromJson(Map<String, dynamic> json) =>
      _$FlutterInputDecorationFromJson(json);

  @FreezedUnionValue('f:1:InputDecoration')
  factory FlutterInputDecoration({
    FlutterWidget? icon,
    FlutterColor? iconColor,
    FlutterWidget? label,
    ZacValue<String>? labelText,
    FlutterTextStyle? labelStyle,
    FlutterTextStyle? floatingLabelStyle,
    ZacValue<String>? helperText,
    FlutterTextStyle? helperStyle,
    ZacValue<int>? helperMaxLines,
    ZacValue<String>? hintText,
    FlutterTextStyle? hintStyle,
    FlutterTextDirection? hintTextDirection,
    ZacValue<int>? hintMaxLines,
    ZacValue<String>? errorText,
    FlutterTextStyle? errorStyle,
    ZacValue<int>? errorMaxLines,
    // FloatingLabelBehavior? floatingLabelBehavior,
    // FloatingLabelAlignment? floatingLabelAlignment,
    ZacValue<bool>? isCollapsed,
    ZacValue<bool>? isDense,
    FlutterEdgeInsetsGeometry? contentPadding,
    FlutterWidget? prefixIcon,
    FlutterBoxConstraints? prefixIconConstraints,
    FlutterWidget? prefix,
    ZacValue<String>? prefixText,
    FlutterTextStyle? prefixStyle,
    FlutterColor? prefixIconColor,
    FlutterWidget? suffixIcon,
    FlutterWidget? suffix,
    ZacValue<String>? suffixText,
    FlutterTextStyle? suffixStyle,
    FlutterColor? suffixIconColor,
    FlutterBoxConstraints? suffixIconConstraints,
    FlutterWidget? counter,
    ZacValue<String>? counterText,
    FlutterTextStyle? counterStyle,
    ZacValue<bool>? filled,
    FlutterColor? fillColor,
    FlutterColor? focusColor,
    FlutterColor? hoverColor,
    FlutterInputBorder? errorBorder,
    FlutterInputBorder? focusedBorder,
    FlutterInputBorder? focusedErrorBorder,
    FlutterInputBorder? disabledBorder,
    FlutterInputBorder? enabledBorder,
    FlutterInputBorder? border,
    ZacValue<bool>? enabled,
    ZacValue<String>? semanticCounterText,
    ZacValue<bool>? alignLabelWithHint,
    FlutterBoxConstraints? constraints,
  }) = _FlutterInputDecoration;

  InputDecoration _build(ZacContext zacContext) {
    return InputDecoration(
      icon: icon?.buildOrNull(zacContext),
      iconColor: iconColor?.buildOrNull(zacContext),
      label: label?.buildOrNull(zacContext),
      labelText: labelText?.buildOrNull(zacContext),
      labelStyle: labelStyle?.buildOrNull(zacContext),
      floatingLabelStyle: floatingLabelStyle?.buildOrNull(zacContext),
      helperText: helperText?.buildOrNull(zacContext),
      helperStyle: helperStyle?.buildOrNull(zacContext),
      helperMaxLines: helperMaxLines?.buildOrNull(zacContext),
      hintText: hintText?.buildOrNull(zacContext),
      hintStyle: hintStyle?.buildOrNull(zacContext),
      hintTextDirection: hintTextDirection?.buildOrNull(zacContext),
      hintMaxLines: hintMaxLines?.buildOrNull(zacContext),
      errorText: errorText?.buildOrNull(zacContext),
      errorStyle: errorStyle?.buildOrNull(zacContext),
      errorMaxLines: errorMaxLines?.buildOrNull(zacContext),
      isCollapsed: isCollapsed?.buildOrNull(zacContext) ?? false,
      isDense: isDense?.buildOrNull(zacContext),
      contentPadding: contentPadding?.buildOrNull(zacContext),
      prefixIcon: prefixIcon?.buildOrNull(zacContext),
      prefixIconConstraints: prefixIconConstraints?.buildOrNull(zacContext),
      prefix: prefix?.buildOrNull(zacContext),
      prefixText: prefixText?.buildOrNull(zacContext),
      prefixStyle: prefixStyle?.buildOrNull(zacContext),
      prefixIconColor: prefixIconColor?.buildOrNull(zacContext),
      suffix: suffix?.buildOrNull(zacContext),
      suffixIcon: suffixIcon?.buildOrNull(zacContext),
      suffixIconColor: suffixIconColor?.buildOrNull(zacContext),
      suffixText: suffixText?.buildOrNull(zacContext),
      suffixStyle: suffixStyle?.buildOrNull(zacContext),
      suffixIconConstraints: suffixIconConstraints?.buildOrNull(zacContext),
      counter: counter?.buildOrNull(zacContext),
      counterText: counterText?.buildOrNull(zacContext),
      counterStyle: counterStyle?.buildOrNull(zacContext),
      filled: filled?.buildOrNull(zacContext),
      fillColor: fillColor?.buildOrNull(zacContext),
      focusColor: focusColor?.buildOrNull(zacContext),
      hoverColor: hoverColor?.buildOrNull(zacContext),
      errorBorder: errorBorder?.buildOrNull(zacContext),
      focusedBorder: focusedBorder?.buildOrNull(zacContext),
      focusedErrorBorder: focusedErrorBorder?.buildOrNull(zacContext),
      disabledBorder: disabledBorder?.buildOrNull(zacContext),
      enabledBorder: enabledBorder?.buildOrNull(zacContext),
      border: border?.buildOrNull(zacContext),
      enabled: enabled?.buildOrNull(zacContext) ?? true,
      semanticCounterText: semanticCounterText?.buildOrNull(zacContext),
      alignLabelWithHint: alignLabelWithHint?.buildOrNull(zacContext),
      constraints: constraints?.buildOrNull(zacContext),
    );
  }

  @override
  InputDecoration build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _build(zacContext);
  }

  @override
  InputDecoration? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _build(zacContext);
  }
}
