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
      locale: json['locale'] == null
          ? null
          : FlutterLocale.fromJson(json['locale'] as Map<String, dynamic>),
      softWrap: json['softWrap'] == null
          ? null
          : ZacValue<bool>.fromJson(json['softWrap'] as Object),
      overflow: json['overflow'] == null
          ? null
          : FlutterTextOverflow.fromJson(
              json['overflow'] as Map<String, dynamic>),
      textScaleFactor: json['textScaleFactor'] == null
          ? null
          : ZacValue<double>.fromJson(json['textScaleFactor'] as Object),
      maxLines: json['maxLines'] == null
          ? null
          : ZacInt.fromJson(json['maxLines'] as Object),
      semanticsLabel: json['semanticsLabel'] == null
          ? null
          : ZacValue<String>.fromJson(json['semanticsLabel'] as Object),
      textWidthBasis: json['textWidthBasis'] == null
          ? null
          : FlutterTextWidthBasis.fromJson(
              json['textWidthBasis'] as Map<String, dynamic>),
      textHeightBehavior: json['textHeightBehavior'] == null
          ? null
          : FlutterTextHeightBehavior.fromJson(
              json['textHeightBehavior'] as Map<String, dynamic>),
    );
