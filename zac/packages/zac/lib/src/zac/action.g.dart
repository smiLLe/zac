// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ZacActions _$$_ZacActionsFromJson(Map<String, dynamic> json) =>
    _$_ZacActions(
      (json['actions'] as List<dynamic>)
          .map((e) => ZacAction.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

_$_ZacExecuteActionsBuilderOnce _$$_ZacExecuteActionsBuilderOnceFromJson(
        Map<String, dynamic> json) =>
    _$_ZacExecuteActionsBuilderOnce(
      actions: ZacActions.fromJson(json['actions'] as Object),
      child: json['child'] == null
          ? null
          : ZacBuilder<Widget>.fromJson(json['child'] as Object),
      $type: json['builder'] as String?,
    );

_$_ZacExecuteActionsBuilderListen _$$_ZacExecuteActionsBuilderListenFromJson(
        Map<String, dynamic> json) =>
    _$_ZacExecuteActionsBuilderListen(
      actions: ZacActions.fromJson(json['actions'] as Object),
      family: json['family'] as Object,
      child: json['child'] == null
          ? null
          : ZacBuilder<Widget>.fromJson(json['child'] as Object),
      $type: json['builder'] as String?,
    );

_$_ZacControlFlowActionIf _$$_ZacControlFlowActionIfFromJson(
        Map<String, dynamic> json) =>
    _$_ZacControlFlowActionIf(
      condition: (json['condition'] as List<dynamic>)
          .map((e) => ZacTransformers.fromJson(e as Object))
          .toList(),
      ifTrue: ZacActions.fromJson(json['ifTrue'] as Object),
      ifFalse: json['ifFalse'] == null
          ? null
          : ZacActions.fromJson(json['ifFalse'] as Object),
    );
