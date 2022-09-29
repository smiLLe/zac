import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/src/flutter/material/material.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/any_value.dart';
import 'package:zac/src/zac/misc.dart';
import 'package:zac/src/zac/update_context.dart';
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
      BuildContext context, WidgetRef ref, ZacActionHelper helper) {
    final zacRef = ZacRef.widget(ref);
    return InputDecoration(
      icon: icon?.buildWidget(context, ref, helper),
      iconColor: iconColor?.build(context, ref, helper),
      label: label?.buildWidget(context, ref, helper),
      labelStyle: labelStyle?.build(context, ref, helper),
      floatingLabelStyle: floatingLabelStyle?.build(context, ref, helper),
      helperText: helperText?.getValue(zacRef),
      helperStyle: helperStyle?.build(context, ref, helper),
      helperMaxLines: helperMaxLines?.getValue(zacRef),
      hintText: hintText?.getValue(zacRef),
      hintStyle: hintStyle?.build(context, ref, helper),
      hintTextDirection: hintTextDirection?.build(context, ref, helper),
      hintMaxLines: hintMaxLines?.getValue(zacRef),
      errorText: errorText?.getValue(zacRef),
      errorStyle: errorStyle?.build(context, ref, helper),
      errorMaxLines: errorMaxLines?.getValue(zacRef),
      isCollapsed: isCollapsed?.getValue(zacRef) ?? false,
      isDense: isDense?.getValue(zacRef),
      contentPadding: contentPadding?.build(context, ref, helper),
      prefixIcon: prefixIcon?.buildWidget(context, ref, helper),
      prefixIconConstraints: prefixIconConstraints?.build(context, ref, helper),
      prefix: prefix?.buildWidget(context, ref, helper),
      prefixText: prefixText?.getValue(zacRef),
      prefixStyle: prefixStyle?.build(context, ref, helper),
      prefixIconColor: prefixIconColor?.build(context, ref, helper),
      suffixIconConstraints: suffixIconConstraints?.build(context, ref, helper),
      counter: counter?.buildWidget(context, ref, helper),
      counterText: counterText?.getValue(zacRef),
      counterStyle: counterStyle?.build(context, ref, helper),
      filled: filled?.getValue(zacRef),
      fillColor: fillColor?.build(context, ref, helper),
      focusColor: focusColor?.build(context, ref, helper),
      hoverColor: hoverColor?.build(context, ref, helper),
      errorBorder: errorBorder?.build(context, ref, helper),
      focusedBorder: focusedBorder?.build(context, ref, helper),
      focusedErrorBorder: focusedErrorBorder?.build(context, ref, helper),
      disabledBorder: disabledBorder?.build(context, ref, helper),
      enabledBorder: enabledBorder?.build(context, ref, helper),
      border: border?.build(context, ref, helper),
      enabled: enabled?.getValue(zacRef) ?? true,
      semanticCounterText: semanticCounterText?.getValue(zacRef),
      alignLabelWithHint: alignLabelWithHint?.getValue(zacRef),
      constraints: constraints?.build(context, ref, helper),
    );
  }
}
