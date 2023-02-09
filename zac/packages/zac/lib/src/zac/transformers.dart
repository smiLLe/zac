import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod/riverpod.dart';
import 'package:zac/src/base.dart';
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

@freezed
class ZacTransform with _$ZacTransform {
  factory ZacTransform(
    Object? Function(ZacTransformValue transformValue, BuildContext context,
            ZacContext zacContext)
        transform,
  ) = _ZacTransform;
}

extension HandleTransformer on List<ZacTransform> {
  Object? transform(
    ZacTransformValue value,
    BuildContext context,
    ZacContext zacContext,
  ) {
    final container = ProviderContainer(
      parent: zacContext.consume.map(
        (value) => ProviderScope.containerOf(context, listen: false),
        manual: (obj) => obj.container,
      ),
      overrides: [],
    );

    return fold<ZacTransformValue>(value, (previousValue, element) {
      final obj = element.transform(
        previousValue,
        context,
        zacContext.copyWith.call(
          consume: ZacContextConsume.manual(container: container),
        ),
      );
      return previousValue.copyWith.call(value: obj);
    }).value;
  }
}

@freezedZacBuilder
class MapTransformer with _$MapTransformer implements ZacBuilder<ZacTransform> {
  MapTransformer._();
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
  factory MapTransformer.values() = _MapValues;

  @FreezedUnionValue(MapTransformer.unionValueKeys)
  factory MapTransformer.keys() = _MapKeys;

  @FreezedUnionValue(MapTransformer.unionValueEntries)
  factory MapTransformer.entries() = _MapEntries;

  @FreezedUnionValue(MapTransformer.unionValueLength)
  factory MapTransformer.length() = _MapLength;

  @FreezedUnionValue(MapTransformer.unionValueIsEmpty)
  factory MapTransformer.isEmpty() = _MapIsEmpty;

  @FreezedUnionValue(MapTransformer.unionValueIsNotEmpty)
  factory MapTransformer.isNotEmpty() = _MapIsNotEmpty;

  @FreezedUnionValue(MapTransformer.unionValueContainsKey)
  factory MapTransformer.containsKey(ZacBuilder<Object?>? key) =
      _MapContainsKey;

  @FreezedUnionValue(MapTransformer.unionValueContainsValue)
  factory MapTransformer.containsValue(ZacBuilder<Object?>? value) =
      _MapContainsValue;

  /// Will return a Map<dynamic, dynamic>
  @FreezedUnionValue(MapTransformer.unionValueMap)
  factory MapTransformer.mapper({
    ZacBuilder<List<ZacTransform>?>? keyTransformer,
    ZacBuilder<List<ZacTransform>?>? valueTransformer,
  }) = _MapMapper;

  @FreezedUnionValue(MapTransformer.unionValueFromObjectObject)
  factory MapTransformer.fromObjectObject() = _MapFromObjectObject;

  @FreezedUnionValue(MapTransformer.unionValueFromStringObject)
  factory MapTransformer.fromStringObject() = _MapFromStringObject;

  @FreezedUnionValue(MapTransformer.unionValueFromStringNullObject)
  factory MapTransformer.fromStringNullObject() = _MapFromStringNullObject;

  @FreezedUnionValue(MapTransformer.unionValueKey)
  factory MapTransformer.key(ZacBuilder<String> key) = _MapKey;

  @FreezedUnionValue(MapTransformer.unionValueSetValueForKey)
  factory MapTransformer.setValueForKey({
    required ZacBuilder<Object> value,
    required ZacBuilder<String> key,
  }) = _MapSetValueForKey;

  late final ZacTransform _transform = ZacTransform(
      (ZacTransformValue transformValue, BuildContext context,
          ZacContext zacContext) {
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
      containsKey: (obj) =>
          theMap.containsKey(obj.key?.build(context, zacContext)),
      containsValue: (obj) =>
          theMap.containsValue(obj.value?.build(context, zacContext)),
      mapper: (obj) {
        return Map<dynamic, dynamic>.fromEntries(
            theMap.entries.map<MapEntry<dynamic, dynamic>>((entry) {
          dynamic updatedKey = entry.key;
          dynamic updatedValue = entry.value;
          final keyT = obj.keyTransformer?.build(context, zacContext);
          final valueT = obj.valueTransformer?.build(context, zacContext);
          if (true == keyT?.isNotEmpty) {
            updatedKey = keyT!.transform(
                ZacTransformValue(updatedKey, entry), context, zacContext);
          }
          if (true == valueT?.isNotEmpty) {
            updatedValue = valueT!.transform(
                ZacTransformValue(updatedValue, entry), context, zacContext);
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
        final key = obj.key.build(context, zacContext);
        return theMap[key];
      },
      setValueForKey: (obj) {
        final value = obj.value.build(context, zacContext);

        final key = obj.key.build(context, zacContext);

        theMap[key] = value;
        return theMap;
      },
    );
  });

  @override
  ZacTransform build(BuildContext context, ZacContext zacContext) => _transform;
}

@freezedZacBuilder
class IterableTransformer
    with _$IterableTransformer
    implements ZacBuilder<ZacTransform> {
  IterableTransformer._();
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
    required ZacBuilder<List<ZacTransform>> transformer,
  }) = _IterableMap;

  @FreezedUnionValue(IterableTransformer.unionValueSingle)
  factory IterableTransformer.single() = _IterableSingle;

  @FreezedUnionValue(IterableTransformer.unionValueFirst)
  factory IterableTransformer.first() = _IterableFirst;

  @FreezedUnionValue(IterableTransformer.unionValueLast)
  factory IterableTransformer.last() = _IterableLast;

  @FreezedUnionValue(IterableTransformer.unionValueLength)
  factory IterableTransformer.length() = _IterableLength;

  @FreezedUnionValue(IterableTransformer.unionValueIsEmpty)
  factory IterableTransformer.isEmpty() = _IterableIsEmpty;

  @FreezedUnionValue(IterableTransformer.unionValueIsNotEmpty)
  factory IterableTransformer.isNotEmpty() = _IterableIsNotEmpty;

  /// Will return a List<dynamic>
  @FreezedUnionValue(IterableTransformer.unionValueToList)
  factory IterableTransformer.toList() = _IterableToList;

  /// Will return a Set<dynamic>
  @FreezedUnionValue(IterableTransformer.unionValueToSet)
  factory IterableTransformer.toSet() = _IterableToSet;

  @FreezedUnionValue(IterableTransformer.unionValueToString)
  factory IterableTransformer.toString() = _IterableToString;

  @FreezedUnionValue(IterableTransformer.unionValueJoin)
  factory IterableTransformer.join({String? separator}) = _IterableJoin;

  @FreezedUnionValue(IterableTransformer.unionValueContains)
  factory IterableTransformer.contains(ZacBuilder<Object?>? element) =
      _IterableContains;

  @FreezedUnionValue(IterableTransformer.unionValueElementAt)
  factory IterableTransformer.elementAt(int index) = _IterableElementAt;

  @FreezedUnionValue(IterableTransformer.unionValueSkip)
  factory IterableTransformer.skip(int count) = _IterableSkip;

  @FreezedUnionValue(IterableTransformer.unionValueTake)
  factory IterableTransformer.take(int count) = _IterableTake;

  late final ZacTransform _transform = ZacTransform(
      (ZacTransformValue transformValue, BuildContext context,
          ZacContext zacContext) {
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
          .build(context, zacContext)
          .transform(ZacTransformValue(e), context, zacContext)),
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
      contains: (obj) =>
          value.contains(obj.element?.build(context, zacContext)),
      elementAt: (obj) => value.elementAt(obj.index),
      skip: (obj) => value.skip(obj.count),
      take: (obj) => value.take(obj.count),
    );
  });

  @override
  ZacTransform build(BuildContext context, ZacContext zacContext) => _transform;
}

@freezedZacBuilder
class ListTransformer
    with _$ListTransformer
    implements ZacBuilder<ZacTransform> {
  ListTransformer._();
  static const String unionValue = 'z:1:Transformer:List.reversed';
  static const String unionValueAdd = 'z:1:Transformer:List.add';

  factory ListTransformer.fromJson(Map<String, dynamic> json) =>
      _$ListTransformerFromJson(json);

  /// Will return a Iterable<dynamic>
  @FreezedUnionValue(ListTransformer.unionValue)
  factory ListTransformer.reversed() = _ListReversed;

  @FreezedUnionValue(ListTransformer.unionValueAdd)
  factory ListTransformer.add(ZacBuilder<Object> value) = _ListAdd;

  late final ZacTransform _transform = ZacTransform(
      (ZacTransformValue transformValue, BuildContext context,
          ZacContext zacContext) {
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
        value.add(obj.value.build(context, zacContext));

        return value;
      },
    );
  });

  @override
  ZacTransform build(BuildContext context, ZacContext zacContext) => _transform;
}

@freezedZacBuilder
class ObjectTransformer
    with _$ObjectTransformer
    implements ZacBuilder<ZacTransform> {
  ObjectTransformer._();

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
  factory ObjectTransformer.equals({required ZacBuilder<Object?> other}) =
      _ObjectEquals;

  @FreezedUnionValue(ObjectTransformer.unionValueToString)
  factory ObjectTransformer.toString() = _ObjectToString;

  @FreezedUnionValue(ObjectTransformer.unionValueRuntimeType)
  factory ObjectTransformer.runtimeType() = _ObjectRuntimeType;

  @FreezedUnionValue(ObjectTransformer.unionValueHashCode)
  factory ObjectTransformer.hashCode() = _ObjectHashCode;

  late final ZacTransform _transform = ZacTransform(
      (ZacTransformValue transformValue, BuildContext context,
          ZacContext zacContext) {
    final value = transformValue.value;
    return map(
      isList: (_) => value is List,
      isMap: (_) => value is Map,
      isBool: (_) => value is bool,
      isString: (_) => value is String,
      isInt: (_) => value is int,
      isDouble: (_) => value is double,
      isNull: (_) => null == value,
      equals: (obj) => obj.other.build(context, zacContext) == value,
      hashCode: (_) => value.hashCode,
      runtimeType: (_) => value.runtimeType,
      toString: (_) => value.toString(),
    );
  });

  @override
  ZacTransform build(BuildContext context, ZacContext zacContext) => _transform;
}

@freezedZacBuilder
class NumTransformer with _$NumTransformer implements ZacBuilder<ZacTransform> {
  NumTransformer._();
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
  factory NumTransformer.toDouble() = _NumToDouble;

  @FreezedUnionValue(NumTransformer.unionValueToInt)
  factory NumTransformer.toInt() = _NumToInt;

  @FreezedUnionValue(NumTransformer.unionValueAbs)
  factory NumTransformer.abs() = _NumAbs;

  @FreezedUnionValue(NumTransformer.unionValueCeil)
  factory NumTransformer.ceil() = _NumCeil;

  @FreezedUnionValue(NumTransformer.unionValueCeilToDouble)
  factory NumTransformer.ceilToDouble() = _NumCeilToDouble;

  @FreezedUnionValue(NumTransformer.unionValueFloor)
  factory NumTransformer.floor() = _NumFloor;

  @FreezedUnionValue(NumTransformer.unionValueFloorToDouble)
  factory NumTransformer.floorToDouble() = _NumFloorToDouble;

  @FreezedUnionValue(NumTransformer.unionValueRound)
  factory NumTransformer.round() = _NumRound;

  @FreezedUnionValue(NumTransformer.unionValueRoundToDouble)
  factory NumTransformer.roundToDouble() = _NumRoundToDouble;

  @FreezedUnionValue(NumTransformer.unionValueIsFinite)
  factory NumTransformer.isFinite() = _NumIsFinite;

  @FreezedUnionValue(NumTransformer.unionValueIsInfinite)
  factory NumTransformer.isInfinite() = _NumIsInfinite;

  @FreezedUnionValue(NumTransformer.unionValueIsNan)
  factory NumTransformer.isNan() = _NumIsNan;

  @FreezedUnionValue(NumTransformer.unionValueIsNegative)
  factory NumTransformer.isNegative() = _NumIsNegative;

  late final ZacTransform _transform = ZacTransform(
      (ZacTransformValue transformValue, BuildContext context,
          ZacContext zacContext) {
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
  });

  @override
  ZacTransform build(BuildContext context, ZacContext zacContext) => _transform;
}

@freezedZacBuilder
class IntTransformer with _$IntTransformer implements ZacBuilder<ZacTransform> {
  IntTransformer._();
  static const String unionValue = 'z:1:Transformer:int.parse';
  static const String unionValueTryParse = 'z:1:Transformer:int.tryParse';
  static const String unionValueIncrementBy = 'z:1:Transformer:int.incr';
  static const String unionValueDecrementBy = 'z:1:Transformer:int.decr';

  factory IntTransformer.fromJson(Map<String, dynamic> json) =>
      _$IntTransformerFromJson(json);

  @FreezedUnionValue(IntTransformer.unionValue)
  factory IntTransformer.parse() = _IntParse;

  @FreezedUnionValue(IntTransformer.unionValueTryParse)
  factory IntTransformer.tryParse() = _IntTryParse;

  @FreezedUnionValue(IntTransformer.unionValueIncrementBy)
  factory IntTransformer.incr(ZacBuilder<int> by) = _IntIncr;

  @FreezedUnionValue(IntTransformer.unionValueDecrementBy)
  factory IntTransformer.decr(ZacBuilder<int> by) = _IntDecr;

  late final ZacTransform _transform = ZacTransform(
      (ZacTransformValue transformValue, BuildContext context,
          ZacContext zacContext) {
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
        return value + obj.by.build(context, zacContext);
      },
      decr: (obj) {
        if (value is! int) {
          throw StateError(
              'Expected value to be int in $IntTransformer(${IntTransformer.unionValueDecrementBy}): $value');
        }
        return value - obj.by.build(context, zacContext);
      },
    );
  });

  @override
  ZacTransform build(BuildContext context, ZacContext zacContext) => _transform;
}

@freezedZacBuilder
class StringTransformer
    with _$StringTransformer
    implements ZacBuilder<ZacTransform> {
  StringTransformer._();
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
  factory StringTransformer.length() = _StringLength;

  @FreezedUnionValue(StringTransformer.unionValueSplit)
  factory StringTransformer.split({required ZacBuilder<String> pattern}) =
      _StringSplit;

  @FreezedUnionValue(StringTransformer.unionValueIsEmpty)
  factory StringTransformer.isEmpty() = _StringIsEmpty;

  @FreezedUnionValue(StringTransformer.unionValueIsNotEmpty)
  factory StringTransformer.isNotEmpty() = _StringIsNotEmpty;

  @FreezedUnionValue(StringTransformer.unionValueReplaceAll)
  factory StringTransformer.replaceAll(
      ZacBuilder<String> from, ZacBuilder<String> replace) = _StringReplaceAll;

  late final ZacTransform _transform = ZacTransform(
      (ZacTransformValue transformValue, BuildContext context,
          ZacContext zacContext) {
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
      split: (obj) => value.split(obj.pattern.build(context, zacContext)),
      isEmpty: (_) => value.isEmpty,
      isNotEmpty: (_) => value.isNotEmpty,
      replaceAll: (obj) => value.replaceAll(
          RegExp(obj.from.build(context, zacContext)),
          obj.replace.build(context, zacContext)),
    );
  });

  @override
  ZacTransform build(BuildContext context, ZacContext zacContext) => _transform;
}

@freezedZacBuilder
class JsonTransformer
    with _$JsonTransformer
    implements ZacBuilder<ZacTransform> {
  JsonTransformer._();
  static const String unionValue = 'z:1:Transformer:Json.encode';
  static const String unionValueDecode = 'z:1:Transformer:Json.decode';

  factory JsonTransformer.fromJson(Map<String, dynamic> json) =>
      _$JsonTransformerFromJson(json);

  @FreezedUnionValue(JsonTransformer.unionValue)
  factory JsonTransformer.encode() = _JsonEncode;

  @FreezedUnionValue(JsonTransformer.unionValueDecode)
  factory JsonTransformer.decode() = _JsonDencode;

  late final ZacTransform _transform = ZacTransform(
      (ZacTransformValue transformValue, BuildContext context,
          ZacContext zacContext) {
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
  });

  @override
  ZacTransform build(BuildContext context, ZacContext zacContext) => _transform;
}

@freezedZacBuilder
class BoolTransformer
    with _$BoolTransformer
    implements ZacBuilder<ZacTransform> {
  BoolTransformer._();
  static const String unionValue = 'z:1:Transformer:Bool.negate';

  factory BoolTransformer.fromJson(Map<String, dynamic> json) =>
      _$BoolTransformerFromJson(json);

  @FreezedUnionValue(BoolTransformer.unionValue)
  factory BoolTransformer.negate() = _BoolTransformerNegate;

  late final ZacTransform _transform = ZacTransform(
      (ZacTransformValue transformValue, BuildContext context,
          ZacContext zacContext) {
    final value = transformValue.value;
    if (value is! bool) {
      throw ZacTransformError(
          '$BoolTransformer could not use the value because it is no bool but "$value"');
    }

    return map(
      negate: (_) => !value,
    );
  });

  @override
  ZacTransform build(BuildContext context, ZacContext zacContext) => _transform;
}
