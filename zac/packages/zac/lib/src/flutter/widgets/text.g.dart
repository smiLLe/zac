// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterText _$$_FlutterTextFromJson(Map<String, dynamic> json) =>
    _$_FlutterText(
      ZacValue<String>.fromJson(json['data'] as Object),
      key: json['key'] == null
          ? null
          : ZacValue<Key?>.fromJson(json['key'] as Object),
      style: json['style'] == null
          ? null
          : ZacValue<TextStyle?>.fromJson(json['style'] as Object),
      strutStyle: json['strutStyle'] == null
          ? null
          : ZacValue<StrutStyle?>.fromJson(json['strutStyle'] as Object),
      textAlign: json['textAlign'] == null
          ? null
          : ZacValue<TextAlign?>.fromJson(json['textAlign'] as Object),
      textDirection: json['textDirection'] == null
          ? null
          : ZacValue<TextDirection?>.fromJson(json['textDirection'] as Object),
      locale: json['locale'] == null
          ? null
          : FlutterLocale.fromJson(json['locale'] as Map<String, dynamic>),
      softWrap: json['softWrap'] == null
          ? null
          : ZacValue<bool?>.fromJson(json['softWrap'] as Object),
      overflow: json['overflow'] == null
          ? null
          : FlutterTextOverflow.fromJson(
              json['overflow'] as Map<String, dynamic>),
      textScaleFactor: json['textScaleFactor'] == null
          ? null
          : ZacValue<double?>.fromJson(json['textScaleFactor'] as Object),
      maxLines: json['maxLines'] == null
          ? null
          : ZacValue<int?>.fromJson(json['maxLines'] as Object),
      semanticsLabel: json['semanticsLabel'] == null
          ? null
          : ZacValue<String?>.fromJson(json['semanticsLabel'] as Object),
      textWidthBasis: json['textWidthBasis'] == null
          ? null
          : ZacValue<TextWidthBasis?>.fromJson(
              json['textWidthBasis'] as Object),
      textHeightBehavior: json['textHeightBehavior'] == null
          ? null
          : ZacValue<TextHeightBehavior?>.fromJson(
              json['textHeightBehavior'] as Object),
    );
