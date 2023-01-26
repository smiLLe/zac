// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zac_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ZacValueActionsAsPayload _$$_ZacValueActionsAsPayloadFromJson(
        Map<String, dynamic> json) =>
    _$_ZacValueActionsAsPayload(
      value: ZacBuilder<Object?>.fromJson(json['value'] as Object),
      actions: ZacBuilder<List<ZacAction>>.fromJson(json['actions'] as Object),
    );

_$_ZacNum _$$_ZacNumFromJson(Map<String, dynamic> json) => _$_ZacNum(
      json['value'] as num,
    );

_$_ZacInt _$$_ZacIntFromJson(Map<String, dynamic> json) => _$_ZacInt(
      json['value'] as int,
    );

_$_ZacDouble _$$_ZacDoubleFromJson(Map<String, dynamic> json) => _$_ZacDouble(
      (json['value'] as num).toDouble(),
    );

_$_ZacString _$$_ZacStringFromJson(Map<String, dynamic> json) => _$_ZacString(
      json['value'] as String,
    );

_$_ZacBool _$$_ZacBoolFromJson(Map<String, dynamic> json) => _$_ZacBool(
      json['value'] as bool,
    );

_$_ZacObject _$$_ZacObjectFromJson(Map<String, dynamic> json) => _$_ZacObject(
      json['value'] as Object,
    );

_$_ZacDateTime _$$_ZacDateTimeFromJson(Map<String, dynamic> json) =>
    _$_ZacDateTime(
      DateTime.parse(json['value'] as String),
    );

_$_ZacListOfWidgets _$$_ZacListOfWidgetsFromJson(Map<String, dynamic> json) =>
    _$_ZacListOfWidgets(
      (json['value'] as List<dynamic>)
          .map((e) => ZacBuilder<Widget>.fromJson(e as Object))
          .toList(),
    );

_$_ZacMapOfWidgets _$$_ZacMapOfWidgetsFromJson(Map<String, dynamic> json) =>
    _$_ZacMapOfWidgets(
      (json['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, ZacBuilder<Widget>.fromJson(e as Object)),
      ),
    );

_$_ZacListOfActions _$$_ZacListOfActionsFromJson(Map<String, dynamic> json) =>
    _$_ZacListOfActions(
      (json['value'] as List<dynamic>)
          .map((e) => ZacBuilder<ZacAction>.fromJson(e as Object))
          .toList(),
    );

_$_ZacListOfTransformers _$$_ZacListOfTransformersFromJson(
        Map<String, dynamic> json) =>
    _$_ZacListOfTransformers(
      (json['value'] as List<dynamic>)
          .map((e) => ZacBuilder<ZacTransform>.fromJson(e as Object))
          .toList(),
    );
