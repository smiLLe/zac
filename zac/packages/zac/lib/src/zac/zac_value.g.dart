// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zac_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ZacValueSimple<T> _$$_ZacValueSimpleFromJson<T extends Object?>(
        Map<String, dynamic> json) =>
    _$_ZacValueSimple<T>(
      json['value'] as Object,
    );

_$_ZacValueConsume<T> _$$_ZacValueConsumeFromJson<T extends Object?>(
        Map<String, dynamic> json) =>
    _$_ZacValueConsume<T>(
      family: json['family'] as Object,
      transformer: json['transformer'] == null
          ? null
          : ZacTransformers.fromJson(json['transformer'] as Object),
      forceConsume: json['forceConsume'] == null
          ? null
          : SharedValueConsumeType.fromJson(
              json['forceConsume'] as Map<String, dynamic>),
    );

_$_ZacValueListSimple<T, X>
    _$$_ZacValueListSimpleFromJson<T extends Object?, X extends List<T>?>(
            Map<String, dynamic> json) =>
        _$_ZacValueListSimple<T, X>(
          (json['items'] as List<dynamic>)
              .map((e) => ZacValue<T>.fromJson(e as Object))
              .toList(),
        );

_$_ZacValueListConsume<T, X>
    _$$_ZacValueListConsumeFromJson<T extends Object?, X extends List<T>?>(
            Map<String, dynamic> json) =>
        _$_ZacValueListConsume<T, X>(
          family: json['family'] as Object,
          transformer: json['transformer'] == null
              ? null
              : ZacTransformers.fromJson(json['transformer'] as Object),
          itemTransformer: json['itemTransformer'] == null
              ? null
              : ZacTransformers.fromJson(json['itemTransformer'] as Object),
          forceConsume: json['forceConsume'] == null
              ? null
              : SharedValueConsumeType.fromJson(
                  json['forceConsume'] as Map<String, dynamic>),
        );

_$_ZacValueMap<T, X>
    _$$_ZacValueMapFromJson<T extends Object?, X extends Map<String, T>?>(
            Map<String, dynamic> json) =>
        _$_ZacValueMap<T, X>(
          items: (json['items'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(k, ZacValue<T>.fromJson(e as Object)),
          ),
          $type: json['builder'] as String?,
        );

_$_ZacValueMapConsume<T, X> _$$_ZacValueMapConsumeFromJson<T extends Object?,
        X extends Map<String, T>?>(Map<String, dynamic> json) =>
    _$_ZacValueMapConsume<T, X>(
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
      $type: json['builder'] as String?,
    );

_$_ZacValueActionsAsPayload _$$_ZacValueActionsAsPayloadFromJson(
        Map<String, dynamic> json) =>
    _$_ZacValueActionsAsPayload(
      value: ZacValue<Object?>.fromJson(json['value'] as Object),
      actions: ZacActions.fromJson(json['actions'] as Object),
    );
