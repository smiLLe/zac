// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_view.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterListView _$$_FlutterListViewFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_FlutterListView',
      json,
      ($checkedConvert) {
        final val = _$_FlutterListView(
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
                  : ZacBuilder<ScrollPhysics?>.fromJson(v as Object)),
          shrinkWrap: $checkedConvert(
              'shrinkWrap',
              (v) =>
                  v == null ? null : ZacBuilder<bool?>.fromJson(v as Object)),
          padding: $checkedConvert(
              'padding',
              (v) => v == null
                  ? null
                  : ZacBuilder<EdgeInsetsGeometry?>.fromJson(v as Object)),
          itemExtent: $checkedConvert(
              'itemExtent',
              (v) =>
                  v == null ? null : ZacBuilder<double?>.fromJson(v as Object)),
          prototypeItem: $checkedConvert(
              'prototypeItem',
              (v) =>
                  v == null ? null : ZacBuilder<Widget?>.fromJson(v as Object)),
          addAutomaticKeepAlives: $checkedConvert(
              'addAutomaticKeepAlives',
              (v) =>
                  v == null ? null : ZacBuilder<bool?>.fromJson(v as Object)),
          addRepaintBoundaries: $checkedConvert(
              'addRepaintBoundaries',
              (v) =>
                  v == null ? null : ZacBuilder<bool?>.fromJson(v as Object)),
          addSemanticIndexes: $checkedConvert(
              'addSemanticIndexes',
              (v) =>
                  v == null ? null : ZacBuilder<bool?>.fromJson(v as Object)),
          cacheExtent: $checkedConvert(
              'cacheExtent',
              (v) =>
                  v == null ? null : ZacBuilder<double?>.fromJson(v as Object)),
          children: $checkedConvert(
              'children',
              (v) => v == null
                  ? null
                  : ZacBuilder<List<Widget>?>.fromJson(v as Object)),
          semanticChildCount: $checkedConvert('semanticChildCount',
              (v) => v == null ? null : ZacBuilder<int?>.fromJson(v as Object)),
          keyboardDismissBehavior: $checkedConvert(
              'keyboardDismissBehavior',
              (v) => v == null
                  ? null
                  : ZacBuilder<ScrollViewKeyboardDismissBehavior?>.fromJson(
                      v as Object)),
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
