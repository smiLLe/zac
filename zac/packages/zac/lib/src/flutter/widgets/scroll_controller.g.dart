// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scroll_controller.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ScrollControllerConsumeSharedValue
    _$$_ScrollControllerConsumeSharedValueFromJson(Map<String, dynamic> json) =>
        _$_ScrollControllerConsumeSharedValue(
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
        );
