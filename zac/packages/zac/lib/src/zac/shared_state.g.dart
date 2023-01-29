// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shared_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Watch _$$_WatchFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_Watch',
      json,
      ($checkedConvert) {
        final val = _$_Watch(
          select: $checkedConvert(
              'select',
              (v) => v == null
                  ? null
                  : ZacBuilder<List<ZacTransform>>.fromJson(v as Object)),
          $type: $checkedConvert('builder', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'builder'},
    );

_$_Read _$$_ReadFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_Read',
      json,
      ($checkedConvert) {
        final val = _$_Read(
          $type: $checkedConvert('builder', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'builder'},
    );

_$_ZacSharedStateProvideValue _$$_ZacSharedStateProvideValueFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ZacSharedStateProvideValue',
      json,
      ($checkedConvert) {
        final val = _$_ZacSharedStateProvideValue(
          $checkedConvert('value', (v) => v as Object),
          $type: $checkedConvert('builder', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'builder'},
    );

_$_ZacSharedStateProvideBuilder _$$_ZacSharedStateProvideBuilderFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ZacSharedStateProvideBuilder',
      json,
      ($checkedConvert) {
        final val = _$_ZacSharedStateProvideBuilder(
          $checkedConvert(
              'value', (v) => ZacBuilder<Object>.fromJson(v as Object)),
          $type: $checkedConvert('builder', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'builder'},
    );

_$_ZacSharedStateProvideNull _$$_ZacSharedStateProvideNullFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ZacSharedStateProvideNull',
      json,
      ($checkedConvert) {
        final val = _$_ZacSharedStateProvideNull(
          $type: $checkedConvert('builder', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'builder'},
    );

_$_ZacSharedStateProvider _$$_ZacSharedStateProviderFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ZacSharedStateProvider',
      json,
      ($checkedConvert) {
        final val = _$_ZacSharedStateProvider(
          states: $checkedConvert(
              'states',
              (v) => (v as Map<String, dynamic>).map(
                    (k, e) => MapEntry(
                        k,
                        ZacSharedStateProvide.fromJson(
                            e as Map<String, dynamic>)),
                  )),
          child: $checkedConvert(
              'child', (v) => ZacBuilder<Widget>.fromJson(v as Object)),
        );
        return val;
      },
    );

_$_SharedStateConsume<T> _$$_SharedStateConsumeFromJson<T>(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_SharedStateConsume',
      json,
      ($checkedConvert) {
        final val = _$_SharedStateConsume<T>(
          family: $checkedConvert('family', (v) => v as String),
          consume: $checkedConvert(
              'consume',
              (v) => v == null
                  ? null
                  : SharedStateConsumeType.fromJson(v as Map<String, dynamic>)),
          transformer: $checkedConvert(
              'transformer',
              (v) => v == null
                  ? null
                  : ZacBuilder<List<ZacTransform>?>.fromJson(v as Object)),
        );
        return val;
      },
    );

_$_SharedStateActionsUpdate _$$_SharedStateActionsUpdateFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_SharedStateActionsUpdate',
      json,
      ($checkedConvert) {
        final val = _$_SharedStateActionsUpdate(
          states: $checkedConvert(
              'states',
              (v) => (v as Map<String, dynamic>).map(
                    (k, e) => MapEntry(
                        k,
                        ZacSharedStateProvide.fromJson(
                            e as Map<String, dynamic>)),
                  )),
          $type: $checkedConvert('builder', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'builder'},
    );

_$_SharedStateActionsTransformCurrentValue
    _$$_SharedStateActionsTransformCurrentValueFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          r'_$_SharedStateActionsTransformCurrentValue',
          json,
          ($checkedConvert) {
            final val = _$_SharedStateActionsTransformCurrentValue(
              family: $checkedConvert('family', (v) => v as String),
              transformer: $checkedConvert('transformer',
                  (v) => ZacBuilder<List<ZacTransform>>.fromJson(v as Object)),
              $type: $checkedConvert('builder', (v) => v as String?),
            );
            return val;
          },
          fieldKeyMap: const {r'$type': 'builder'},
        );
