// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zac_values_test.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ZacValueTest _$$_ZacValueTestFromJson(Map<String, dynamic> json) =>
    _$_ZacValueTest(
      value: ZacValue<int>.fromJson(json['value'] as Object),
      simple: ZacValue<int>.fromJson(json['simple'] as Object),
      watch: ZacValue<int>.fromJson(json['watch'] as Object),
      read: ZacValue<int>.fromJson(json['read'] as Object),
      date: json['date'] == null
          ? null
          : ZacValue<DateTime>.fromJson(json['date'] as Object),
      custom: json['custom'] == null
          ? null
          : ZacValue<CustomData>.fromJson(json['custom'] as Object),
    );

_$_ZacValueReadTest _$$_ZacValueReadTestFromJson(Map<String, dynamic> json) =>
    _$_ZacValueReadTest(
      value: ZacValueRead<int>.fromJson(json['value'] as Object),
      simple: ZacValueRead<int>.fromJson(json['simple'] as Object),
      read: ZacValueRead<int>.fromJson(json['read'] as Object),
    );
