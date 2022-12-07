// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zac_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ZacValueBuilder<T> _$$_ZacValueBuilderFromJson<T>(
        Map<String, dynamic> json) =>
    _$_ZacValueBuilder<T>(
      builder:
          ZacBuilder<Object?>.fromJson(json['builder'] as Map<String, dynamic>),
      transformer: json['transformer'] == null
          ? null
          : ZacTransformers.fromJson(json['transformer'] as Object),
      $type: json['converter'] as String?,
    );

_$_ZacValueValue<T> _$$_ZacValueValueFromJson<T>(Map<String, dynamic> json) =>
    _$_ZacValueValue<T>(
      value: ZacValueConverter<T>().fromJson(json['value'] as Object),
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
      value: ZacValue<bool>.fromJson(json['value'] as Object),
      actions: ZacActions.fromJson(json['actions'] as Object),
    );
