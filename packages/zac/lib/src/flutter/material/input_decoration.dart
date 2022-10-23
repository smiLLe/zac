import 'package:zac/src/flutter/material/material.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_values.dart';
import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/flutter/rendering.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/base.dart';

part 'input_decoration.freezed.dart';
part 'input_decoration.g.dart';

@defaultConverterFreezed
class FlutterInputDecoration with _$FlutterInputDecoration {
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

  InputDecoration build(ZacContext zacContext) {
    return InputDecoration(
      icon: icon?.buildWidget(zacContext),
      iconColor: iconColor?.build(zacContext),
      label: label?.buildWidget(zacContext),
      labelStyle: labelStyle?.build(zacContext),
      floatingLabelStyle: floatingLabelStyle?.build(zacContext),
      helperText: helperText?.getValue(zacContext),
      helperStyle: helperStyle?.build(zacContext),
      helperMaxLines: helperMaxLines?.getValue(zacContext),
      hintText: hintText?.getValue(zacContext),
      hintStyle: hintStyle?.build(zacContext),
      hintTextDirection: hintTextDirection?.build(zacContext),
      hintMaxLines: hintMaxLines?.getValue(zacContext),
      errorText: errorText?.getValue(zacContext),
      errorStyle: errorStyle?.build(zacContext),
      errorMaxLines: errorMaxLines?.getValue(zacContext),
      isCollapsed: isCollapsed?.getValue(zacContext) ?? false,
      isDense: isDense?.getValue(zacContext),
      contentPadding: contentPadding?.build(zacContext),
      prefixIcon: prefixIcon?.buildWidget(zacContext),
      prefixIconConstraints: prefixIconConstraints?.build(zacContext),
      prefix: prefix?.buildWidget(zacContext),
      prefixText: prefixText?.getValue(zacContext),
      prefixStyle: prefixStyle?.build(zacContext),
      prefixIconColor: prefixIconColor?.build(zacContext),
      suffixIconConstraints: suffixIconConstraints?.build(zacContext),
      counter: counter?.buildWidget(zacContext),
      counterText: counterText?.getValue(zacContext),
      counterStyle: counterStyle?.build(zacContext),
      filled: filled?.getValue(zacContext),
      fillColor: fillColor?.build(zacContext),
      focusColor: focusColor?.build(zacContext),
      hoverColor: hoverColor?.build(zacContext),
      errorBorder: errorBorder?.build(zacContext),
      focusedBorder: focusedBorder?.build(zacContext),
      focusedErrorBorder: focusedErrorBorder?.build(zacContext),
      disabledBorder: disabledBorder?.build(zacContext),
      enabledBorder: enabledBorder?.build(zacContext),
      border: border?.build(zacContext),
      enabled: enabled?.getValue(zacContext) ?? true,
      semanticCounterText: semanticCounterText?.getValue(zacContext),
      alignLabelWithHint: alignLabelWithHint?.getValue(zacContext),
      constraints: constraints?.build(zacContext),
    );
  }
}
