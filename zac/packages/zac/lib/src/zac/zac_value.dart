import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/converter.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:zac/src/zac/transformers.dart';

part 'zac_value.freezed.dart';
part 'zac_value.g.dart';

bool _isConverterButNotZacValue(Object data) {
  if (!ConverterHelper.isConverter(data)) return false;
  data as Map<String, dynamic>;
  return !_isZacValueConverter(data) &&
      !_isZacValueListConverter(data) &&
      !_isZacValueMapConverter(data);
}

bool _isZacValueConverter(Object? data) {
  if (!ConverterHelper.isConverter(data)) return false;
  data as Map<String, dynamic>;
  return [ZacValue.unionValue, ZacValue.unionValueConsume]
      .contains(data['converter']);
}

bool _isZacValueListConverter(Object data) {
  if (!ConverterHelper.isConverter(data)) return false;
  data as Map<String, dynamic>;
  return [ZacValueList.unionValue, ZacValueList.unionValueConsume]
      .contains(data['converter']);
}

bool _isZacValueMapConverter(Object data) {
  if (!ConverterHelper.isConverter(data)) return false;
  data as Map<String, dynamic>;
  return [ZacValueMap.unionValue, ZacValueMap.unionValueConsume]
      .contains(data['converter']);
}

@defaultConverterFreezed
class ZacValue<T> with _$ZacValue<T> {
  const ZacValue._();

  static const String unionValue = 'z:1:ZacValue';
  static const String unionValueConsume = 'z:1:ZacValue.consume';

  @FreezedUnionValue(ZacValue.unionValue)
  factory ZacValue({
    required Object? data,
    ZacTransformers? transformer,
  }) = _ZacValue<T>;

  @FreezedUnionValue(ZacValue.unionValueConsume)
  factory ZacValue.consume({
    required SharedValueFamily family,
    ZacTransformers? transformer,
    ZacTransformers? select,
    ZacValueConsumeType? forceConsume,
  }) = _ZacValueConsume<T>;

  factory ZacValue.fromJson(Object data) {
    late Map<String, dynamic> json;
    if (data is num ||
        data is String ||
        data is bool ||
        _isConverterButNotZacValue(data)) {
      json = <String, dynamic>{
        'converter': ZacValue.unionValue,
        'data': data,
      };
    } else if (_isZacValueConverter(data)) {
      json = data as Map<String, dynamic>;
    } else {
      throw StateError('Unsupported data type in ${ZacValue<T>}: $data');
    }

    if (json[converterKey] == ZacValue.unionValue) {
      json['data'] = _mapValue<T>(data: json['data']);
    }

    final zacValue = _$ZacValueFromJson<T>(json);

    assert(() {
      if (zacValue is _ZacValue<T> &&
          true != zacValue.transformer?.transformers.isNotEmpty) {
        if (zacValue.data is! T) {
          throw AssertionError('''
It was not possible to create ${ZacValue<T>} from JSON because the provided data was no "$T" but "${zacValue.data.runtimeType}".
Either change the data to an instance of $T or add a Transformer.
Otherwise this will break in a Production ENV at some point.
Data: ${zacValue.data}''');
        }
      }
      return true;
    }(), '');

    return zacValue;
  }

  T getValue(ZacContext zacContext,
      {ZacValueConsumeType prefered = const ZacValueConsumeType.watch()}) {
    var value = map<Object?>(
      (obj) => obj.data,
      consume: (obj) => _consumeValue(
        zacContext: zacContext,
        consumeType: (obj.forceConsume ?? prefered),
        family: obj.family,
        select: obj.select,
      ),
    );

    if (value is T && true != transformer?.transformers.isNotEmpty) {
      return value;
    }

    value =
        transformer?.transform(ZacTransformValue(value), zacContext, null) ??
            value;

    if (value is! T) {
      final transformerErr =
          transformer?.transformers.map((e) => e.runtimeType) ?? [];

      throw StateError('''
It was not possible to return a value of "$T" in ${ZacValue<T>}.
The value is of type "${value.runtimeType}".
${transformerErr.isEmpty ? 'No transformer were used.' : 'Following transformer were used: ${transformerErr.join(' > ')}.'}
The value: $value
''');
    }

    return value;
  }
}

@defaultConverterFreezed
class ZacValueMap<T> with _$ZacValueMap<T> {
  const ZacValueMap._();

  static const String unionValue = 'z:1:ZacValueMap';
  static const String unionValueConsume = 'z:1:ZacValueMap.consume';

  @FreezedUnionValue(ZacValueMap.unionValue)
  factory ZacValueMap({
    required Map<String, Object?> data,
    ZacTransformers? transformer,
  }) = _ZacValueMap<T>;

  @FreezedUnionValue(ZacValueMap.unionValueConsume)
  factory ZacValueMap.consume({
    required SharedValueFamily family,
    ZacTransformers? transformer,
    ZacTransformers? select,
    ZacValueConsumeType? forceConsume,
  }) = _ZacValueMapConsume<T>;

  factory ZacValueMap.fromJson(Object data) {
    if (!_isZacValueMapConverter(data)) {
      throw StateError('Unsupported data type in ${ZacValueMap<T>}: $data');
    }
    data as Map<String, dynamic>;

    if (data[converterKey] == ZacValueMap.unionValue) {
      data['data'] =
          (data['data'] as Map<String, dynamic>).map<String, Object?>(
        (key, Object? value) {
          if (_isZacValueConverter(value)) {
            return MapEntry<String, Object?>(
                key, ZacValue<T>.fromJson(value as Map<String, dynamic>));
          }
          return MapEntry<String, Object?>(key, _mapValue<T>(data: value));
        },
      );
    }

    return _$ZacValueMapFromJson<T>(data);
  }

  Map<String, T> getValue(ZacContext zacContext,
      {ZacValueConsumeType prefered = const ZacValueConsumeType.watch()}) {
    var value = map<Object?>(
      (obj) => obj.data.map((key, value) {
        if (value is ZacValue<T>) {
          return MapEntry(key, value.getValue(zacContext, prefered: prefered));
        }
        return MapEntry(key, value);
      }),
      consume: (obj) => _consumeValue(
        zacContext: zacContext,
        consumeType: (obj.forceConsume ?? prefered),
        family: obj.family,
        select: obj.select,
      ),
    );

    if (value is Map<String, T> &&
        true != transformer?.transformers.isNotEmpty) {
      return value;
    }

    value =
        transformer?.transform(ZacTransformValue(value), zacContext, null) ??
            value;

    if (value is! Map) {
      final transformerErr =
          transformer?.transformers.map((e) => e.runtimeType) ?? [];
      throw StateError('''
It was not possible to return a map in ${ZacValueMap<T>}.
The value is of type "${value.runtimeType}".
${transformerErr.isEmpty ? 'No transformer were used.' : 'Following transformer were used: ${transformerErr.join(' > ')}.'}
The value: $value
''');
    }

    return Map<String, T>.from(value);
  }
}

extension ZacValueListFlutterWidget on ZacValueList<FlutterWidget> {
  List<Widget> getWidgets(ZacContext zacContext) {
    return getValue(zacContext).map((e) => e.buildWidget(zacContext)).toList();
  }
}

@defaultConverterFreezed
class ZacValueList<T> with _$ZacValueList<T> {
  const ZacValueList._();

  static const String unionValue = 'z:1:ZacValueList';
  static const String unionValueConsume = 'z:1:ZacValueList.consume';

  @FreezedUnionValue(ZacValueList.unionValue)
  factory ZacValueList({
    required List<Object?> data,
    ZacTransformers? transformer,
  }) = _ZacValueList<T>;

  @FreezedUnionValue(ZacValueList.unionValueConsume)
  factory ZacValueList.consume({
    required SharedValueFamily family,
    ZacTransformers? transformer,
    ZacTransformers? select,
    ZacValueConsumeType? forceConsume,
  }) = _ZacValueListConsume<T>;

  factory ZacValueList.fromJson(Object data) {
    if (!_isZacValueListConverter(data)) {
      throw StateError('Unsupported data type in ${ZacValueList<T>}: $data');
    }
    data as Map<String, dynamic>;

    if (data[converterKey] == ZacValueList.unionValue) {
      data['data'] = (data['data'] as List<Object?>).map<Object?>(
        (Object? value) {
          if (_isZacValueConverter(value)) {
            return ZacValue<T>.fromJson(value as Map<String, dynamic>);
          }
          return _mapValue<T>(data: value);
        },
      ).toList();
    }

    return _$ZacValueListFromJson<T>(data);
  }

  List<T> getValue(ZacContext zacContext,
      {ZacValueConsumeType prefered = const ZacValueConsumeType.watch()}) {
    var value = map<Object?>(
      (obj) => obj.data.map((item) {
        if (item is ZacValue<T>) {
          return item.getValue(zacContext, prefered: prefered);
        }
        return item;
      }).toList(),
      consume: (obj) => _consumeValue(
        zacContext: zacContext,
        consumeType: (obj.forceConsume ?? prefered),
        family: obj.family,
        select: obj.select,
      ),
    );

    if (value is List<T> && true != transformer?.transformers.isNotEmpty) {
      return value;
    }

    value =
        transformer?.transform(ZacTransformValue(value), zacContext, null) ??
            value;

    if (value is! List) {
      final transformerErr =
          transformer?.transformers.map((e) => e.runtimeType) ?? [];
      throw StateError('''
It was not possible to return a list in ${ZacValueList<T>}.
The value is of type "${value.runtimeType}".
${transformerErr.isEmpty ? 'No transformer were used.' : 'Following transformer were used: ${transformerErr.join(' > ')}.'}
The value: $value
''');
    }

    assert(() {
      for (var item in value as List) {
        if (item is! T) {
          throw AssertionError('''
One item in ${ZacValueList<T>} was no "$T" but "${item.runtimeType}".
Make sure that all items are instances of $T or this will break in a Production ENV.
Item: $item''');
        }
      }
      return true;
    }(), '');

    return List<T>.from(value);
  }
}

Object? _consumeValue({
  required ZacContext zacContext,
  required ZacTransformers? select,
  required ZacValueConsumeType consumeType,
  required SharedValueFamily family,
}) {
  return consumeType.map<SharedValueType>(
    read: (_) {
      if (null == select) {
        return zacContext.ref
            .read<SharedValueType>(SharedValue.provider(family));
      } else {
        return select.transform(
            ZacTransformValue(zacContext.ref
                .read<SharedValueType>(SharedValue.provider(family))),
            zacContext,
            null);
      }
    },
    watch: (_) {
      if (null == select) {
        return zacContext.ref
            .watch<SharedValueType>(SharedValue.provider(family));
      } else {
        return zacContext.ref.watch<SharedValueType>(
            SharedValue.provider(family).select((value) =>
                select.transform(ZacTransformValue(value), zacContext, null)));
      }
    },
  );
}

@defaultConverterFreezed
@ZacGenerate(order: zacGenerateOrderFirst)
class ZacValueConsumeType with _$ZacValueConsumeType {
  const ZacValueConsumeType._();

  static const String unionValue = 'z:1:ZacValueConsume.watch';
  static const String unionValueRead = 'z:1:ZacValueConsume.read';

  factory ZacValueConsumeType.fromJson(Map<String, dynamic> json) =>
      _$ZacValueConsumeTypeFromJson(json);

  @FreezedUnionValue(ZacValueConsumeType.unionValueRead)
  const factory ZacValueConsumeType.read() = _ZacValueConsumeTypeRead;

  @FreezedUnionValue(ZacValueConsumeType.unionValue)
  const factory ZacValueConsumeType.watch() = _ZacValueConsumeTypeWatch;
}

Object? _mapValue<TValue>({required Object? data}) {
  if (TValue == DateTime && data is String) {
    return DateTime.parse(data) as TValue;
  } else if (TValue == int && data is double) {
    return data.toInt() as TValue;
  } else if (TValue == double && data is int) {
    return data.toDouble() as TValue;
  }

  /// actual ZacValueTypes
  else if (ConverterHelper.isConverter(data)) {
    return ConverterHelper.convertToType<TValue>(data);
  }

  return data;
}

@defaultConverterFreezed
@ZacGenerate()
class ZacValueActions with _$ZacValueActions implements ZacAction {
  const ZacValueActions._();

  static const String unionValue = 'z:1:ZacValue.asActionPayload';

  factory ZacValueActions.fromJson(Map<String, dynamic> json) =>
      _$ZacValueActionsFromJson(json);

  @FreezedUnionValue(ZacValueActions.unionValue)
  factory ZacValueActions.asPayload({
    required ZacValue<Object?> value,
    required ZacActions actions,
  }) = _ZacValueActionsAsPayload;

  @override
  void execute(ZacActionPayload payload, ZacContext zacContext) {
    map(
      asPayload: (obj) {
        final val = obj.value
            .getValue(zacContext, prefered: const ZacValueConsumeType.read());
        obj.actions.execute(ZacActionPayload.param(val), zacContext);
      },
    );
  }
}
