// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transformers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Convert _$$_ConvertFromJson(Map<String, dynamic> json) => _$_Convert();

_$_MapMapValues _$$_MapMapValuesFromJson(Map<String, dynamic> json) =>
    _$_MapMapValues(
      transformer: (json['transformer'] as List<dynamic>)
          .map(
              (e) => SharedValueTransformer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

_$_ListMap _$$_ListMapFromJson(Map<String, dynamic> json) => _$_ListMap(
      transformer: (json['transformer'] as List<dynamic>)
          .map(
              (e) => SharedValueTransformer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
