// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shared_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SharedValueActionsUpdate _$$_SharedValueActionsUpdateFromJson(
        Map<String, dynamic> json) =>
    _$_SharedValueActionsUpdate(
      family: json['family'] as Object,
      transformer: ZacTransformers.fromJson(json['transformer'] as Object),
      $type: json['converter'] as String?,
    );

_$_SharedValueActionsReplaceWith _$$_SharedValueActionsReplaceWithFromJson(
        Map<String, dynamic> json) =>
    _$_SharedValueActionsReplaceWith(
      family: json['family'] as Object,
      value: ZacValue<Object>.fromJson(json['value'] as Object),
      transformer: json['transformer'] == null
          ? null
          : ZacTransformers.fromJson(json['transformer'] as Object),
      $type: json['converter'] as String?,
    );

_$_SharedValueConsumeTypeWatch _$$_SharedValueConsumeTypeWatchFromJson(
        Map<String, dynamic> json) =>
    _$_SharedValueConsumeTypeWatch(
      select: json['select'] == null
          ? null
          : ZacTransformers.fromJson(json['select'] as Object),
      $type: json['converter'] as String?,
    );

_$_SharedValueConsumeTypeRead _$$_SharedValueConsumeTypeReadFromJson(
        Map<String, dynamic> json) =>
    _$_SharedValueConsumeTypeRead(
      $type: json['converter'] as String?,
    );

_$_SharedValueProviderBuilder _$$_SharedValueProviderBuilderFromJson(
        Map<String, dynamic> json) =>
    _$_SharedValueProviderBuilder(
      key: json['key'] == null
          ? null
          : FlutterKey.fromJson(json['key'] as Object),
      value: json['value'],
      transformer: json['transformer'] == null
          ? null
          : ZacTransformers.fromJson(json['transformer'] as Object),
      family: json['family'] as Object,
      child: FlutterWidget.fromJson(json['child'] as Object),
      autoCreate: json['autoCreate'] as bool? ?? false,
    );