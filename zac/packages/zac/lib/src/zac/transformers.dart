import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/zac/registry.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';

part 'transformers.freezed.dart';
part 'transformers.g.dart';

class ZacTransformError extends StateError {
  ZacTransformError(super.message);
}

@freezed
class ZacTransformValue with _$ZacTransformValue {
  ZacTransformValue._();

  factory ZacTransformValue(
    Object? value, [
    @Default(null) Object? extra1,
    @Default(null) Object? extra2,
    @Default(null) Object? extra3,
  ]) = _ZacTransformValue;
}

abstract class ZacTransformer {
  factory ZacTransformer.fromJson(Map<String, dynamic> json) {
    return ZacRegistry.ifBuilderLikeMap<ZacTransformer>(
      json,
      cb: (map, converterName) =>
          ZacRegistry().getRegisteredTransformer(converterName).call(map),
      orElse: () =>
          throw StateError('Could not create $ZacTransformer from $json'),
    );
  }

  Object? transform(ZacTransformValue transformValue, ZacContext zacContext,
      ZacActionPayload? payload);
}

@freezedZacBuilder
class ZacTransformers
    with _$ZacTransformers
    implements ZacBuilder<List<ZacTransformer>> {
  const ZacTransformers._();

  static const String unionValue = 'z:1:Transformers';

  factory ZacTransformers.fromJson(Map<String, dynamic> json) =>
      _$ZacTransformersFromJson(json);

  @FreezedUnionValue(ZacTransformers.unionValue)
  factory ZacTransformers(List<ZacTransformer> transformers) = _ZacTransformers;

  @override
  List<ZacTransformer> build(ZacContext zacContext) => transformers;
}

extension HandleTransformer on List<ZacTransformer> {
  Object? transform(
    ZacTransformValue value,
    ZacContext zacContext,
    ZacActionPayload? payload,
  ) {
    return fold<ZacTransformValue>(value, (previousValue, element) {
      final obj = element.transform(previousValue, zacContext, payload);
      return previousValue.copyWith.call(value: obj);
    }).value;
  }
}

@freezedZacBuilder
class ConvertTransformer with _$ConvertTransformer implements ZacTransformer {
  const ConvertTransformer._();
  static const String unionValue = 'z:1:Transformer:Converter';

  factory ConvertTransformer.fromJson(Map<String, dynamic> json) =>
      _$ConvertTransformerFromJson(json);

  @FreezedUnionValue(ConvertTransformer.unionValue)
  factory ConvertTransformer() = _Convert;

  @override
  Object? transform(ZacTransformValue transformValue, ZacContext zacContext,
      ZacActionPayload? payload) {
    final value = transformValue.value;
    return throw Exception('');
    // return ConverterHelper.convertToType<Object>(value);
  }
}

@freezedZacBuilder
class MapTransformer with _$MapTransformer implements ZacTransformer {
  const MapTransformer._();
  static const String unionValue = 'z:1:Transformer:Map.values';
  static const String unionValueKeys = 'z:1:Transformer:Map.keys';
  static const String unionValueEntries = 'z:1:Transformer:Map.entries';
  static const String unionValueLength = 'z:1:Transformer:Map.length';
  static const String unionValueIsEmpty = 'z:1:Transformer:Map.isEmpty';
  static const String unionValueIsNotEmpty = 'z:1:Transformer:Map.isNotEmpty';
  static const String unionValueContainsKey = 'z:1:Transformer:Map.containsKey';
  static const String unionValueContainsValue =
      'z:1:Transformer:Map.containsValue';
  static const String unionValueMap = 'z:1:Transformer:Map.map';
  static const String unionValueFromObjectObject =
      'z:1:Transformer:Map<Object, Object>.from';
  static const String unionValueFromStringObject =
      'z:1:Transformer:Map<String, Object>.from';
  static const String unionValueFromStringNullObject =
      'z:1:Transformer:Map<String, Object?>.from';
  static const String unionValueKey = 'z:1:Transformer:Map[key]';
  static const String unionValueSetValueForKey =
      'z:1:Transformer:Map.setValueForKey';

  factory MapTransformer.fromJson(Map<String, dynamic> json) =>
      _$MapTransformerFromJson(json);

  @FreezedUnionValue(MapTransformer.unionValue)
  const factory MapTransformer.values() = _MapValues;

  @FreezedUnionValue(MapTransformer.unionValueKeys)
  const factory MapTransformer.keys() = _MapKeys;

  @FreezedUnionValue(MapTransformer.unionValueEntries)
  const factory MapTransformer.entries() = _MapEntries;

  @FreezedUnionValue(MapTransformer.unionValueLength)
  const factory MapTransformer.length() = _MapLength;

  @FreezedUnionValue(MapTransformer.unionValueIsEmpty)
  const factory MapTransformer.isEmpty() = _MapIsEmpty;

  @FreezedUnionValue(MapTransformer.unionValueIsNotEmpty)
  const factory MapTransformer.isNotEmpty() = _MapIsNotEmpty;

  @FreezedUnionValue(MapTransformer.unionValueContainsKey)
  const factory MapTransformer.containsKey(ZacBuilder<Object?>? key) =
      _MapContainsKey;

  @FreezedUnionValue(MapTransformer.unionValueContainsValue)
  const factory MapTransformer.containsValue(ZacBuilder<Object?>? value) =
      _MapContainsValue;

  /// Will return a Map<dynamic, dynamic>
  @FreezedUnionValue(MapTransformer.unionValueMap)
  const factory MapTransformer.mapper({
    ZacBuilder<List<ZacTransformer>?>? keyTransformer,
    ZacBuilder<List<ZacTransformer>?>? valueTransformer,
  }) = _MapMapper;

  @FreezedUnionValue(MapTransformer.unionValueFromObjectObject)
  const factory MapTransformer.fromObjectObject() = _MapFromObjectObject;

  @FreezedUnionValue(MapTransformer.unionValueFromStringObject)
  const factory MapTransformer.fromStringObject() = _MapFromStringObject;

  @FreezedUnionValue(MapTransformer.unionValueFromStringNullObject)
  const factory MapTransformer.fromStringNullObject() =
      _MapFromStringNullObject;

  @FreezedUnionValue(MapTransformer.unionValueKey)
  const factory MapTransformer.key(ZacBuilder<String> key) = _MapKey;

  @FreezedUnionValue(MapTransformer.unionValueSetValueForKey)
  const factory MapTransformer.setValueForKey({
    required ZacBuilder<Object> value,
    required ZacBuilder<String> key,
  }) = _MapSetValueForKey;

  @override
  Object? transform(ZacTransformValue transformValue, ZacContext zacContext,
      ZacActionPayload? payload) {
    final theMap = transformValue.value;
    if (theMap is! Map) {
      throw ZacTransformError('''
There was an error while trying to transform a value in $runtimeType.
The value was expected to be a type of Map but instead we got a "${theMap.runtimeType}".
The value: $theMap
''');
    }

    return map(
      values: (_) => theMap.values,
      keys: (_) => theMap.keys,
      entries: (_) => theMap.entries,
      isEmpty: (_) => theMap.isEmpty,
      isNotEmpty: (_) => theMap.isNotEmpty,
      length: (_) => theMap.length,
      containsKey: (obj) => theMap.containsKey(obj.key?.build(
        zacContext,
      )),
      containsValue: (obj) => theMap.containsValue(obj.value?.build(
        zacContext,
      )),
      mapper: (obj) {
        return Map<dynamic, dynamic>.fromEntries(
            theMap.entries.map<MapEntry<dynamic, dynamic>>((entry) {
          dynamic updatedKey = entry.key;
          dynamic updatedValue = entry.value;
          final keyT = obj.keyTransformer?.build(zacContext);
          final valueT = obj.valueTransformer?.build(zacContext);
          if (true == keyT?.isNotEmpty) {
            updatedKey = keyT!.transform(
                ZacTransformValue(updatedKey, entry), zacContext, payload);
          }
          if (true == valueT?.isNotEmpty) {
            updatedValue = valueT!.transform(
                ZacTransformValue(updatedValue, entry), zacContext, payload);
          }

          return MapEntry<dynamic, dynamic>(updatedKey, updatedValue);
        }));
      },
      fromObjectObject: (_) {
        return Map<Object, Object>.from(theMap);
      },
      fromStringNullObject: (_) {
        return Map<String, Object?>.from(theMap);
      },
      fromStringObject: (_) {
        return Map<String, Object>.from(theMap);
      },
      key: (obj) {
        final key = obj.key.build(zacContext);
        return theMap[key];
      },
      setValueForKey: (obj) {
        final value = obj.value.build(zacContext);

        final key = obj.key.build(zacContext);

        theMap[key] = value;
        return theMap;
      },
    );
  }
}

@freezedZacBuilder
class IterableTransformer with _$IterableTransformer implements ZacTransformer {
  const IterableTransformer._();
  static const String unionValue = 'z:1:Transformer:Iterable.map';
  static const String unionValueSingle = 'z:1:Transformer:Iterable.single';
  static const String unionValueFirst = 'z:1:Transformer:Iterable.first';
  static const String unionValueLast = 'z:1:Transformer:Iterable.last';
  static const String unionValueLength = 'z:1:Transformer:Iterable.length';
  static const String unionValueIsEmpty = 'z:1:Transformer:Iterable.isEmpty';
  static const String unionValueIsNotEmpty =
      'z:1:Transformer:Iterable.isNotEmpty';
  static const String unionValueToList = 'z:1:Transformer:Iterable.toList';
  static const String unionValueToSet = 'z:1:Transformer:Iterable.toSet';
  static const String unionValueToString = 'z:1:Transformer:Iterable.toString';
  static const String unionValueJoin = 'z:1:Transformer:Iterable.join';
  static const String unionValueContains = 'z:1:Transformer:Iterable.contains';
  static const String unionValueElementAt =
      'z:1:Transformer:Iterable.elementAt';
  static const String unionValueSkip = 'z:1:Transformer:Iterable.skip';
  static const String unionValueTake = 'z:1:Transformer:Iterable.take';

  factory IterableTransformer.fromJson(Map<String, dynamic> json) =>
      _$IterableTransformerFromJson(json);

  /// Will return a Iterable<dynamic>
  @FreezedUnionValue(IterableTransformer.unionValue)
  factory IterableTransformer.map({
    required ZacBuilder<List<ZacTransformer>> transformer,
  }) = _IterableMap;

  @FreezedUnionValue(IterableTransformer.unionValueSingle)
  const factory IterableTransformer.single() = _IterableSingle;

  @FreezedUnionValue(IterableTransformer.unionValueFirst)
  const factory IterableTransformer.first() = _IterableFirst;

  @FreezedUnionValue(IterableTransformer.unionValueLast)
  const factory IterableTransformer.last() = _IterableLast;

  @FreezedUnionValue(IterableTransformer.unionValueLength)
  const factory IterableTransformer.length() = _IterableLength;

  @FreezedUnionValue(IterableTransformer.unionValueIsEmpty)
  const factory IterableTransformer.isEmpty() = _IterableIsEmpty;

  @FreezedUnionValue(IterableTransformer.unionValueIsNotEmpty)
  const factory IterableTransformer.isNotEmpty() = _IterableIsNotEmpty;

  /// Will return a List<dynamic>
  @FreezedUnionValue(IterableTransformer.unionValueToList)
  const factory IterableTransformer.toList() = _IterableToList;

  /// Will return a Set<dynamic>
  @FreezedUnionValue(IterableTransformer.unionValueToSet)
  const factory IterableTransformer.toSet() = _IterableToSet;

  @FreezedUnionValue(IterableTransformer.unionValueToString)
  const factory IterableTransformer.toString() = _IterableToString;

  @FreezedUnionValue(IterableTransformer.unionValueJoin)
  const factory IterableTransformer.join({String? separator}) = _IterableJoin;

  @FreezedUnionValue(IterableTransformer.unionValueContains)
  const factory IterableTransformer.contains(ZacBuilder<Object?>? element) =
      _IterableContains;

  @FreezedUnionValue(IterableTransformer.unionValueElementAt)
  const factory IterableTransformer.elementAt(int index) = _IterableElementAt;

  @FreezedUnionValue(IterableTransformer.unionValueSkip)
  const factory IterableTransformer.skip(int count) = _IterableSkip;

  @FreezedUnionValue(IterableTransformer.unionValueTake)
  const factory IterableTransformer.take(int count) = _IterableTake;

  @override
  Object? transform(ZacTransformValue transformValue, ZacContext zacContext,
      ZacActionPayload? payload) {
    final value = transformValue.value;
    if (value is! Iterable) {
      throw ZacTransformError('''
There was an error while trying to transform a value in $runtimeType.
The value was expected to be a type of Iterable but instead we got a "${value.runtimeType}".
The value: $value
''');
    }

    return map(
      map: (obj) => value.map((dynamic e) => obj.transformer
          .build(zacContext)
          .transform(ZacTransformValue(e), zacContext, payload)),
      first: (_) => value.first,
      last: (_) => value.last,
      single: (_) => value.single,
      length: (_) => value.length,
      isEmpty: (_) => value.isEmpty,
      isNotEmpty: (_) => value.isNotEmpty,
      toList: (_) => value.toList(),
      toSet: (_) => value.toSet(),
      toString: (_) => value.toString(),
      join: (obj) => value.join(obj.separator ?? ""),
      contains: (obj) => value.contains(obj.element?.build(
        zacContext,
      )),
      elementAt: (obj) => value.elementAt(obj.index),
      skip: (obj) => value.skip(obj.count),
      take: (obj) => value.take(obj.count),
    );
  }
}

@freezedZacBuilder
class ListTransformer with _$ListTransformer implements ZacTransformer {
  const ListTransformer._();
  static const String unionValue = 'z:1:Transformer:List.reversed';
  static const String unionValueAdd = 'z:1:Transformer:List.add';

  factory ListTransformer.fromJson(Map<String, dynamic> json) =>
      _$ListTransformerFromJson(json);

  /// Will return a Iterable<dynamic>
  @FreezedUnionValue(ListTransformer.unionValue)
  const factory ListTransformer.reversed() = _ListReversed;

  @FreezedUnionValue(ListTransformer.unionValueAdd)
  const factory ListTransformer.add(ZacBuilder<Object> value) = _ListAdd;

  @override
  Object? transform(ZacTransformValue transformValue, ZacContext zacContext,
      ZacActionPayload? payload) {
    final value = transformValue.value;
    if (value is! List) {
      throw ZacTransformError('''
There was an error while trying to transform a value in $runtimeType.
The value was expected to be a type of List but instead we got a "${value.runtimeType}".
The value: $value
''');
    }

    return map(
      reversed: (_) => value.reversed.toList(),
      add: (obj) {
        value.add(obj.value.build(
          zacContext,
        ));

        return value;
      },
    );
  }
}

@freezedZacBuilder
class ObjectTransformer with _$ObjectTransformer implements ZacTransformer {
  const ObjectTransformer._();

  static const String unionValue = 'z:1:Transformer:Object.isList';
  static const String unionValueIsMap = 'z:1:Transformer:Object.isMap';
  static const String unionValueIsBool = 'z:1:Transformer:Object.isBool';
  static const String unionValueIsString = 'z:1:Transformer:Object.isString';
  static const String unionValueIsDouble = 'z:1:Transformer:Object.isDouble';
  static const String unionValueIsInt = 'z:1:Transformer:Object.isInt';
  static const String unionValueIsNull = 'z:1:Transformer:Object.isNull';
  static const String unionValueAsBool = 'z:1:Transformer:Object.asBool';
  static const String unionValueAsString = 'z:1:Transformer:Object.asString';
  static const String unionValueAsInt = 'z:1:Transformer:Object.asInt';
  static const String unionValueAsDouble = 'z:1:Transformer:Object.asDouble';
  static const String unionValueEquals = 'z:1:Transformer:Object.equals';
  static const String unionValueEqualsSharedValue =
      'z:1:Transformer:Object.equalsSharedValue';
  static const String unionValueToString = 'z:1:Transformer:Object.toString';
  static const String unionValueRuntimeType =
      'z:1:Transformer:Object.runtimeType';
  static const String unionValueHashCode = 'z:1:Transformer:Object.hashCode';

  factory ObjectTransformer.fromJson(Map<String, dynamic> json) =>
      _$ObjectTransformerFromJson(json);

  @FreezedUnionValue(ObjectTransformer.unionValue)
  factory ObjectTransformer.isList() = _ObjectIsList;

  @FreezedUnionValue(ObjectTransformer.unionValueIsMap)
  factory ObjectTransformer.isMap() = _ObjectIsMap;

  @FreezedUnionValue(ObjectTransformer.unionValueIsBool)
  factory ObjectTransformer.isBool() = _ObjectIsBool;

  @FreezedUnionValue(ObjectTransformer.unionValueIsString)
  factory ObjectTransformer.isString() = _ObjectIsString;

  @FreezedUnionValue(ObjectTransformer.unionValueIsDouble)
  factory ObjectTransformer.isDouble() = _ObjectIsDouble;

  @FreezedUnionValue(ObjectTransformer.unionValueIsInt)
  factory ObjectTransformer.isInt() = _ObjectIsInt;

  @FreezedUnionValue(ObjectTransformer.unionValueIsNull)
  factory ObjectTransformer.isNull() = _ObjectIsNull;

  @FreezedUnionValue(ObjectTransformer.unionValueEquals)
  factory ObjectTransformer.equals({required Object? other}) = _ObjectEquals;

  @FreezedUnionValue(ObjectTransformer.unionValueToString)
  factory ObjectTransformer.toString() = _ObjectToString;

  @FreezedUnionValue(ObjectTransformer.unionValueRuntimeType)
  factory ObjectTransformer.runtimeType() = _ObjectRuntimeType;

  @FreezedUnionValue(ObjectTransformer.unionValueHashCode)
  factory ObjectTransformer.hashCode() = _ObjectHashCode;

  @FreezedUnionValue(ObjectTransformer.unionValueEqualsSharedValue)
  factory ObjectTransformer.equalsSharedValue({
    required ZacBuilder<Object?>? value,
  }) = _ObjectEqualsSharedValue;

  @override
  Object? transform(ZacTransformValue transformValue, ZacContext zacContext,
      ZacActionPayload? payload) {
    final value = transformValue.value;
    return map(
      isList: (_) => value is List,
      isMap: (_) => value is Map,
      isBool: (_) => value is bool,
      isString: (_) => value is String,
      isInt: (_) => value is int,
      isDouble: (_) => value is double,
      isNull: (_) => null == value,
      equals: (obj) => obj.other == value,
      equalsSharedValue: (obj) =>
          obj.value?.build(
            zacContext,
          ) ==
          value,
      hashCode: (_) => value.hashCode,
      runtimeType: (_) => value.runtimeType,
      toString: (_) => value.toString(),
    );
  }
}

@freezedZacBuilder
class NumTransformer with _$NumTransformer implements ZacTransformer {
  const NumTransformer._();
  static const String unionValue = 'z:1:Transformer:num.toDouble';
  static const String unionValueToInt = 'z:1:Transformer:num.toInt';
  static const String unionValueAbs = 'z:1:Transformer:num.abs';
  static const String unionValueCeil = 'z:1:Transformer:num.ceil';
  static const String unionValueCeilToDouble =
      'z:1:Transformer:num.ceilToDouble';
  static const String unionValueFloor = 'z:1:Transformer:num.floor';
  static const String unionValueFloorToDouble =
      'z:1:Transformer:num.floorToDouble';
  static const String unionValueRound = 'z:1:Transformer:num.round';
  static const String unionValueRoundToDouble =
      'z:1:Transformer:num.roundToDouble';
  static const String unionValueIsFinite = 'z:1:Transformer:num.isFinite';
  static const String unionValueIsInfinite = 'z:1:Transformer:num.isInfinite';
  static const String unionValueIsNan = 'z:1:Transformer:num.isNan';
  static const String unionValueIsNegative = 'z:1:Transformer:num.isNegative';

  factory NumTransformer.fromJson(Map<String, dynamic> json) =>
      _$NumTransformerFromJson(json);

  @FreezedUnionValue(NumTransformer.unionValue)
  const factory NumTransformer.toDouble() = _NumToDouble;

  @FreezedUnionValue(NumTransformer.unionValueToInt)
  const factory NumTransformer.toInt() = _NumToInt;

  @FreezedUnionValue(NumTransformer.unionValueAbs)
  const factory NumTransformer.abs() = _NumAbs;

  @FreezedUnionValue(NumTransformer.unionValueCeil)
  const factory NumTransformer.ceil() = _NumCeil;

  @FreezedUnionValue(NumTransformer.unionValueCeilToDouble)
  const factory NumTransformer.ceilToDouble() = _NumCeilToDouble;

  @FreezedUnionValue(NumTransformer.unionValueFloor)
  const factory NumTransformer.floor() = _NumFloor;

  @FreezedUnionValue(NumTransformer.unionValueFloorToDouble)
  const factory NumTransformer.floorToDouble() = _NumFloorToDouble;

  @FreezedUnionValue(NumTransformer.unionValueRound)
  const factory NumTransformer.round() = _NumRound;

  @FreezedUnionValue(NumTransformer.unionValueRoundToDouble)
  const factory NumTransformer.roundToDouble() = _NumRoundToDouble;

  @FreezedUnionValue(NumTransformer.unionValueIsFinite)
  const factory NumTransformer.isFinite() = _NumIsFinite;

  @FreezedUnionValue(NumTransformer.unionValueIsInfinite)
  const factory NumTransformer.isInfinite() = _NumIsInfinite;

  @FreezedUnionValue(NumTransformer.unionValueIsNan)
  const factory NumTransformer.isNan() = _NumIsNan;

  @FreezedUnionValue(NumTransformer.unionValueIsNegative)
  const factory NumTransformer.isNegative() = _NumIsNegative;

  @override
  Object? transform(ZacTransformValue transformValue, ZacContext zacContext,
      ZacActionPayload? payload) {
    final value = transformValue.value;
    if (value is! num) {
      throw ZacTransformError('''
There was an error while trying to transform a value in $runtimeType.
The value was expected to be a type of num but instead we got a "${value.runtimeType}".
The value: $value
''');
    }

    return map(
      toDouble: (_) => value.toDouble(),
      toInt: (_) => value.toInt(),
      abs: (_) => value.abs(),
      ceil: (_) => value.ceil(),
      ceilToDouble: (_) => value.ceilToDouble(),
      floor: (_) => value.floor(),
      floorToDouble: (_) => value.floorToDouble(),
      round: (_) => value.round(),
      roundToDouble: (_) => value.roundToDouble(),
      isFinite: (_) => value.isFinite,
      isInfinite: (_) => value.isInfinite,
      isNan: (_) => value.isNaN,
      isNegative: (_) => value.isNegative,
    );
  }
}

@freezedZacBuilder
class IntTransformer with _$IntTransformer implements ZacTransformer {
  const IntTransformer._();
  static const String unionValue = 'z:1:Transformer:int.parse';
  static const String unionValueTryParse = 'z:1:Transformer:int.tryParse';
  static const String unionValueIncrementBy = 'z:1:Transformer:int.incr';
  static const String unionValueDecrementBy = 'z:1:Transformer:int.decr';

  factory IntTransformer.fromJson(Map<String, dynamic> json) =>
      _$IntTransformerFromJson(json);

  @FreezedUnionValue(IntTransformer.unionValue)
  const factory IntTransformer.parse() = _IntParse;

  @FreezedUnionValue(IntTransformer.unionValueTryParse)
  const factory IntTransformer.tryParse() = _IntTryParse;

  @FreezedUnionValue(IntTransformer.unionValueIncrementBy)
  const factory IntTransformer.incr(ZacBuilder<int> by) = _IntIncr;

  @FreezedUnionValue(IntTransformer.unionValueDecrementBy)
  const factory IntTransformer.decr(ZacBuilder<int> by) = _IntDecr;

  @override
  Object? transform(ZacTransformValue transformValue, ZacContext zacContext,
      ZacActionPayload? payload) {
    final value = transformValue.value;
    return map(
      parse: (obj) {
        if (value is! String) {
          throw ZacTransformError('''
There was an error while trying to parse an int in ${obj.runtimeType}
for converter "${IntTransformer.unionValue}".
The value to transform was not of type String but instead is ${value.runtimeType}.
Value: $value
''');
        }
        return int.parse(value);
      },
      tryParse: (obj) {
        if (value is! String) {
          throw ZacTransformError('''
There was an error while trying to parse an int in ${obj.runtimeType}
for converter "${IntTransformer.unionValueTryParse}".
The value to transform was not of type String but instead is ${value.runtimeType}.
Value: $value
''');
        }
        return int.tryParse(value);
      },
      incr: (obj) {
        if (value is! int) {
          throw StateError(
              'Expected value to be int in $IntTransformer(${IntTransformer.unionValueIncrementBy}): $value');
        }
        return value + obj.by.build(zacContext);
      },
      decr: (obj) {
        if (value is! int) {
          throw StateError(
              'Expected value to be int in $IntTransformer(${IntTransformer.unionValueDecrementBy}): $value');
        }
        return value - obj.by.build(zacContext);
      },
    );
  }
}

@freezedZacBuilder
class StringTransformer with _$StringTransformer implements ZacTransformer {
  const StringTransformer._();
  static const String unionValue = 'z:1:Transformer:String.length';
  static const String unionValueSplit = 'z:1:Transformer:String.split';
  static const String unionValueIsEmpty = 'z:1:Transformer:String.isEmpty';
  static const String unionValueIsNotEmpty =
      'z:1:Transformer:String.isNotEmpty';
  static const String unionValueReplaceAll =
      'z:1:Transformer:String.replaceAll';

  factory StringTransformer.fromJson(Map<String, dynamic> json) =>
      _$StringTransformerFromJson(json);

  @FreezedUnionValue(StringTransformer.unionValue)
  const factory StringTransformer.length() = _StringLength;

  @FreezedUnionValue(StringTransformer.unionValueSplit)
  const factory StringTransformer.split({required ZacBuilder<String> pattern}) =
      _StringSplit;

  @FreezedUnionValue(StringTransformer.unionValueIsEmpty)
  const factory StringTransformer.isEmpty() = _StringIsEmpty;

  @FreezedUnionValue(StringTransformer.unionValueIsNotEmpty)
  const factory StringTransformer.isNotEmpty() = _StringIsNotEmpty;

  @FreezedUnionValue(StringTransformer.unionValueReplaceAll)
  const factory StringTransformer.replaceAll(
      ZacBuilder<String> from, ZacBuilder<String> replace) = _StringReplaceAll;

  @override
  Object? transform(ZacTransformValue transformValue, ZacContext zacContext,
      ZacActionPayload? payload) {
    final value = transformValue.value;
    if (value is! String) {
      throw ZacTransformError('''
There was an error while trying to transform a value in $runtimeType.
The value was expected to be a type of String but instead we got a "${value.runtimeType}".
The value: $value
''');
    }

    return map(
      length: (_) => value.length,
      split: (obj) => value.split(obj.pattern.build(zacContext)),
      isEmpty: (_) => value.isEmpty,
      isNotEmpty: (_) => value.isNotEmpty,
      replaceAll: (obj) => value.replaceAll(
          RegExp(obj.from.build(zacContext)), obj.replace.build(zacContext)),
    );
  }
}

@freezedZacBuilder
class JsonTransformer with _$JsonTransformer implements ZacTransformer {
  const JsonTransformer._();
  static const String unionValue = 'z:1:Transformer:Json.encode';
  static const String unionValueDecode = 'z:1:Transformer:Json.decode';

  factory JsonTransformer.fromJson(Map<String, dynamic> json) =>
      _$JsonTransformerFromJson(json);

  @FreezedUnionValue(JsonTransformer.unionValue)
  const factory JsonTransformer.encode() = _JsonEncode;

  @FreezedUnionValue(JsonTransformer.unionValueDecode)
  const factory JsonTransformer.decode() = _JsonDencode;

  @override
  Object? transform(ZacTransformValue transformValue, ZacContext zacContext,
      ZacActionPayload? payload) {
    final value = transformValue.value;

    return map(
      decode: (_) {
        if (value is! String) {
          throw ZacTransformError('''
There was an error while trying to transform a value in $runtimeType.
The value was expected to be a type of String but instead we got a "${value.runtimeType}".
The value: $value
''');
        }
        return jsonDecode(value);
      },
      encode: (_) => jsonEncode(value),
    );
  }
}

@freezedZacBuilder
class BoolTransformer with _$BoolTransformer implements ZacTransformer {
  const BoolTransformer._();
  static const String unionValue = 'z:1:Transformer:Bool.negate';

  factory BoolTransformer.fromJson(Map<String, dynamic> json) =>
      _$BoolTransformerFromJson(json);

  @FreezedUnionValue(BoolTransformer.unionValue)
  const factory BoolTransformer.negate() = _BoolTransformerNegate;

  @override
  Object? transform(ZacTransformValue transformValue, ZacContext zacContext,
      ZacActionPayload? payload) {
    final value = transformValue.value;
    if (value is! bool) {
      throw ZacTransformError(
          '$BoolTransformer could not use the value because it is no bool but "$value"');
    }

    return map(
      negate: (_) => !value,
    );
  }
}
