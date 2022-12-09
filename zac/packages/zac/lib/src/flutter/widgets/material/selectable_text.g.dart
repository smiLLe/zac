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
          : ZacValue<double>.fromJson(json['textScaleFactor'] as Object,
              (value) => (value as num).toDouble()),
      showCursor: json['showCursor'] == null
          ? null
          : ZacValue<bool>.fromJson(
              json['showCursor'] as Object, (value) => value as bool),
      autofocus: json['autofocus'] == null
          ? null
          : ZacValue<bool>.fromJson(
              json['autofocus'] as Object, (value) => value as bool),
      minLines: json['minLines'] == null
          ? null
          : ZacValue<int>.fromJson(
              json['minLines'] as Object, (value) => value as int),
      maxLines: json['maxLines'] == null
          ? null
          : ZacValue<int>.fromJson(
              json['maxLines'] as Object, (value) => value as int),
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
      enableInteractiveSelection: json['enableInteractiveSelection'] == null
          ? null
          : ZacValue<bool>.fromJson(
              json['enableInteractiveSelection'] as Object,
              (value) => value as bool),
      semanticsLabel: json['semanticsLabel'] == null
          ? null
          : ZacValue<String>.fromJson(
              json['semanticsLabel'] as Object, (value) => value as String),
      textHeightBehavior: json['textHeightBehavior'] == null
          ? null
          : FlutterTextHeightBehavior.fromJson(
              json['textHeightBehavior'] as Map<String, dynamic>),
      textWidthBasis: json['textWidthBasis'] == null
          ? null
          : FlutterTextWidthBasis.fromJson(
              json['textWidthBasis'] as Map<String, dynamic>),
    );
