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
          : ZacBuilder<List<ZacTransformer>?>.fromJson(
              json['transformer'] as Object),
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
          : ZacBuilder<List<ZacTransformer>>.fromJson(json['select'] as Object),
      $type: json['builder'] as String?,
    );

_$_SharedValueConsumeTypeRead _$$_SharedValueConsumeTypeReadFromJson(
        Map<String, dynamic> json) =>
    _$_SharedValueConsumeTypeRead(
      $type: json['builder'] as String?,
    );

_$_ProvideInt _$$_ProvideIntFromJson(Map<String, dynamic> json) =>
    _$_ProvideInt(
      key: json['key'] == null
          ? null
          : ZacBuilder<Key?>.fromJson(json['key'] as Object),
      value: json['value'] as int,
      family: json['family'] as String,
      child: ZacBuilder<Widget>.fromJson(json['child'] as Object),
      autoCreate: json['autoCreate'] as bool? ?? true,
      $type: json['builder'] as String?,
    );

_$_ProvideDouble _$$_ProvideDoubleFromJson(Map<String, dynamic> json) =>
    _$_ProvideDouble(
      key: json['key'] == null
          ? null
          : ZacBuilder<Key?>.fromJson(json['key'] as Object),
      value: (json['value'] as num).toDouble(),
      family: json['family'] as String,
      child: ZacBuilder<Widget>.fromJson(json['child'] as Object),
      autoCreate: json['autoCreate'] as bool? ?? true,
      $type: json['builder'] as String?,
    );

_$_ProvideString _$$_ProvideStringFromJson(Map<String, dynamic> json) =>
    _$_ProvideString(
      key: json['key'] == null
          ? null
          : ZacBuilder<Key?>.fromJson(json['key'] as Object),
      value: json['value'] as String,
      family: json['family'] as String,
      child: ZacBuilder<Widget>.fromJson(json['child'] as Object),
      autoCreate: json['autoCreate'] as bool? ?? true,
      $type: json['builder'] as String?,
    );

_$_ProvideBool _$$_ProvideBoolFromJson(Map<String, dynamic> json) =>
    _$_ProvideBool(
      key: json['key'] == null
          ? null
          : ZacBuilder<Key?>.fromJson(json['key'] as Object),
      value: json['value'] as bool,
      family: json['family'] as String,
      child: ZacBuilder<Widget>.fromJson(json['child'] as Object),
      autoCreate: json['autoCreate'] as bool? ?? true,
      $type: json['builder'] as String?,
    );

_$_ProvideObject _$$_ProvideObjectFromJson(Map<String, dynamic> json) =>
    _$_ProvideObject(
      key: json['key'] == null
          ? null
          : ZacBuilder<Key?>.fromJson(json['key'] as Object),
      value: json['value'] as Object,
      family: json['family'] as String,
      child: ZacBuilder<Widget>.fromJson(json['child'] as Object),
      transformer: json['transformer'] == null
          ? null
          : ZacBuilder<List<ZacTransformer>?>.fromJson(
              json['transformer'] as Object),
      autoCreate: json['autoCreate'] as bool? ?? true,
      $type: json['builder'] as String?,
    );

_$_ProvideNull _$$_ProvideNullFromJson(Map<String, dynamic> json) =>
    _$_ProvideNull(
      key: json['key'] == null
          ? null
          : ZacBuilder<Key?>.fromJson(json['key'] as Object),
      family: json['family'] as String,
      child: ZacBuilder<Widget>.fromJson(json['child'] as Object),
      autoCreate: json['autoCreate'] as bool? ?? true,
      $type: json['builder'] as String?,
    );

_$_ProvideWidget _$$_ProvideWidgetFromJson(Map<String, dynamic> json) =>
    _$_ProvideWidget(
      key: json['key'] == null
          ? null
          : ZacBuilder<Key?>.fromJson(json['key'] as Object),
      value: ZacBuilder<Widget>.fromJson(json['value'] as Object),
      family: json['family'] as String,
      child: ZacBuilder<Widget>.fromJson(json['child'] as Object),
      autoCreate: json['autoCreate'] as bool? ?? true,
      $type: json['builder'] as String?,
    );

_$_ProvideWidgets _$$_ProvideWidgetsFromJson(Map<String, dynamic> json) =>
    _$_ProvideWidgets(
      key: json['key'] == null
          ? null
          : ZacBuilder<Key?>.fromJson(json['key'] as Object),
      value: ZacListBuilder<Widget, List<Widget>>.fromJson(
          json['value'] as Object),
      family: json['family'] as String,
      child: ZacBuilder<Widget>.fromJson(json['child'] as Object),
      autoCreate: json['autoCreate'] as bool? ?? true,
      $type: json['builder'] as String?,
    );

_$_ProvideWidgetsMap _$$_ProvideWidgetsMapFromJson(Map<String, dynamic> json) =>
    _$_ProvideWidgetsMap(
      key: json['key'] == null
          ? null
          : ZacBuilder<Key?>.fromJson(json['key'] as Object),
      value: ZacMapBuilder<Widget, Map<String, Widget>>.fromJson(
          json['value'] as Object),
      family: json['family'] as String,
      child: ZacBuilder<Widget>.fromJson(json['child'] as Object),
      autoCreate: json['autoCreate'] as bool? ?? true,
      $type: json['builder'] as String?,
    );

_$_ProvideAnyBuilder _$$_ProvideAnyBuilderFromJson(Map<String, dynamic> json) =>
    _$_ProvideAnyBuilder(
      key: json['key'] == null
          ? null
          : ZacBuilder<Key?>.fromJson(json['key'] as Object),
      value: ZacBuilder<Object>.fromJson(json['value'] as Object),
      family: json['family'] as String,
      child: ZacBuilder<Widget>.fromJson(json['child'] as Object),
      autoCreate: json['autoCreate'] as bool? ?? true,
      $type: json['builder'] as String?,
    );

_$_ConsumeSharedValue<T> _$$_ConsumeSharedValueFromJson<T>(
        Map<String, dynamic> json) =>
    _$_ConsumeSharedValue<T>(
      family: json['family'] as Object,
      transformer: json['transformer'] == null
          ? null
          : ZacBuilder<List<ZacTransformer>?>.fromJson(
              json['transformer'] as Object),
      forceConsume: json['forceConsume'] == null
          ? null
          : SharedValueConsumeType.fromJson(
              json['forceConsume'] as Map<String, dynamic>),
    );

_$_ConsumeSharedValueList<T, X>
    _$$_ConsumeSharedValueListFromJson<T extends Object?, X extends List<T>?>(
            Map<String, dynamic> json) =>
        _$_ConsumeSharedValueList<T, X>(
          family: json['family'] as Object,
          transformer: json['transformer'] == null
              ? null
              : ZacBuilder<List<ZacTransformer>?>.fromJson(
                  json['transformer'] as Object),
          itemTransformer: json['itemTransformer'] == null
              ? null
              : ZacBuilder<List<ZacTransformer>?>.fromJson(
                  json['itemTransformer'] as Object),
          forceConsume: json['forceConsume'] == null
              ? null
              : SharedValueConsumeType.fromJson(
                  json['forceConsume'] as Map<String, dynamic>),
        );

_$_ConsumeSharedValueMap<T, X> _$$_ConsumeSharedValueMapFromJson<
        T extends Object?,
        X extends Map<String, T>?>(Map<String, dynamic> json) =>
    _$_ConsumeSharedValueMap<T, X>(
      family: json['family'] as Object,
      transformer: json['transformer'] == null
          ? null
          : ZacBuilder<List<ZacTransformer>?>.fromJson(
              json['transformer'] as Object),
      itemTransformer: json['itemTransformer'] == null
          ? null
          : ZacBuilder<List<ZacTransformer>?>.fromJson(
              json['itemTransformer'] as Object),
      forceConsume: json['forceConsume'] == null
          ? null
          : SharedValueConsumeType.fromJson(
              json['forceConsume'] as Map<String, dynamic>),
    );
