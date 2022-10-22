// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_decoration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterInputDecoration _$$_FlutterInputDecorationFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterInputDecoration(
      icon: json['icon'] == null
          ? null
          : FlutterWidget.fromJson(json['icon'] as Object),
      iconColor: json['iconColor'] == null
          ? null
          : FlutterColor.fromJson(json['iconColor'] as Map<String, dynamic>),
      label: json['label'] == null
          ? null
          : FlutterWidget.fromJson(json['label'] as Object),
      labelText: json['labelText'] == null
          ? null
          : ZacValue<String>.fromJson(json['labelText'] as Object),
      labelStyle: json['labelStyle'] == null
          ? null
          : FlutterTextStyle.fromJson(
              json['labelStyle'] as Map<String, dynamic>),
      floatingLabelStyle: json['floatingLabelStyle'] == null
          ? null
          : FlutterTextStyle.fromJson(
              json['floatingLabelStyle'] as Map<String, dynamic>),
      helperText: json['helperText'] == null
          ? null
          : ZacValue<String>.fromJson(json['helperText'] as Object),
      helperStyle: json['helperStyle'] == null
          ? null
          : FlutterTextStyle.fromJson(
              json['helperStyle'] as Map<String, dynamic>),
      helperMaxLines: json['helperMaxLines'] == null
          ? null
          : ZacValue<int>.fromJson(json['helperMaxLines'] as Object),
      hintText: json['hintText'] == null
          ? null
          : ZacValue<String>.fromJson(json['hintText'] as Object),
      hintStyle: json['hintStyle'] == null
          ? null
          : FlutterTextStyle.fromJson(
              json['hintStyle'] as Map<String, dynamic>),
      hintTextDirection: json['hintTextDirection'] == null
          ? null
          : FlutterTextDirection.fromJson(
              json['hintTextDirection'] as Map<String, dynamic>),
      hintMaxLines: json['hintMaxLines'] == null
          ? null
          : ZacValue<int>.fromJson(json['hintMaxLines'] as Object),
      errorText: json['errorText'] == null
          ? null
          : ZacValue<String>.fromJson(json['errorText'] as Object),
      errorStyle: json['errorStyle'] == null
          ? null
          : FlutterTextStyle.fromJson(
              json['errorStyle'] as Map<String, dynamic>),
      errorMaxLines: json['errorMaxLines'] == null
          ? null
          : ZacValue<int>.fromJson(json['errorMaxLines'] as Object),
      isCollapsed: json['isCollapsed'] == null
          ? null
          : ZacBool.fromJson(json['isCollapsed'] as Object),
      isDense: json['isDense'] == null
          ? null
          : ZacBool.fromJson(json['isDense'] as Object),
      contentPadding: json['contentPadding'] == null
          ? null
          : FlutterEdgeInsetsGeometry.fromJson(
              json['contentPadding'] as Object),
      prefixIcon: json['prefixIcon'] == null
          ? null
          : FlutterWidget.fromJson(json['prefixIcon'] as Object),
      prefixIconConstraints: json['prefixIconConstraints'] == null
          ? null
          : FlutterBoxConstraints.fromJson(
              json['prefixIconConstraints'] as Map<String, dynamic>),
      prefix: json['prefix'] == null
          ? null
          : FlutterWidget.fromJson(json['prefix'] as Object),
      prefixText: json['prefixText'] == null
          ? null
          : ZacValue<String>.fromJson(json['prefixText'] as Object),
      prefixStyle: json['prefixStyle'] == null
          ? null
          : FlutterTextStyle.fromJson(
              json['prefixStyle'] as Map<String, dynamic>),
      prefixIconColor: json['prefixIconColor'] == null
          ? null
          : FlutterColor.fromJson(
              json['prefixIconColor'] as Map<String, dynamic>),
      suffixIcon: json['suffixIcon'] == null
          ? null
          : FlutterWidget.fromJson(json['suffixIcon'] as Object),
      suffix: json['suffix'] == null
          ? null
          : FlutterWidget.fromJson(json['suffix'] as Object),
      suffixText: json['suffixText'] == null
          ? null
          : ZacValue<String>.fromJson(json['suffixText'] as Object),
      suffixStyle: json['suffixStyle'] == null
          ? null
          : FlutterTextStyle.fromJson(
              json['suffixStyle'] as Map<String, dynamic>),
      suffixIconColor: json['suffixIconColor'] == null
          ? null
          : FlutterColor.fromJson(
              json['suffixIconColor'] as Map<String, dynamic>),
      suffixIconConstraints: json['suffixIconConstraints'] == null
          ? null
          : FlutterBoxConstraints.fromJson(
              json['suffixIconConstraints'] as Map<String, dynamic>),
      counter: json['counter'] == null
          ? null
          : FlutterWidget.fromJson(json['counter'] as Object),
      counterText: json['counterText'] == null
          ? null
          : ZacValue<String>.fromJson(json['counterText'] as Object),
      counterStyle: json['counterStyle'] == null
          ? null
          : FlutterTextStyle.fromJson(
              json['counterStyle'] as Map<String, dynamic>),
      filled: json['filled'] == null
          ? null
          : ZacBool.fromJson(json['filled'] as Object),
      fillColor: json['fillColor'] == null
          ? null
          : FlutterColor.fromJson(json['fillColor'] as Map<String, dynamic>),
      focusColor: json['focusColor'] == null
          ? null
          : FlutterColor.fromJson(json['focusColor'] as Map<String, dynamic>),
      hoverColor: json['hoverColor'] == null
          ? null
          : FlutterColor.fromJson(json['hoverColor'] as Map<String, dynamic>),
      errorBorder: json['errorBorder'] == null
          ? null
          : FlutterInputBorder.fromJson(json['errorBorder'] as Object),
      focusedBorder: json['focusedBorder'] == null
          ? null
          : FlutterInputBorder.fromJson(json['focusedBorder'] as Object),
      focusedErrorBorder: json['focusedErrorBorder'] == null
          ? null
          : FlutterInputBorder.fromJson(json['focusedErrorBorder'] as Object),
      disabledBorder: json['disabledBorder'] == null
          ? null
          : FlutterInputBorder.fromJson(json['disabledBorder'] as Object),
      enabledBorder: json['enabledBorder'] == null
          ? null
          : FlutterInputBorder.fromJson(json['enabledBorder'] as Object),
      border: json['border'] == null
          ? null
          : FlutterInputBorder.fromJson(json['border'] as Object),
      enabled: json['enabled'] == null
          ? null
          : ZacBool.fromJson(json['enabled'] as Object),
      semanticCounterText: json['semanticCounterText'] == null
          ? null
          : ZacValue<String>.fromJson(json['semanticCounterText'] as Object),
      alignLabelWithHint: json['alignLabelWithHint'] == null
          ? null
          : ZacBool.fromJson(json['alignLabelWithHint'] as Object),
      constraints: json['constraints'] == null
          ? null
          : FlutterBoxConstraints.fromJson(
              json['constraints'] as Map<String, dynamic>),
    );
