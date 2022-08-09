import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/converter.dart';
import 'package:zac/src/zac/shared_value/shared_value.dart';

part 'transformers.freezed.dart';
part 'transformers.g.dart';

class SharedValueTransformError extends StateError {
  SharedValueTransformError(super.message);
}

abstract class SharedValueTransformer {
  factory SharedValueTransformer.fromJson(Map<String, dynamic> json) =>
      ConverterHelper.convertToType<SharedValueTransformer>(json);

  Object? transform(Object? value, SharedValueInteractionType interaction);
}

extension SharedValueTransformerOnList on List<SharedValueTransformer> {
  Object? transformSharedValues(
          Object? value, SharedValueInteractionType interaction) =>
      fold<Object?>(
          value,
          (previousValue, element) =>
              element.transform(previousValue, interaction));
}

@defaultConverterFreezed
class ConvertTransformer
    with _$ConvertTransformer
    implements SharedValueTransformer {
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
class MapTransformer with _$MapTransformer implements SharedValueTransformer {
  const MapTransformer._();
  static const String unionValue = 'z:1:Transformer:Map.mapValues';

  factory MapTransformer.fromJson(Map<String, dynamic> json) =>
      _$MapTransformerFromJson(json);

  @FreezedUnionValue(MapTransformer.unionValue)
  factory MapTransformer.mapValues({
    required List<SharedValueTransformer> transformer,
  }) = _MapMapValues;

  @override
  Map<String, Object?> transform(
      Object? value, SharedValueInteractionType interaction) {
    if (value is! Map) {
      throw SharedValueTransformError('''
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
class ListTransformer with _$ListTransformer implements SharedValueTransformer {
  const ListTransformer._();
  static const String unionValue = 'z:1:Transformer:List.map';

  factory ListTransformer.fromJson(Map<String, dynamic> json) =>
      _$ListTransformerFromJson(json);

  @FreezedUnionValue(ListTransformer.unionValue)
  factory ListTransformer.map({
    required List<SharedValueTransformer> transformer,
  }) = _ListMap;

  @override
  List<Object?> transform(
      Object? value, SharedValueInteractionType interaction) {
    if (value is! List) {
      throw SharedValueTransformError('''
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
    );
  }
}
