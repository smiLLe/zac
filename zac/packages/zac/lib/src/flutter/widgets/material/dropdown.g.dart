// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dropdown.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterDropdownButton _$$_FlutterDropdownButtonFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_FlutterDropdownButton',
      json,
      ($checkedConvert) {
        final val = _$_FlutterDropdownButton(
          key: $checkedConvert('key',
              (v) => v == null ? null : ZacBuilder<Key?>.fromJson(v as Object)),
          items: $checkedConvert(
              'items',
              (v) => (v as List<dynamic>)
                  .map((e) => FlutterDropdownMenuItem.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
          value: $checkedConvert(
              'value',
              (v) =>
                  v == null ? null : ZacBuilder<Object?>.fromJson(v as Object)),
          hint: $checkedConvert(
              'hint',
              (v) =>
                  v == null ? null : ZacBuilder<Widget?>.fromJson(v as Object)),
          disabledHint: $checkedConvert(
              'disabledHint',
              (v) =>
                  v == null ? null : ZacBuilder<Widget?>.fromJson(v as Object)),
          onChanged: $checkedConvert('onChanged',
              (v) => ZacBuilder<List<ZacAction>>.fromJson(v as Object)),
          onTap: $checkedConvert(
              'onTap',
              (v) => v == null
                  ? null
                  : ZacBuilder<List<ZacAction>?>.fromJson(v as Object)),
          elevation: $checkedConvert('elevation',
              (v) => v == null ? null : ZacBuilder<int?>.fromJson(v as Object)),
          style: $checkedConvert(
              'style',
              (v) => v == null
                  ? null
                  : ZacBuilder<TextStyle?>.fromJson(v as Object)),
          underline: $checkedConvert(
              'underline',
              (v) =>
                  v == null ? null : ZacBuilder<Widget?>.fromJson(v as Object)),
          icon: $checkedConvert(
              'icon',
              (v) =>
                  v == null ? null : ZacBuilder<Widget?>.fromJson(v as Object)),
          iconDisabledColor: $checkedConvert(
              'iconDisabledColor',
              (v) =>
                  v == null ? null : ZacBuilder<Color?>.fromJson(v as Object)),
          iconEnabledColor: $checkedConvert(
              'iconEnabledColor',
              (v) =>
                  v == null ? null : ZacBuilder<Color?>.fromJson(v as Object)),
          iconSize: $checkedConvert(
              'iconSize',
              (v) =>
                  v == null ? null : ZacBuilder<double?>.fromJson(v as Object)),
          isDense: $checkedConvert(
              'isDense',
              (v) =>
                  v == null ? null : ZacBuilder<bool?>.fromJson(v as Object)),
          isExpanded: $checkedConvert(
              'isExpanded',
              (v) =>
                  v == null ? null : ZacBuilder<bool?>.fromJson(v as Object)),
          itemHeight: $checkedConvert(
              'itemHeight',
              (v) =>
                  v == null ? null : ZacBuilder<double?>.fromJson(v as Object)),
          focusColor: $checkedConvert(
              'focusColor',
              (v) =>
                  v == null ? null : ZacBuilder<Color?>.fromJson(v as Object)),
          focusNode: $checkedConvert(
              'focusNode',
              (v) => v == null
                  ? null
                  : ZacBuilder<FocusNode?>.fromJson(v as Object)),
          autofocus: $checkedConvert(
              'autofocus',
              (v) =>
                  v == null ? null : ZacBuilder<bool?>.fromJson(v as Object)),
          dropdownColor: $checkedConvert(
              'dropdownColor',
              (v) =>
                  v == null ? null : ZacBuilder<Color?>.fromJson(v as Object)),
          menuMaxHeight: $checkedConvert(
              'menuMaxHeight',
              (v) =>
                  v == null ? null : ZacBuilder<double?>.fromJson(v as Object)),
          enableFeedback: $checkedConvert(
              'enableFeedback',
              (v) =>
                  v == null ? null : ZacBuilder<bool?>.fromJson(v as Object)),
          alignment: $checkedConvert(
              'alignment',
              (v) => v == null
                  ? null
                  : ZacBuilder<AlignmentGeometry?>.fromJson(v as Object)),
          borderRadius: $checkedConvert(
              'borderRadius',
              (v) => v == null
                  ? null
                  : ZacBuilder<BorderRadius?>.fromJson(v as Object)),
        );
        return val;
      },
    );

_$_FlutterDropdownMenuItem _$$_FlutterDropdownMenuItemFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_FlutterDropdownMenuItem',
      json,
      ($checkedConvert) {
        final val = _$_FlutterDropdownMenuItem(
          key: $checkedConvert('key',
              (v) => v == null ? null : ZacBuilder<Key?>.fromJson(v as Object)),
          onTap: $checkedConvert(
              'onTap',
              (v) => v == null
                  ? null
                  : ZacBuilder<List<ZacAction>?>.fromJson(v as Object)),
          value: $checkedConvert(
              'value',
              (v) =>
                  v == null ? null : ZacBuilder<Object?>.fromJson(v as Object)),
          enabled: $checkedConvert(
              'enabled',
              (v) =>
                  v == null ? null : ZacBuilder<bool?>.fromJson(v as Object)),
          alignment: $checkedConvert(
              'alignment',
              (v) => v == null
                  ? null
                  : ZacBuilder<AlignmentGeometry?>.fromJson(v as Object)),
          child: $checkedConvert(
              'child', (v) => ZacBuilder<Widget>.fromJson(v as Object)),
        );
        return val;
      },
    );
