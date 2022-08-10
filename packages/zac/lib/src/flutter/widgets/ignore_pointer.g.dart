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
          : ZacBool.fromJson(json['ignoring'] as Object),
      ignoringSemantics: json['ignoringSemantics'] == null
          ? null
          : ZacBool.fromJson(json['ignoringSemantics'] as Object),
      child: json['child'] == null
          ? null
          : ZacWidget.fromJson(json['child'] as Object),
    );
