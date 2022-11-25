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

  InputDecoration _build(ZacContext zacContext) {
    return InputDecoration(
      icon: icon?.buildOrNull(zacContext),
      iconColor: iconColor?.build(zacContext),
      label: label?.buildOrNull(zacContext),
      labelText: labelText?.buildOrNull(zacContext),
      labelStyle: labelStyle?.build(zacContext),
      floatingLabelStyle: floatingLabelStyle?.build(zacContext),
      helperText: helperText?.buildOrNull(zacContext),
      helperStyle: helperStyle?.build(zacContext),
      helperMaxLines: helperMaxLines?.buildOrNull(zacContext),
      hintText: hintText?.buildOrNull(zacContext),
      hintStyle: hintStyle?.build(zacContext),
      hintTextDirection: hintTextDirection?.build(zacContext),
      hintMaxLines: hintMaxLines?.buildOrNull(zacContext),
      errorText: errorText?.buildOrNull(zacContext),
      errorStyle: errorStyle?.build(zacContext),
      errorMaxLines: errorMaxLines?.buildOrNull(zacContext),
      isCollapsed: isCollapsed?.buildOrNull(zacContext) ?? false,
      isDense: isDense?.buildOrNull(zacContext),
      contentPadding: contentPadding?.build(zacContext),
      prefixIcon: prefixIcon?.buildOrNull(zacContext),
      prefixIconConstraints: prefixIconConstraints?.build(zacContext),
      prefix: prefix?.buildOrNull(zacContext),
      prefixText: prefixText?.buildOrNull(zacContext),
      prefixStyle: prefixStyle?.build(zacContext),
      prefixIconColor: prefixIconColor?.build(zacContext),
      suffix: suffix?.buildOrNull(zacContext),
      suffixIcon: suffixIcon?.buildOrNull(zacContext),
      suffixIconColor: suffixIconColor?.build(zacContext),
      suffixText: suffixText?.buildOrNull(zacContext),
      suffixStyle: suffixStyle?.build(zacContext),
      suffixIconConstraints: suffixIconConstraints?.build(zacContext),
      counter: counter?.buildOrNull(zacContext),
      counterText: counterText?.buildOrNull(zacContext),
      counterStyle: counterStyle?.build(zacContext),
      filled: filled?.buildOrNull(zacContext),
      fillColor: fillColor?.build(zacContext),
      focusColor: focusColor?.build(zacContext),
      hoverColor: hoverColor?.build(zacContext),
      errorBorder: errorBorder?.build(zacContext),
      focusedBorder: focusedBorder?.build(zacContext),
      focusedErrorBorder: focusedErrorBorder?.build(zacContext),
      disabledBorder: disabledBorder?.build(zacContext),
      enabledBorder: enabledBorder?.build(zacContext),
      border: border?.build(zacContext),
      enabled: enabled?.buildOrNull(zacContext) ?? true,
      semanticCounterText: semanticCounterText?.buildOrNull(zacContext),
      alignLabelWithHint: alignLabelWithHint?.buildOrNull(zacContext),
      constraints: constraints?.build(zacContext),
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
