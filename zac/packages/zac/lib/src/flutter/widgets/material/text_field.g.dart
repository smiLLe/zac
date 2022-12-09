// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_field.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterTextField _$$_FlutterTextFieldFromJson(Map<String, dynamic> json) =>
    _$_FlutterTextField(
      key: json['key'] == null
          ? null
          : FlutterKey.fromJson(json['key'] as Object),
      decoration: json['decoration'] == null
          ? null
          : FlutterInputDecoration.fromJson(
              json['decoration'] as Map<String, dynamic>),
      keyboardType: json['keyboardType'] == null
          ? null
          : FlutterTextInputType.fromJson(
              json['keyboardType'] as Map<String, dynamic>),
      textInputAction: json['textInputAction'] == null
          ? null
          : FlutterTextInputAction.fromJson(
              json['textInputAction'] as Map<String, dynamic>),
      textCapitalization: json['textCapitalization'] == null
          ? null
          : FlutterTextCapitalization.fromJson(
              json['textCapitalization'] as Map<String, dynamic>),
      style: json['style'] == null
          ? null
          : FlutterTextStyle.fromJson(json['style'] as Map<String, dynamic>),
      strutStyle: json['strutStyle'] == null
          ? null
          : FlutterStrutStyle.fromJson(
              json['strutStyle'] as Map<String, dynamic>),
      textAlign: json['textAlign'] == null
          ? null
          : FlutterTextAlign.fromJson(
              json['textAlign'] as Map<String, dynamic>),
      textAlignVertical: json['textAlignVertical'] == null
          ? null
          : FlutterTextAlignVertical.fromJson(
              json['textAlignVertical'] as Map<String, dynamic>),
      textDirection: json['textDirection'] == null
          ? null
          : FlutterTextDirection.fromJson(
              json['textDirection'] as Map<String, dynamic>),
      readOnly: json['readOnly'] == null
          ? null
          : ZacValue<bool>.fromJson(
              json['readOnly'] as Object, (value) => value as bool),
      showCursor: json['showCursor'] == null
          ? null
          : ZacValue<bool>.fromJson(
              json['showCursor'] as Object, (value) => value as bool),
      autofocus: json['autofocus'] == null
          ? null
          : ZacValue<bool>.fromJson(
              json['autofocus'] as Object, (value) => value as bool),
      obscuringCharacter: json['obscuringCharacter'] == null
          ? null
          : ZacValue<String>.fromJson(
              json['obscuringCharacter'] as Object, (value) => value as String),
      obscureText: json['obscureText'] == null
          ? null
          : ZacValue<bool>.fromJson(
              json['obscureText'] as Object, (value) => value as bool),
      autocorrect: json['autocorrect'] == null
          ? null
          : ZacValue<bool>.fromJson(
              json['autocorrect'] as Object, (value) => value as bool),
      smartDashesType: json['smartDashesType'] == null
          ? null
          : FlutterSmartDashesType.fromJson(
              json['smartDashesType'] as Map<String, dynamic>),
      smartQuotesType: json['smartQuotesType'] == null
          ? null
          : FlutterSmartQuotesType.fromJson(
              json['smartQuotesType'] as Map<String, dynamic>),
      enableSuggestions: json['enableSuggestions'] == null
          ? null
          : ZacValue<bool>.fromJson(
              json['enableSuggestions'] as Object, (value) => value as bool),
      maxLines: json['maxLines'] == null
          ? null
          : ZacValue<int>.fromJson(
              json['maxLines'] as Object, (value) => value as int),
      minLines: json['minLines'] == null
          ? null
          : ZacValue<int>.fromJson(
              json['minLines'] as Object, (value) => value as int),
      expands: json['expands'] == null
          ? null
          : ZacValue<bool>.fromJson(
              json['expands'] as Object, (value) => value as bool),
      maxLength: json['maxLength'] == null
          ? null
          : ZacValue<int>.fromJson(
              json['maxLength'] as Object, (value) => value as int),
      onChanged: json['onChanged'] == null
          ? null
          : ZacActions.fromJson(json['onChanged'] as Object),
      onEditingComplete: json['onEditingComplete'] == null
          ? null
          : ZacActions.fromJson(json['onEditingComplete'] as Object),
      onSubmitted: json['onSubmitted'] == null
          ? null
          : ZacActions.fromJson(json['onSubmitted'] as Object),
      enabled: json['enabled'] == null
          ? null
          : ZacValue<bool>.fromJson(
              json['enabled'] as Object, (value) => value as bool),
      cursorWidth: json['cursorWidth'] == null
          ? null
          : ZacValue<double>.fromJson(json['cursorWidth'] as Object,
              (value) => (value as num).toDouble()),
      cursorHeight: json['cursorHeight'] == null
          ? null
          : ZacValue<double>.fromJson(json['cursorHeight'] as Object,
              (value) => (value as num).toDouble()),
      cursorRadius: json['cursorRadius'] == null
          ? null
          : FlutterRadius.fromJson(
              json['cursorRadius'] as Map<String, dynamic>),
      cursorColor: json['cursorColor'] == null
          ? null
          : FlutterColor.fromJson(json['cursorColor'] as Map<String, dynamic>),
      selectionHeightStyle: json['selectionHeightStyle'] == null
          ? null
          : FlutterBoxHeightStyle.fromJson(
              json['selectionHeightStyle'] as Map<String, dynamic>),
      selectionWidthStyle: json['selectionWidthStyle'] == null
          ? null
          : FlutterBoxWidthStyle.fromJson(
              json['selectionWidthStyle'] as Map<String, dynamic>),
      keyboardAppearance: json['keyboardAppearance'] == null
          ? null
          : FlutterBrightness.fromJson(
              json['keyboardAppearance'] as Map<String, dynamic>),
      scrollPadding: json['scrollPadding'] == null
          ? null
          : FlutterEdgeInsets.fromJson(
              json['scrollPadding'] as Map<String, dynamic>),
      enableInteractiveSelection: json['enableInteractiveSelection'] == null
          ? null
          : ZacValue<bool>.fromJson(
              json['enableInteractiveSelection'] as Object,
              (value) => value as bool),
      onTap: json['onTap'] == null
          ? null
          : ZacActions.fromJson(json['onTap'] as Object),
      scrollController: json['scrollController'] == null
          ? null
          : FlutterScrollController.fromJson(
              json['scrollController'] as Map<String, dynamic>),
      clipBehavior: json['clipBehavior'] == null
          ? null
          : FlutterClip.fromJson(json['clipBehavior'] as Map<String, dynamic>),
      restorationId: json['restorationId'] == null
          ? null
          : ZacValue<String>.fromJson(
              json['restorationId'] as Object, (value) => value as String),
      enableIMEPersonalizedLearning:
          json['enableIMEPersonalizedLearning'] == null
              ? null
              : ZacValue<bool>.fromJson(
                  json['enableIMEPersonalizedLearning'] as Object,
                  (value) => value as bool),
    );
