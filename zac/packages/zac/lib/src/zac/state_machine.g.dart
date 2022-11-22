// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state_machine.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ZacTransition _$$_ZacTransitionFromJson(Map<String, dynamic> json) =>
    _$_ZacTransition(
      event: json['event'] as String,
      target: json['target'] as String,
    );

_$_ZacStateConfig _$$_ZacStateConfigFromJson(Map<String, dynamic> json) =>
    _$_ZacStateConfig(
      widget: ZacValue<FlutterWidget>.fromJson(json['widget'] as Object),
      on: (json['on'] as List<dynamic>?)
              ?.map((e) => ZacTransition.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ZacTransition>[],
    );

_$_ZacStateMachineProviderBuilder _$$_ZacStateMachineProviderBuilderFromJson(
        Map<String, dynamic> json) =>
    _$_ZacStateMachineProviderBuilder(
      key: json['key'] == null
          ? null
          : FlutterKey.fromJson(json['key'] as Object),
      family: ZacString.fromJson(json['family'] as Object),
      initialState: ZacString.fromJson(json['initialState'] as Object),
      states: (json['states'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(k, ZacStateConfig.fromJson(e as Map<String, dynamic>)),
      ),
      child: FlutterWidget.fromJson(json['child'] as Object),
      initialContext: json['initialContext'] == null
          ? null
          : ZacObject.fromJson(json['initialContext'] as Object),
    );

_$_ZacStateMachineBuildStateBuilder
    _$$_ZacStateMachineBuildStateBuilderFromJson(Map<String, dynamic> json) =>
        _$_ZacStateMachineBuildStateBuilder(
          key: json['key'] == null
              ? null
              : FlutterKey.fromJson(json['key'] as Object),
          family: ZacString.fromJson(json['family'] as Object),
          states: (json['states'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
          unmappedStateWidget: json['unmappedStateWidget'] == null
              ? null
              : FlutterWidget.fromJson(json['unmappedStateWidget'] as Object),
        );

_$_ZacStateMachineActionsSend _$$_ZacStateMachineActionsSendFromJson(
        Map<String, dynamic> json) =>
    _$_ZacStateMachineActionsSend(
      family: json['family'] as Object,
      event: ZacString.fromJson(json['event'] as Object),
      $type: json['converter'] as String?,
    );

_$_ZacStateMachineActionsTrySend _$$_ZacStateMachineActionsTrySendFromJson(
        Map<String, dynamic> json) =>
    _$_ZacStateMachineActionsTrySend(
      family: json['family'] as Object,
      event: ZacString.fromJson(json['event'] as Object),
      $type: json['converter'] as String?,
    );

_$_ZacStateMachineTransformerPickState
    _$$_ZacStateMachineTransformerPickStateFromJson(
            Map<String, dynamic> json) =>
        _$_ZacStateMachineTransformerPickState(
          $type: json['converter'] as String?,
        );

_$_ZacStateMachineTransformerPickContext
    _$$_ZacStateMachineTransformerPickContextFromJson(
            Map<String, dynamic> json) =>
        _$_ZacStateMachineTransformerPickContext(
          $type: json['converter'] as String?,
        );
