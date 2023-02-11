import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/state.dart';
import 'package:zac/src/zac/zac_builder.dart';

part 'transformers.freezed.dart';
part 'transformers.g.dart';

@freezed
class ZacTransform with _$ZacTransform {
  factory ZacTransform(
    Object? Function(BuildContext context, ZacContext zacContext) transform,
  ) = _ZacTransform;
}

@freezedZacBuilder
class ZacTransformValue<T>
    with _$ZacTransformValue<T>
    implements ZacBuilder<T> {
  ZacTransformValue._();

  static const String unionCurrent = 'z:1:TransformValue.current';
  static const String unionInitial = 'z:1:TransformValue.initial';

  static ZacTransformValue<T> fromRegister<T extends Object?>(
      Map<String, dynamic> map) {
    return ZacTransformValue<T>.fromJson(map);
  }

  factory ZacTransformValue.fromJson(Map<String, dynamic> json) =>
      _$ZacTransformValueFromJson<T>(json);

  /// Will return the current transformed value of a transformation
  @FreezedUnionValue(ZacTransformValue.unionCurrent)
  factory ZacTransformValue.current() = _ZacTransformValueCurrent<T>;

  /// Will return the initial value before any transformation occurred.
  @FreezedUnionValue(ZacTransformValue.unionInitial)
  factory ZacTransformValue.initial() = _ZacTransformValueInitial<T>;

  @override
  T build(BuildContext context, ZacContext zacContext) {
    return map<T>(
      current: (obj) {
        final val = ZacStateConsume<TransformValueWrapper>(
          family: HandleTransformer.currentValueName,
          mayBuildBuilder: true,
        ).build(context, zacContext);

        return val.transformValue as T;
      },
      initial: (obj) {
        return ZacStateConsume<T>(
          family: HandleTransformer.initialValueName,
          mayBuildBuilder: true,
        ).build(context, zacContext);
      },
    );
  }
}

/// Will be provided as a [ZacState].
/// The property [transformValue] will hold the current transformed value
/// during the transformation of [ZacTransformer].
@internal
class TransformValueWrapper {
  TransformValueWrapper(this.transformValue);
  Object? transformValue;
}

extension HandleTransformer on List<ZacTransform> {
  static const String currentValueName = 'transformCurrentValue';
  static const String initialValueName = 'transformInitialValue';

  Object? transform(
    BuildContext context,
    ZacContext zacContext,

    /// Initial value of the transformation which will be consumeable through
    /// [ZacTransformValue.current]
    Object? inputValue, {
    /// Other values that might be used during transformation that may be
    /// of interest. Can be consumed via [ZacStateConsume].
    /// The key will become the [ZacState] family.
    /// The value will become the [ZacState]
    Map<String, Object?> otherValues = const {},
  }) {
    final container = ProviderContainer(
      parent: zacContext.consume.map(
        (value) => ProviderScope.containerOf(context, listen: false),
        manual: (obj) => obj.container,
      ),
      overrides: [
        /// The transformer value must be wrapped into a calss and become mutable.
        /// This provider must never be updated because changing the ref.state
        /// will trigger a provider to rebuild and will result in a Exception thrown
        /// by the Provider.
        /// This will only happen during Widget.build()
        /// f.e. while transforming a [ZacStateConsume].
        ZacState.provider(HandleTransformer.currentValueName)
            .overrideWith((ref) {
          return ZacStateProvided(
            HandleTransformer.currentValueName,
            TransformValueWrapper(inputValue),
            (reduce) {
              /// Never update ref.state
              /// but always update the [TransformValueWrapper].transformValue
              assert(ref.state.value is TransformValueWrapper);
              final val = ref.state.value as TransformValueWrapper;
              val.transformValue = reduce(val.transformValue);
            },
          );
        }),
        ZacState.provider(HandleTransformer.initialValueName)
            .overrideWithValue(ZacStateProvided(
          HandleTransformer.initialValueName,
          inputValue,
          (cb) => throw StateError('Not Allowed'),
        )),
        for (var entry in otherValues.entries)
          ZacState.provider(entry.key).overrideWithValue(ZacStateProvided(
            entry.key,
            entry.value,
            (cb) => throw StateError('Not Allowed'),
          )),
      ],
    );

    for (var transformer in this) {
      container
          .read(ZacState.provider(HandleTransformer.currentValueName))
          .update((current) => transformer.transform(
                context,
                zacContext.copyWith.call(
                  consume: ZacContextConsume.manual(container: container),
                ),
              ));
    }

    final state =
        container.read(ZacState.provider(HandleTransformer.currentValueName));
    assert(state.value is TransformValueWrapper);
    final val = state.value as TransformValueWrapper;

    container.dispose();

    return val.transformValue;
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
  factory MapTransformer.values(ZacBuilder<Map<Object?, Object?>> fromMap) =
      _MapValues;

  @FreezedUnionValue(MapTransformer.unionValueKeys)
  factory MapTransformer.keys(ZacBuilder<Map<Object?, Object?>> fromMap) =
      _MapKeys;

  @FreezedUnionValue(MapTransformer.unionValueEntries)
  factory MapTransformer.entries(ZacBuilder<Map<Object?, Object?>> fromMap) =
      _MapEntries;

  @FreezedUnionValue(MapTransformer.unionValueLength)
  factory MapTransformer.length(ZacBuilder<Map<Object?, Object?>> fromMap) =
      _MapLength;

  @FreezedUnionValue(MapTransformer.unionValueIsEmpty)
  factory MapTransformer.isEmpty(ZacBuilder<Map<Object?, Object?>> fromMap) =
      _MapIsEmpty;

  @FreezedUnionValue(MapTransformer.unionValueIsNotEmpty)
  factory MapTransformer.isNotEmpty(ZacBuilder<Map<Object?, Object?>> fromMap) =
      _MapIsNotEmpty;

  @FreezedUnionValue(MapTransformer.unionValueContainsKey)
  factory MapTransformer.containsKey(
          ZacBuilder<Map<Object?, Object?>> fromMap, ZacBuilder<Object?>? key) =
      _MapContainsKey;

  @FreezedUnionValue(MapTransformer.unionValueContainsValue)
  factory MapTransformer.containsValue(
      ZacBuilder<Map<Object?, Object?>> fromMap,
      ZacBuilder<Object?>? value) = _MapContainsValue;

  /// Will return a Map<dynamic, dynamic>
  @FreezedUnionValue(MapTransformer.unionValueMap)
  factory MapTransformer.mapper({
    required ZacBuilder<Map<Object?, Object?>> fromMap,
    ZacBuilder<List<ZacTransform>?>? keyTransformer,
    ZacBuilder<List<ZacTransform>?>? valueTransformer,
  }) = _MapMapper;

  @FreezedUnionValue(MapTransformer.unionValueFromObjectObject)
  factory MapTransformer.fromObjectObject(
      ZacBuilder<Map<Object?, Object?>> fromMap) = _MapFromObjectObject;

  @FreezedUnionValue(MapTransformer.unionValueFromStringObject)
  factory MapTransformer.fromStringObject(
      ZacBuilder<Map<Object?, Object?>> fromMap) = _MapFromStringObject;

  @FreezedUnionValue(MapTransformer.unionValueFromStringNullObject)
  factory MapTransformer.fromStringNullObject(
      ZacBuilder<Map<Object?, Object?>> fromMap) = _MapFromStringNullObject;

  @FreezedUnionValue(MapTransformer.unionValueKey)
  factory MapTransformer.key(
          ZacBuilder<Map<Object?, Object?>> fromMap, ZacBuilder<String> key) =
      _MapKey;

  @FreezedUnionValue(MapTransformer.unionValueSetValueForKey)
  factory MapTransformer.setValueForKey({
    required ZacBuilder<Map<Object?, Object?>> fromMap,
    required ZacBuilder<Object> value,
    required ZacBuilder<String> key,
  }) = _MapSetValueForKey;

  late final ZacTransform _transform =
      ZacTransform((BuildContext context, ZacContext zacContext) {
    return map(
      values: (obj) => obj.fromMap.build(context, zacContext).values,
      keys: (obj) => obj.fromMap.build(context, zacContext).keys,
      entries: (obj) => obj.fromMap.build(context, zacContext).entries,
      isEmpty: (obj) => obj.fromMap.build(context, zacContext).isEmpty,
      isNotEmpty: (obj) => obj.fromMap.build(context, zacContext).isNotEmpty,
      length: (obj) => obj.fromMap.build(context, zacContext).length,
      containsKey: (obj) => obj.fromMap
          .build(context, zacContext)
          .containsKey(obj.key?.build(context, zacContext)),
      containsValue: (obj) => obj.fromMap
          .build(context, zacContext)
          .containsValue(obj.value?.build(context, zacContext)),
      mapper: (obj) {
        final map = obj.fromMap.build(context, zacContext);
        return Map<Object?, Object?>.fromEntries(
            map.entries.map<MapEntry<Object?, Object?>>((entry) {
          Object? updatedKey = entry.key;
          Object? updatedValue = entry.value;
          final keyT = obj.keyTransformer?.build(context, zacContext);
          final valueT = obj.valueTransformer?.build(context, zacContext);
          if (true == keyT?.isNotEmpty) {
            updatedKey = keyT!.transform(
              context,
              zacContext,
              updatedKey,
              otherValues: {
                'MapTransformer.mapper.value': entry.value,
              },
            );
          }
          if (true == valueT?.isNotEmpty) {
            updatedValue = valueT!.transform(
              context,
              zacContext,
              updatedValue,
              otherValues: {
                'MapTransformer.mapper.key': entry.key,
              },
            );
          }

          return MapEntry<Object?, Object?>(updatedKey, updatedValue);
        }));
      },
      fromObjectObject: (obj) {
        return Map<Object, Object>.from(obj.fromMap.build(context, zacContext));
      },
      fromStringNullObject: (obj) {
        return Map<String, Object?>.from(
            obj.fromMap.build(context, zacContext));
      },
      fromStringObject: (obj) {
        return Map<String, Object>.from(obj.fromMap.build(context, zacContext));
      },
      key: (obj) {
        final key = obj.key.build(context, zacContext);
        return obj.fromMap.build(context, zacContext)[key];
      },
      setValueForKey: (obj) {
        final value = obj.value.build(context, zacContext);

        final key = obj.key.build(context, zacContext);

        final map = obj.fromMap.build(context, zacContext);
        map[key] = value;
        return map;
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
    required ZacBuilder<Iterable<Object?>> iterable,
    required ZacBuilder<List<ZacTransform>> transformer,
  }) = _IterableMap;

  @FreezedUnionValue(IterableTransformer.unionValueSingle)
  factory IterableTransformer.single(ZacBuilder<Iterable<Object?>> iterable) =
      _IterableSingle;

  @FreezedUnionValue(IterableTransformer.unionValueFirst)
  factory IterableTransformer.first(ZacBuilder<Iterable<Object?>> iterable) =
      _IterableFirst;

  @FreezedUnionValue(IterableTransformer.unionValueLast)
  factory IterableTransformer.last(ZacBuilder<Iterable<Object?>> iterable) =
      _IterableLast;

  @FreezedUnionValue(IterableTransformer.unionValueLength)
  factory IterableTransformer.length(ZacBuilder<Iterable<Object?>> iterable) =
      _IterableLength;

  @FreezedUnionValue(IterableTransformer.unionValueIsEmpty)
  factory IterableTransformer.isEmpty(ZacBuilder<Iterable<Object?>> iterable) =
      _IterableIsEmpty;

  @FreezedUnionValue(IterableTransformer.unionValueIsNotEmpty)
  factory IterableTransformer.isNotEmpty(
      ZacBuilder<Iterable<Object?>> iterable) = _IterableIsNotEmpty;

  /// Will return a List<dynamic>
  @FreezedUnionValue(IterableTransformer.unionValueToList)
  factory IterableTransformer.toList(ZacBuilder<Iterable<Object?>> iterable) =
      _IterableToList;

  /// Will return a Set<dynamic>
  @FreezedUnionValue(IterableTransformer.unionValueToSet)
  factory IterableTransformer.toSet(ZacBuilder<Iterable<Object?>> iterable) =
      _IterableToSet;

  @FreezedUnionValue(IterableTransformer.unionValueToString)
  factory IterableTransformer.toString(ZacBuilder<Iterable<Object?>> iterable) =
      _IterableToString;

  @FreezedUnionValue(IterableTransformer.unionValueJoin)
  factory IterableTransformer.join(ZacBuilder<Iterable<Object?>> iterable,
      {String? separator}) = _IterableJoin;

  @FreezedUnionValue(IterableTransformer.unionValueContains)
  factory IterableTransformer.contains(ZacBuilder<Iterable<Object?>> iterable,
      ZacBuilder<Object?>? element) = _IterableContains;

  @FreezedUnionValue(IterableTransformer.unionValueElementAt)
  factory IterableTransformer.elementAt(
      ZacBuilder<Iterable<Object?>> iterable, int index) = _IterableElementAt;

  @FreezedUnionValue(IterableTransformer.unionValueSkip)
  factory IterableTransformer.skip(
      ZacBuilder<Iterable<Object?>> iterable, int count) = _IterableSkip;

  @FreezedUnionValue(IterableTransformer.unionValueTake)
  factory IterableTransformer.take(
      ZacBuilder<Iterable<Object?>> iterable, int count) = _IterableTake;

  late final ZacTransform _transform =
      ZacTransform((BuildContext context, ZacContext zacContext) {
    return map(
      map: (obj) => obj.iterable.build(context, zacContext).map((dynamic e) =>
          obj.transformer
              .build(context, zacContext)
              .transform(context, zacContext, e)),
      first: (obj) => obj.iterable.build(context, zacContext).first,
      last: (obj) => obj.iterable.build(context, zacContext).last,
      single: (obj) => obj.iterable.build(context, zacContext).single,
      length: (obj) => obj.iterable.build(context, zacContext).length,
      isEmpty: (obj) => obj.iterable.build(context, zacContext).isEmpty,
      isNotEmpty: (obj) => obj.iterable.build(context, zacContext).isNotEmpty,
      toList: (obj) => obj.iterable.build(context, zacContext).toList(),
      toSet: (obj) => obj.iterable.build(context, zacContext).toSet(),
      toString: (obj) => obj.iterable.build(context, zacContext).toString(),
      join: (obj) =>
          obj.iterable.build(context, zacContext).join(obj.separator ?? ""),
      contains: (obj) => obj.iterable
          .build(context, zacContext)
          .contains(obj.element?.build(context, zacContext)),
      elementAt: (obj) =>
          obj.iterable.build(context, zacContext).elementAt(obj.index),
      skip: (obj) => obj.iterable.build(context, zacContext).skip(obj.count),
      take: (obj) => obj.iterable.build(context, zacContext).take(obj.count),
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
  factory ListTransformer.reversed(ZacBuilder<List<Object?>> list) =
      _ListReversed;

  @FreezedUnionValue(ListTransformer.unionValueAdd)
  factory ListTransformer.add(
      ZacBuilder<List<Object?>> list, ZacBuilder<Object?> value) = _ListAdd;

  late final ZacTransform _transform =
      ZacTransform((BuildContext context, ZacContext zacContext) {
    return map(
      reversed: (obj) => obj.list.build(context, zacContext).reversed.toList(),
      add: (obj) {
        final list = obj.list.build(context, zacContext);
        list.add(obj.value.build(context, zacContext));
        return list;
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
  factory ObjectTransformer.isList(ZacBuilder<Object?> object) = _ObjectIsList;

  @FreezedUnionValue(ObjectTransformer.unionValueIsMap)
  factory ObjectTransformer.isMap(ZacBuilder<Object?> object) = _ObjectIsMap;

  @FreezedUnionValue(ObjectTransformer.unionValueIsBool)
  factory ObjectTransformer.isBool(ZacBuilder<Object?> object) = _ObjectIsBool;

  @FreezedUnionValue(ObjectTransformer.unionValueIsString)
  factory ObjectTransformer.isString(ZacBuilder<Object?> object) =
      _ObjectIsString;

  @FreezedUnionValue(ObjectTransformer.unionValueIsDouble)
  factory ObjectTransformer.isDouble(ZacBuilder<Object?> object) =
      _ObjectIsDouble;

  @FreezedUnionValue(ObjectTransformer.unionValueIsInt)
  factory ObjectTransformer.isInt(ZacBuilder<Object?> object) = _ObjectIsInt;

  @FreezedUnionValue(ObjectTransformer.unionValueIsNull)
  factory ObjectTransformer.isNull(ZacBuilder<Object?> object) = _ObjectIsNull;

  @FreezedUnionValue(ObjectTransformer.unionValueEquals)
  factory ObjectTransformer.equals(
      {required ZacBuilder<Object?> object,
      required ZacBuilder<Object?> other}) = _ObjectEquals;

  @FreezedUnionValue(ObjectTransformer.unionValueToString)
  factory ObjectTransformer.toString(ZacBuilder<Object?> object) =
      _ObjectToString;

  @FreezedUnionValue(ObjectTransformer.unionValueRuntimeType)
  factory ObjectTransformer.runtimeType(ZacBuilder<Object?> object) =
      _ObjectRuntimeType;

  @FreezedUnionValue(ObjectTransformer.unionValueHashCode)
  factory ObjectTransformer.hashCode(ZacBuilder<Object?> object) =
      _ObjectHashCode;

  late final ZacTransform _transform =
      ZacTransform((BuildContext context, ZacContext zacContext) {
    return map(
      isList: (obj) => obj.object.build(context, zacContext) is List,
      isMap: (obj) => obj.object.build(context, zacContext) is Map,
      isBool: (obj) => obj.object.build(context, zacContext) is bool,
      isString: (obj) => obj.object.build(context, zacContext) is String,
      isInt: (obj) => obj.object.build(context, zacContext) is int,
      isDouble: (obj) => obj.object.build(context, zacContext) is double,
      isNull: (obj) => obj.object.build(context, zacContext) == null,
      equals: (obj) =>
          obj.object.build(context, zacContext) ==
          obj.other.build(context, zacContext),
      hashCode: (obj) => obj.object.build(context, zacContext).hashCode,
      runtimeType: (obj) => obj.object.build(context, zacContext).runtimeType,
      toString: (obj) => obj.object.build(context, zacContext).toString(),
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
  factory NumTransformer.toDouble(ZacBuilder<num> number) = _NumToDouble;

  @FreezedUnionValue(NumTransformer.unionValueToInt)
  factory NumTransformer.toInt(ZacBuilder<num> number) = _NumToInt;

  @FreezedUnionValue(NumTransformer.unionValueAbs)
  factory NumTransformer.abs(ZacBuilder<num> number) = _NumAbs;

  @FreezedUnionValue(NumTransformer.unionValueCeil)
  factory NumTransformer.ceil(ZacBuilder<num> number) = _NumCeil;

  @FreezedUnionValue(NumTransformer.unionValueCeilToDouble)
  factory NumTransformer.ceilToDouble(ZacBuilder<num> number) =
      _NumCeilToDouble;

  @FreezedUnionValue(NumTransformer.unionValueFloor)
  factory NumTransformer.floor(ZacBuilder<num> number) = _NumFloor;

  @FreezedUnionValue(NumTransformer.unionValueFloorToDouble)
  factory NumTransformer.floorToDouble(ZacBuilder<num> number) =
      _NumFloorToDouble;

  @FreezedUnionValue(NumTransformer.unionValueRound)
  factory NumTransformer.round(ZacBuilder<num> number) = _NumRound;

  @FreezedUnionValue(NumTransformer.unionValueRoundToDouble)
  factory NumTransformer.roundToDouble(ZacBuilder<num> number) =
      _NumRoundToDouble;

  @FreezedUnionValue(NumTransformer.unionValueIsFinite)
  factory NumTransformer.isFinite(ZacBuilder<num> number) = _NumIsFinite;

  @FreezedUnionValue(NumTransformer.unionValueIsInfinite)
  factory NumTransformer.isInfinite(ZacBuilder<num> number) = _NumIsInfinite;

  @FreezedUnionValue(NumTransformer.unionValueIsNan)
  factory NumTransformer.isNan(ZacBuilder<num> number) = _NumIsNan;

  @FreezedUnionValue(NumTransformer.unionValueIsNegative)
  factory NumTransformer.isNegative(ZacBuilder<num> number) = _NumIsNegative;

  late final ZacTransform _transform =
      ZacTransform((BuildContext context, ZacContext zacContext) {
    return map(
      toDouble: (obj) => obj.number.build(context, zacContext).toDouble(),
      toInt: (obj) => obj.number.build(context, zacContext).toInt(),
      abs: (obj) => obj.number.build(context, zacContext).abs(),
      ceil: (obj) => obj.number.build(context, zacContext).ceil(),
      ceilToDouble: (obj) =>
          obj.number.build(context, zacContext).ceilToDouble(),
      floor: (obj) => obj.number.build(context, zacContext).floor(),
      floorToDouble: (obj) =>
          obj.number.build(context, zacContext).floorToDouble(),
      round: (obj) => obj.number.build(context, zacContext).round(),
      roundToDouble: (obj) =>
          obj.number.build(context, zacContext).roundToDouble(),
      isFinite: (obj) => obj.number.build(context, zacContext).isFinite,
      isInfinite: (obj) => obj.number.build(context, zacContext).isInfinite,
      isNan: (obj) => obj.number.build(context, zacContext).isNaN,
      isNegative: (obj) => obj.number.build(context, zacContext).isNegative,
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
  factory IntTransformer.parse(ZacBuilder<String> number) = _IntParse;

  @FreezedUnionValue(IntTransformer.unionValueTryParse)
  factory IntTransformer.tryParse(ZacBuilder<String> number) = _IntTryParse;

  @FreezedUnionValue(IntTransformer.unionValueIncrementBy)
  factory IntTransformer.incr(ZacBuilder<int> number, ZacBuilder<int> by) =
      _IntIncr;

  @FreezedUnionValue(IntTransformer.unionValueDecrementBy)
  factory IntTransformer.decr(ZacBuilder<int> number, ZacBuilder<int> by) =
      _IntDecr;

  late final ZacTransform _transform =
      ZacTransform((BuildContext context, ZacContext zacContext) {
    return map(
      parse: (obj) {
        final value = obj.number.build(context, zacContext);
        return int.parse(value);
      },
      tryParse: (obj) {
        final value = obj.number.build(context, zacContext);
        if (value is! String) {
          throw StateError('''
There was an error while trying to parse an int in ${obj.runtimeType}
for converter "${IntTransformer.unionValueTryParse}".
The value to transform was not of type String but instead is ${value.runtimeType}.
Value: $value
''');
        }
        return int.tryParse(value);
      },
      incr: (obj) {
        return obj.number.build(context, zacContext) +
            obj.by.build(context, zacContext);
      },
      decr: (obj) {
        return obj.number.build(context, zacContext) -
            obj.by.build(context, zacContext);
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
  factory StringTransformer.length(ZacBuilder<String> string) = _StringLength;

  @FreezedUnionValue(StringTransformer.unionValueSplit)
  factory StringTransformer.split(
      {required ZacBuilder<String> string,
      required ZacBuilder<String> pattern}) = _StringSplit;

  @FreezedUnionValue(StringTransformer.unionValueIsEmpty)
  factory StringTransformer.isEmpty(ZacBuilder<String> string) = _StringIsEmpty;

  @FreezedUnionValue(StringTransformer.unionValueIsNotEmpty)
  factory StringTransformer.isNotEmpty(ZacBuilder<String> string) =
      _StringIsNotEmpty;

  @FreezedUnionValue(StringTransformer.unionValueReplaceAll)
  factory StringTransformer.replaceAll(ZacBuilder<String> string,
      ZacBuilder<String> from, ZacBuilder<String> replace) = _StringReplaceAll;

  late final ZacTransform _transform =
      ZacTransform((BuildContext context, ZacContext zacContext) {
    return map(
      length: (obj) => obj.string.build(context, zacContext).length,
      split: (obj) => obj.string
          .build(context, zacContext)
          .split(obj.pattern.build(context, zacContext)),
      isEmpty: (obj) => obj.string.build(context, zacContext).isEmpty,
      isNotEmpty: (obj) => obj.string.build(context, zacContext).isNotEmpty,
      replaceAll: (obj) => obj.string.build(context, zacContext).replaceAll(
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
  factory JsonTransformer.encode(ZacBuilder<Object> object) = _JsonEncode;

  @FreezedUnionValue(JsonTransformer.unionValueDecode)
  factory JsonTransformer.decode(ZacBuilder<String> jsonString) = _JsonDencode;

  late final ZacTransform _transform =
      ZacTransform((BuildContext context, ZacContext zacContext) {
    return map(
      decode: (obj) {
        return jsonDecode(obj.jsonString.build(context, zacContext));
      },
      encode: (obj) => jsonEncode(obj.object.build(context, zacContext)),
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
  factory BoolTransformer.negate(ZacBuilder<bool> boolean) =
      _BoolTransformerNegate;

  late final ZacTransform _transform =
      ZacTransform((BuildContext context, ZacContext zacContext) {
    return map(
      negate: (obj) => !obj.boolean.build(context, zacContext),
    );
  });

  @override
  ZacTransform build(BuildContext context, ZacContext zacContext) => _transform;
}
