// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'any_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ZacIntValue _$$ZacIntValueFromJson(Map<String, dynamic> json) =>
    _$ZacIntValue(
      json['value'] as int,
      $type: json['_converter'] as String?,
    );

_$ZacIntConsume _$$ZacIntConsumeFromJson(Map<String, dynamic> json) =>
    _$ZacIntConsume(
      name: json['name'] as String,
      consumeType: json['consumeType'] == null
          ? null
          : SharedValueConsumeType.fromJson(
              json['consumeType'] as Map<String, dynamic>),
      mapper: (json['mapper'] as List<dynamic>?)
          ?.map(
              (e) => SharedValueTransformer.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['_converter'] as String?,
    );

_$ZacDoubleValue _$$ZacDoubleValueFromJson(Map<String, dynamic> json) =>
    _$ZacDoubleValue(
      (json['value'] as num).toDouble(),
      $type: json['_converter'] as String?,
    );

_$ZacDoubleConsume _$$ZacDoubleConsumeFromJson(Map<String, dynamic> json) =>
    _$ZacDoubleConsume(
      name: json['name'] as String,
      consumeType: json['consumeType'] == null
          ? null
          : SharedValueConsumeType.fromJson(
              json['consumeType'] as Map<String, dynamic>),
      mapper: (json['mapper'] as List<dynamic>?)
          ?.map(
              (e) => SharedValueTransformer.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['_converter'] as String?,
    );

_$ZacStringValue _$$ZacStringValueFromJson(Map<String, dynamic> json) =>
    _$ZacStringValue(
      json['value'] as String,
      $type: json['_converter'] as String?,
    );

_$ZacStringConsume _$$ZacStringConsumeFromJson(Map<String, dynamic> json) =>
    _$ZacStringConsume(
      name: json['name'] as String,
      consumeType: json['consumeType'] == null
          ? null
          : SharedValueConsumeType.fromJson(
              json['consumeType'] as Map<String, dynamic>),
      mapper: (json['mapper'] as List<dynamic>?)
          ?.map(
              (e) => SharedValueTransformer.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['_converter'] as String?,
    );

_$ZacBoolValue _$$ZacBoolValueFromJson(Map<String, dynamic> json) =>
    _$ZacBoolValue(
      json['value'] as bool,
      $type: json['_converter'] as String?,
    );

_$ZacBoolConsume _$$ZacBoolConsumeFromJson(Map<String, dynamic> json) =>
    _$ZacBoolConsume(
      name: json['name'] as String,
      consumeType: json['consumeType'] == null
          ? null
          : SharedValueConsumeType.fromJson(
              json['consumeType'] as Map<String, dynamic>),
      mapper: (json['mapper'] as List<dynamic>?)
          ?.map(
              (e) => SharedValueTransformer.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['_converter'] as String?,
    );

_$ZacMapValue _$$ZacMapValueFromJson(Map<String, dynamic> json) =>
    _$ZacMapValue(
      json['value'] as Map<String, dynamic>,
      $type: json['_converter'] as String?,
    );

_$ZacMapConsume _$$ZacMapConsumeFromJson(Map<String, dynamic> json) =>
    _$ZacMapConsume(
      name: json['name'] as String,
      consumeType: json['consumeType'] == null
          ? null
          : SharedValueConsumeType.fromJson(
              json['consumeType'] as Map<String, dynamic>),
      mapper: (json['mapper'] as List<dynamic>?)
          ?.map(
              (e) => SharedValueTransformer.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['_converter'] as String?,
    );

_$ZacObjectValue _$$ZacObjectValueFromJson(Map<String, dynamic> json) =>
    _$ZacObjectValue(
      json['value'] as Object,
      $type: json['_converter'] as String?,
    );

_$ZacObjectConsume _$$ZacObjectConsumeFromJson(Map<String, dynamic> json) =>
    _$ZacObjectConsume(
      name: json['name'] as String,
      consumeType: json['consumeType'] == null
          ? null
          : SharedValueConsumeType.fromJson(
              json['consumeType'] as Map<String, dynamic>),
      mapper: (json['mapper'] as List<dynamic>?)
          ?.map(
              (e) => SharedValueTransformer.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['_converter'] as String?,
    );

_$ListOfZacWidgetValue _$$ListOfZacWidgetValueFromJson(
        Map<String, dynamic> json) =>
    _$ListOfZacWidgetValue(
      (json['value'] as List<dynamic>)
          .map((e) => ZacWidget.fromJson(e as Object))
          .toList(),
      $type: json['_converter'] as String?,
    );

_$ListOfZacWidgetConsume _$$ListOfZacWidgetConsumeFromJson(
        Map<String, dynamic> json) =>
    _$ListOfZacWidgetConsume(
      name: json['name'] as String,
      consumeType: json['consumeType'] == null
          ? null
          : SharedValueConsumeType.fromJson(
              json['consumeType'] as Map<String, dynamic>),
      mapper: (json['mapper'] as List<dynamic>?)
          ?.map(
              (e) => SharedValueTransformer.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['_converter'] as String?,
    );

_$_ZacWidgetConsumerBuilder _$$_ZacWidgetConsumerBuilderFromJson(
        Map<String, dynamic> json) =>
    _$_ZacWidgetConsumerBuilder(
      name: json['name'] as String,
      consumeType: json['consumeType'] == null
          ? null
          : SharedValueConsumeType.fromJson(
              json['consumeType'] as Map<String, dynamic>),
      mapper: (json['mapper'] as List<dynamic>?)
          ?.map(
              (e) => SharedValueTransformer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );