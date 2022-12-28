import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_build.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';

part 'input_decoration.freezed.dart';
part 'input_decoration.g.dart';

@freezedZacBuilder
class FlutterInputDecoration
    with _$FlutterInputDecoration, ZacBuild<InputDecoration> {
  const FlutterInputDecoration._();

  factory FlutterInputDecoration.fromJson(Map<String, dynamic> json) =>
      _$FlutterInputDecorationFromJson(json);

  @FreezedUnionValue('f:1:InputDecoration')
  factory FlutterInputDecoration({
    ZacValue<Widget?>? icon,
    ZacValue<Color?>? iconColor,
    ZacValue<Widget?>? label,
    ZacValue<String?>? labelText,
    ZacValue<TextStyle?>? labelStyle,
    ZacValue<TextStyle?>? floatingLabelStyle,
    ZacValue<String?>? helperText,
    ZacValue<TextStyle?>? helperStyle,
    ZacValue<int?>? helperMaxLines,
    ZacValue<String?>? hintText,
    ZacValue<TextStyle?>? hintStyle,
    ZacValue<TextDirection?>? hintTextDirection,
    ZacValue<int?>? hintMaxLines,
    ZacValue<String?>? errorText,
    ZacValue<TextStyle?>? errorStyle,
    ZacValue<int?>? errorMaxLines,
    // FloatingLabelBehavior? floatingLabelBehavior,
    // FloatingLabelAlignment? floatingLabelAlignment,
    ZacValue<bool?>? isCollapsed,
    ZacValue<bool?>? isDense,
    ZacValue<EdgeInsetsGeometry?>? contentPadding,
    ZacValue<Widget?>? prefixIcon,
    ZacValue<BoxConstraints?>? prefixIconConstraints,
    ZacValue<Widget?>? prefix,
    ZacValue<String?>? prefixText,
    ZacValue<TextStyle?>? prefixStyle,
    ZacValue<Color?>? prefixIconColor,
    ZacValue<Widget?>? suffixIcon,
    ZacValue<Widget?>? suffix,
    ZacValue<String?>? suffixText,
    ZacValue<TextStyle?>? suffixStyle,
    ZacValue<Color?>? suffixIconColor,
    ZacValue<BoxConstraints?>? suffixIconConstraints,
    ZacValue<Widget?>? counter,
    ZacValue<String?>? counterText,
    ZacValue<TextStyle?>? counterStyle,
    ZacValue<bool?>? filled,
    ZacValue<Color?>? fillColor,
    ZacValue<Color?>? focusColor,
    ZacValue<Color?>? hoverColor,
    ZacValue<InputBorder?>? errorBorder,
    ZacValue<InputBorder?>? focusedBorder,
    ZacValue<InputBorder?>? focusedErrorBorder,
    ZacValue<InputBorder?>? disabledBorder,
    ZacValue<InputBorder?>? enabledBorder,
    ZacValue<InputBorder?>? border,
    ZacValue<bool?>? enabled,
    ZacValue<String?>? semanticCounterText,
    ZacValue<bool?>? alignLabelWithHint,
    ZacValue<BoxConstraints?>? constraints,
  }) = _FlutterInputDecoration;

  InputDecoration _build(ZacContext zacContext) {
    return InputDecoration(
      icon: icon?.getValue(zacContext),
      iconColor: iconColor?.getValue(zacContext),
      label: label?.getValue(zacContext),
      labelText: labelText?.getValue(zacContext),
      labelStyle: labelStyle?.getValue(zacContext),
      floatingLabelStyle: floatingLabelStyle?.getValue(zacContext),
      helperText: helperText?.getValue(zacContext),
      helperStyle: helperStyle?.getValue(zacContext),
      helperMaxLines: helperMaxLines?.getValue(zacContext),
      hintText: hintText?.getValue(zacContext),
      hintStyle: hintStyle?.getValue(zacContext),
      hintTextDirection: hintTextDirection?.getValue(zacContext),
      hintMaxLines: hintMaxLines?.getValue(zacContext),
      errorText: errorText?.getValue(zacContext),
      errorStyle: errorStyle?.getValue(zacContext),
      errorMaxLines: errorMaxLines?.getValue(zacContext),
      isCollapsed: isCollapsed?.getValue(zacContext) ?? false,
      isDense: isDense?.getValue(zacContext),
      contentPadding: contentPadding?.getValue(zacContext),
      prefixIcon: prefixIcon?.getValue(zacContext),
      prefixIconConstraints: prefixIconConstraints?.getValue(zacContext),
      prefix: prefix?.getValue(zacContext),
      prefixText: prefixText?.getValue(zacContext),
      prefixStyle: prefixStyle?.getValue(zacContext),
      prefixIconColor: prefixIconColor?.getValue(zacContext),
      suffix: suffix?.getValue(zacContext),
      suffixIcon: suffixIcon?.getValue(zacContext),
      suffixIconColor: suffixIconColor?.getValue(zacContext),
      suffixText: suffixText?.getValue(zacContext),
      suffixStyle: suffixStyle?.getValue(zacContext),
      suffixIconConstraints: suffixIconConstraints?.getValue(zacContext),
      counter: counter?.getValue(zacContext),
      counterText: counterText?.getValue(zacContext),
      counterStyle: counterStyle?.getValue(zacContext),
      filled: filled?.getValue(zacContext),
      fillColor: fillColor?.getValue(zacContext),
      focusColor: focusColor?.getValue(zacContext),
      hoverColor: hoverColor?.getValue(zacContext),
      errorBorder: errorBorder?.getValue(zacContext),
      focusedBorder: focusedBorder?.getValue(zacContext),
      focusedErrorBorder: focusedErrorBorder?.getValue(zacContext),
      disabledBorder: disabledBorder?.getValue(zacContext),
      enabledBorder: enabledBorder?.getValue(zacContext),
      border: border?.getValue(zacContext),
      enabled: enabled?.getValue(zacContext) ?? true,
      semanticCounterText: semanticCounterText?.getValue(zacContext),
      alignLabelWithHint: alignLabelWithHint?.getValue(zacContext),
      constraints: constraints?.getValue(zacContext),
    );
  }

  @override
  InputDecoration build(ZacContext zacContext) {
    return _build(zacContext);
  }
}
