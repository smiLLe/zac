// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'foundation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterValueKey _$$_FlutterValueKeyFromJson(Map<String, dynamic> json) =>
    _$_FlutterValueKey(
      json['value'] as String,
      $type: json['converter'] as String?,
    );

_$_FlutterValueKeyConsumeSharedValue
    _$$_FlutterValueKeyConsumeSharedValueFromJson(Map<String, dynamic> json) =>
        _$_FlutterValueKeyConsumeSharedValue(
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

_$_FlutterGlobalKeyNavigatorState _$$_FlutterGlobalKeyNavigatorStateFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterGlobalKeyNavigatorState(
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

_$_FlutterGlobalKeyScaffoldMessengerState
    _$$_FlutterGlobalKeyScaffoldMessengerStateFromJson(
            Map<String, dynamic> json) =>
        _$_FlutterGlobalKeyScaffoldMessengerState(
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

_$_ZacProvideFlutterKeyGlobalNavigatorState
    _$$_ZacProvideFlutterKeyGlobalNavigatorStateFromJson(
            Map<String, dynamic> json) =>
        _$_ZacProvideFlutterKeyGlobalNavigatorState(
          child: ZacValue<Widget>.fromJson(json['child'] as Object),
          family: json['family'] as Object,
          debugLabel: json['debugLabel'] as String?,
          $type: json['converter'] as String?,
        );

_$_ZacProvideFlutterKeyGlobalKeyScaffoldMessengerState
    _$$_ZacProvideFlutterKeyGlobalKeyScaffoldMessengerStateFromJson(
            Map<String, dynamic> json) =>
        _$_ZacProvideFlutterKeyGlobalKeyScaffoldMessengerState(
          child: ZacValue<Widget>.fromJson(json['child'] as Object),
          family: json['family'] as Object,
          debugLabel: json['debugLabel'] as String?,
          $type: json['converter'] as String?,
        );
