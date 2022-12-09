// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zac_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ZacValueValue<T> _$$_ZacValueValueFromJson<T>(Map<String, dynamic> json) =>
    _$_ZacValueValue<T>(
      value: _ValueConverter<T>().fromJson(json['value'] as Object),
      $type: json['converter'] as String?,
    );

_$_ZacValueBuilder<T> _$$_ZacValueBuilderFromJson<T>(
        Map<String, dynamic> json) =>
    _$_ZacValueBuilder<T>(
      builder: ZacBuilder<T>.fromJson(json['builder'] as Map<String, dynamic>),
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
          : SharedValueConsumeType.fromJson(
              json['forceConsume'] as Map<String, dynamic>),
      $type: json['converter'] as String?,
    );

_$_ZacValueListValue<T> _$$_ZacValueListValueFromJson<T>(
        Map<String, dynamic> json) =>
    _$_ZacValueListValue<T>(
      items: (json['items'] as List<dynamic>)
          .map((e) => _ValueListConverter<T>().fromJson(e as Object))
          .toList(),
      $type: json['converter'] as String?,
    );

_$_ZacValueListBuilder<T> _$$_ZacValueListBuilderFromJson<T>(
        Map<String, dynamic> json) =>
    _$_ZacValueListBuilder<T>(
      items: (json['items'] as List<dynamic>)
          .map((e) => ZacBuilder<T>.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['converter'] as String?,
    );

_$_ZacValueListConsume<T> _$$_ZacValueListConsumeFromJson<T>(
        Map<String, dynamic> json) =>
    _$_ZacValueListConsume<T>(
      family: json['family'] as Object,
      transformer: json['transformer'] == null
          ? null
          : ZacTransformers.fromJson(json['transformer'] as Object),
      itemTransformer: json['itemTransformer'] == null
          ? null
          : ZacTransformers.fromJson(json['itemTransformer'] as Object),
      select: json['select'] == null
          ? null
          : ZacTransformers.fromJson(json['select'] as Object),
      forceConsume: json['forceConsume'] == null
          ? null
          : SharedValueConsumeType.fromJson(
              json['forceConsume'] as Map<String, dynamic>),
      $type: json['converter'] as String?,
    );

_$_ZacListOfFlutterWidget _$$_ZacListOfFlutterWidgetFromJson(
        Map<String, dynamic> json) =>
    _$_ZacListOfFlutterWidget(
      items: (json['items'] as List<dynamic>)
          .map((e) => FlutterWidget.fromJson(e as Object))
          .toList(),
      $type: json['converter'] as String?,
    );

_$_ZacListOfFlutterWidgetSharedValue
    _$$_ZacListOfFlutterWidgetSharedValueFromJson(Map<String, dynamic> json) =>
        _$_ZacListOfFlutterWidgetSharedValue(
          family: json['family'] as Object,
          transformer: json['transformer'] == null
              ? null
              : ZacTransformers.fromJson(json['transformer'] as Object),
          itemTransformer: json['itemTransformer'] == null
              ? null
              : ZacTransformers.fromJson(json['itemTransformer'] as Object),
          select: json['select'] == null
              ? null
              : ZacTransformers.fromJson(json['select'] as Object),
          forceConsume: json['forceConsume'] == null
              ? null
              : SharedValueConsumeType.fromJson(
                  json['forceConsume'] as Map<String, dynamic>),
          $type: json['converter'] as String?,
        );

_$_ZacValueActionsAsPayload _$$_ZacValueActionsAsPayloadFromJson(
        Map<String, dynamic> json) =>
    _$_ZacValueActionsAsPayload(
      value: ZacValue<Object>.fromJson(json['value'] as Object),
      actions: ZacActions.fromJson(json['actions'] as Object),
    );
