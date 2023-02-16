// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ZacStateProvide _$$_ZacStateProvideFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ZacStateProvide',
      json,
      ($checkedConvert) {
        final val = _$_ZacStateProvide(
          builderOr: $checkedConvert(
              'builderOr', (v) => ZacBuilderOr.fromJson(v as Object)),
        );
        return val;
      },
    );

_$_ZacStatesProvider _$$_ZacStatesProviderFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ZacStatesProvider',
      json,
      ($checkedConvert) {
        final val = _$_ZacStatesProvider(
          states: $checkedConvert(
              'states',
              (v) => (v as Map<String, dynamic>).map(
                    (k, e) => MapEntry(
                        k, ZacBuilder<ZacStateCreate>.fromJson(e as Object)),
                  )),
          child: $checkedConvert(
              'child', (v) => ZacBuilder<Widget>.fromJson(v as Object)),
        );
        return val;
      },
    );

_$_ZacStateConsume<T> _$$_ZacStateConsumeFromJson<T>(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ZacStateConsume',
      json,
      ($checkedConvert) {
        final val = _$_ZacStateConsume<T>(
          family: $checkedConvert('family', (v) => v as String),
          mayBuildBuilder:
              $checkedConvert('mayBuildBuilder', (v) => v as bool? ?? true),
          transformer: $checkedConvert(
              'transformer',
              (v) => v == null
                  ? null
                  : ZacBuilder<List<ZacTransform>?>.fromJson(v as Object)),
        );
        return val;
      },
    );

_$_ZacStateActionsUpdate _$$_ZacStateActionsUpdateFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ZacStateActionsUpdate',
      json,
      ($checkedConvert) {
        final val = _$_ZacStateActionsUpdate(
          family: $checkedConvert('family', (v) => v as String),
          withValue: $checkedConvert(
              'withValue', (v) => ZacBuilder<Object?>.fromJson(v as Object)),
        );
        return val;
      },
    );

_$_ZacOnStateChangeExecActions _$$_ZacOnStateChangeExecActionsFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ZacOnStateChangeExecActions',
      json,
      ($checkedConvert) {
        final val = _$_ZacOnStateChangeExecActions(
          actions: $checkedConvert('actions',
              (v) => ZacBuilder<List<ZacAction>>.fromJson(v as Object)),
          family: $checkedConvert('family', (v) => v as String),
          child: $checkedConvert(
              'child',
              (v) =>
                  v == null ? null : ZacBuilder<Widget>.fromJson(v as Object)),
        );
        return val;
      },
    );
