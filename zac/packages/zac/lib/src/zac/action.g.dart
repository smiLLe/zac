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
      actions: ZacBuilder<List<ZacAction>>.fromJson(json['actions'] as Object),
      child: json['child'] == null
          ? null
          : ZacBuilder<Widget>.fromJson(json['child'] as Object),
      $type: json['builder'] as String?,
    );

_$_ZacExecuteActionsBuilderListen _$$_ZacExecuteActionsBuilderListenFromJson(
        Map<String, dynamic> json) =>
    _$_ZacExecuteActionsBuilderListen(
      actions: ZacBuilder<List<ZacAction>>.fromJson(json['actions'] as Object),
      family: json['family'] as Object,
      child: json['child'] == null
          ? null
          : ZacBuilder<Widget>.fromJson(json['child'] as Object),
      $type: json['builder'] as String?,
    );

_$_ZacControlFlowActionIf _$$_ZacControlFlowActionIfFromJson(
        Map<String, dynamic> json) =>
    _$_ZacControlFlowActionIf(
      condition: ZacBuilder<List<ZacTransformer>>.fromJson(
          json['condition'] as Object),
      ifTrue: ZacBuilder<List<ZacAction>>.fromJson(json['ifTrue'] as Object),
      ifFalse: json['ifFalse'] == null
          ? null
          : ZacBuilder<List<ZacAction>>.fromJson(json['ifFalse'] as Object),
    );
