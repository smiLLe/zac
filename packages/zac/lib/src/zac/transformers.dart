import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/converter.dart';
import 'package:zac/src/zac/any_value.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:zac/src/zac/update_context.dart';

part 'transformers.freezed.dart';
part 'transformers.g.dart';

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
  static const String unionValue = 'z:1:Transformer:Map.mapValues';

  factory MapTransformer.fromJson(Map<String, dynamic> json) =>
      _$MapTransformerFromJson(json);

  @FreezedUnionValue(MapTransformer.unionValue)
  factory MapTransformer.mapValues({
    required List<ZacTransformer> transformer,
  }) = _MapMapValues;

  @override
  Map<String, Object?> transform(
      Object? value, SharedValueInteractionType interaction) {
    if (value is! Map) {
      throw ZacTransformError('''
There was an error while trying to transform a value in $runtimeType.
The value was expected to be a type of Map but instead we got a "${value.runtimeType}".
The value: $value
''');
    }
    final castMap = value.cast<String, Object?>();
    return map(
      mapValues: (obj) => castMap.map((key, value) =>
          MapEntry(key, transformer.transformSharedValues(value, interaction))),
    );
  }
}

@defaultConverterFreezed
class ListTransformer with _$ListTransformer implements ZacTransformer {
  const ListTransformer._();
  static const String unionValue = 'z:1:Transformer:List.map';
  static const String unionValueSingle = 'z:1:Transformer:List.single';
  static const String unionValueFirst = 'z:1:Transformer:List.first';
  static const String unionValueLast = 'z:1:Transformer:List.last';
  static const String unionValueLength = 'z:1:Transformer:List.length';

  factory ListTransformer.fromJson(Map<String, dynamic> json) =>
      _$ListTransformerFromJson(json);

  @FreezedUnionValue(ListTransformer.unionValue)
  factory ListTransformer.map({
    required List<ZacTransformer> transformer,
  }) = _ListMap;

  @FreezedUnionValue(ListTransformer.unionValueSingle)
  factory ListTransformer.single() = _ListSingle;

  @FreezedUnionValue(ListTransformer.unionValueFirst)
  factory ListTransformer.first() = _ListFirst;

  @FreezedUnionValue(ListTransformer.unionValueLast)
  factory ListTransformer.last() = _ListLast;

  @FreezedUnionValue(ListTransformer.unionValueLength)
  factory ListTransformer.length() = _ListLength;

  @override
  Object? transform(Object? value, SharedValueInteractionType interaction) {
    if (value is! List) {
      throw ZacTransformError('''
There was an error while trying to transform a value in $runtimeType.
The value was expected to be a type of List but instead we got a "${value.runtimeType}".
The value: $value
''');
    }
    final list = value.cast<Object?>();
    return map(
      map: (obj) => list
          .map((Object? e) =>
              obj.transformer.transformSharedValues(e, interaction))
          .toList(),
      first: (_) => list.first,
      last: (_) => list.last,
      single: (_) => list.single,
      length: (_) => list.length,
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
          final zacContext = interaction.whenZac((obj) => obj.context);
          if (null == zacContext) {
            throw ZacTransformError('''
There was an error while trying to compare two values in ${obj.runtimeType}
for converter "${ObjectTransformer.unionValueEqualsSharedValue}".
A $ZacBuildContext was required but was not accesible through $SharedValueInteractionType.
''');
          }
          final sValue = obj.getSharedValue(zacContext);
          return sValue == value;
        });
  }
}
