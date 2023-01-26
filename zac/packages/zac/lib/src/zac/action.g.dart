// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ZacActionPayloadTransformerToList
    _$$_ZacActionPayloadTransformerToListFromJson(Map<String, dynamic> json) =>
        $checkedCreate(
          r'_$_ZacActionPayloadTransformerToList',
          json,
          ($checkedConvert) {
            final val = _$_ZacActionPayloadTransformerToList(
              $type: $checkedConvert('builder', (v) => v as String?),
            );
            return val;
          },
          fieldKeyMap: const {r'$type': 'builder'},
        );

_$_ZacActionPayloadTransformerToObject
    _$$_ZacActionPayloadTransformerToObjectFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          r'_$_ZacActionPayloadTransformerToObject',
          json,
          ($checkedConvert) {
            final val = _$_ZacActionPayloadTransformerToObject(
              $type: $checkedConvert('builder', (v) => v as String?),
            );
            return val;
          },
          fieldKeyMap: const {r'$type': 'builder'},
        );

_$_ZacExecuteActionsBuilderOnce _$$_ZacExecuteActionsBuilderOnceFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ZacExecuteActionsBuilderOnce',
      json,
      ($checkedConvert) {
        final val = _$_ZacExecuteActionsBuilderOnce(
          actions: $checkedConvert('actions',
              (v) => ZacBuilder<List<ZacAction>>.fromJson(v as Object)),
          child: $checkedConvert(
              'child',
              (v) =>
                  v == null ? null : ZacBuilder<Widget>.fromJson(v as Object)),
          $type: $checkedConvert('builder', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'builder'},
    );

_$_ZacExecuteActionsBuilderListen _$$_ZacExecuteActionsBuilderListenFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ZacExecuteActionsBuilderListen',
      json,
      ($checkedConvert) {
        final val = _$_ZacExecuteActionsBuilderListen(
          actions: $checkedConvert('actions',
              (v) => ZacBuilder<List<ZacAction>>.fromJson(v as Object)),
          family: $checkedConvert('family', (v) => v as String),
          child: $checkedConvert(
              'child',
              (v) =>
                  v == null ? null : ZacBuilder<Widget>.fromJson(v as Object)),
          $type: $checkedConvert('builder', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'builder'},
    );

_$_ZacControlFlowActionIf _$$_ZacControlFlowActionIfFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ZacControlFlowActionIf',
      json,
      ($checkedConvert) {
        final val = _$_ZacControlFlowActionIf(
          condition: $checkedConvert('condition',
              (v) => ZacBuilder<List<ZacTransform>>.fromJson(v as Object)),
          ifTrue: $checkedConvert('ifTrue',
              (v) => ZacBuilder<List<ZacAction>>.fromJson(v as Object)),
          ifFalse: $checkedConvert(
              'ifFalse',
              (v) => v == null
                  ? null
                  : ZacBuilder<List<ZacAction>>.fromJson(v as Object)),
        );
        return val;
      },
    );
