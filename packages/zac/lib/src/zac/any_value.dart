import 'package:zac/zac.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'any_value.freezed.dart';
part 'any_value.g.dart';

Type _typeOf<T>() => T;

const consumeUnion = 'z:1:SharedValue.consume';

/// take the generic SharedValue.consume and map it to another converter name.
Object mapConsumeUnion(String other, Object map) {
  if (ConverterHelper.isConverter(map)) {
    final m = map as Map<String, dynamic>;
    if (m[converterKey] == consumeUnion) {
      m[converterKey] = other;
    }
    return m;
  }
  return map;
}

abstract class ZacWidget {
  factory ZacWidget.fromJson(Object data) {
    return ConverterHelper.convertToType<ZacWidget>(
      mapConsumeUnion(ZacWidgetConsumerBuilder.unionValue, data),
    );
  }

  Widget buildWidget(ZacBuildContext context);
}

mixin ActualValue<Of> {
  Of get value;
}

class ConsumeSharedValueOfError extends StateError {
  ConsumeSharedValueOfError(super.message);
}

mixin ConsumeValue<Of> {
  SharedValueFamily get family;
  SharedValueConsumeType get consumeType;
  List<ZacTransformer>? get transformer;

  Of getSharedValue(ZacBuildContext context) {
    final consumedValue = SharedValue.getFilled(consumeType, context, family);

    late Object? value;
    if (consumedValue is ActualValue<Object?>) {
      value = consumedValue.value;
    } else if (consumedValue is Of) {
      value = consumedValue;
    } else {
      throw ConsumeSharedValueOfError('''
It was not possible to use a consumed $SharedValue in "$runtimeType" for family "$family".
The expected possible types for the consumed $SharedValue were:
$Of || ${_typeOf<ActualValue<Of>>()} || ${_typeOf<ActualValue<Object?>>()}

The actual value returned was of runtimeType "${consumedValue.runtimeType}".
$consumedValue
''');
    }

    if (value is Of && (null == transformer || true == transformer?.isEmpty)) {
      return value;
    }

    if (null == transformer || true == transformer?.isEmpty) {
      throw ConsumeSharedValueOfError('''
It was not possible to return a $SharedValue in "$runtimeType" for family "$family".
The consumed $SharedValue was of runtimeType: "${value.runtimeType}".
It was expected to return a type of: "${_typeOf<Of>()}".

This error was created because there are no transformers to use.
Add a transformer in order to transform the $SharedValue into a type of: "${_typeOf<Of>()}".

The consumed $SharedValue: $value
''');
    }

    final transformedValue = SharedValue.transform(transformer!, value,
        ZacSharedValueInteractionType.consume(context: context));

    if (transformedValue is! Of) {
      final alltransformerTypers = transformer!.map((e) => e.runtimeType);
      throw ConsumeSharedValueOfError('''
Unexpected type found after transforming a consumed $SharedValue in "$runtimeType" for family "$family".
The consumed $SharedValue was of runtimeType: "${value.runtimeType}".
The $SharedValue after transformation was of runtimeType: "${transformedValue.runtimeType}".
The expected type was: "${_typeOf<Of>()}".
The following transformer were used: 
${alltransformerTypers.join(' > ')}

The transformed value:
$transformedValue

The consumed $SharedValue:
$consumedValue
''');
    }

    return transformedValue;
  }
}

mixin ConsumeValueList<Of> {
  SharedValueFamily get family;
  SharedValueConsumeType get consumeType;
  List<ZacTransformer>? get transformer;

  List<Of> getSharedValue(ZacBuildContext context) {
    final consumedValue = SharedValue.getFilled(
      consumeType,
      context,
      family,
    );

    late List<Object?> value;
    if (consumedValue is ActualValue<List>) {
      value = consumedValue.value;
    } else if (consumedValue is List) {
      value = consumedValue;
    } else {
      throw ConsumeSharedValueOfError('''
It was not possible to use a consumed $SharedValue in "$runtimeType" for family "$family".
The expected possible types for the consumed $SharedValue were:
${_typeOf<List<Of>>()} || ${_typeOf<ActualValue<List<Of>>>()} || ${_typeOf<ActualValue<List>>()}

The actual value returned was of runtimeType "${consumedValue.runtimeType}".
$consumedValue
''');
    }

    if (value.every((element) => element is Of) &&
        (null == transformer || true == transformer?.isEmpty)) {
      return value.cast<Of>();
    }

    if (null == transformer || true == transformer?.isEmpty) {
      throw ConsumeSharedValueOfError('''
It was not possible to return a $SharedValue in "$runtimeType" for family "$family".
The consumed $SharedValue was of runtimeType: "${value.runtimeType}".
It was expected to return a type of: "${_typeOf<List<Of>>()}".

This error was created because there are no transformers to use.
Add a transformer in order to transform the $SharedValue into a type of: "${_typeOf<List<Of>>()}".

The consumed $SharedValue: $value
''');
    }

    return value.map<Of>((element) {
      final transformedValue = transformer!.transformSharedValues(
          ZacTransformValue(element),
          ZacSharedValueInteractionType.consume(context: context));

      if (transformedValue is! Of) {
        final alltransformerTypers = transformer!.map((e) => e.runtimeType);
        throw ConsumeSharedValueOfError('''
Unexpected type found after transforming an item in a consumed $SharedValue List in "$runtimeType" for name "$family".
The item was of runtimeType: "${element.runtimeType}".
The item after transformation was of runtimeType: "${transformedValue.runtimeType}".
The expected type was: "${_typeOf<Of>()}".
The following transformer were used: 
${alltransformerTypers.join(' > ')}

The transformed value:
$transformedValue

The item:
$element
''');
      }

      return transformedValue;
    }).toList();
  }
}

@defaultConverterFreezed
class ZacInt with _$ZacInt {
  const ZacInt._();

  static const String unionValue = 'z:1:ZacInt';
  static const String unionValueConsume = 'z:1:ZacInt.consume';

  factory ZacInt.fromJson(Object data) {
    if (data is int) {
      return ZacInt(data);
    }
    if (data is double) {
      return ZacInt(data.toInt());
    }

    return ConverterHelper.convertToType<ZacInt>(
        mapConsumeUnion(ZacInt.unionValueConsume, data));
  }

  @FreezedUnionValue(ZacInt.unionValue)
  @With<ActualValue<int>>()
  factory ZacInt(int value) = ZacIntValue;

  @FreezedUnionValue(ZacInt.unionValueConsume)
  @With<ConsumeValue<int>>()
  factory ZacInt.consume(
    SharedValueFamily family, [
    List<ZacTransformer>? transformer,
    @Default(SharedValueConsumeType.watch()) SharedValueConsumeType consumeType,
  ]) = ZacIntConsume;

  int getValue(ZacBuildContext context) => map(
        (obj) => obj.value,
        consume: (obj) => obj.getSharedValue(context),
      );
}

@defaultConverterFreezed
class ZacDouble with _$ZacDouble {
  const ZacDouble._();

  static const String unionValue = 'z:1:ZacDouble';
  static const String unionValueConsume = 'z:1:ZacDouble.consume';

  factory ZacDouble.fromJson(Object data) {
    if (data is double) {
      return ZacDouble(data);
    }
    if (data is int) {
      return ZacDouble(data.toDouble());
    }

    return ConverterHelper.convertToType<ZacDouble>(
        mapConsumeUnion(ZacDouble.unionValueConsume, data));
  }

  @FreezedUnionValue(ZacDouble.unionValue)
  @With<ActualValue<double>>()
  factory ZacDouble(double value) = ZacDoubleValue;

  @FreezedUnionValue(ZacDouble.unionValueConsume)
  @With<ConsumeValue<double>>()
  factory ZacDouble.consume(
    SharedValueFamily family, [
    List<ZacTransformer>? transformer,
    @Default(SharedValueConsumeType.watch()) SharedValueConsumeType consumeType,
  ]) = ZacDoubleConsume;

  double getValue(ZacBuildContext context) => map(
        (obj) => obj.value,
        consume: (obj) => obj.getSharedValue(context),
      );
}

@defaultConverterFreezed
class ZacString with _$ZacString {
  const ZacString._();

  static const String unionValue = 'z:1:ZacString';
  static const String unionValueConsume = 'z:1:ZacString.consume';

  factory ZacString.fromJson(Object data) {
    if (data is String) {
      return ZacString(data);
    }

    return ConverterHelper.convertToType<ZacString>(
        mapConsumeUnion(ZacString.unionValueConsume, data));
  }

  @FreezedUnionValue(ZacString.unionValue)
  @With<ActualValue<String>>()
  factory ZacString(String value) = ZacStringValue;

  @FreezedUnionValue(ZacString.unionValueConsume)
  @With<ConsumeValue<String>>()
  factory ZacString.consume(
    SharedValueFamily family, [
    List<ZacTransformer>? transformer,
    @Default(SharedValueConsumeType.watch()) SharedValueConsumeType consumeType,
  ]) = ZacStringConsume;

  String getValue(ZacBuildContext context) => map(
        (obj) => obj.value,
        consume: (obj) => obj.getSharedValue(context),
      );
}

@defaultConverterFreezed
class ZacBool with _$ZacBool {
  const ZacBool._();

  static const String unionValue = 'z:1:ZacBool';
  static const String unionValueConsume = 'z:1:ZacBool.consume';

  factory ZacBool.fromJson(Object data) {
    if (data is bool) {
      return ZacBool(data);
    }

    return ConverterHelper.convertToType<ZacBool>(
        mapConsumeUnion(ZacBool.unionValueConsume, data));
  }

  @FreezedUnionValue(ZacBool.unionValue)
  @With<ActualValue<bool>>()
  factory ZacBool(bool value) = ZacBoolValue;

  @FreezedUnionValue(ZacBool.unionValueConsume)
  @With<ConsumeValue<bool>>()
  factory ZacBool.consume(
    SharedValueFamily family, [
    List<ZacTransformer>? transformer,
    @Default(SharedValueConsumeType.watch()) SharedValueConsumeType consumeType,
  ]) = ZacBoolConsume;

  bool getValue(ZacBuildContext context) => map(
        (obj) => obj.value,
        consume: (obj) => obj.getSharedValue(context),
      );
}

@defaultConverterFreezed
class ZacMap with _$ZacMap {
  const ZacMap._();

  static const String unionValue = 'z:1:ZacMap';
  static const String unionValueConsume = 'z:1:ZacMap.consume';

  factory ZacMap.fromJson(Object data) {
    if (data is! Map<String, dynamic>) {
      return ConverterHelper.convertToType<ZacMap>(
          mapConsumeUnion(ZacMap.unionValueConsume, data));
    }

    if (ConverterHelper.isConverter(data)) {
      final rt = data[converterKey] as String;
      if (rt != ZacMap.unionValue &&
          rt != ZacMap.unionValueConsume &&
          rt != consumeUnion) {
        return ZacMap(data);
      }
      return ConverterHelper.convertToType<ZacMap>(
          mapConsumeUnion(ZacMap.unionValueConsume, data));
    }

    return ZacMap(data);
  }

  @FreezedUnionValue(ZacMap.unionValue)
  @With<ActualValue<Map<String, dynamic>>>()
  factory ZacMap(Map<String, dynamic> value) = ZacMapValue;

  @FreezedUnionValue(ZacMap.unionValueConsume)
  @With<ConsumeValue<Map<String, dynamic>>>()
  factory ZacMap.consume(
    SharedValueFamily family, [
    List<ZacTransformer>? transformer,
    @Default(SharedValueConsumeType.watch()) SharedValueConsumeType consumeType,
  ]) = ZacMapConsume;

  Map<String, dynamic> getValue(ZacBuildContext context) => map(
        (obj) => obj.value,
        consume: (obj) => obj.getSharedValue(context),
      );
}

@defaultConverterFreezed
class ZacList with _$ZacList {
  const ZacList._();

  static const String unionValue = 'z:1:ZacList';
  static const String unionValueConsume = 'z:1:ZacList.consume';

  factory ZacList.fromJson(Object data) {
    if (data is List) {
      return ZacList(data.cast<Object?>());
    }

    if (ConverterHelper.isConverter(data)) {
      final rt = (data as Map<String, dynamic>)[converterKey] as String;
      if (rt == ZacList.unionValue ||
          rt == ZacList.unionValueConsume ||
          rt == consumeUnion) {
        return ConverterHelper.convertToType<ZacList>(
            mapConsumeUnion(ZacList.unionValueConsume, data));
      }
    }

    return ConverterHelper.convertToType<ZacList>(
        mapConsumeUnion(ZacList.unionValueConsume, data));
  }

  @FreezedUnionValue(ZacList.unionValue)
  @With<ActualValue<List<dynamic>>>()
  factory ZacList(List<dynamic> value) = ZacListValue;

  @FreezedUnionValue(ZacList.unionValueConsume)
  @With<ConsumeValue<List<dynamic>>>()
  factory ZacList.consume(
    SharedValueFamily family, [
    List<ZacTransformer>? transformer,
    @Default(SharedValueConsumeType.watch()) SharedValueConsumeType consumeType,
  ]) = ZacListConsume;

  List<dynamic> getValue(ZacBuildContext context) => map(
        (obj) => obj.value,
        consume: (obj) => obj.getSharedValue(context),
      );
}

@defaultConverterFreezed
class ZacObject with _$ZacObject {
  const ZacObject._();

  static const String unionValue = 'z:1:ZacObject';
  static const String unionValueConsume = 'z:1:ZacObject.consume';

  factory ZacObject.fromJson(Object data) {
    data = mapConsumeUnion(ZacObject.unionValueConsume, data);
    if (ConverterHelper.isConverter(data)) {
      final map = data as Map<String, dynamic>;
      final rt = map[converterKey] as String;

      if (ConverterHelper.hasExistingConverter(rt)) {
        switch (rt) {
          case ZacObject.unionValue:
            return ZacObjectValue.fromJson(map);
          case ZacObject.unionValueConsume:
          case consumeUnion:
            return ZacObjectConsume.fromJson(<String, dynamic>{
              ...map,
              converterKey: ZacObject.unionValueConsume,
            });
        }
      }
    }

    return ZacObjectValue(data);
  }

  @FreezedUnionValue(ZacObject.unionValue)
  @With<ActualValue<Object>>()
  factory ZacObject(Object value) = ZacObjectValue;

  @FreezedUnionValue(ZacObject.unionValueConsume)
  @With<ConsumeValue<Object>>()
  factory ZacObject.consume(
    SharedValueFamily family, [
    List<ZacTransformer>? transformer,
    @Default(SharedValueConsumeType.watch()) SharedValueConsumeType consumeType,
  ]) = ZacObjectConsume;

  Object getValue(ZacBuildContext context) => map(
        (obj) => obj.value,
        consume: (obj) => obj.getSharedValue(context),
      );
}

@defaultConverterFreezed
class ListOfZacWidget with _$ListOfZacWidget {
  const ListOfZacWidget._();

  static const String unionValue = 'z:1:ListOfZacWidget';
  static const String unionValueConsume = 'z:1:ListOfZacWidget.consume';

  factory ListOfZacWidget.fromJson(Object data) {
    if (data is List<dynamic>) {
      return ListOfZacWidgetValue.fromJson(<String, dynamic>{
        converterKey: ListOfZacWidget.unionValue,
        'value': data
      });
    }

    return ConverterHelper.convertToType<ListOfZacWidget>(
      mapConsumeUnion(ListOfZacWidget.unionValueConsume, data),
    );
  }

  @FreezedUnionValue(ListOfZacWidget.unionValue)
  @With<ActualValue<List<ZacWidget>>>()
  factory ListOfZacWidget(List<ZacWidget> value) = ListOfZacWidgetValue;

  @FreezedUnionValue(ListOfZacWidget.unionValueConsume)
  @With<ConsumeValueList<ZacWidget>>()
  factory ListOfZacWidget.consume(
    SharedValueFamily family, [
    List<ZacTransformer>? transformer,
    @Default(SharedValueConsumeType.watch()) SharedValueConsumeType consumeType,
  ]) = ListOfZacWidgetConsume;

  List<Widget> getValue(ZacBuildContext context) => map(
        (obj) => obj.value.map((e) => e.buildWidget(context)).toList(),
        consume: (obj) => obj
            .getSharedValue(context)
            .map((e) => e.buildWidget(context))
            .toList(),
      );
}

@defaultConverterFreezed
class ZacWidgetConsumerBuilder
    with _$ZacWidgetConsumerBuilder
    implements ZacWidget {
  ZacWidgetConsumerBuilder._();
  static const String unionValue = 'z:1:ZacWidget.consume';

  factory ZacWidgetConsumerBuilder.fromJson(Map<String, dynamic> json) =>
      _$ZacWidgetConsumerBuilderFromJson(json);

  @FreezedUnionValue(ZacWidgetConsumerBuilder.unionValue)
  @With<ConsumeValue<ZacWidget>>()
  factory ZacWidgetConsumerBuilder(
    SharedValueFamily family, [
    List<ZacTransformer>? transformer,
    @Default(SharedValueConsumeType.watch()) SharedValueConsumeType consumeType,
  ]) = _ZacWidgetConsumerBuilder;

  @override
  Widget buildWidget(ZacBuildContext context) {
    return ZacWidgetConsumer(
      builder: this,
    );
  }
}

class ZacWidgetConsumer extends StatelessWidget {
  const ZacWidgetConsumer({required this.builder, Key? key}) : super(key: key);

  final ZacWidgetConsumerBuilder builder;

  @override
  Widget build(BuildContext context) {
    return ZacUpdateContext(
      builder: (context) => builder
          .map((value) => value.getSharedValue(context).buildWidget(context)),
    );
  }
}
