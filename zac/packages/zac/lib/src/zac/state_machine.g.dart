// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state_machine.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ZacStateMachineTransition _$$_ZacStateMachineTransitionFromJson(
        Map<String, dynamic> json) =>
    _$_ZacStateMachineTransition(
      event: json['event'] as String,
      target: json['target'] as String,
    );

_$_ZacStateMachineStateConfig _$$_ZacStateMachineStateConfigFromJson(
        Map<String, dynamic> json) =>
    _$_ZacStateMachineStateConfig(
      on: (json['on'] as List<dynamic>?)
              ?.map((e) =>
                  ZacStateMachineTransition.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ZacStateMachineTransition>[],
      widget: json['widget'] == null
          ? null
          : ZacBuilder<Widget>.fromJson(json['widget'] as Object),
    );

_$_ZacStateMachineConfig _$$_ZacStateMachineConfigFromJson(
        Map<String, dynamic> json) =>
    _$_ZacStateMachineConfig(
      states: (json['states'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            k, ZacStateMachineStateConfig.fromJson(e as Map<String, dynamic>)),
      ),
      initialState: json['initialState'] as String,
      initialWidget: json['initialWidget'] == null
          ? null
          : ZacBuilder<Widget>.fromJson(json['initialWidget'] as Object),
    );

_$_ZacStateMachineProvider _$$_ZacStateMachineProviderFromJson(
        Map<String, dynamic> json) =>
    _$_ZacStateMachineProvider(
      machines: (json['machines'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            k, ZacStateMachineConfig.fromJson(e as Map<String, dynamic>)),
      ),
      child: ZacBuilder<Widget>.fromJson(json['child'] as Object),
    );

_$_ZacStateMachineBuild _$$_ZacStateMachineBuildFromJson(
        Map<String, dynamic> json) =>
    _$_ZacStateMachineBuild(
      family: json['family'] as String,
    );

_$_ZacStateMachineActionsSend _$$_ZacStateMachineActionsSendFromJson(
        Map<String, dynamic> json) =>
    _$_ZacStateMachineActionsSend(
      family: json['family'] as String,
      event: json['event'] as String,
      $type: json['builder'] as String?,
    );

_$_ZacStateMachineActionsTrySend _$$_ZacStateMachineActionsTrySendFromJson(
        Map<String, dynamic> json) =>
    _$_ZacStateMachineActionsTrySend(
      family: json['family'] as String,
      event: json['event'] as String,
      $type: json['builder'] as String?,
    );
