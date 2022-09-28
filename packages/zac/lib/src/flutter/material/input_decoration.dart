import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/src/flutter/material/material.dart';
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
      BuildContext context, WidgetRef ref, ZacBuildContext zacContext) {
    final zacRef = ZacRef.widget(ref);
    return InputDecoration(
      icon: icon?.buildWidget(context, ref, zacContext),
      iconColor: iconColor?.build(context, ref, zacContext),
      label: label?.buildWidget(context, ref, zacContext),
      labelStyle: labelStyle?.build(context, ref, zacContext),
      floatingLabelStyle: floatingLabelStyle?.build(context, ref, zacContext),
      helperText: helperText?.getValue(zacRef),
      helperStyle: helperStyle?.build(context, ref, zacContext),
      helperMaxLines: helperMaxLines?.getValue(zacRef),
      hintText: hintText?.getValue(zacRef),
      hintStyle: hintStyle?.build(context, ref, zacContext),
      hintTextDirection: hintTextDirection?.build(context, ref, zacContext),
      hintMaxLines: hintMaxLines?.getValue(zacRef),
      errorText: errorText?.getValue(zacRef),
      errorStyle: errorStyle?.build(context, ref, zacContext),
      errorMaxLines: errorMaxLines?.getValue(zacRef),
      isCollapsed: isCollapsed?.getValue(zacRef) ?? false,
      isDense: isDense?.getValue(zacRef),
      contentPadding: contentPadding?.build(context, ref, zacContext),
      prefixIcon: prefixIcon?.buildWidget(context, ref, zacContext),
      prefixIconConstraints:
          prefixIconConstraints?.build(context, ref, zacContext),
      prefix: prefix?.buildWidget(context, ref, zacContext),
      prefixText: prefixText?.getValue(zacRef),
      prefixStyle: prefixStyle?.build(context, ref, zacContext),
      prefixIconColor: prefixIconColor?.build(context, ref, zacContext),
      suffixIconConstraints:
          suffixIconConstraints?.build(context, ref, zacContext),
      counter: counter?.buildWidget(context, ref, zacContext),
      counterText: counterText?.getValue(zacRef),
      counterStyle: counterStyle?.build(context, ref, zacContext),
      filled: filled?.getValue(zacRef),
      fillColor: fillColor?.build(context, ref, zacContext),
      focusColor: focusColor?.build(context, ref, zacContext),
      hoverColor: hoverColor?.build(context, ref, zacContext),
      errorBorder: errorBorder?.build(context, ref, zacContext),
      focusedBorder: focusedBorder?.build(context, ref, zacContext),
      focusedErrorBorder: focusedErrorBorder?.build(context, ref, zacContext),
      disabledBorder: disabledBorder?.build(context, ref, zacContext),
      enabledBorder: enabledBorder?.build(context, ref, zacContext),
      border: border?.build(context, ref, zacContext),
      enabled: enabled?.getValue(zacRef) ?? true,
      semanticCounterText: semanticCounterText?.getValue(zacRef),
      alignLabelWithHint: alignLabelWithHint?.getValue(zacRef),
      constraints: constraints?.build(context, ref, zacContext),
    );
  }
}
