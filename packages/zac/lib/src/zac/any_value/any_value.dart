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

mixin ConsumeValue<Of> {
  String get name;
  SharedValueConsumeType? get consumeType;
  List<SharedValueTransformer>? get mapper;

  Of getSharedValue(ZacBuildContext context) {
    final consumedValue = SharedValue.getFilled(
      consumeType ?? const SharedValueConsumeType.watch(),
      context,
      name,
    );

    late Of value;
    if (consumedValue is ActualValue<Of>) {
      value = consumedValue.value;
    } else if (consumedValue is Of) {
      value = consumedValue as Of;
    } else {
      throw StateError('''
It was not possible to consume a value of "${_typeOf<Of>()}"
in "$runtimeType", because the returned ${_typeOf<SharedValue>()}
was of type ${consumedValue.runtimeType}.
The value returned is:
$consumedValue
''');
    }

    if (null == mapper || true == mapper?.isEmpty) {
      return value;
    }

    assert(value is Object);

    final mappedVal = SharedValue.transform(mapper!, value as Object, context,
        SharedValueInteractionType.consume(context: context));

    assert(() {
      if (mappedVal is Of) return true;
      final allMapperTypers = mapper!.map((e) => e.runtimeType);
      final msg = '''
It was not possible to map a consumed ${_typeOf<SharedValue>()}
because the mappers used did not return a value of type "${_typeOf<Of>()}".
Instead the returned value is of runtimeType "${mappedVal.runtimeType}".
The following mapper were used: "${allMapperTypers.join(' > ')}".
The mapped value returned is:
$mappedVal

The ${_typeOf<SharedValue>()} consumed was:
$consumedValue
''';
      throw AssertionError(msg);
    }());

    return mappedVal as Of;
  }
}

mixin ConsumeValueList<Of> {
  String get name;
  SharedValueConsumeType? get consumeType;
  List<SharedValueTransformer>? get mapper;

  List<Of> getSharedValue(ZacBuildContext context) {
    final consumedValue = SharedValue.getFilled(
      consumeType ?? const SharedValueConsumeType.watch(),
      context,
      name,
    );

    late List<Of> value;
    if (consumedValue is ActualValue<List<Of>>) {
      value = consumedValue.value;
    } else if (consumedValue is List) {
      try {
        value = consumedValue.cast<Of>();
      } catch (e) {
        assert(() {
          throw StateError('''
It was not possible to consume a value of "${_typeOf<List<Of>>()}" in "$runtimeType"
because the returned SharedValue was of type ${consumedValue.runtimeType}.
The value returned is:
$consumedValue
''');
        }(), '');

        rethrow;
      }
    }

    if (null == mapper || true == mapper?.isEmpty) {
      return value;
    }

    final mappedValues = value.map((e) {
      assert(e is Object);
      final mapped = mapper!.transformSharedValues(
          e as Object, SharedValueInteractionType.consume(context: context));

      assert(() {
        if (mapped is Of) return true;
        final allMapperTypers = mapper!.map((e) => e.runtimeType);
        final msg = '''
It was not possible to map a consumed ${_typeOf<SharedValue>()}
to an expected type "${_typeOf<Of>()}" in "${_typeOf<ConsumeValueList<Of>>()}".
The mappers used returned the following runtimeType "${mapped.runtimeType}".
The following mapper were used: "${allMapperTypers.join(' > ')}".
The mapped value:
$mapped

List item:
$e
''';
        throw AssertionError(msg);
      }());
      return mapped;
    }).toList();

    return mappedValues.cast<Of>();
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
  factory ZacInt.consume({
    required String name,
    SharedValueConsumeType? consumeType,
    List<SharedValueTransformer>? mapper,
  }) = ZacIntConsume;

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
  factory ZacDouble.consume({
    required String name,
    SharedValueConsumeType? consumeType,
    List<SharedValueTransformer>? mapper,
  }) = ZacDoubleConsume;

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
  factory ZacString.consume({
    required String name,
    SharedValueConsumeType? consumeType,
    List<SharedValueTransformer>? mapper,
  }) = ZacStringConsume;

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
  factory ZacBool.consume({
    required String name,
    SharedValueConsumeType? consumeType,
    List<SharedValueTransformer>? mapper,
  }) = ZacBoolConsume;

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
      throw Exception(
          'Could not convert data to ${_typeOf<ZacMap>()}. Data: "$data"');
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
  factory ZacMap.consume({
    required String name,
    SharedValueConsumeType? consumeType,
    List<SharedValueTransformer>? mapper,
  }) = ZacMapConsume;

  Map<String, dynamic> getValue(ZacBuildContext context) => map(
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
  factory ZacObject.consume({
    required String name,
    SharedValueConsumeType? consumeType,
    List<SharedValueTransformer>? mapper,
  }) = ZacObjectConsume;

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
    if (data is Map<String, dynamic>) {
      return ConverterHelper.convertToType<ListOfZacWidget>(
        mapConsumeUnion(ListOfZacWidget.unionValueConsume, data),
      );
    }

    if (data is List<dynamic>) {
      return ListOfZacWidgetValue.fromJson(<String, dynamic>{
        converterKey: ListOfZacWidget.unionValue,
        'value': data
      });
    }

    throw Exception(
        'Could not convert data to ${_typeOf<ListOfZacWidget>()}. Data: "$data"');
  }

  @FreezedUnionValue(ListOfZacWidget.unionValue)
  @With<ActualValue<List<ZacWidget>>>()
  factory ListOfZacWidget(List<ZacWidget> value) = ListOfZacWidgetValue;

  @FreezedUnionValue(ListOfZacWidget.unionValueConsume)
  @With<ConsumeValueList<ZacWidget>>()
  factory ListOfZacWidget.consume({
    required String name,
    SharedValueConsumeType? consumeType,
    List<SharedValueTransformer>? mapper,
  }) = ListOfZacWidgetConsume;

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
  factory ZacWidgetConsumerBuilder({
    required String name,
    SharedValueConsumeType? consumeType,
    List<SharedValueTransformer>? mapper,
  }) = _ZacWidgetConsumerBuilder;

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
    return UpdateContextBuilder(
      builder: (context) => builder
          .map((value) => value.getSharedValue(context).buildWidget(context)),
    );
  }
}
