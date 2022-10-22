import 'package:zac/zac.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'zac_values.freezed.dart';
part 'zac_values.g.dart';

Type _typeOf<T>() => T;

const zacValueConverter = 'z:1:SharedValue';
const zacValueConverterWatch = 'z:1:SharedValue.watch';
const zacValueConverterRead = 'z:1:SharedValue.read';

ZacValueList<TValue> zacValueListFromJson<TValue>(
    Object data,
    ZacValueList<TValue> Function(String converter, Map<String, dynamic> data)
        cb) {
  /// simple list
  if (data is List) {
    return ZacValueListConsume<TValue>.simple(
      value: List<ZacValue<TValue>>.from(List<Object>.from(data)
          .map((e) => ZacValue<TValue>.fromJson(e))
          .toList()),
    );
  }

  /// actual ZacValueList Type
  else if (ConverterHelper.isConverter(data) &&
      [zacValueConverter, zacValueConverterWatch, zacValueConverterRead]
          .contains((data as Map<String, dynamic>)[converterKey] as String)) {
    final name = data[converterKey] as String;
    return cb(name, data);
  }

  throw StateError('''
It was not possible to create a "${_typeOf<ZacValueList<TValue>>()}"
or "${_typeOf<ZacValueListRead<TValue>>()}" because the data given is not supported.
The following data was used:
$data"''');
}

ZacValue<TValue> zacValueFromJson<TValue>(Object data,
    ZacValue<TValue> Function(String converter, Map<String, dynamic> data) cb) {
  if (TValue == DateTime && data is String) {
    return ZacValueConsume<TValue>.simple(value: DateTime.parse(data));
  } else if (TValue == int && data is double) {
    return ZacValueConsume<TValue>.simple(value: data.toInt());
  } else if (TValue == double && data is int) {
    return ZacValueConsume<TValue>.simple(value: data.toDouble());
  }

  /// any simple value. also allow non converter Map or List
  else if (data is TValue &&
      !(ConverterHelper.isConverter(data) &&
          [
            zacValueConverter,
            zacValueConverterWatch,
            zacValueConverterRead
          ].contains((data as Map<String, dynamic>)[converterKey] as String))) {
    return ZacValueConsume<TValue>.simple(value: data as TValue);
  }

  /// anything that can be converted
  else if (ConverterHelper.isConverter(data) &&
      ![zacValueConverter, zacValueConverterWatch, zacValueConverterRead]
          .contains((data as Map<String, dynamic>)[converterKey] as String)) {
    return ZacValueConsume<TValue>.simple(
        value: ConverterHelper.convertToType<TValue>(data));
  }

  /// actual ZacValueTypes
  else if (ConverterHelper.isConverter(data)) {
    data as Map<String, dynamic>;
    final name = data[converterKey] as String;
    return cb(name, data);
  }

  throw StateError('''
It was not possible to create a "${_typeOf<ZacValue<TValue>>()}"
or "${_typeOf<ZacValueRead<TValue>>()}" because the data given is not supported.
The following data was used:
$data"''');
}

abstract class ZacValueRead<TValue> {
  factory ZacValueRead.fromJson(Object data) {
    return zacValueFromJson<TValue>(data, (converter, data) {
      switch (converter) {
        case zacValueConverter:
          return ZacValueConsume<TValue>.fromJson(data);
        case zacValueConverterRead:
          return ZacValueConsume<TValue>.fromJson(data);
        default:
          throw StateError('''
It was not possible to create "${_typeOf<ZacValueRead<TValue>>()}".
The following data was used:
$data"''');
      }
    });
  }

  TValue getValue(ZacContext zacContext);
}

abstract class ZacValue<TValue> implements ZacValueRead<TValue> {
  factory ZacValue.fromJson(Object data) {
    return zacValueFromJson<TValue>(data, (converter, data) {
      switch (converter) {
        case zacValueConverter:
          return ZacValueConsume<TValue>.fromJson(data);
        case zacValueConverterWatch:
          return ZacValueConsume<TValue>.fromJson(data);
        case zacValueConverterRead:
          return ZacValueConsume<TValue>.fromJson(data);
        default:
          throw StateError('''
It was not possible to create "${_typeOf<ZacValue<TValue>>()}".
The following data was used:
$data"''');
      }
    });
  }

  @override
  TValue getValue(ZacContext zacContext);
}

extension _XZacValueConsumeSimple<TValue> on _ZacValueConsumeSimple<TValue> {
  bool get valueIsTValue => value is TValue;
}

@defaultConverterFreezed
class ZacValueConsume<TValue>
    with _$ZacValueConsume<TValue>
    implements ZacValue<TValue> {
  ZacValueConsume._();

  factory ZacValueConsume.fromJson(Map<String, dynamic> json) {
    final val = _$ZacValueConsumeFromJson<TValue>(json);
    val.map(
      simple: (obj) {
        if (!obj.valueIsTValue &&
            true != obj.transformer?.transformers.isNotEmpty) {
          throw StateError('''
It was not possible to create ${_typeOf<ZacValueConsume<TValue>>()} because the
value was meant to be of type "$TValue".
But instead it is "${obj.value.runtimeType}".
The data was: $json''');
        }
      },
      watch: (_) {},
      read: (_) {},
    );
    return val;
  }

  @FreezedUnionValue(zacValueConverter)
  factory ZacValueConsume.simple({
    required Object? value,
    ZacTransformers? transformer,
  }) = _ZacValueConsumeSimple<TValue>;

  @FreezedUnionValue(zacValueConverterWatch)
  factory ZacValueConsume.watch({
    required SharedValueFamily family,
    ZacTransformers? transformer,
    ZacTransformers? select,
  }) = _ZacValueConsumeWatch<TValue>;

  @FreezedUnionValue(zacValueConverterRead)
  factory ZacValueConsume.read({
    required SharedValueFamily family,
    ZacTransformers? transformer,
  }) = _ZacValueConsumeRead<TValue>;

  SharedValueConsumeType get type => map(
        simple: (_) => throw StateError('must never happen'),
        watch: (obj) => SharedValueConsumeType.watch(select: obj.select),
        read: (_) => const SharedValueConsumeType.read(),
      );

  SharedValueFamily get family => map(
        simple: (_) => throw StateError('must never happen'),
        watch: (obj) => obj.family,
        read: (obj) => obj.family,
      );

  TValue _getSimple(
      ZacContext zacContext, _ZacValueConsumeSimple<TValue> simple) {
    if (true == transformer?.transformers.isNotEmpty) {
      final transformed = transformer!
          .transform(ZacTransformValue(simple.value), zacContext, null);

      if (transformed is! TValue) {
        throw StateError('''
It was not possible to return a value of type $TValue in ${_typeOf<ZacValueConsume<TValue>>()}.
Instead the returned value was of runtimeType ${transformed.runtimeType}.
Value: $transformed''');
      }
      return transformed;
    }

    if (simple.value is! TValue) {
      throw StateError('''
The ${_typeOf<ZacValueConsume<TValue>>()} does not hold a value of $TValue.
Instead it holds a ${simple.value.runtimeType}.''');
    }

    return simple.value as TValue;
  }

  TValue _getShared(ZacContext zacContext) {
    final consumedValue = SharedValue.get(type, zacContext, family);

    late Object? value;
    if (consumedValue is ZacValue<Object?>) {
      value = consumedValue.getValue(zacContext);
    } else {
      value = consumedValue;
    }

    if (value is TValue &&
        (null == transformer || true == transformer?.transformers.isEmpty)) {
      return value;
    }

    if (null == transformer || true == transformer?.transformers.isEmpty) {
      throw StateError('''
It was not possible to return a $SharedValue in "$runtimeType" for family "$family".
The consumed $SharedValue was of runtimeType: "${value.runtimeType}".
It was expected to return a type of: "$TValue".

This error was created because there are no transformers to use.
Add a transformer in order to transform the $SharedValue into a type of: "$TValue".

The consumed $SharedValue: $value
''');
    }

    final transformedValue =
        transformer!.transform(ZacTransformValue(value), zacContext, null);

    if (transformedValue is! TValue) {
      final alltransformerTypers =
          transformer!.transformers.map((e) => e.runtimeType);
      throw StateError('''
Unexpected type found after transforming a consumed $SharedValue in "$runtimeType" for family "$family".
The consumed $SharedValue was of runtimeType: "${value.runtimeType}".
The $SharedValue after transformation was of runtimeType: "${transformedValue.runtimeType}".
The expected type was: "$TValue".
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

  @override
  TValue getValue(ZacContext zacContext) => map(
        simple: (obj) => _getSimple(zacContext, obj),
        watch: (_) => _getShared(zacContext),
        read: (_) => _getShared(zacContext),
      );
}

abstract class ZacValueListRead<TValue> {
  factory ZacValueListRead.fromJson(Object data) {
    return zacValueListFromJson<TValue>(data, (converter, data) {
      switch (converter) {
        case zacValueConverter:
          return ZacValueListConsume<TValue>.fromJson(data);
        case zacValueConverterRead:
          return ZacValueListConsume<TValue>.fromJson(data);
        default:
          throw StateError('''
It was not possible to create "${_typeOf<ZacValueListRead<TValue>>()}".
The following data was used:
$data"''');
      }
    });
  }

  List<TValue> getValue(ZacContext zacContext);
}

abstract class ZacValueList<TValue> implements ZacValueListRead<TValue> {
  factory ZacValueList.fromJson(Object data) {
    return zacValueListFromJson<TValue>(data, (converter, data) {
      switch (converter) {
        case zacValueConverter:
          return ZacValueListConsume<TValue>.fromJson(data);
        case zacValueConverterRead:
          return ZacValueListConsume<TValue>.fromJson(data);
        case zacValueConverterWatch:
          return ZacValueListConsume<TValue>.fromJson(data);
        default:
          throw StateError('''
It was not possible to create "${_typeOf<ZacValueList<TValue>>()}".
The following data was used:
$data"''');
      }
    });
  }

  @override
  List<TValue> getValue(ZacContext zacContext);
}

extension ZacValueListFlutterWidget on ZacValueList<FlutterWidget> {
  List<Widget> getWidgets(ZacContext zacContext) {
    return getValue(zacContext).map((e) => e.buildWidget(zacContext)).toList();
  }
}

@defaultConverterFreezed
class ZacValueListConsume<TValue>
    with _$ZacValueListConsume<TValue>
    implements ZacValueList<TValue> {
  ZacValueListConsume._();

  factory ZacValueListConsume.fromJson(Map<String, dynamic> json) =>
      _$ZacValueListConsumeFromJson<TValue>(json);

  @FreezedUnionValue(zacValueConverter)
  factory ZacValueListConsume.simple({
    required List<ZacValue<TValue>> value,
    ZacTransformers? transformer,
  }) = _ZacValueListConsumeSimple<TValue>;

  @FreezedUnionValue(zacValueConverterWatch)
  factory ZacValueListConsume.watch({
    required SharedValueFamily family,
    ZacTransformers? transformer,
    ZacTransformers? select,
  }) = _ZacValueListConsumeWatch<TValue>;

  @FreezedUnionValue(zacValueConverterRead)
  factory ZacValueListConsume.read({
    required SharedValueFamily family,
    ZacTransformers? transformer,
  }) = _ZacValueListConsumeRead<TValue>;

  SharedValueConsumeType get type => map(
        simple: (_) => throw StateError('must never happen'),
        watch: (obj) => SharedValueConsumeType.watch(select: obj.select),
        read: (_) => const SharedValueConsumeType.read(),
      );

  SharedValueFamily get family => map(
        simple: (_) => throw StateError('must never happen'),
        watch: (obj) => obj.family,
        read: (obj) => obj.family,
      );

  List<TValue> _getSimple(
      ZacContext zacContext, _ZacValueListConsumeSimple<TValue> simple) {
    final list = simple.value.map((e) => e.getValue(zacContext)).toList();
    if (true == transformer?.transformers.isNotEmpty) {
      final transformed =
          transformer!.transform(ZacTransformValue(list), zacContext, null);

      if (transformed is! List<TValue>) {
        throw StateError('''
It was not possible to return a value of type ${_typeOf<List<TValue>>()} in ${_typeOf<ZacValueListConsume<TValue>>()}.
Instead the returned value was of runtimeType ${transformed.runtimeType}.
Value: $transformed''');
      }
      return transformed;
    }

    return list;
  }

  List<TValue> _getShared(ZacContext zacContext) {
    final consumedValue = SharedValue.get(type, zacContext, family);

    late List<Object?> value;
    if (consumedValue is ZacValueList<List>) {
      value = consumedValue.getValue(zacContext);
    } else if (consumedValue is List) {
      value = consumedValue;
    }

    if (value.every((element) => element is TValue) &&
        (null == transformer || true == transformer?.transformers.isEmpty)) {
      return value.cast<TValue>();
    }

    if (null == transformer || true == transformer?.transformers.isEmpty) {
      throw StateError('''
It was not possible to return a $SharedValue in "$runtimeType" for family "$family".
The consumed $SharedValue was of runtimeType: "${value.runtimeType}".
It was expected to return a type of: "${_typeOf<List<TValue>>()}".

This error was created because there are no transformers to use.
Add a transformer in order to transform the $SharedValue into a type of: "${_typeOf<List<TValue>>()}".

The consumed $SharedValue: $value
''');
    }

    return value.map<TValue>((element) {
      final transformedValue =
          transformer!.transform(ZacTransformValue(element), zacContext, null);

      if (transformedValue is! TValue) {
        final alltransformerTypers =
            transformer!.transformers.map((e) => e.runtimeType);
        throw StateError('''
Unexpected type found after transforming an item in a consumed $SharedValue List in "$runtimeType" for name "$family".
The item was of runtimeType: "${element.runtimeType}".
The item after transformation was of runtimeType: "${transformedValue.runtimeType}".
The expected type was: "${_typeOf<TValue>()}".
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

  @override
  List<TValue> getValue(ZacContext zacContext) {
    return map(
      simple: (obj) => _getSimple(zacContext, obj),
      watch: (obj) => _getShared(zacContext),
      read: (obj) => _getShared(zacContext),
    );
  }
}

mixin ActualValue<Of> {
  Of get value;
  ZacTransformers? get transformer;

  Of getActualValue(ZacContext zacContext) {
    if (true == transformer?.transformers.isNotEmpty) {
      final transformed =
          transformer!.transform(ZacTransformValue(value), zacContext, null);

      if (transformed is! Of) {
        throw StateError('''
It was not possible to return a value of type $Of in ${_typeOf<ActualValue<Of>>()}.
Instead the returned value was of runtimeType ${transformed.runtimeType}.
Value: $transformed
''');
      }
      return transformed;
    }

    return value;
  }
}

class ConsumeSharedValueOfError extends StateError {
  ConsumeSharedValueOfError(super.message);
}

mixin ConsumeValue<Of> {
  SharedValueFamily get family;
  SharedValueConsumeType get consumeType;
  ZacTransformers? get transformer;

  Of getSharedValue(ZacContext zacContext) {
    final consumedValue = SharedValue.get(consumeType, zacContext, family);

    late Object? value;
    if (consumedValue is ActualValue<Object?>) {
      value = consumedValue.getActualValue(zacContext);
    } else {
      value = consumedValue;
    }

    if (value is Of &&
        (null == transformer || true == transformer?.transformers.isEmpty)) {
      return value;
    }

    if (null == transformer || true == transformer?.transformers.isEmpty) {
      throw ConsumeSharedValueOfError('''
It was not possible to return a $SharedValue in "$runtimeType" for family "$family".
The consumed $SharedValue was of runtimeType: "${value.runtimeType}".
It was expected to return a type of: "$Of".

This error was created because there are no transformers to use.
Add a transformer in order to transform the $SharedValue into a type of: "${_typeOf<Of>()}".

The consumed $SharedValue: $value
''');
    }

    final transformedValue =
        transformer!.transform(ZacTransformValue(value), zacContext, null);

    if (transformedValue is! Of) {
      final alltransformerTypers =
          transformer!.transformers.map((e) => e.runtimeType);
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
  ZacTransformers? get transformer;

  List<Of> getSharedValue(ZacContext zacContext) {
    final consumedValue = SharedValue.get(
      consumeType,
      zacContext,
      family,
    );

    late List<Object?> value;
    if (consumedValue is ActualValue<List>) {
      value = consumedValue.getActualValue(zacContext);
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
        (null == transformer || true == transformer?.transformers.isEmpty)) {
      return value.cast<Of>();
    }

    if (null == transformer || true == transformer?.transformers.isEmpty) {
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
      final transformedValue =
          transformer!.transform(ZacTransformValue(element), zacContext, null);

      if (transformedValue is! Of) {
        final alltransformerTypers =
            transformer!.transformers.map((e) => e.runtimeType);
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
class ZacWidgetConsumerBuilder
    with _$ZacWidgetConsumerBuilder
    implements FlutterWidget {
  ZacWidgetConsumerBuilder._();
  static const String unionValue = 'z:1:ZacWidget.consume';

  factory ZacWidgetConsumerBuilder.fromJson(Map<String, dynamic> json) =>
      _$ZacWidgetConsumerBuilderFromJson(json);

  @FreezedUnionValue(ZacWidgetConsumerBuilder.unionValue)
  @With<ConsumeValue<FlutterWidget>>()
  factory ZacWidgetConsumerBuilder(
    SharedValueFamily family, {
    ZacTransformers? transformer,
    @Default(SharedValueConsumeType.watch()) SharedValueConsumeType consumeType,
  }) = _ZacWidgetConsumerBuilder;

  @override
  Widget buildWidget(ZacContext zacContext) {
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
        builder: (zacContext) => builder.map(
              (value) =>
                  value.getSharedValue(zacContext).buildWidget(zacContext),
            ));
  }
}
