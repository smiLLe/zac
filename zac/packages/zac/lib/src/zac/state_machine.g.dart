// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state_machine.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ZacTransition _$$_ZacTransitionFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ZacTransition',
      json,
      ($checkedConvert) {
        final val = _$_ZacTransition(
          event: $checkedConvert('event', (v) => v as String),
          target: $checkedConvert('target', (v) => v as String),
        );
        return val;
      },
    );

_$_ZacStateConfig _$$_ZacStateConfigFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ZacStateConfig',
      json,
      ($checkedConvert) {
        final val = _$_ZacStateConfig(
          widget: $checkedConvert(
              'widget', (v) => ZacBuilder<Widget>.fromJson(v as Object)),
          on: $checkedConvert(
              'on',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map((e) =>
                          ZacTransition.fromJson(e as Map<String, dynamic>))
                      .toList() ??
                  const <ZacTransition>[]),
        );
        return val;
      },
    );

_$_ZacStateMachineProviderBuilder _$$_ZacStateMachineProviderBuilderFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ZacStateMachineProviderBuilder',
      json,
      ($checkedConvert) {
        final val = _$_ZacStateMachineProviderBuilder(
          key: $checkedConvert('key',
              (v) => v == null ? null : ZacBuilder<Key?>.fromJson(v as Object)),
          family: $checkedConvert(
              'family', (v) => ZacBuilder<String>.fromJson(v as Object)),
          initialState: $checkedConvert(
              'initialState', (v) => ZacBuilder<String>.fromJson(v as Object)),
          states: $checkedConvert(
              'states',
              (v) => (v as Map<String, dynamic>).map(
                    (k, e) => MapEntry(
                        k, ZacStateConfig.fromJson(e as Map<String, dynamic>)),
                  )),
          child: $checkedConvert(
              'child', (v) => ZacBuilder<Widget>.fromJson(v as Object)),
          initialContext: $checkedConvert(
              'initialContext',
              (v) =>
                  v == null ? null : ZacBuilder<Object?>.fromJson(v as Object)),
        );
        return val;
      },
    );

_$_ZacStateMachineBuildStateBuilder
    _$$_ZacStateMachineBuildStateBuilderFromJson(Map<String, dynamic> json) =>
        $checkedCreate(
          r'_$_ZacStateMachineBuildStateBuilder',
          json,
          ($checkedConvert) {
            final val = _$_ZacStateMachineBuildStateBuilder(
              key: $checkedConvert(
                  'key',
                  (v) => v == null
                      ? null
                      : ZacBuilder<Key?>.fromJson(v as Object)),
              family: $checkedConvert(
                  'family', (v) => ZacBuilder<String>.fromJson(v as Object)),
              states: $checkedConvert('states',
                  (v) => (v as List<dynamic>).map((e) => e as String).toList()),
              unmappedStateWidget: $checkedConvert(
                  'unmappedStateWidget',
                  (v) => v == null
                      ? null
                      : ZacBuilder<Widget?>.fromJson(v as Object)),
            );
            return val;
          },
        );

_$_ZacStateMachineActionsSend _$$_ZacStateMachineActionsSendFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ZacStateMachineActionsSend',
      json,
      ($checkedConvert) {
        final val = _$_ZacStateMachineActionsSend(
          family: $checkedConvert('family', (v) => v as String),
          event: $checkedConvert(
              'event', (v) => ZacBuilder<String>.fromJson(v as Object)),
          $type: $checkedConvert('builder', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'builder'},
    );

_$_ZacStateMachineActionsTrySend _$$_ZacStateMachineActionsTrySendFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ZacStateMachineActionsTrySend',
      json,
      ($checkedConvert) {
        final val = _$_ZacStateMachineActionsTrySend(
          family: $checkedConvert('family', (v) => v as String),
          event: $checkedConvert(
              'event', (v) => ZacBuilder<String>.fromJson(v as Object)),
          $type: $checkedConvert('builder', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'builder'},
    );

_$_ZacStateMachineTransformerPickState
    _$$_ZacStateMachineTransformerPickStateFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          r'_$_ZacStateMachineTransformerPickState',
          json,
          ($checkedConvert) {
            final val = _$_ZacStateMachineTransformerPickState(
              $type: $checkedConvert('builder', (v) => v as String?),
            );
            return val;
          },
          fieldKeyMap: const {r'$type': 'builder'},
        );

_$_ZacStateMachineTransformerPickContext
    _$$_ZacStateMachineTransformerPickContextFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          r'_$_ZacStateMachineTransformerPickContext',
          json,
          ($checkedConvert) {
            final val = _$_ZacStateMachineTransformerPickContext(
              $type: $checkedConvert('builder', (v) => v as String?),
            );
            return val;
          },
          fieldKeyMap: const {r'$type': 'builder'},
        );
