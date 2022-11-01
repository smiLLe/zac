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

_$_ZacValueListConsumeSimple<TValue>
    _$$_ZacValueListConsumeSimpleFromJson<TValue>(Map<String, dynamic> json) =>
        _$_ZacValueListConsumeSimple<TValue>(
          value: (json['value'] as List<dynamic>)
              .map((e) => ZacValue<TValue>.fromJson(e as Object))
              .toList(),
          transformer: json['transformer'] == null
              ? null
              : ZacTransformers.fromJson(json['transformer'] as Object),
          $type: json['converter'] as String?,
        );

_$_ZacValueListConsumeWatch<TValue>
    _$$_ZacValueListConsumeWatchFromJson<TValue>(Map<String, dynamic> json) =>
        _$_ZacValueListConsumeWatch<TValue>(
          family: json['family'] as Object,
          transformer: json['transformer'] == null
              ? null
              : ZacTransformers.fromJson(json['transformer'] as Object),
          select: json['select'] == null
              ? null
              : ZacTransformers.fromJson(json['select'] as Object),
          $type: json['converter'] as String?,
        );

_$_ZacValueListConsumeRead<TValue> _$$_ZacValueListConsumeReadFromJson<TValue>(
        Map<String, dynamic> json) =>
    _$_ZacValueListConsumeRead<TValue>(
      family: json['family'] as Object,
      transformer: json['transformer'] == null
          ? null
          : ZacTransformers.fromJson(json['transformer'] as Object),
      $type: json['converter'] as String?,
    );

_$_ZacValueActionsAsPayload _$$_ZacValueActionsAsPayloadFromJson(
        Map<String, dynamic> json) =>
    _$_ZacValueActionsAsPayload(
      value: ZacValueOrRead<Object?>.fromJson(json['value'] as Object),
      actions: ZacActions.fromJson(json['actions'] as Object),
    );
