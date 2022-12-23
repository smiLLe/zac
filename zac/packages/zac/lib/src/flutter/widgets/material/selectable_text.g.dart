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
          : ZacValue<Key?>.fromJson(json['key'] as Object),
      style: json['style'] == null
          ? null
          : ZacValue<TextStyle?>.fromJson(json['style'] as Object),
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
          : ZacValue<TextDirection?>.fromJson(json['textDirection'] as Object),
      textScaleFactor: json['textScaleFactor'] == null
          ? null
          : ZacValue<double?>.fromJson(json['textScaleFactor'] as Object),
      showCursor: json['showCursor'] == null
          ? null
          : ZacValue<bool?>.fromJson(json['showCursor'] as Object),
      autofocus: json['autofocus'] == null
          ? null
          : ZacValue<bool?>.fromJson(json['autofocus'] as Object),
      minLines: json['minLines'] == null
          ? null
          : ZacValue<int?>.fromJson(json['minLines'] as Object),
      maxLines: json['maxLines'] == null
          ? null
          : ZacValue<int?>.fromJson(json['maxLines'] as Object),
      cursorWidth: json['cursorWidth'] == null
          ? null
          : ZacValue<double?>.fromJson(json['cursorWidth'] as Object),
      cursorHeight: json['cursorHeight'] == null
          ? null
          : ZacValue<double?>.fromJson(json['cursorHeight'] as Object),
      cursorRadius: json['cursorRadius'] == null
          ? null
          : FlutterRadius.fromJson(
              json['cursorRadius'] as Map<String, dynamic>),
      cursorColor: json['cursorColor'] == null
          ? null
          : ZacValue<Color?>.fromJson(json['cursorColor'] as Object),
      enableInteractiveSelection: json['enableInteractiveSelection'] == null
          ? null
          : ZacValue<bool?>.fromJson(
              json['enableInteractiveSelection'] as Object),
      semanticsLabel: json['semanticsLabel'] == null
          ? null
          : ZacValue<String?>.fromJson(json['semanticsLabel'] as Object),
      textHeightBehavior: json['textHeightBehavior'] == null
          ? null
          : FlutterTextHeightBehavior.fromJson(
              json['textHeightBehavior'] as Map<String, dynamic>),
      textWidthBasis: json['textWidthBasis'] == null
          ? null
          : FlutterTextWidthBasis.fromJson(
              json['textWidthBasis'] as Map<String, dynamic>),
    );
