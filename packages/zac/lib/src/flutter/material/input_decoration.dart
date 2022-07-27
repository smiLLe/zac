import 'package:zac/src/zac/any_value/any_value.dart';
import 'package:zac/src/zac/context/any_widget_context.dart';
import 'package:zac/src/flutter/mixed/border/border.dart';
import 'package:zac/src/flutter/mixed/insets/edge_insets.dart';
import 'package:zac/src/flutter/painting/painting.dart';
import 'package:zac/src/flutter/rendering/rendering.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/flutter/dart_ui/dart_ui.dart';
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
    ZacWidget? icon,
    FlutterColor? iconColor,
    ZacWidget? label,
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
    ZacWidget? prefixIcon,
    FlutterBoxConstraints? prefixIconConstraints,
    ZacWidget? prefix,
    ZacString? prefixText,
    FlutterTextStyle? prefixStyle,
    FlutterColor? prefixIconColor,
    ZacWidget? suffixIcon,
    ZacWidget? suffix,
    ZacString? suffixText,
    FlutterTextStyle? suffixStyle,
    FlutterColor? suffixIconColor,
    FlutterBoxConstraints? suffixIconConstraints,
    ZacWidget? counter,
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

  InputDecoration build(ZacBuildContext context) {
    return InputDecoration(
      icon: icon?.buildWidget(context),
      iconColor: iconColor?.build(context),
      label: label?.buildWidget(context),
      labelStyle: labelStyle?.build(context),
      floatingLabelStyle: floatingLabelStyle?.build(context),
      helperText: helperText?.getValue(context),
      helperStyle: helperStyle?.build(context),
      helperMaxLines: helperMaxLines?.getValue(context),
      hintText: hintText?.getValue(context),
      hintStyle: hintStyle?.build(context),
      hintTextDirection: hintTextDirection?.build(context),
      hintMaxLines: hintMaxLines?.getValue(context),
      errorText: errorText?.getValue(context),
      errorStyle: errorStyle?.build(context),
      errorMaxLines: errorMaxLines?.getValue(context),
      isCollapsed: isCollapsed?.getValue(context) ?? false,
      isDense: isDense?.getValue(context),
      contentPadding: contentPadding?.build(context),
      prefixIcon: prefixIcon?.buildWidget(context),
      prefixIconConstraints: prefixIconConstraints?.build(context),
      prefix: prefix?.buildWidget(context),
      prefixText: prefixText?.getValue(context),
      prefixStyle: prefixStyle?.build(context),
      prefixIconColor: prefixIconColor?.build(context),
      suffixIconConstraints: suffixIconConstraints?.build(context),
      counter: counter?.buildWidget(context),
      counterText: counterText?.getValue(context),
      counterStyle: counterStyle?.build(context),
      filled: filled?.getValue(context),
      fillColor: fillColor?.build(context),
      focusColor: focusColor?.build(context),
      hoverColor: hoverColor?.build(context),
      errorBorder: errorBorder?.build(context),
      focusedBorder: focusedBorder?.build(context),
      focusedErrorBorder: focusedErrorBorder?.build(context),
      disabledBorder: disabledBorder?.build(context),
      enabledBorder: enabledBorder?.build(context),
      border: border?.build(context),
      enabled: enabled?.getValue(context) ?? true,
      semanticCounterText: semanticCounterText?.getValue(context),
      alignLabelWithHint: alignLabelWithHint?.getValue(context),
      constraints: constraints?.build(context),
    );
  }
}
