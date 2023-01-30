// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selectable_text.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterSelectableText _$$_FlutterSelectableTextFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_FlutterSelectableText',
      json,
      ($checkedConvert) {
        final val = _$_FlutterSelectableText(
          $checkedConvert('data', (v) => v as String),
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
          textScaleFactor: $checkedConvert(
              'textScaleFactor',
              (v) =>
                  v == null ? null : ZacBuilder<double?>.fromJson(v as Object)),
          showCursor: $checkedConvert(
              'showCursor',
              (v) =>
                  v == null ? null : ZacBuilder<bool?>.fromJson(v as Object)),
          autofocus: $checkedConvert(
              'autofocus',
              (v) =>
                  v == null ? null : ZacBuilder<bool?>.fromJson(v as Object)),
          minLines: $checkedConvert('minLines',
              (v) => v == null ? null : ZacBuilder<int?>.fromJson(v as Object)),
          maxLines: $checkedConvert('maxLines',
              (v) => v == null ? null : ZacBuilder<int?>.fromJson(v as Object)),
          cursorWidth: $checkedConvert(
              'cursorWidth',
              (v) =>
                  v == null ? null : ZacBuilder<double?>.fromJson(v as Object)),
          cursorHeight: $checkedConvert(
              'cursorHeight',
              (v) =>
                  v == null ? null : ZacBuilder<double?>.fromJson(v as Object)),
          cursorRadius: $checkedConvert(
              'cursorRadius',
              (v) =>
                  v == null ? null : ZacBuilder<Radius?>.fromJson(v as Object)),
          cursorColor: $checkedConvert(
              'cursorColor',
              (v) =>
                  v == null ? null : ZacBuilder<Color?>.fromJson(v as Object)),
          enableInteractiveSelection: $checkedConvert(
              'enableInteractiveSelection',
              (v) =>
                  v == null ? null : ZacBuilder<bool?>.fromJson(v as Object)),
          semanticsLabel: $checkedConvert(
              'semanticsLabel',
              (v) =>
                  v == null ? null : ZacBuilder<String?>.fromJson(v as Object)),
          textHeightBehavior: $checkedConvert(
              'textHeightBehavior',
              (v) => v == null
                  ? null
                  : ZacBuilder<TextHeightBehavior?>.fromJson(v as Object)),
          textWidthBasis: $checkedConvert(
              'textWidthBasis',
              (v) => v == null
                  ? null
                  : ZacBuilder<TextWidthBasis?>.fromJson(v as Object)),
        );
        return val;
      },
    );
