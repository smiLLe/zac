// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transformers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ZacTransformValue _$$_ZacTransformValueFromJson(Map<String, dynamic> json) =>
    _$_ZacTransformValue(
      json['value'],
      extra: json['extra'] as Map<String, dynamic>?,
    );

_$_ZacTransformers _$$_ZacTransformersFromJson(Map<String, dynamic> json) =>
    _$_ZacTransformers(
      (json['transformers'] as List<dynamic>)
          .map((e) => ZacTransformer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

_$_Convert _$$_ConvertFromJson(Map<String, dynamic> json) => _$_Convert();

_$_MapValues _$$_MapValuesFromJson(Map<String, dynamic> json) => _$_MapValues(
      $type: json['_converter'] as String?,
    );

_$_MapKeys _$$_MapKeysFromJson(Map<String, dynamic> json) => _$_MapKeys(
      $type: json['_converter'] as String?,
    );

_$_MapEntries _$$_MapEntriesFromJson(Map<String, dynamic> json) =>
    _$_MapEntries(
      $type: json['_converter'] as String?,
    );

_$_MapLength _$$_MapLengthFromJson(Map<String, dynamic> json) => _$_MapLength(
      $type: json['_converter'] as String?,
    );

_$_MapIsEmpty _$$_MapIsEmptyFromJson(Map<String, dynamic> json) =>
    _$_MapIsEmpty(
      $type: json['_converter'] as String?,
    );

_$_MapIsNotEmpty _$$_MapIsNotEmptyFromJson(Map<String, dynamic> json) =>
    _$_MapIsNotEmpty(
      $type: json['_converter'] as String?,
    );

_$_MapContainsKey _$$_MapContainsKeyFromJson(Map<String, dynamic> json) =>
    _$_MapContainsKey(
      json['key'] == null ? null : ZacObject.fromJson(json['key'] as Object),
      $type: json['_converter'] as String?,
    );

_$_MapContainsValue _$$_MapContainsValueFromJson(Map<String, dynamic> json) =>
    _$_MapContainsValue(
      json['value'] == null
          ? null
          : ZacObject.fromJson(json['value'] as Object),
      $type: json['_converter'] as String?,
    );

_$_MapMapper _$$_MapMapperFromJson(Map<String, dynamic> json) => _$_MapMapper(
      keyTransformer: json['keyTransformer'] == null
          ? null
          : ZacTransformers.fromJson(json['keyTransformer'] as Object),
      valueTransformer: json['valueTransformer'] == null
          ? null
          : ZacTransformers.fromJson(json['valueTransformer'] as Object),
      $type: json['_converter'] as String?,
    );

_$_MapFromObjectObject _$$_MapFromObjectObjectFromJson(
        Map<String, dynamic> json) =>
    _$_MapFromObjectObject(
      $type: json['_converter'] as String?,
    );

_$_MapFromStringObject _$$_MapFromStringObjectFromJson(
        Map<String, dynamic> json) =>
    _$_MapFromStringObject(
      $type: json['_converter'] as String?,
    );

_$_MapFromStringNullObject _$$_MapFromStringNullObjectFromJson(
        Map<String, dynamic> json) =>
    _$_MapFromStringNullObject(
      $type: json['_converter'] as String?,
    );

_$_IterableMap _$$_IterableMapFromJson(Map<String, dynamic> json) =>
    _$_IterableMap(
      transformer: ZacTransformers.fromJson(json['transformer'] as Object),
      $type: json['_converter'] as String?,
    );

_$_IterableSingle _$$_IterableSingleFromJson(Map<String, dynamic> json) =>
    _$_IterableSingle(
      $type: json['_converter'] as String?,
    );

_$_IterableFirst _$$_IterableFirstFromJson(Map<String, dynamic> json) =>
    _$_IterableFirst(
      $type: json['_converter'] as String?,
    );

_$_IterableLast _$$_IterableLastFromJson(Map<String, dynamic> json) =>
    _$_IterableLast(
      $type: json['_converter'] as String?,
    );

_$_IterableLength _$$_IterableLengthFromJson(Map<String, dynamic> json) =>
    _$_IterableLength(
      $type: json['_converter'] as String?,
    );

_$_IterableIsEmpty _$$_IterableIsEmptyFromJson(Map<String, dynamic> json) =>
    _$_IterableIsEmpty(
      $type: json['_converter'] as String?,
    );

_$_IterableIsNotEmpty _$$_IterableIsNotEmptyFromJson(
        Map<String, dynamic> json) =>
    _$_IterableIsNotEmpty(
      $type: json['_converter'] as String?,
    );

_$_IterableToList _$$_IterableToListFromJson(Map<String, dynamic> json) =>
    _$_IterableToList(
      $type: json['_converter'] as String?,
    );

_$_IterableToSet _$$_IterableToSetFromJson(Map<String, dynamic> json) =>
    _$_IterableToSet(
      $type: json['_converter'] as String?,
    );

_$_IterableToString _$$_IterableToStringFromJson(Map<String, dynamic> json) =>
    _$_IterableToString(
      $type: json['_converter'] as String?,
    );

_$_IterableJoin _$$_IterableJoinFromJson(Map<String, dynamic> json) =>
    _$_IterableJoin(
      separator: json['separator'] as String?,
      $type: json['_converter'] as String?,
    );

_$_IterableContains _$$_IterableContainsFromJson(Map<String, dynamic> json) =>
    _$_IterableContains(
      json['element'] == null
          ? null
          : ZacObject.fromJson(json['element'] as Object),
      $type: json['_converter'] as String?,
    );

_$_IterableElementAt _$$_IterableElementAtFromJson(Map<String, dynamic> json) =>
    _$_IterableElementAt(
      json['index'] as int,
      $type: json['_converter'] as String?,
    );

_$_IterableSkip _$$_IterableSkipFromJson(Map<String, dynamic> json) =>
    _$_IterableSkip(
      json['count'] as int,
      $type: json['_converter'] as String?,
    );

_$_IterableTake _$$_IterableTakeFromJson(Map<String, dynamic> json) =>
    _$_IterableTake(
      json['count'] as int,
      $type: json['_converter'] as String?,
    );

_$_ListReversed _$$_ListReversedFromJson(Map<String, dynamic> json) =>
    _$_ListReversed();

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

_$_ObjectToString _$$_ObjectToStringFromJson(Map<String, dynamic> json) =>
    _$_ObjectToString(
      $type: json['_converter'] as String?,
    );

_$_ObjectRuntimeType _$$_ObjectRuntimeTypeFromJson(Map<String, dynamic> json) =>
    _$_ObjectRuntimeType(
      $type: json['_converter'] as String?,
    );

_$_ObjectHashCode _$$_ObjectHashCodeFromJson(Map<String, dynamic> json) =>
    _$_ObjectHashCode(
      $type: json['_converter'] as String?,
    );

_$_ObjectEqualsSharedValue _$$_ObjectEqualsSharedValueFromJson(
        Map<String, dynamic> json) =>
    _$_ObjectEqualsSharedValue(
      json['family'] as Object,
      transformer: json['transformer'] == null
          ? null
          : ZacTransformers.fromJson(json['transformer'] as Object),
      consumeType: json['consumeType'] == null
          ? const SharedValueConsumeType.read()
          : SharedValueConsumeType.fromJson(
              json['consumeType'] as Map<String, dynamic>),
      $type: json['_converter'] as String?,
    );

_$_NumToDouble _$$_NumToDoubleFromJson(Map<String, dynamic> json) =>
    _$_NumToDouble(
      $type: json['_converter'] as String?,
    );

_$_NumToInt _$$_NumToIntFromJson(Map<String, dynamic> json) => _$_NumToInt(
      $type: json['_converter'] as String?,
    );

_$_NumAbs _$$_NumAbsFromJson(Map<String, dynamic> json) => _$_NumAbs(
      $type: json['_converter'] as String?,
    );

_$_NumCeil _$$_NumCeilFromJson(Map<String, dynamic> json) => _$_NumCeil(
      $type: json['_converter'] as String?,
    );

_$_NumCeilToDouble _$$_NumCeilToDoubleFromJson(Map<String, dynamic> json) =>
    _$_NumCeilToDouble(
      $type: json['_converter'] as String?,
    );

_$_NumFloor _$$_NumFloorFromJson(Map<String, dynamic> json) => _$_NumFloor(
      $type: json['_converter'] as String?,
    );

_$_NumFloorToDouble _$$_NumFloorToDoubleFromJson(Map<String, dynamic> json) =>
    _$_NumFloorToDouble(
      $type: json['_converter'] as String?,
    );

_$_NumRound _$$_NumRoundFromJson(Map<String, dynamic> json) => _$_NumRound(
      $type: json['_converter'] as String?,
    );

_$_NumRoundToDouble _$$_NumRoundToDoubleFromJson(Map<String, dynamic> json) =>
    _$_NumRoundToDouble(
      $type: json['_converter'] as String?,
    );

_$_NumIsFinite _$$_NumIsFiniteFromJson(Map<String, dynamic> json) =>
    _$_NumIsFinite(
      $type: json['_converter'] as String?,
    );

_$_NumIsInfinite _$$_NumIsInfiniteFromJson(Map<String, dynamic> json) =>
    _$_NumIsInfinite(
      $type: json['_converter'] as String?,
    );

_$_NumIsNan _$$_NumIsNanFromJson(Map<String, dynamic> json) => _$_NumIsNan(
      $type: json['_converter'] as String?,
    );

_$_NumIsNegative _$$_NumIsNegativeFromJson(Map<String, dynamic> json) =>
    _$_NumIsNegative(
      $type: json['_converter'] as String?,
    );

_$_IntParse _$$_IntParseFromJson(Map<String, dynamic> json) => _$_IntParse(
      $type: json['_converter'] as String?,
    );

_$_IntTryParse _$$_IntTryParseFromJson(Map<String, dynamic> json) =>
    _$_IntTryParse(
      $type: json['_converter'] as String?,
    );

_$_StringLength _$$_StringLengthFromJson(Map<String, dynamic> json) =>
    _$_StringLength(
      $type: json['_converter'] as String?,
    );

_$_StringSplit _$$_StringSplitFromJson(Map<String, dynamic> json) =>
    _$_StringSplit(
      pattern: ZacString.fromJson(json['pattern'] as Object),
      $type: json['_converter'] as String?,
    );

_$_StringIsEmpty _$$_StringIsEmptyFromJson(Map<String, dynamic> json) =>
    _$_StringIsEmpty(
      $type: json['_converter'] as String?,
    );

_$_StringIsNotEmpty _$$_StringIsNotEmptyFromJson(Map<String, dynamic> json) =>
    _$_StringIsNotEmpty(
      $type: json['_converter'] as String?,
    );

_$_StringReplaceAll _$$_StringReplaceAllFromJson(Map<String, dynamic> json) =>
    _$_StringReplaceAll(
      ZacString.fromJson(json['from'] as Object),
      ZacString.fromJson(json['replace'] as Object),
      $type: json['_converter'] as String?,
    );

_$_JsonEncode _$$_JsonEncodeFromJson(Map<String, dynamic> json) =>
    _$_JsonEncode(
      $type: json['_converter'] as String?,
    );

_$_JsonDencode _$$_JsonDencodeFromJson(Map<String, dynamic> json) =>
    _$_JsonDencode(
      $type: json['_converter'] as String?,
    );
