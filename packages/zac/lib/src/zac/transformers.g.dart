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
      $type: json['_converter'] as String?,
    );

_$_ListSingle _$$_ListSingleFromJson(Map<String, dynamic> json) =>
    _$_ListSingle(
      $type: json['_converter'] as String?,
    );

_$_ListFirst _$$_ListFirstFromJson(Map<String, dynamic> json) => _$_ListFirst(
      $type: json['_converter'] as String?,
    );

_$_ListLast _$$_ListLastFromJson(Map<String, dynamic> json) => _$_ListLast(
      $type: json['_converter'] as String?,
    );

_$_ListLength _$$_ListLengthFromJson(Map<String, dynamic> json) =>
    _$_ListLength(
      $type: json['_converter'] as String?,
    );

_$_ObjectIsList _$$_ObjectIsListFromJson(Map<String, dynamic> json) =>
    _$_ObjectIsList(
      $type: json['_converter'] as String?,
    );

_$_ObjectIsMap _$$_ObjectIsMapFromJson(Map<String, dynamic> json) =>
    _$_ObjectIsMap(
      $type: json['_converter'] as String?,
    );
