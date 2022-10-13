import 'package:zac/src/flutter/material/material.dart';
import 'package:zac/src/zac/origin.dart';
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
    ZacInt? helperMaxLines,
    ZacString? hintText,
    FlutterTextStyle? hintStyle,
    FlutterTextDirection? hintTextDirection,
    ZacInt? hintMaxLines,
    ZacString? errorText,
    FlutterTextStyle? errorStyle,
    ZacInt? errorMaxLines,
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

  InputDecoration build(ZacOriginWidgetTree origin) {
    return InputDecoration(
      icon: icon?.buildWidget(origin),
      iconColor: iconColor?.build(origin),
      label: label?.buildWidget(origin),
      labelStyle: labelStyle?.build(origin),
      floatingLabelStyle: floatingLabelStyle?.build(origin),
      helperText: helperText?.getValue(origin),
      helperStyle: helperStyle?.build(origin),
      helperMaxLines: helperMaxLines?.getValue(origin),
      hintText: hintText?.getValue(origin),
      hintStyle: hintStyle?.build(origin),
      hintTextDirection: hintTextDirection?.build(origin),
      hintMaxLines: hintMaxLines?.getValue(origin),
      errorText: errorText?.getValue(origin),
      errorStyle: errorStyle?.build(origin),
      errorMaxLines: errorMaxLines?.getValue(origin),
      isCollapsed: isCollapsed?.getValue(origin) ?? false,
      isDense: isDense?.getValue(origin),
      contentPadding: contentPadding?.build(origin),
      prefixIcon: prefixIcon?.buildWidget(origin),
      prefixIconConstraints: prefixIconConstraints?.build(origin),
      prefix: prefix?.buildWidget(origin),
      prefixText: prefixText?.getValue(origin),
      prefixStyle: prefixStyle?.build(origin),
      prefixIconColor: prefixIconColor?.build(origin),
      suffixIconConstraints: suffixIconConstraints?.build(origin),
      counter: counter?.buildWidget(origin),
      counterText: counterText?.getValue(origin),
      counterStyle: counterStyle?.build(origin),
      filled: filled?.getValue(origin),
      fillColor: fillColor?.build(origin),
      focusColor: focusColor?.build(origin),
      hoverColor: hoverColor?.build(origin),
      errorBorder: errorBorder?.build(origin),
      focusedBorder: focusedBorder?.build(origin),
      focusedErrorBorder: focusedErrorBorder?.build(origin),
      disabledBorder: disabledBorder?.build(origin),
      enabledBorder: enabledBorder?.build(origin),
      border: border?.build(origin),
      enabled: enabled?.getValue(origin) ?? true,
      semanticCounterText: semanticCounterText?.getValue(origin),
      alignLabelWithHint: alignLabelWithHint?.getValue(origin),
      constraints: constraints?.build(origin),
    );
  }
}
