// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterText _$$_FlutterTextFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_FlutterText',
      json,
      ($checkedConvert) {
        final val = _$_FlutterText(
          $checkedConvert(
              'data', (v) => ZacBuilder<String>.fromJson(v as Object)),
          key: $checkedConvert('key',
              (v) => v == null ? null : ZacBuilder<Key?>.fromJson(v as Object)),
          style: $checkedConvert(
              'style',
              (v) => v == null
                  ? null
                  : ZacBuilder<TextStyle?>.fromJson(v as Object)),
          strutStyle: $checkedConvert(
              'strutStyle',
              (v) => v == null
                  ? null
                  : ZacBuilder<StrutStyle?>.fromJson(v as Object)),
          textAlign: $checkedConvert(
              'textAlign',
              (v) => v == null
                  ? null
                  : ZacBuilder<TextAlign?>.fromJson(v as Object)),
          textDirection: $checkedConvert(
              'textDirection',
              (v) => v == null
                  ? null
                  : ZacBuilder<TextDirection?>.fromJson(v as Object)),
          locale: $checkedConvert(
              'locale',
              (v) =>
                  v == null ? null : ZacBuilder<Locale?>.fromJson(v as Object)),
          softWrap: $checkedConvert(
              'softWrap',
              (v) =>
                  v == null ? null : ZacBuilder<bool?>.fromJson(v as Object)),
          overflow: $checkedConvert(
              'overflow',
              (v) => v == null
                  ? null
                  : ZacBuilder<TextOverflow?>.fromJson(v as Object)),
          textScaleFactor: $checkedConvert(
              'textScaleFactor',
              (v) =>
                  v == null ? null : ZacBuilder<double?>.fromJson(v as Object)),
          maxLines: $checkedConvert('maxLines',
              (v) => v == null ? null : ZacBuilder<int?>.fromJson(v as Object)),
          semanticsLabel: $checkedConvert(
              'semanticsLabel',
              (v) =>
                  v == null ? null : ZacBuilder<String?>.fromJson(v as Object)),
          textWidthBasis: $checkedConvert(
              'textWidthBasis',
              (v) => v == null
                  ? null
                  : ZacBuilder<TextWidthBasis?>.fromJson(v as Object)),
          textHeightBehavior: $checkedConvert(
              'textHeightBehavior',
              (v) => v == null
                  ? null
                  : ZacBuilder<TextHeightBehavior?>.fromJson(v as Object)),
        );
        return val;
      },
    );
