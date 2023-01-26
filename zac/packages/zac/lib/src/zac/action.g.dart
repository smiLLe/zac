// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ZacActionPayloadTransformerToList
    _$$_ZacActionPayloadTransformerToListFromJson(Map<String, dynamic> json) =>
        _$_ZacActionPayloadTransformerToList(
          $type: json['builder'] as String?,
        );

_$_ZacActionPayloadTransformerToObject
    _$$_ZacActionPayloadTransformerToObjectFromJson(
            Map<String, dynamic> json) =>
        _$_ZacActionPayloadTransformerToObject(
          $type: json['builder'] as String?,
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
      family: json['family'] as String,
      child: json['child'] == null
          ? null
          : ZacBuilder<Widget>.fromJson(json['child'] as Object),
      $type: json['builder'] as String?,
    );

_$_ZacControlFlowActionIf _$$_ZacControlFlowActionIfFromJson(
        Map<String, dynamic> json) =>
    _$_ZacControlFlowActionIf(
      condition:
          ZacBuilder<List<ZacTransform>>.fromJson(json['condition'] as Object),
      ifTrue: ZacBuilder<List<ZacAction>>.fromJson(json['ifTrue'] as Object),
      ifFalse: json['ifFalse'] == null
          ? null
          : ZacBuilder<List<ZacAction>>.fromJson(json['ifFalse'] as Object),
    );
