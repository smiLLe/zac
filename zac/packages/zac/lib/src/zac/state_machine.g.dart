// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state_machine.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ZacStateMachineTransition _$$_ZacStateMachineTransitionFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ZacStateMachineTransition',
      json,
      ($checkedConvert) {
        final val = _$_ZacStateMachineTransition(
          event: $checkedConvert('event', (v) => v as String),
          target: $checkedConvert('target', (v) => v as String),
        );
        return val;
      },
    );

_$_ZacStateMachineStateConfig _$$_ZacStateMachineStateConfigFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ZacStateMachineStateConfig',
      json,
      ($checkedConvert) {
        final val = _$_ZacStateMachineStateConfig(
          on: $checkedConvert(
              'on',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map((e) => ZacStateMachineTransition.fromJson(
                          e as Map<String, dynamic>))
                      .toList() ??
                  const <ZacStateMachineTransition>[]),
          widget: $checkedConvert(
              'widget',
              (v) =>
                  v == null ? null : ZacBuilder<Widget>.fromJson(v as Object)),
        );
        return val;
      },
    );

_$_ZacStateMachineProvide _$$_ZacStateMachineProvideFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ZacStateMachineProvide',
      json,
      ($checkedConvert) {
        final val = _$_ZacStateMachineProvide(
          family: $checkedConvert('family', (v) => v as String),
          states: $checkedConvert(
              'states',
              (v) => (v as Map<String, dynamic>).map(
                    (k, e) => MapEntry(
                        k,
                        ZacStateMachineStateConfig.fromJson(
                            e as Map<String, dynamic>)),
                  )),
          initialState: $checkedConvert('initialState', (v) => v as String),
          initialWidget: $checkedConvert(
              'initialWidget',
              (v) =>
                  v == null ? null : ZacBuilder<Widget>.fromJson(v as Object)),
        );
        return val;
      },
    );

_$_ZacStateMachineProvider _$$_ZacStateMachineProviderFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ZacStateMachineProvider',
      json,
      ($checkedConvert) {
        final val = _$_ZacStateMachineProvider(
          machines: $checkedConvert(
              'machines',
              (v) => (v as List<dynamic>)
                  .map((e) => ZacStateMachineProvide.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
          child: $checkedConvert(
              'child', (v) => ZacBuilder<Widget>.fromJson(v as Object)),
        );
        return val;
      },
    );

_$_ZacStateMachineBuild _$$_ZacStateMachineBuildFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ZacStateMachineBuild',
      json,
      ($checkedConvert) {
        final val = _$_ZacStateMachineBuild(
          family: $checkedConvert('family', (v) => v as String),
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
          widget: $checkedConvert(
              'widget',
              (v) =>
                  v == null ? null : ZacBuilder<Widget>.fromJson(v as Object)),
          family: $checkedConvert('family', (v) => v as String),
          event: $checkedConvert('event', (v) => v as String),
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
          widget: $checkedConvert(
              'widget',
              (v) =>
                  v == null ? null : ZacBuilder<Widget>.fromJson(v as Object)),
          family: $checkedConvert('family', (v) => v as String),
          event: $checkedConvert('event', (v) => v as String),
          $type: $checkedConvert('builder', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'builder'},
    );
