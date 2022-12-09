// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ignore_pointer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterIgnorePointer _$$_FlutterIgnorePointerFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterIgnorePointer(
      key: json['key'] == null
          ? null
          : FlutterKey.fromJson(json['key'] as Object),
      ignoring: json['ignoring'] == null
          ? null
          : ZacValue<bool>.fromJson(
              json['ignoring'] as Object, (value) => value as bool),
      ignoringSemantics: json['ignoringSemantics'] == null
          ? null
          : ZacValue<bool>.fromJson(
              json['ignoringSemantics'] as Object, (value) => value as bool),
      child: json['child'] == null
          ? null
          : FlutterWidget.fromJson(json['child'] as Object),
    );
