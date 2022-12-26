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
      icon: icon?.build(zacContext),
      iconColor: iconColor?.build(zacContext),
      label: label?.build(zacContext),
      labelText: labelText?.build(zacContext),
      labelStyle: labelStyle?.build(zacContext),
      floatingLabelStyle: floatingLabelStyle?.build(zacContext),
      helperText: helperText?.build(zacContext),
      helperStyle: helperStyle?.build(zacContext),
      helperMaxLines: helperMaxLines?.build(zacContext),
      hintText: hintText?.build(zacContext),
      hintStyle: hintStyle?.build(zacContext),
      hintTextDirection: hintTextDirection?.build(zacContext),
      hintMaxLines: hintMaxLines?.build(zacContext),
      errorText: errorText?.build(zacContext),
      errorStyle: errorStyle?.build(zacContext),
      errorMaxLines: errorMaxLines?.build(zacContext),
      isCollapsed: isCollapsed?.build(zacContext) ?? false,
      isDense: isDense?.build(zacContext),
      contentPadding: contentPadding?.build(zacContext),
      prefixIcon: prefixIcon?.build(zacContext),
      prefixIconConstraints: prefixIconConstraints?.build(zacContext),
      prefix: prefix?.build(zacContext),
      prefixText: prefixText?.build(zacContext),
      prefixStyle: prefixStyle?.build(zacContext),
      prefixIconColor: prefixIconColor?.build(zacContext),
      suffix: suffix?.build(zacContext),
      suffixIcon: suffixIcon?.build(zacContext),
      suffixIconColor: suffixIconColor?.build(zacContext),
      suffixText: suffixText?.build(zacContext),
      suffixStyle: suffixStyle?.build(zacContext),
      suffixIconConstraints: suffixIconConstraints?.build(zacContext),
      counter: counter?.build(zacContext),
      counterText: counterText?.build(zacContext),
      counterStyle: counterStyle?.build(zacContext),
      filled: filled?.build(zacContext),
      fillColor: fillColor?.build(zacContext),
      focusColor: focusColor?.build(zacContext),
      hoverColor: hoverColor?.build(zacContext),
      errorBorder: errorBorder?.build(zacContext),
      focusedBorder: focusedBorder?.build(zacContext),
      focusedErrorBorder: focusedErrorBorder?.build(zacContext),
      disabledBorder: disabledBorder?.build(zacContext),
      enabledBorder: enabledBorder?.build(zacContext),
      border: border?.build(zacContext),
      enabled: enabled?.build(zacContext) ?? true,
      semanticCounterText: semanticCounterText?.build(zacContext),
      alignLabelWithHint: alignLabelWithHint?.build(zacContext),
      constraints: constraints?.build(zacContext),
    );
  }

  @override
  InputDecoration build(ZacContext zacContext) {
    return _build(zacContext);
  }
}
