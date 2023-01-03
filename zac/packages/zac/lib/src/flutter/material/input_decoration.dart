import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';

part 'input_decoration.freezed.dart';
part 'input_decoration.g.dart';

@freezedZacBuilder
class FlutterInputDecoration
    with _$FlutterInputDecoration, ZacBuilder<InputDecoration> {
  const FlutterInputDecoration._();

  factory FlutterInputDecoration.fromJson(Map<String, dynamic> json) =>
      _$FlutterInputDecorationFromJson(json);

  @FreezedUnionValue('f:1:InputDecoration')
  factory FlutterInputDecoration({
    ZacBuilder<Widget?>? icon,
    ZacBuilder<Color?>? iconColor,
    ZacBuilder<Widget?>? label,
    ZacBuilder<String?>? labelText,
    ZacBuilder<TextStyle?>? labelStyle,
    ZacBuilder<TextStyle?>? floatingLabelStyle,
    ZacBuilder<String?>? helperText,
    ZacBuilder<TextStyle?>? helperStyle,
    ZacBuilder<int?>? helperMaxLines,
    ZacBuilder<String?>? hintText,
    ZacBuilder<TextStyle?>? hintStyle,
    ZacBuilder<TextDirection?>? hintTextDirection,
    ZacBuilder<int?>? hintMaxLines,
    ZacBuilder<String?>? errorText,
    ZacBuilder<TextStyle?>? errorStyle,
    ZacBuilder<int?>? errorMaxLines,
    // FloatingLabelBehavior? floatingLabelBehavior,
    // FloatingLabelAlignment? floatingLabelAlignment,
    ZacBuilder<bool?>? isCollapsed,
    ZacBuilder<bool?>? isDense,
    ZacBuilder<EdgeInsetsGeometry?>? contentPadding,
    ZacBuilder<Widget?>? prefixIcon,
    ZacBuilder<BoxConstraints?>? prefixIconConstraints,
    ZacBuilder<Widget?>? prefix,
    ZacBuilder<String?>? prefixText,
    ZacBuilder<TextStyle?>? prefixStyle,
    ZacBuilder<Color?>? prefixIconColor,
    ZacBuilder<Widget?>? suffixIcon,
    ZacBuilder<Widget?>? suffix,
    ZacBuilder<String?>? suffixText,
    ZacBuilder<TextStyle?>? suffixStyle,
    ZacBuilder<Color?>? suffixIconColor,
    ZacBuilder<BoxConstraints?>? suffixIconConstraints,
    ZacBuilder<Widget?>? counter,
    ZacBuilder<String?>? counterText,
    ZacBuilder<TextStyle?>? counterStyle,
    ZacBuilder<bool?>? filled,
    ZacBuilder<Color?>? fillColor,
    ZacBuilder<Color?>? focusColor,
    ZacBuilder<Color?>? hoverColor,
    ZacBuilder<InputBorder?>? errorBorder,
    ZacBuilder<InputBorder?>? focusedBorder,
    ZacBuilder<InputBorder?>? focusedErrorBorder,
    ZacBuilder<InputBorder?>? disabledBorder,
    ZacBuilder<InputBorder?>? enabledBorder,
    ZacBuilder<InputBorder?>? border,
    ZacBuilder<bool?>? enabled,
    ZacBuilder<String?>? semanticCounterText,
    ZacBuilder<bool?>? alignLabelWithHint,
    ZacBuilder<BoxConstraints?>? constraints,
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
