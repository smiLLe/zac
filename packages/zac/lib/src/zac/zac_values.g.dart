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
