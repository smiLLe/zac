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

  InputDecoration _build(BuildContext context, ZacContext zacContext) {
    return InputDecoration(
      icon: icon?.build(context, zacContext),
      iconColor: iconColor?.build(context, zacContext),
      label: label?.build(context, zacContext),
      labelText: labelText?.build(context, zacContext),
      labelStyle: labelStyle?.build(context, zacContext),
      floatingLabelStyle: floatingLabelStyle?.build(context, zacContext),
      helperText: helperText?.build(context, zacContext),
      helperStyle: helperStyle?.build(context, zacContext),
      helperMaxLines: helperMaxLines?.build(context, zacContext),
      hintText: hintText?.build(context, zacContext),
      hintStyle: hintStyle?.build(context, zacContext),
      hintTextDirection: hintTextDirection?.build(context, zacContext),
      hintMaxLines: hintMaxLines?.build(context, zacContext),
      errorText: errorText?.build(context, zacContext),
      errorStyle: errorStyle?.build(context, zacContext),
      errorMaxLines: errorMaxLines?.build(context, zacContext),
      isCollapsed: isCollapsed?.build(context, zacContext) ?? false,
      isDense: isDense?.build(context, zacContext),
      contentPadding: contentPadding?.build(context, zacContext),
      prefixIcon: prefixIcon?.build(context, zacContext),
      prefixIconConstraints: prefixIconConstraints?.build(context, zacContext),
      prefix: prefix?.build(context, zacContext),
      prefixText: prefixText?.build(context, zacContext),
      prefixStyle: prefixStyle?.build(context, zacContext),
      prefixIconColor: prefixIconColor?.build(context, zacContext),
      suffix: suffix?.build(context, zacContext),
      suffixIcon: suffixIcon?.build(context, zacContext),
      suffixIconColor: suffixIconColor?.build(context, zacContext),
      suffixText: suffixText?.build(context, zacContext),
      suffixStyle: suffixStyle?.build(context, zacContext),
      suffixIconConstraints: suffixIconConstraints?.build(context, zacContext),
      counter: counter?.build(context, zacContext),
      counterText: counterText?.build(context, zacContext),
      counterStyle: counterStyle?.build(context, zacContext),
      filled: filled?.build(context, zacContext),
      fillColor: fillColor?.build(context, zacContext),
      focusColor: focusColor?.build(context, zacContext),
      hoverColor: hoverColor?.build(context, zacContext),
      errorBorder: errorBorder?.build(context, zacContext),
      focusedBorder: focusedBorder?.build(context, zacContext),
      focusedErrorBorder: focusedErrorBorder?.build(context, zacContext),
      disabledBorder: disabledBorder?.build(context, zacContext),
      enabledBorder: enabledBorder?.build(context, zacContext),
      border: border?.build(context, zacContext),
      enabled: enabled?.build(context, zacContext) ?? true,
      semanticCounterText: semanticCounterText?.build(context, zacContext),
      alignLabelWithHint: alignLabelWithHint?.build(context, zacContext),
      constraints: constraints?.build(context, zacContext),
    );
  }

  @override
  InputDecoration build(BuildContext context, ZacContext zacContext) {
    return _build(context, zacContext);
  }
}
