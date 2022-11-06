// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ts_test.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TsTest _$$_TsTestFromJson(Map<String, dynamic> json) => _$_TsTest(
      json['reqButOpt'] as int?,
      DateTime.parse(json['someDate'] as String),
      reqInt: ZacValue<int>.fromJson(json['reqInt'] as Object),
      optionalInt: json['optionalInt'] == null
          ? null
          : ZacValue<int>.fromJson(json['optionalInt'] as Object),
      deep1: json['deep1'] == null
          ? null
          : ZacValue<ZacValue<ZacValue<int>>>.fromJson(json['deep1'] as Object),
      deep2: json['deep2'] == null
          ? null
          : ZacValue<ZacValue<ZacValue<int>?>>.fromJson(
              json['deep2'] as Object),
    );
