// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zac_build.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ConsumeSharedValue<T> _$$_ConsumeSharedValueFromJson<T>(
        Map<String, dynamic> json) =>
    _$_ConsumeSharedValue<T>(
      family: json['family'] as Object,
      transformer: json['transformer'] == null
          ? null
          : ZacTransformers.fromJson(json['transformer'] as Object),
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
              : ZacTransformers.fromJson(json['transformer'] as Object),
          itemTransformer: json['itemTransformer'] == null
              ? null
              : ZacTransformers.fromJson(json['itemTransformer'] as Object),
          forceConsume: json['forceConsume'] == null
              ? null
              : SharedValueConsumeType.fromJson(
                  json['forceConsume'] as Map<String, dynamic>),
        );
