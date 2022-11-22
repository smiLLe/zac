// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'completer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DartCompleterVoidConsumeSharedValue
    _$$_DartCompleterVoidConsumeSharedValueFromJson(
            Map<String, dynamic> json) =>
        _$_DartCompleterVoidConsumeSharedValue(
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

_$_ZacCompleterProviderBuilderVoid _$$_ZacCompleterProviderBuilderVoidFromJson(
        Map<String, dynamic> json) =>
    _$_ZacCompleterProviderBuilderVoid(
      child: ZacFlutterWidget.fromJson(json['child'] as Object),
      family: json['family'] as Object,
    );

_$_ZacCompleterActionsVoid _$$_ZacCompleterActionsVoidFromJson(
        Map<String, dynamic> json) =>
    _$_ZacCompleterActionsVoid(
      completer:
          DartCompleterVoid.fromJson(json['completer'] as Map<String, dynamic>),
    );
