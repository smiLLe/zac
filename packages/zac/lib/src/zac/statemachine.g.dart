// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statemachine.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StateNode _$$_StateNodeFromJson(Map<String, dynamic> json) => _$_StateNode(
      state: json['state'] as String,
      on: (json['on'] as List<dynamic>?)
              ?.map((e) => Transition.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Transition>[],
      actions: json['actions'] == null
          ? null
          : ZacActions.fromJson(json['actions'] as Object),
    );

_$_Transition _$$_TransitionFromJson(Map<String, dynamic> json) =>
    _$_Transition(
      event: json['event'] as String,
      target: json['target'] as String,
      actions: json['actions'] == null
          ? null
          : ZacActions.fromJson(json['actions'] as Object),
      guard: json['guard'] == null
          ? null
          : ZacTransformers.fromJson(json['guard'] as Object),
    );

_$_StateMachineActionsSend _$$_StateMachineActionsSendFromJson(
        Map<String, dynamic> json) =>
    _$_StateMachineActionsSend(
      family: json['family'] as Object,
      event: ZacString.fromJson(json['event'] as Object),
      payload: json['payload'] == null
          ? null
          : ZacObject.fromJson(json['payload'] as Object),
      $type: json['_converter'] as String?,
    );

_$_StateMachineActionsUpdateContext
    _$$_StateMachineActionsUpdateContextFromJson(Map<String, dynamic> json) =>
        _$_StateMachineActionsUpdateContext(
          transformer: ZacTransformers.fromJson(json['transformer'] as Object),
          $type: json['_converter'] as String?,
        );

_$_StateMachineActionsSetState _$$_StateMachineActionsSetStateFromJson(
        Map<String, dynamic> json) =>
    _$_StateMachineActionsSetState(
      json['state'] as String,
      $type: json['_converter'] as String?,
    );

_$_StateMachineProviderBuilder _$$_StateMachineProviderBuilderFromJson(
        Map<String, dynamic> json) =>
    _$_StateMachineProviderBuilder(
      key: json['key'] == null
          ? null
          : FlutterKey.fromJson(json['key'] as Object),
      initialState: ZacString.fromJson(json['initialState'] as Object),
      states: (json['states'] as List<dynamic>)
          .map((e) => StateNode.fromJson(e as Map<String, dynamic>))
          .toList(),
      family: ZacString.fromJson(json['family'] as Object),
      child: FlutterWidget.fromJson(json['child'] as Object),
      initialContext: json['initialContext'] == null
          ? null
          : ZacObject.fromJson(json['initialContext'] as Object),
    );
