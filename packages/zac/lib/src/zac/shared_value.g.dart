// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shared_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FilledSharedValue _$$FilledSharedValueFromJson(Map<String, dynamic> json) =>
    _$FilledSharedValue(
      json['data'],
      $type: json['_converter'] as String?,
    );

_$EmptySharedValue _$$EmptySharedValueFromJson(Map<String, dynamic> json) =>
    _$EmptySharedValue(
      $type: json['_converter'] as String?,
    );

_$_SharedValueInteractionUpdate _$$_SharedValueInteractionUpdateFromJson(
        Map<String, dynamic> json) =>
    _$_SharedValueInteractionUpdate(
      family: json['family'] as Object,
      transformer: (json['transformer'] as List<dynamic>)
          .map((e) => ZacTransformer.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['_converter'] as String?,
    );

_$_SharedValueInteractionReplaceWith
    _$$_SharedValueInteractionReplaceWithFromJson(Map<String, dynamic> json) =>
        _$_SharedValueInteractionReplaceWith(
          family: json['family'] as Object,
          value: json['value'] as Object,
          transformer: (json['transformer'] as List<dynamic>?)
              ?.map((e) => ZacTransformer.fromJson(e as Map<String, dynamic>))
              .toList(),
          $type: json['_converter'] as String?,
        );

_$_SharedValueConsumeTypeWatch _$$_SharedValueConsumeTypeWatchFromJson(
        Map<String, dynamic> json) =>
    _$_SharedValueConsumeTypeWatch(
      select: (json['select'] as List<dynamic>?)
          ?.map((e) => ZacTransformer.fromJson(e as Map<String, dynamic>))
          .toList(),
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
      value: json['value'],
      transformer: (json['transformer'] as List<dynamic>?)
          ?.map((e) => ZacTransformer.fromJson(e as Map<String, dynamic>))
          .toList(),
      family: json['family'] as Object,
      child: ZacWidget.fromJson(json['child'] as Object),
    );
