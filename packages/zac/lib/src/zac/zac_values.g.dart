// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zac_values.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ZacValueConsumeSimple<TValue> _$$_ZacValueConsumeSimpleFromJson<TValue>(
        Map<String, dynamic> json) =>
    _$_ZacValueConsumeSimple<TValue>(
      value: json['value'],
      transformer: json['transformer'] == null
          ? null
          : ZacTransformers.fromJson(json['transformer'] as Object),
      $type: json['converter'] as String?,
    );

_$_ZacValueConsumeWatch<TValue> _$$_ZacValueConsumeWatchFromJson<TValue>(
        Map<String, dynamic> json) =>
    _$_ZacValueConsumeWatch<TValue>(
      family: json['family'] as Object,
      transformer: json['transformer'] == null
          ? null
          : ZacTransformers.fromJson(json['transformer'] as Object),
      select: json['select'] == null
          ? null
          : ZacTransformers.fromJson(json['select'] as Object),
      $type: json['converter'] as String?,
    );

_$_ZacValueConsumeRead<TValue> _$$_ZacValueConsumeReadFromJson<TValue>(
        Map<String, dynamic> json) =>
    _$_ZacValueConsumeRead<TValue>(
      family: json['family'] as Object,
      transformer: json['transformer'] == null
          ? null
          : ZacTransformers.fromJson(json['transformer'] as Object),
      $type: json['converter'] as String?,
    );

_$ZacIntValue _$$ZacIntValueFromJson(Map<String, dynamic> json) =>
    _$ZacIntValue(
      json['value'] as int,
      transformer: json['transformer'] == null
          ? null
          : ZacTransformers.fromJson(json['transformer'] as Object),
      $type: json['converter'] as String?,
    );

_$ZacIntConsume _$$ZacIntConsumeFromJson(Map<String, dynamic> json) =>
    _$ZacIntConsume(
      json['family'] as Object,
      transformer: json['transformer'] == null
          ? null
          : ZacTransformers.fromJson(json['transformer'] as Object),
      consumeType: json['consumeType'] == null
          ? const SharedValueConsumeType.watch()
          : SharedValueConsumeType.fromJson(
              json['consumeType'] as Map<String, dynamic>),
      $type: json['converter'] as String?,
    );

_$ZacDoubleValue _$$ZacDoubleValueFromJson(Map<String, dynamic> json) =>
    _$ZacDoubleValue(
      (json['value'] as num).toDouble(),
      transformer: json['transformer'] == null
          ? null
          : ZacTransformers.fromJson(json['transformer'] as Object),
      $type: json['converter'] as String?,
    );

_$ZacDoubleConsume _$$ZacDoubleConsumeFromJson(Map<String, dynamic> json) =>
    _$ZacDoubleConsume(
      json['family'] as Object,
      transformer: json['transformer'] == null
          ? null
          : ZacTransformers.fromJson(json['transformer'] as Object),
      consumeType: json['consumeType'] == null
          ? const SharedValueConsumeType.watch()
          : SharedValueConsumeType.fromJson(
              json['consumeType'] as Map<String, dynamic>),
      $type: json['converter'] as String?,
    );

_$ZacStringValue _$$ZacStringValueFromJson(Map<String, dynamic> json) =>
    _$ZacStringValue(
      json['value'] as String,
      transformer: json['transformer'] == null
          ? null
          : ZacTransformers.fromJson(json['transformer'] as Object),
      $type: json['converter'] as String?,
    );

_$ZacStringConsume _$$ZacStringConsumeFromJson(Map<String, dynamic> json) =>
    _$ZacStringConsume(
      json['family'] as Object,
      transformer: json['transformer'] == null
          ? null
          : ZacTransformers.fromJson(json['transformer'] as Object),
      consumeType: json['consumeType'] == null
          ? const SharedValueConsumeType.watch()
          : SharedValueConsumeType.fromJson(
              json['consumeType'] as Map<String, dynamic>),
      $type: json['converter'] as String?,
    );

_$ZacBoolValue _$$ZacBoolValueFromJson(Map<String, dynamic> json) =>
    _$ZacBoolValue(
      json['value'] as bool,
      transformer: json['transformer'] == null
          ? null
          : ZacTransformers.fromJson(json['transformer'] as Object),
      $type: json['converter'] as String?,
    );

_$ZacBoolConsume _$$ZacBoolConsumeFromJson(Map<String, dynamic> json) =>
    _$ZacBoolConsume(
      json['family'] as Object,
      transformer: json['transformer'] == null
          ? null
          : ZacTransformers.fromJson(json['transformer'] as Object),
      consumeType: json['consumeType'] == null
          ? const SharedValueConsumeType.watch()
          : SharedValueConsumeType.fromJson(
              json['consumeType'] as Map<String, dynamic>),
      $type: json['converter'] as String?,
    );

_$ZacMapValue _$$ZacMapValueFromJson(Map<String, dynamic> json) =>
    _$ZacMapValue(
      json['value'] as Map<String, dynamic>,
      transformer: json['transformer'] == null
          ? null
          : ZacTransformers.fromJson(json['transformer'] as Object),
      $type: json['converter'] as String?,
    );

_$ZacMapConsume _$$ZacMapConsumeFromJson(Map<String, dynamic> json) =>
    _$ZacMapConsume(
      json['family'] as Object,
      transformer: json['transformer'] == null
          ? null
          : ZacTransformers.fromJson(json['transformer'] as Object),
      consumeType: json['consumeType'] == null
          ? const SharedValueConsumeType.watch()
          : SharedValueConsumeType.fromJson(
              json['consumeType'] as Map<String, dynamic>),
      $type: json['converter'] as String?,
    );

_$ZacListValue _$$ZacListValueFromJson(Map<String, dynamic> json) =>
    _$ZacListValue(
      json['value'] as List<dynamic>,
      transformer: json['transformer'] == null
          ? null
          : ZacTransformers.fromJson(json['transformer'] as Object),
      $type: json['converter'] as String?,
    );

_$ZacListConsume _$$ZacListConsumeFromJson(Map<String, dynamic> json) =>
    _$ZacListConsume(
      json['family'] as Object,
      transformer: json['transformer'] == null
          ? null
          : ZacTransformers.fromJson(json['transformer'] as Object),
      consumeType: json['consumeType'] == null
          ? const SharedValueConsumeType.watch()
          : SharedValueConsumeType.fromJson(
              json['consumeType'] as Map<String, dynamic>),
      $type: json['converter'] as String?,
    );

_$ZacObjectValue _$$ZacObjectValueFromJson(Map<String, dynamic> json) =>
    _$ZacObjectValue(
      json['value'] as Object,
      transformer: json['transformer'] == null
          ? null
          : ZacTransformers.fromJson(json['transformer'] as Object),
      $type: json['converter'] as String?,
    );

_$ZacObjectConsume _$$ZacObjectConsumeFromJson(Map<String, dynamic> json) =>
    _$ZacObjectConsume(
      json['family'] as Object,
      transformer: json['transformer'] == null
          ? null
          : ZacTransformers.fromJson(json['transformer'] as Object),
      consumeType: json['consumeType'] == null
          ? const SharedValueConsumeType.watch()
          : SharedValueConsumeType.fromJson(
              json['consumeType'] as Map<String, dynamic>),
      $type: json['converter'] as String?,
    );

_$ListOfZacWidgetValue _$$ListOfZacWidgetValueFromJson(
        Map<String, dynamic> json) =>
    _$ListOfZacWidgetValue(
      (json['value'] as List<dynamic>)
          .map((e) => FlutterWidget.fromJson(e as Object))
          .toList(),
      transformer: json['transformer'] == null
          ? null
          : ZacTransformers.fromJson(json['transformer'] as Object),
      $type: json['converter'] as String?,
    );

_$ListOfZacWidgetConsume _$$ListOfZacWidgetConsumeFromJson(
        Map<String, dynamic> json) =>
    _$ListOfZacWidgetConsume(
      json['family'] as Object,
      transformer: json['transformer'] == null
          ? null
          : ZacTransformers.fromJson(json['transformer'] as Object),
      consumeType: json['consumeType'] == null
          ? const SharedValueConsumeType.watch()
          : SharedValueConsumeType.fromJson(
              json['consumeType'] as Map<String, dynamic>),
      $type: json['converter'] as String?,
    );

_$_ZacWidgetConsumerBuilder _$$_ZacWidgetConsumerBuilderFromJson(
        Map<String, dynamic> json) =>
    _$_ZacWidgetConsumerBuilder(
      json['family'] as Object,
      transformer: json['transformer'] == null
          ? null
          : ZacTransformers.fromJson(json['transformer'] as Object),
      consumeType: json['consumeType'] == null
          ? const SharedValueConsumeType.watch()
          : SharedValueConsumeType.fromJson(
              json['consumeType'] as Map<String, dynamic>),
    );
