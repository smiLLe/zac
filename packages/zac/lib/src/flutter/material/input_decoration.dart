import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/src/flutter/material/material.dart';
import 'package:zac/src/zac/interactions.dart';
import 'package:zac/src/zac/any_value.dart';
import 'package:zac/src/zac/interactions.dart';
import 'package:zac/src/zac/misc.dart';
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

  InputDecoration build(
      BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime) {
    final zacRef = ZacRef.widget(ref);
    return InputDecoration(
      icon: icon?.buildWidget(context, ref, lifetime),
      iconColor: iconColor?.build(context, ref, lifetime),
      label: label?.buildWidget(context, ref, lifetime),
      labelStyle: labelStyle?.build(context, ref, lifetime),
      floatingLabelStyle: floatingLabelStyle?.build(context, ref, lifetime),
      helperText: helperText?.getValue(zacRef),
      helperStyle: helperStyle?.build(context, ref, lifetime),
      helperMaxLines: helperMaxLines?.getValue(zacRef),
      hintText: hintText?.getValue(zacRef),
      hintStyle: hintStyle?.build(context, ref, lifetime),
      hintTextDirection: hintTextDirection?.build(context, ref, lifetime),
      hintMaxLines: hintMaxLines?.getValue(zacRef),
      errorText: errorText?.getValue(zacRef),
      errorStyle: errorStyle?.build(context, ref, lifetime),
      errorMaxLines: errorMaxLines?.getValue(zacRef),
      isCollapsed: isCollapsed?.getValue(zacRef) ?? false,
      isDense: isDense?.getValue(zacRef),
      contentPadding: contentPadding?.build(context, ref, lifetime),
      prefixIcon: prefixIcon?.buildWidget(context, ref, lifetime),
      prefixIconConstraints:
          prefixIconConstraints?.build(context, ref, lifetime),
      prefix: prefix?.buildWidget(context, ref, lifetime),
      prefixText: prefixText?.getValue(zacRef),
      prefixStyle: prefixStyle?.build(context, ref, lifetime),
      prefixIconColor: prefixIconColor?.build(context, ref, lifetime),
      suffixIconConstraints:
          suffixIconConstraints?.build(context, ref, lifetime),
      counter: counter?.buildWidget(context, ref, lifetime),
      counterText: counterText?.getValue(zacRef),
      counterStyle: counterStyle?.build(context, ref, lifetime),
      filled: filled?.getValue(zacRef),
      fillColor: fillColor?.build(context, ref, lifetime),
      focusColor: focusColor?.build(context, ref, lifetime),
      hoverColor: hoverColor?.build(context, ref, lifetime),
      errorBorder: errorBorder?.build(context, ref, lifetime),
      focusedBorder: focusedBorder?.build(context, ref, lifetime),
      focusedErrorBorder: focusedErrorBorder?.build(context, ref, lifetime),
      disabledBorder: disabledBorder?.build(context, ref, lifetime),
      enabledBorder: enabledBorder?.build(context, ref, lifetime),
      border: border?.build(context, ref, lifetime),
      enabled: enabled?.getValue(zacRef) ?? true,
      semanticCounterText: semanticCounterText?.getValue(zacRef),
      alignLabelWithHint: alignLabelWithHint?.getValue(zacRef),
      constraints: constraints?.build(context, ref, lifetime),
    );
  }
}
