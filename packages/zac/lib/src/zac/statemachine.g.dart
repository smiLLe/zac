// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statemachine.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StateNode _$$_StateNodeFromJson(Map<String, dynamic> json) => _$_StateNode(
      json['state'] as String,
      (json['on'] as List<dynamic>)
          .map((e) => Transition.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

_$_Transition _$$_TransitionFromJson(Map<String, dynamic> json) =>
    _$_Transition(
      json['event'] as String,
      json['targetState'] as String,
      actions: json['actions'] == null
          ? null
          : ZacActions.fromJson(json['actions'] as Object),
    );

_$_StateMachine _$$_StateMachineFromJson(Map<String, dynamic> json) =>
    _$_StateMachine(
      json['initial'] as String,
      (json['states'] as List<dynamic>)
          .map((e) => StateNode.fromJson(e as Map<String, dynamic>))
          .toList(),
      initialContext: json['initialContext'],
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
          transformer: (json['transformer'] as List<dynamic>)
              .map((e) => ZacTransformer.fromJson(e as Map<String, dynamic>))
              .toList(),
          $type: json['_converter'] as String?,
        );
