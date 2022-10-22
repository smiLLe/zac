// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selectable_text.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterSelectableText _$$_FlutterSelectableTextFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterSelectableText(
      json['data'] as String,
      key: json['key'] == null
          ? null
          : FlutterKey.fromJson(json['key'] as Object),
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
      textDirection: json['textDirection'] == null
          ? null
          : FlutterTextDirection.fromJson(
              json['textDirection'] as Map<String, dynamic>),
      textScaleFactor: json['textScaleFactor'] == null
          ? null
          : ZacDouble.fromJson(json['textScaleFactor'] as Object),
      showCursor: json['showCursor'] == null
          ? null
          : ZacBool.fromJson(json['showCursor'] as Object),
      autofocus: json['autofocus'] == null
          ? null
          : ZacBool.fromJson(json['autofocus'] as Object),
      minLines: json['minLines'] == null
          ? null
          : ZacValue<int>.fromJson(json['minLines'] as Object),
      maxLines: json['maxLines'] == null
          ? null
          : ZacValue<int>.fromJson(json['maxLines'] as Object),
      cursorWidth: json['cursorWidth'] == null
          ? null
          : ZacDouble.fromJson(json['cursorWidth'] as Object),
      cursorHeight: json['cursorHeight'] == null
          ? null
          : ZacDouble.fromJson(json['cursorHeight'] as Object),
      cursorRadius: json['cursorRadius'] == null
          ? null
          : FlutterRadius.fromJson(
              json['cursorRadius'] as Map<String, dynamic>),
      cursorColor: json['cursorColor'] == null
          ? null
          : FlutterColor.fromJson(json['cursorColor'] as Map<String, dynamic>),
      enableInteractiveSelection: json['enableInteractiveSelection'] == null
          ? null
          : ZacBool.fromJson(json['enableInteractiveSelection'] as Object),
      semanticsLabel: json['semanticsLabel'] == null
          ? null
          : ZacString.fromJson(json['semanticsLabel'] as Object),
      textHeightBehavior: json['textHeightBehavior'] == null
          ? null
          : FlutterTextHeightBehavior.fromJson(
              json['textHeightBehavior'] as Map<String, dynamic>),
      textWidthBasis: json['textWidthBasis'] == null
          ? null
          : FlutterTextWidthBasis.fromJson(
              json['textWidthBasis'] as Map<String, dynamic>),
    );
