// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zac_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ZacValue<T> _$$_ZacValueFromJson<T extends Object?>(
        Map<String, dynamic> json) =>
    _$_ZacValue<T>(
      _Converter<T>().fromJson(json['value']),
    );

_$_ZacValueListSimple<T, X>
    _$$_ZacValueListSimpleFromJson<T extends Object?, X extends List<T>?>(
            Map<String, dynamic> json) =>
        _$_ZacValueListSimple<T, X>(
          (json['items'] as List<dynamic>)
              .map((e) => ZacBuilder<T>.fromJson(e as Object))
              .toList(),
        );

_$_ZacValueMap<T, X>
    _$$_ZacValueMapFromJson<T extends Object?, X extends Map<String, T>?>(
            Map<String, dynamic> json) =>
        _$_ZacValueMap<T, X>(
          (json['items'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(k, ZacBuilder<T>.fromJson(e as Object)),
          ),
        );

_$_ZacValueActionsAsPayload _$$_ZacValueActionsAsPayloadFromJson(
        Map<String, dynamic> json) =>
    _$_ZacValueActionsAsPayload(
      value: ZacBuilder<Object?>.fromJson(json['value'] as Object),
      actions: ZacActions.fromJson(json['actions'] as Map<String, dynamic>),
    );
