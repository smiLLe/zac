// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_scroll_view.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterCustomScrollView _$$_FlutterCustomScrollViewFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_FlutterCustomScrollView',
      json,
      ($checkedConvert) {
        final val = _$_FlutterCustomScrollView(
          key: $checkedConvert('key',
              (v) => v == null ? null : ZacBuilder<Key?>.fromJson(v as Object)),
          scrollDirection: $checkedConvert(
              'scrollDirection',
              (v) => v == null
                  ? null
                  : FlutterAxis.fromJson(v as Map<String, dynamic>)),
          reverse: $checkedConvert(
              'reverse',
              (v) =>
                  v == null ? null : ZacBuilder<bool?>.fromJson(v as Object)),
          controller: $checkedConvert(
              'controller',
              (v) => v == null
                  ? null
                  : ZacBuilder<ScrollController?>.fromJson(v as Object)),
          primary: $checkedConvert(
              'primary',
              (v) =>
                  v == null ? null : ZacBuilder<bool?>.fromJson(v as Object)),
          physics: $checkedConvert(
              'physics',
              (v) => v == null
                  ? null
                  : FlutterScrollPhysics.fromJson(v as Map<String, dynamic>)),
          shrinkWrap: $checkedConvert(
              'shrinkWrap',
              (v) =>
                  v == null ? null : ZacBuilder<bool?>.fromJson(v as Object)),
          center: $checkedConvert('center',
              (v) => v == null ? null : ZacBuilder<Key?>.fromJson(v as Object)),
          anchor: $checkedConvert(
              'anchor',
              (v) =>
                  v == null ? null : ZacBuilder<double?>.fromJson(v as Object)),
          cacheExtent: $checkedConvert(
              'cacheExtent',
              (v) =>
                  v == null ? null : ZacBuilder<double?>.fromJson(v as Object)),
          slivers: $checkedConvert(
              'slivers',
              (v) => v == null
                  ? null
                  : ZacBuilder<List<Widget>?>.fromJson(v as Object)),
          semanticChildCount: $checkedConvert('semanticChildCount',
              (v) => v == null ? null : ZacBuilder<int?>.fromJson(v as Object)),
          keyboardDismissBehavior: $checkedConvert(
              'keyboardDismissBehavior',
              (v) => v == null
                  ? null
                  : FlutterScrollViewKeyboardDismissBehavior.fromJson(
                      v as Map<String, dynamic>)),
          restorationId: $checkedConvert(
              'restorationId',
              (v) =>
                  v == null ? null : ZacBuilder<String?>.fromJson(v as Object)),
          clipBehavior: $checkedConvert(
              'clipBehavior',
              (v) =>
                  v == null ? null : ZacBuilder<Clip?>.fromJson(v as Object)),
        );
        return val;
      },
    );
