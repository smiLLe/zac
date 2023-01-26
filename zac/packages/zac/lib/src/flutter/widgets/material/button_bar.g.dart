// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'button_bar.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterButtonBar _$$_FlutterButtonBarFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_FlutterButtonBar',
      json,
      ($checkedConvert) {
        final val = _$_FlutterButtonBar(
          key: $checkedConvert('key',
              (v) => v == null ? null : ZacBuilder<Key?>.fromJson(v as Object)),
          alignment: $checkedConvert(
              'alignment',
              (v) => v == null
                  ? null
                  : ZacBuilder<MainAxisAlignment?>.fromJson(v as Object)),
          mainAxisSize: $checkedConvert(
              'mainAxisSize',
              (v) => v == null
                  ? null
                  : ZacBuilder<MainAxisSize?>.fromJson(v as Object)),
          buttonMinWidth: $checkedConvert(
              'buttonMinWidth',
              (v) =>
                  v == null ? null : ZacBuilder<double?>.fromJson(v as Object)),
          buttonHeight: $checkedConvert(
              'buttonHeight',
              (v) =>
                  v == null ? null : ZacBuilder<double?>.fromJson(v as Object)),
          buttonPadding: $checkedConvert(
              'buttonPadding',
              (v) => v == null
                  ? null
                  : ZacBuilder<EdgeInsetsGeometry?>.fromJson(v as Object)),
          buttonAlignedDropdown: $checkedConvert(
              'buttonAlignedDropdown',
              (v) =>
                  v == null ? null : ZacBuilder<bool?>.fromJson(v as Object)),
          overflowDirection: $checkedConvert(
              'overflowDirection',
              (v) => v == null
                  ? null
                  : ZacBuilder<VerticalDirection?>.fromJson(v as Object)),
          overflowButtonSpacing: $checkedConvert(
              'overflowButtonSpacing',
              (v) =>
                  v == null ? null : ZacBuilder<double?>.fromJson(v as Object)),
          children: $checkedConvert(
              'children',
              (v) => v == null
                  ? null
                  : ZacBuilder<List<Widget>?>.fromJson(v as Object)),
        );
        return val;
      },
    );
