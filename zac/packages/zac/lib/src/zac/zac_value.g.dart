// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zac_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ZacValueConsumeOnly<T> _$$_ZacValueConsumeOnlyFromJson<T>(
        Map<String, dynamic> json) =>
    _$_ZacValueConsumeOnly<T>(
      ZacValue<T>.fromJson(json['zacValue'] as Object),
    );

_$_ZacValue<T> _$$_ZacValueFromJson<T>(Map<String, dynamic> json) =>
    _$_ZacValue<T>(
      data: json['data'],
      transformer: json['transformer'] == null
          ? null
          : ZacTransformers.fromJson(json['transformer'] as Object),
      $type: json['converter'] as String?,
    );

_$_ZacValueConsume<T> _$$_ZacValueConsumeFromJson<T>(
        Map<String, dynamic> json) =>
    _$_ZacValueConsume<T>(
      family: json['family'] as Object,
      transformer: json['transformer'] == null
          ? null
          : ZacTransformers.fromJson(json['transformer'] as Object),
      select: json['select'] == null
          ? null
          : ZacTransformers.fromJson(json['select'] as Object),
      forceConsume: json['forceConsume'] == null
          ? null
          : SharedValueConsumeType.fromJson(
              json['forceConsume'] as Map<String, dynamic>),
      $type: json['converter'] as String?,
    );

_$_ZacValueMap<T> _$$_ZacValueMapFromJson<T>(Map<String, dynamic> json) =>
    _$_ZacValueMap<T>(
      data: json['data'] as Map<String, dynamic>,
      transformer: json['transformer'] == null
          ? null
          : ZacTransformers.fromJson(json['transformer'] as Object),
      $type: json['converter'] as String?,
    );

_$_ZacValueMapConsume<T> _$$_ZacValueMapConsumeFromJson<T>(
        Map<String, dynamic> json) =>
    _$_ZacValueMapConsume<T>(
      family: json['family'] as Object,
      transformer: json['transformer'] == null
          ? null
          : ZacTransformers.fromJson(json['transformer'] as Object),
      select: json['select'] == null
          ? null
          : ZacTransformers.fromJson(json['select'] as Object),
      forceConsume: json['forceConsume'] == null
          ? null
          : SharedValueConsumeType.fromJson(
              json['forceConsume'] as Map<String, dynamic>),
      $type: json['converter'] as String?,
    );

_$_ZacValueList<T> _$$_ZacValueListFromJson<T>(Map<String, dynamic> json) =>
    _$_ZacValueList<T>(
      data: json['data'] as List<dynamic>,
      transformer: json['transformer'] == null
          ? null
          : ZacTransformers.fromJson(json['transformer'] as Object),
      $type: json['converter'] as String?,
    );

_$_ZacValueListConsume<T> _$$_ZacValueListConsumeFromJson<T>(
        Map<String, dynamic> json) =>
    _$_ZacValueListConsume<T>(
      family: json['family'] as Object,
      transformer: json['transformer'] == null
          ? null
          : ZacTransformers.fromJson(json['transformer'] as Object),
      select: json['select'] == null
          ? null
          : ZacTransformers.fromJson(json['select'] as Object),
      forceConsume: json['forceConsume'] == null
          ? null
          : SharedValueConsumeType.fromJson(
              json['forceConsume'] as Map<String, dynamic>),
      $type: json['converter'] as String?,
    );

_$_ZacValueActionsAsPayload _$$_ZacValueActionsAsPayloadFromJson(
        Map<String, dynamic> json) =>
    _$_ZacValueActionsAsPayload(
      value: ZacValue<Object?>.fromJson(json['value'] as Object),
      actions: ZacActions.fromJson(json['actions'] as Object),
    );
