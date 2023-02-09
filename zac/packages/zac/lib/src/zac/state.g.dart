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
          family: $checkedConvert('family', (v) => v as String),
          value: $checkedConvert('value', (v) => v),
          mayConvertToBuilder:
              $checkedConvert('mayConvertToBuilder', (v) => v as bool? ?? true),
          mayBuildBuilder:
              $checkedConvert('mayBuildBuilder', (v) => v as bool? ?? false),
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
              (v) => (v as List<dynamic>)
                  .map((e) => ZacBuilder<ZacState>.fromJson(e as Object))
                  .toList()),
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

_$_StateActionsUpdate _$$_StateActionsUpdateFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_StateActionsUpdate',
      json,
      ($checkedConvert) {
        final val = _$_StateActionsUpdate(
          family: $checkedConvert('family', (v) => v as String),
          withValue: $checkedConvert(
              'withValue', (v) => ZacBuilder<Object?>.fromJson(v as Object)),
        );
        return val;
      },
    );
