// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transformers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Convert _$$_ConvertFromJson(Map<String, dynamic> json) => _$_Convert();

_$_MapMapValues _$$_MapMapValuesFromJson(Map<String, dynamic> json) =>
    _$_MapMapValues(
      transformer: (json['transformer'] as List<dynamic>)
          .map((e) => ZacTransformer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

_$_ListMap _$$_ListMapFromJson(Map<String, dynamic> json) => _$_ListMap(
      transformer: (json['transformer'] as List<dynamic>)
          .map((e) => ZacTransformer.fromJson(e as Map<String, dynamic>))
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

_$_ObjectEquals _$$_ObjectEqualsFromJson(Map<String, dynamic> json) =>
    _$_ObjectEquals(
      other: json['other'],
      $type: json['_converter'] as String?,
    );

_$_ObjectEqualsSharedValue _$$_ObjectEqualsSharedValueFromJson(
        Map<String, dynamic> json) =>
    _$_ObjectEqualsSharedValue(
      family: json['family'] as Object,
      consumeType: json['consumeType'] == null
          ? const SharedValueConsumeType.read()
          : SharedValueConsumeType.fromJson(
              json['consumeType'] as Map<String, dynamic>),
      transformer: (json['transformer'] as List<dynamic>?)
          ?.map((e) => ZacTransformer.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['_converter'] as String?,
    );
