// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sliver_child_delegate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterSliverChildListDelegate _$$_FlutterSliverChildListDelegateFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterSliverChildListDelegate(
      ZacListOfFlutterWidget.fromJson(json['children'] as Object),
      addAutomaticKeepAlives: json['addAutomaticKeepAlives'] == null
          ? null
          : ZacValue<bool>.fromJson(json['addAutomaticKeepAlives'] as Object,
              (value) => value as bool),
      addRepaintBoundaries: json['addRepaintBoundaries'] == null
          ? null
          : ZacValue<bool>.fromJson(
              json['addRepaintBoundaries'] as Object, (value) => value as bool),
      addSemanticIndexes: json['addSemanticIndexes'] == null
          ? null
          : ZacValue<bool>.fromJson(
              json['addSemanticIndexes'] as Object, (value) => value as bool),
      semanticIndexOffset: json['semanticIndexOffset'] == null
          ? null
          : ZacValue<int>.fromJson(
              json['semanticIndexOffset'] as Object, (value) => value as int),
      $type: json['converter'] as String?,
    );

_$_FlutterSliverChildListDelegateFixed
    _$$_FlutterSliverChildListDelegateFixedFromJson(
            Map<String, dynamic> json) =>
        _$_FlutterSliverChildListDelegateFixed(
          ZacListOfFlutterWidget.fromJson(json['children'] as Object),
          addAutomaticKeepAlives: json['addAutomaticKeepAlives'] == null
              ? null
              : ZacValue<bool>.fromJson(
                  json['addAutomaticKeepAlives'] as Object,
                  (value) => value as bool),
          addRepaintBoundaries: json['addRepaintBoundaries'] == null
              ? null
              : ZacValue<bool>.fromJson(json['addRepaintBoundaries'] as Object,
                  (value) => value as bool),
          addSemanticIndexes: json['addSemanticIndexes'] == null
              ? null
              : ZacValue<bool>.fromJson(json['addSemanticIndexes'] as Object,
                  (value) => value as bool),
          semanticIndexOffset: json['semanticIndexOffset'] == null
              ? null
              : ZacValue<int>.fromJson(json['semanticIndexOffset'] as Object,
                  (value) => value as int),
          $type: json['converter'] as String?,
        );
