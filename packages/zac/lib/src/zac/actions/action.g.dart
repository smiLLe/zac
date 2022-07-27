// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ActionPayloadNone _$$_ActionPayloadNoneFromJson(Map<String, dynamic> json) =>
    _$_ActionPayloadNone(
      $type: json['_converter'] as String?,
    );

_$_ActionPayloadWithData _$$_ActionPayloadWithDataFromJson(
        Map<String, dynamic> json) =>
    _$_ActionPayloadWithData(
      json['data'],
      $type: json['_converter'] as String?,
    );

_$_AnyActions _$$_AnyActionsFromJson(Map<String, dynamic> json) =>
    _$_AnyActions(
      (json['actions'] as List<dynamic>)
          .map((e) => AnyAction.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

_$_ExecuteActionsWidgetBuilder _$$_ExecuteActionsWidgetBuilderFromJson(
        Map<String, dynamic> json) =>
    _$_ExecuteActionsWidgetBuilder(
      key: json['key'] == null
          ? null
          : FlutterKey.fromJson(json['key'] as Object),
      actions: AnyActions.fromJson(json['actions'] as Object),
      child: json['child'] == null
          ? null
          : ZacWidget.fromJson(json['child'] as Object),
    );
