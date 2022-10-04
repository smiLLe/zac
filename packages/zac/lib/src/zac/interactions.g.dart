// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interactions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ZacInteractions _$$_ZacInteractionsFromJson(Map<String, dynamic> json) =>
    _$_ZacInteractions(
      (json['interactions'] as List<dynamic>)
          .map((e) => ZacInteraction.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

_$_ZacExecuteActionsBuilderOnce _$$_ZacExecuteActionsBuilderOnceFromJson(
        Map<String, dynamic> json) =>
    _$_ZacExecuteActionsBuilderOnce(
      interactions: ZacInteractions.fromJson(json['interactions'] as Object),
      child: json['child'] == null
          ? null
          : ZacWidget.fromJson(json['child'] as Object),
      $type: json['_converter'] as String?,
    );

_$_ZacExecuteActionsBuilderListen _$$_ZacExecuteActionsBuilderListenFromJson(
        Map<String, dynamic> json) =>
    _$_ZacExecuteActionsBuilderListen(
      interactions: ZacInteractions.fromJson(json['interactions'] as Object),
      family: json['family'] as Object,
      child: json['child'] == null
          ? null
          : ZacWidget.fromJson(json['child'] as Object),
      $type: json['_converter'] as String?,
    );
