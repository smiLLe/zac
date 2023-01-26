// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_child_scroll_view.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterSingleChildScrollView _$$_FlutterSingleChildScrollViewFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_FlutterSingleChildScrollView',
      json,
      ($checkedConvert) {
        final val = _$_FlutterSingleChildScrollView(
          key: $checkedConvert('key',
              (v) => v == null ? null : ZacBuilder<Key?>.fromJson(v as Object)),
          scrollDirection: $checkedConvert(
              'scrollDirection',
              (v) =>
                  v == null ? null : ZacBuilder<Axis?>.fromJson(v as Object)),
          reverse: $checkedConvert(
              'reverse',
              (v) =>
                  v == null ? null : ZacBuilder<bool?>.fromJson(v as Object)),
          padding: $checkedConvert(
              'padding',
              (v) => v == null
                  ? null
                  : ZacBuilder<EdgeInsetsGeometry?>.fromJson(v as Object)),
          primary: $checkedConvert(
              'primary',
              (v) =>
                  v == null ? null : ZacBuilder<bool?>.fromJson(v as Object)),
          controller: $checkedConvert(
              'controller',
              (v) => v == null
                  ? null
                  : ZacBuilder<ScrollController?>.fromJson(v as Object)),
          child: $checkedConvert(
              'child',
              (v) =>
                  v == null ? null : ZacBuilder<Widget?>.fromJson(v as Object)),
          clipBehavior: $checkedConvert(
              'clipBehavior',
              (v) =>
                  v == null ? null : ZacBuilder<Clip?>.fromJson(v as Object)),
          restorationId: $checkedConvert(
              'restorationId',
              (v) =>
                  v == null ? null : ZacBuilder<String?>.fromJson(v as Object)),
          keyboardDismissBehavior: $checkedConvert(
              'keyboardDismissBehavior',
              (v) => v == null
                  ? null
                  : ZacBuilder<ScrollViewKeyboardDismissBehavior?>.fromJson(
                      v as Object)),
        );
        return val;
      },
    );
