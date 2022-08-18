import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/converter.dart';
import 'package:zac/src/zac/any_value.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:zac/src/zac/update_context.dart';

part 'transformers.freezed.dart';
part 'transformers.g.dart';

Type _typeOf<T>() => T;

class ZacTransformError extends StateError {
  ZacTransformError(super.message);
}

abstract class ZacTransformer {
  factory ZacTransformer.fromJson(Map<String, dynamic> json) =>
      ConverterHelper.convertToType<ZacTransformer>(json);

  Object? transform(Object? value, SharedValueInteractionType interaction);
}

extension ZacTransformerOnList on List<ZacTransformer> {
  Object? transformSharedValues(
          Object? value, SharedValueInteractionType interaction) =>
      fold<Object?>(
          value,
          (previousValue, element) =>
              element.transform(previousValue, interaction));
}

@defaultConverterFreezed
class ConvertTransformer with _$ConvertTransformer implements ZacTransformer {
  const ConvertTransformer._();
  static const String unionValue = 'z:1:Transformer:Converter';

  factory ConvertTransformer.fromJson(Map<String, dynamic> json) =>
      _$ConvertTransformerFromJson(json);

  @FreezedUnionValue(ConvertTransformer.unionValue)
  factory ConvertTransformer() = _Convert;

  @override
  Object? transform(Object? value, SharedValueInteractionType interaction) {
    return ConverterHelper.convertToType<Object>(value);
  }
}

@defaultConverterFreezed
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
  static const String unionValueFromEntries = 'z:1:Transformer:Map.fromEntries';

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
  const factory MapTransformer.containsKey(ZacObject? key) = _MapContainsKey;

  @FreezedUnionValue(MapTransformer.unionValueContainsValue)
  const factory MapTransformer.containsValue(ZacObject? value) =
      _MapContainsValue;

  @override
  Object? transform(Object? value, SharedValueInteractionType interaction) {
    if (value is! Map) {
      throw ZacTransformError('''
There was an error while trying to transform a value in $runtimeType.
The value was expected to be a type of Map but instead we got a "${value.runtimeType}".
The value: $value
''');
    }
    final castMap = value.cast<String, Object?>();

    return map(
      values: (_) => castMap.values,
      keys: (_) => castMap.keys,
      entries: (_) => castMap.entries,
      isEmpty: (_) => castMap.isEmpty,
      isNotEmpty: (_) => castMap.isNotEmpty,
      length: (_) => castMap.length,
      containsKey: (obj) {
        final ctx = interaction.whenZac<ZacBuildContext>(
          (obj) => obj.context,
          orElse: (_) => throw ZacTransformError('''
There was an error while trying to transform a value in ${obj.runtimeType}
for converter "${MapTransformer.unionValueContainsKey}".
A $ZacBuildContext is required through a $SharedValueInteractionType
but none was found.
'''),
        );

        return castMap.containsKey(obj.key?.getValue(ctx));
      },
      containsValue: (obj) {
        final ctx = interaction.whenZac<ZacBuildContext>(
          (obj) => obj.context,
          orElse: (_) => throw ZacTransformError('''
There was an error while trying to transform a value in ${obj.runtimeType}
for converter "${MapTransformer.unionValueContainsValue}".
A $ZacBuildContext is required through a $SharedValueInteractionType
but none was found.
'''),
        );
        return castMap.containsValue(obj.value?.getValue(ctx));
      },
    );
  }
}

@defaultConverterFreezed
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

  @FreezedUnionValue(IterableTransformer.unionValue)
  factory IterableTransformer.map({
    required List<ZacTransformer> transformer,
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

  @FreezedUnionValue(IterableTransformer.unionValueToList)
  const factory IterableTransformer.toList() = _IterableToList;

  @FreezedUnionValue(IterableTransformer.unionValueToSet)
  const factory IterableTransformer.toSet() = _IterableToSet;

  @FreezedUnionValue(IterableTransformer.unionValueToString)
  const factory IterableTransformer.toString() = _IterableToString;

  @FreezedUnionValue(IterableTransformer.unionValueJoin)
  const factory IterableTransformer.join({String? separator}) = _IterableJoin;

  @FreezedUnionValue(IterableTransformer.unionValueContains)
  const factory IterableTransformer.contains(ZacObject? element) =
      _IterableContains;

  @FreezedUnionValue(IterableTransformer.unionValueElementAt)
  const factory IterableTransformer.elementAt(int index) = _IterableElementAt;

  @FreezedUnionValue(IterableTransformer.unionValueSkip)
  const factory IterableTransformer.skip(int count) = _IterableSkip;

  @FreezedUnionValue(IterableTransformer.unionValueTake)
  const factory IterableTransformer.take(int count) = _IterableTake;

  @override
  Object? transform(Object? value, SharedValueInteractionType interaction) {
    if (value is! Iterable) {
      throw ZacTransformError('''
There was an error while trying to transform a value in $runtimeType.
The value was expected to be a type of Iterable but instead we got a "${value.runtimeType}".
The value: $value
''');
    }
    final iterable = value.cast<Object?>();
    return map(
      map: (obj) => iterable
          .map((Object? e) =>
              obj.transformer.transformSharedValues(e, interaction))
          .toList(),
      first: (_) => iterable.first,
      last: (_) => iterable.last,
      single: (_) => iterable.single,
      length: (_) => iterable.length,
      isEmpty: (_) => iterable.isEmpty,
      isNotEmpty: (_) => iterable.isNotEmpty,
      toList: (_) => iterable.toList(),
      toSet: (_) => iterable.toSet(),
      toString: (_) => iterable.toString(),
      join: (obj) => iterable.join(obj.separator ?? ""),
      contains: (obj) {
        final ctx = interaction.whenZac<ZacBuildContext>(
          (obj) => obj.context,
          orElse: (_) => throw ZacTransformError('''
There was an error while trying to transform a value in ${obj.runtimeType}
for converter "${IterableTransformer.unionValueContains}".
A $ZacBuildContext is required through a $SharedValueInteractionType
but none was found.
'''),
        );
        return iterable.contains(obj.element?.getValue(ctx));
      },
      elementAt: (obj) => iterable.elementAt(obj.index),
      skip: (obj) => iterable.skip(obj.count),
      take: (obj) => iterable.take(obj.count),
    );
  }
}

@defaultConverterFreezed
class ObjectTransformer with _$ObjectTransformer implements ZacTransformer {
  const ObjectTransformer._();
  static const String unionValue = 'z:1:Transformer:Object.isList';
  static const String unionValueIsMap = 'z:1:Transformer:Object.isMap';
  static const String unionValueEquals = 'z:1:Transformer:Object.equals';
  static const String unionValueEqualsSharedValue =
      'z:1:Transformer:Object.equalsSharedValue';

  factory ObjectTransformer.fromJson(Map<String, dynamic> json) =>
      _$ObjectTransformerFromJson(json);

  @FreezedUnionValue(ObjectTransformer.unionValue)
  factory ObjectTransformer.isList() = _ObjectIsList;

  @FreezedUnionValue(ObjectTransformer.unionValueIsMap)
  factory ObjectTransformer.isMap() = _ObjectIsMap;

  @FreezedUnionValue(ObjectTransformer.unionValueEquals)
  factory ObjectTransformer.equals({required Object? other}) = _ObjectEquals;

  @FreezedUnionValue(ObjectTransformer.unionValueEqualsSharedValue)
  @With<ConsumeValue<Object?>>()
  factory ObjectTransformer.equalsSharedValue({
    required SharedValueFamily family,
    @Default(SharedValueConsumeType.read()) SharedValueConsumeType? consumeType,
    List<ZacTransformer>? transformer,
  }) = _ObjectEqualsSharedValue;

  @override
  Object? transform(Object? value, SharedValueInteractionType interaction) {
    return map(
        isList: (_) => value is List,
        isMap: (_) => value is Map,
        equals: (obj) => obj.other == value,
        equalsSharedValue: (obj) {
          final zacContext = interaction.whenZac(
            (obj) => obj.context,
            orElse: (_) => throw ZacTransformError('''
There was an error while trying to compare two values in ${obj.runtimeType}
for converter "${ObjectTransformer.unionValueEqualsSharedValue}".
A $ZacBuildContext was required but was not accesible through $SharedValueInteractionType.
'''),
          );
          final sValue = obj.getSharedValue(zacContext);
          return sValue == value;
        });
  }
}

@defaultConverterFreezed
class IntTransformer with _$IntTransformer implements ZacTransformer {
  const IntTransformer._();
  static const String unionValue = 'z:1:Transformer:int.parse';
  static const String unionValueTryParse = 'z:1:Transformer:int.tryParse';

  factory IntTransformer.fromJson(Map<String, dynamic> json) =>
      _$IntTransformerFromJson(json);

  @FreezedUnionValue(IntTransformer.unionValue)
  const factory IntTransformer.parse() = _IntParse;

  @FreezedUnionValue(IntTransformer.unionValueTryParse)
  const factory IntTransformer.tryParse() = _IntTryParse;

  @override
  Object? transform(Object? value, SharedValueInteractionType interaction) {
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
    );
  }
}
