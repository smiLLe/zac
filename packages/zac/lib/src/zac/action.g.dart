// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ZacUiActions _$$_ZacUiActionsFromJson(Map<String, dynamic> json) =>
    _$_ZacUiActions(
      (json['actions'] as List<dynamic>)
          .map((e) => ZacBaseAction.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

_$_ZacStateMachineActions _$$_ZacStateMachineActionsFromJson(
        Map<String, dynamic> json) =>
    _$_ZacStateMachineActions(
      (json['actions'] as List<dynamic>)
          .map((e) => ZacBaseAction.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

_$_ZacExecuteActionsBuilderOnce _$$_ZacExecuteActionsBuilderOnceFromJson(
        Map<String, dynamic> json) =>
    _$_ZacExecuteActionsBuilderOnce(
      actions: ZacUiActions.fromJson(json['actions'] as Object),
      child: json['child'] == null
          ? null
          : ZacWidget.fromJson(json['child'] as Object),
      $type: json['_converter'] as String?,
    );

_$_ZacExecuteActionsBuilderListen _$$_ZacExecuteActionsBuilderListenFromJson(
        Map<String, dynamic> json) =>
    _$_ZacExecuteActionsBuilderListen(
      actions: ZacUiActions.fromJson(json['actions'] as Object),
      family: json['family'] as Object,
      child: json['child'] == null
          ? null
          : ZacWidget.fromJson(json['child'] as Object),
      $type: json['_converter'] as String?,
    );
