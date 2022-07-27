// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shared_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FilledSharedValue _$$FilledSharedValueFromJson(Map<String, dynamic> json) =>
    _$FilledSharedValue(
      json['data'] as Object,
      $type: json['_converter'] as String?,
    );

_$EmptySharedValue _$$EmptySharedValueFromJson(Map<String, dynamic> json) =>
    _$EmptySharedValue(
      $type: json['_converter'] as String?,
    );

_$_Convert _$$_ConvertFromJson(Map<String, dynamic> json) => _$_Convert(
      $type: json['_converter'] as String?,
    );

_$_IntAdd _$$_IntAddFromJson(Map<String, dynamic> json) => _$_IntAdd(
      amount: json['amount'] as int,
      $type: json['_converter'] as String?,
    );

_$_UpdateSharedValue _$$_UpdateSharedValueFromJson(Map<String, dynamic> json) =>
    _$_UpdateSharedValue(
      name: json['name'] as String,
      value: json['value'] as Object,
      transformer: (json['transformer'] as List<dynamic>?)
          ?.map(
              (e) => SharedValueTransformer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

_$_SharedValueConsumeTypeWatch _$$_SharedValueConsumeTypeWatchFromJson(
        Map<String, dynamic> json) =>
    _$_SharedValueConsumeTypeWatch(
      $type: json['_converter'] as String?,
    );

_$_SharedValueConsumeTypeRead _$$_SharedValueConsumeTypeReadFromJson(
        Map<String, dynamic> json) =>
    _$_SharedValueConsumeTypeRead(
      $type: json['_converter'] as String?,
    );

_$_SharedValueProviderBuilder _$$_SharedValueProviderBuilderFromJson(
        Map<String, dynamic> json) =>
    _$_SharedValueProviderBuilder(
      key: json['key'] == null
          ? null
          : FlutterKey.fromJson(json['key'] as Object),
      value: json['value'] as Object,
      transformer: (json['transformer'] as List<dynamic>?)
          ?.map(
              (e) => SharedValueTransformer.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String,
      child: ZacWidget.fromJson(json['child'] as Object),
    );
