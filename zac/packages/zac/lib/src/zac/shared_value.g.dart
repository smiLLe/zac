// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shared_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SharedValueActionsUpdate _$$_SharedValueActionsUpdateFromJson(
        Map<String, dynamic> json) =>
    _$_SharedValueActionsUpdate(
      family: json['family'] as Object,
      transformer: json['transformer'] == null
          ? null
          : ZacTransformers.fromJson(json['transformer'] as Object),
      ifNoPayloadTakeCurrent: json['ifNoPayloadTakeCurrent'] as bool? ?? false,
      $type: json['builder'] as String?,
    );

_$_SharedValueActionsRefresh _$$_SharedValueActionsRefreshFromJson(
        Map<String, dynamic> json) =>
    _$_SharedValueActionsRefresh(
      family: json['family'] as Object,
      $type: json['builder'] as String?,
    );

_$_SharedValueConsumeTypeWatch _$$_SharedValueConsumeTypeWatchFromJson(
        Map<String, dynamic> json) =>
    _$_SharedValueConsumeTypeWatch(
      select: json['select'] == null
          ? null
          : ZacTransformers.fromJson(json['select'] as Object),
      $type: json['builder'] as String?,
    );

_$_SharedValueConsumeTypeRead _$$_SharedValueConsumeTypeReadFromJson(
        Map<String, dynamic> json) =>
    _$_SharedValueConsumeTypeRead(
      $type: json['builder'] as String?,
    );

_$_SharedValueProviderBuilder _$$_SharedValueProviderBuilderFromJson(
        Map<String, dynamic> json) =>
    _$_SharedValueProviderBuilder(
      key: json['key'] == null
          ? null
          : ZacBuilder<Key?>.fromJson(json['key'] as Object),
      value: json['value'],
      transformer: json['transformer'] == null
          ? null
          : ZacTransformers.fromJson(json['transformer'] as Object),
      family: json['family'] as Object,
      child: ZacBuilder<Widget>.fromJson(json['child'] as Object),
      autoCreate: json['autoCreate'] as bool? ?? true,
    );
