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
    ZacString? labelText,
    FlutterTextStyle? labelStyle,
    FlutterTextStyle? floatingLabelStyle,
    ZacString? helperText,
    FlutterTextStyle? helperStyle,
    ZacValue<int>? helperMaxLines,
    ZacString? hintText,
    FlutterTextStyle? hintStyle,
    FlutterTextDirection? hintTextDirection,
    ZacValue<int>? hintMaxLines,
    ZacString? errorText,
    FlutterTextStyle? errorStyle,
    ZacValue<int>? errorMaxLines,
    // FloatingLabelBehavior? floatingLabelBehavior,
    // FloatingLabelAlignment? floatingLabelAlignment,
    ZacBool? isCollapsed,
    ZacBool? isDense,
    FlutterEdgeInsetsGeometry? contentPadding,
    FlutterWidget? prefixIcon,
    FlutterBoxConstraints? prefixIconConstraints,
    FlutterWidget? prefix,
    ZacString? prefixText,
    FlutterTextStyle? prefixStyle,
    FlutterColor? prefixIconColor,
    FlutterWidget? suffixIcon,
    FlutterWidget? suffix,
    ZacString? suffixText,
    FlutterTextStyle? suffixStyle,
    FlutterColor? suffixIconColor,
    FlutterBoxConstraints? suffixIconConstraints,
    FlutterWidget? counter,
    ZacString? counterText,
    FlutterTextStyle? counterStyle,
    ZacBool? filled,
    FlutterColor? fillColor,
    FlutterColor? focusColor,
    FlutterColor? hoverColor,
    FlutterInputBorder? errorBorder,
    FlutterInputBorder? focusedBorder,
    FlutterInputBorder? focusedErrorBorder,
    FlutterInputBorder? disabledBorder,
    FlutterInputBorder? enabledBorder,
    FlutterInputBorder? border,
    ZacBool? enabled,
    ZacString? semanticCounterText,
    ZacBool? alignLabelWithHint,
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
