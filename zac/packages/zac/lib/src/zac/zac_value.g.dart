// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zac_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ZacValueConsumeTypeRead _$$_ZacValueConsumeTypeReadFromJson(
        Map<String, dynamic> json) =>
    _$_ZacValueConsumeTypeRead(
      $type: json['converter'] as String?,
    );

_$_ZacValueConsumeTypeWatch _$$_ZacValueConsumeTypeWatchFromJson(
        Map<String, dynamic> json) =>
    _$_ZacValueConsumeTypeWatch(
      $type: json['converter'] as String?,
    );

_$_ZacValue<T> _$$_ZacValueFromJson<T>(Map<String, dynamic> json) =>
    _$_ZacValue<T>(
      value: json['value'],
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
          : ZacValueConsumeType.fromJson(
              json['forceConsume'] as Map<String, dynamic>),
      $type: json['converter'] as String?,
    );

_$_ZacValueList<T> _$$_ZacValueListFromJson<T>(Map<String, dynamic> json) =>
    _$_ZacValueList<T>(
      values: json['values'] as List<dynamic>,
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
          : ZacValueConsumeType.fromJson(
              json['forceConsume'] as Map<String, dynamic>),
      $type: json['converter'] as String?,
    );

_$_ZacValueActionsAsPayload _$$_ZacValueActionsAsPayloadFromJson(
        Map<String, dynamic> json) =>
    _$_ZacValueActionsAsPayload(
      value: ZacValue<Object?>.fromJson(json['value'] as Object),
      actions: ZacActions.fromJson(json['actions'] as Object),
    );
