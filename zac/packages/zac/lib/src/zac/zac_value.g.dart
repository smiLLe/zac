// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zac_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ZacValueActionsAsPayload _$$_ZacValueActionsAsPayloadFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ZacValueActionsAsPayload',
      json,
      ($checkedConvert) {
        final val = _$_ZacValueActionsAsPayload(
          value: $checkedConvert(
              'value', (v) => ZacBuilder<Object?>.fromJson(v as Object)),
          actions: $checkedConvert('actions',
              (v) => ZacBuilder<List<ZacAction>>.fromJson(v as Object)),
        );
        return val;
      },
    );

_$_ZacValue<T> _$$_ZacValueFromJson<T>(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ZacValue',
      json,
      ($checkedConvert) {
        final val = _$_ZacValue<T>(
          $checkedConvert('value', (v) => v as Object),
        );
        return val;
      },
    );

_$_ZacNum _$$_ZacNumFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_ZacNum',
      json,
      ($checkedConvert) {
        final val = _$_ZacNum(
          $checkedConvert('value', (v) => v as num),
        );
        return val;
      },
    );

_$_ZacInt _$$_ZacIntFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_ZacInt',
      json,
      ($checkedConvert) {
        final val = _$_ZacInt(
          $checkedConvert('value', (v) => v as int),
        );
        return val;
      },
    );

_$_ZacDouble _$$_ZacDoubleFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_ZacDouble',
      json,
      ($checkedConvert) {
        final val = _$_ZacDouble(
          $checkedConvert('value', (v) => (v as num).toDouble()),
        );
        return val;
      },
    );

_$_ZacString _$$_ZacStringFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_ZacString',
      json,
      ($checkedConvert) {
        final val = _$_ZacString(
          $checkedConvert('value', (v) => v as String),
        );
        return val;
      },
    );

_$_ZacBool _$$_ZacBoolFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_ZacBool',
      json,
      ($checkedConvert) {
        final val = _$_ZacBool(
          $checkedConvert('value', (v) => v as bool),
        );
        return val;
      },
    );

_$_ZacObject _$$_ZacObjectFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_ZacObject',
      json,
      ($checkedConvert) {
        final val = _$_ZacObject(
          $checkedConvert('value', (v) => v as Object),
        );
        return val;
      },
    );

_$_ZacDateTime _$$_ZacDateTimeFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ZacDateTime',
      json,
      ($checkedConvert) {
        final val = _$_ZacDateTime(
          $checkedConvert('value', (v) => DateTime.parse(v as String)),
        );
        return val;
      },
    );

_$_ZacListOfWidgets _$$_ZacListOfWidgetsFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ZacListOfWidgets',
      json,
      ($checkedConvert) {
        final val = _$_ZacListOfWidgets(
          $checkedConvert(
              'value',
              (v) => (v as List<dynamic>)
                  .map((e) => ZacBuilder<Widget>.fromJson(e as Object))
                  .toList()),
        );
        return val;
      },
    );

_$_ZacMapOfWidgets _$$_ZacMapOfWidgetsFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ZacMapOfWidgets',
      json,
      ($checkedConvert) {
        final val = _$_ZacMapOfWidgets(
          $checkedConvert(
              'value',
              (v) => (v as Map<String, dynamic>).map(
                    (k, e) =>
                        MapEntry(k, ZacBuilder<Widget>.fromJson(e as Object)),
                  )),
        );
        return val;
      },
    );

_$_ZacListOfActions _$$_ZacListOfActionsFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ZacListOfActions',
      json,
      ($checkedConvert) {
        final val = _$_ZacListOfActions(
          $checkedConvert(
              'value',
              (v) => (v as List<dynamic>)
                  .map((e) => ZacBuilder<ZacAction>.fromJson(e as Object))
                  .toList()),
        );
        return val;
      },
    );

_$_ZacListOfTransformers _$$_ZacListOfTransformersFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ZacListOfTransformers',
      json,
      ($checkedConvert) {
        final val = _$_ZacListOfTransformers(
          $checkedConvert(
              'value',
              (v) => (v as List<dynamic>)
                  .map((e) => ZacBuilder<ZacTransform>.fromJson(e as Object))
                  .toList()),
        );
        return val;
      },
    );
