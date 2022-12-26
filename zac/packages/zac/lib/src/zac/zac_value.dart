import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/converter.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:zac/src/zac/transformers.dart';
import 'package:zac/src/zac/zac_build.dart';

part 'zac_value.freezed.dart';
part 'zac_value.g.dart';

bool isType<T, Y>() => T == Y;

extension XZacValue<T> on ZacBuild<T> {
  ZacValue<T> toZacValue() {
    return ZacValue<T>(this);
  }
}

@freezedZacBuilder
class ZacValue<T extends Object?> with _$ZacValue<T> implements ZacBuild<T> {
  const ZacValue._();

  static const String union = 'z:1:ZacValue';
  static const String unionFromSharedValue = 'z:1:ZacValue.consume';

  static Object _convert<T>(Object? data) {
    if (isType<T, Object>() || isType<T, Object?>()) {
      return data as Object;
    } else if ((isType<T, int>() || isType<T, int?>()) && data is num) {
      return data.toInt();
    } else if ((isType<T, double>() || isType<T, double?>()) && data is num) {
      return data.toDouble();
    } else if ((isType<T, num>() || isType<T, num?>()) && data is num) {
      return data;
    } else if ((isType<T, String>() || isType<T, String?>()) &&
        data is String) {
      return data;
    } else if ((isType<T, bool>() || isType<T, bool?>()) && data is bool) {
      return data;
    } else if ((isType<T, DateTime>() || isType<T, DateTime?>()) &&
        data is String) {
      return DateTime.parse(data);
    } else if (data is T) {
      return data as Object;
    }

    return ConverterHelper.ifRegisteredBuilder<Object>(
      data,
      cb: (map, converterName) {
        return ConverterHelper.convertToType<Object>(map);
      },
      orElse: () {
        throw StateError('''
It was not possible to convert data in ${ZacValue<T>}.fromJson().
The given data is not supported:
$data''');
      },
    );
  }

  factory ZacValue.fromJson(Object? data) {
    final zacValue = ConverterHelper.ifRegisteredBuilder<ZacValue<T>>(
      data,
      cb: (map, converterName) {
        if (converterName == ZacValue.unionFromSharedValue) {
          return _$ZacValueFromJson<T>(map);
        }

        return _$ZacValueFromJson<T>(<String, Object?>{
          'converter': ZacValue.union,
          'value':
              _convert<T>(converterName == ZacValue.union ? map['value'] : map),
        });
      },
      orElse: () => _$ZacValueFromJson<T>(<String, dynamic>{
        'converter': ZacValue.union,
        'value': _convert<T>(data),
      }),
    );

    return zacValue;
  }

  @FreezedUnionValue(ZacValue.union)
  factory ZacValue(Object value) = _ZacValue<T>;

  @FreezedUnionValue(ZacValue.unionFromSharedValue)
  factory ZacValue.consume({
    required SharedValueFamily family,
    ZacTransformers? transformer,
    ZacTransformers? select,
    SharedValueConsumeType? forceConsume,
  }) = _ZacValueConsume<T>;

  @override
  T build(ZacContext zacContext,
      {SharedValueConsumeType onConsume =
          const SharedValueConsumeType.watch()}) {
    return map<T>(
      (obj) {
        final value = obj.value;
        if (value is T) return value as T;
        if (value is ZacBuild<T>) {
          return value.build(zacContext);
        }
        throw StateError('');
      },
      consume: (obj) {
        final value = SharedValue.get(
          zacContext: zacContext,
          select: obj.select,
          consumeType: obj.forceConsume ?? onConsume,
          family: obj.family,
        );

        final transformer = obj.transformer;

        if (null == value) {
          if (null is T && true != transformer?.transformers.isNotEmpty) {
            return null as T;
          } else if (null is! T &&
              true != transformer?.transformers.isNotEmpty) {
            throw StateError('''
It was not possible to return a $SharedValue of type $T from ${ZacValue<T>}.build()
because the value is null and there are no transformers added.
Value: $value''');
          }
        }

        if (value is T && true != transformer?.transformers.isNotEmpty) {
          return value;
        }

        if (null == transformer || transformer.transformers.isEmpty) {
          throw StateError('''
It was not possible to return a $SharedValue of type $T from ${ZacValue<T>}.build()
because there were no transformer.
The value of type ${value.runtimeType} was expected to be transformed.
$value''');
        }

        final transformedVal =
            transformer.transform(ZacTransformValue(value), zacContext, null);
        if (transformedVal is! T) {
          final transformerErr =
              transformer.transformers.map((e) => e.runtimeType);

          throw StateError('''
It was not possible to return a $SharedValue of type $T from ${ZacValue<T>} 
after transformers were applied.
Type of value before transformation: ${value.runtimeType}
Type of value after transformation: ${transformedVal.runtimeType}
${transformerErr.isEmpty ? 'No transformer were used.' : 'Following transformer were used: ${transformerErr.join(' > ')}.'}
Value before: $value
Value after: $transformedVal''');
        }

        return transformedVal;
      },
    );
  }
}

@freezedZacBuilder
class ZacValueList<T extends Object?, X extends List<T>?>
    with _$ZacValueList<T, X>
    implements ZacBuild<X> {
  const ZacValueList._();

  static const String unionFromValue = 'z:1:ZacValueList';
  static const String unionFromSharedValue = 'z:1:ZacValueList.consume';

  /// freezed generates a code like this
  ///   factory _$_ZacValueList.fromJson(Map<String, dynamic> json) =>
  ///   _$$_ZacValueListFromJson(json);
  ///
  /// _ZacValueListFromJson is missing <T,X>
  /// it should be: _ZacValueListFromJson<T,X>(json)
  ///
  /// This will result in X being a Never type
  factory ZacValueList._freezedFix(ZacValueList<T, Object?> zV) {
    return zV.map(
      (obj) {
        return ZacValueList<T, X>(items: obj.items);
      },
      consume: (obj) {
        return ZacValueList<T, X>.consume(
          family: obj.family,
          forceConsume: obj.forceConsume,
          itemTransformer: obj.itemTransformer,
          select: obj.select,
          transformer: obj.transformer,
        );
      },
    );
  }

  factory ZacValueList.fromJson(Object data) {
    return ConverterHelper.ifRegisteredBuilder<ZacValueList<T, X>>(
      data,
      cb: (map, converterName) {
        assert(const [
          ZacValueList.unionFromValue,
          ZacValueList.unionFromSharedValue,
        ].contains(converterName));
        final zV = _$ZacValueListFromJson<T, X>(map);
        return ZacValueList<T, X>._freezedFix(zV);
      },
      orElse: () {
        if (data is! List) {
          throw StateError('Unsupported type in ${ZacValueList<T, X>}: $data');
        }

        final zV = _$ZacValueListFromJson<T, X>(<String, dynamic>{
          'converter': ZacValueList.unionFromValue,
          'items': data,
        });
        return ZacValueList<T, X>._freezedFix(zV);
      },
    );
  }

  @FreezedUnionValue(ZacValueList.unionFromValue)
  factory ZacValueList({
    required List<ZacValue<T>> items,
  }) = _ZacValueList<T, X>;

  @FreezedUnionValue(ZacValueList.unionFromSharedValue)
  factory ZacValueList.consume({
    required SharedValueFamily family,
    ZacTransformers? transformer,
    ZacTransformers? itemTransformer,
    ZacTransformers? select,
    SharedValueConsumeType? forceConsume,
  }) = _ZacValueListConsume<T, X>;

  T _transformItem({
    required Object? value,
    required ZacContext zacContext,
    required ZacTransformers? transformer,
  }) {
    if (null == value) {
      if (null is T && true != transformer?.transformers.isNotEmpty) {
        return null as T;
      } else if (null is! T && true != transformer?.transformers.isNotEmpty) {
        throw StateError('''
It was not possible to return a $SharedValue of type $T from ${ZacValueList<T, X>}.build()
because the value is null and there are no transformers added.
Value: $value''');
      }
    }

    if (value is T && true != transformer?.transformers.isNotEmpty) {
      return value;
    }

    if (null == transformer || transformer.transformers.isEmpty) {
      throw StateError('''
It was not possible to return a $SharedValue of type $T from ${ZacValueList<T, X>}.build()
because there were no transformer.
The value of type ${value.runtimeType} was expected to be transformed.
$value''');
    }

    final transformedVal =
        transformer.transform(ZacTransformValue(value), zacContext, null);

    if (transformedVal is! T) {
      final transformerErr = transformer.transformers.map((e) => e.runtimeType);

      throw StateError('''
It was not possible to return a $SharedValue of type $T from ${ZacValueList<T, X>} 
after transformers were applied.
Type of value before transformation: ${value.runtimeType}
Type of value after transformation: ${transformedVal.runtimeType}
${transformerErr.isEmpty ? 'No transformer were used.' : 'Following transformer were used: ${transformerErr.join(' > ')}.'}
Value before: $value
Value after: $transformedVal''');
    }

    return transformedVal;
  }

  @override
  X build(ZacContext zacContext,
      {SharedValueConsumeType onConsume =
          const SharedValueConsumeType.watch()}) {
    return map<X>(
      (obj) {
        return <T>[
          for (var item in obj.items)
            item.build(zacContext, onConsume: onConsume),
        ] as X;
      },
      consume: (obj) {
        final consumedValue = SharedValue.get(
          zacContext: zacContext,
          select: obj.select,
          consumeType: obj.forceConsume ?? onConsume,
          family: obj.family,
        );

        if (consumedValue is! List) {
          throw StateError(
              'Unexpected $SharedValue in ${ZacValueList<T, X>}: $consumedValue');
        }

        final list = [
          ...consumedValue.map<T>((dynamic e) {
            final value =
                e is ZacBuild<Object?> ? e.build(zacContext) : e as Object?;
            return _transformItem(
              value: value,
              zacContext: zacContext,
              transformer: obj.itemTransformer,
            );
          })
        ];

        final transformedList = obj.transformer
                ?.transform(ZacTransformValue(list), zacContext, null) ??
            list;

        if (transformedList is X) {
          return transformedList as X;
        }

        if (transformedList is! List) {
          throw StateError('''
Unexpected value after transformation in ${ZacValueList<T, X>}.
A ${List<T>} is expected but the data is: $transformedList''');
        }

        return List<T>.from(transformedList) as X;
      },
    );
  }
}

@freezedZacBuilder
class ZacValueMap<T extends Object?, X extends Map<String, T>?>
    with _$ZacValueMap<T, X>
    implements ZacBuild<X> {
  const ZacValueMap._();

  static const String unionFromValue = 'z:1:ZacValueMap';
  static const String unionFromSharedValue = 'z:1:ZacValueMap.consume';

  /// freezed generates a code like this
  ///   factory _$_ZacValueList.fromJson(Map<String, dynamic> json) =>
  ///   _$$_ZacValueListFromJson(json);
  ///
  /// _ZacValueListFromJson is missing <T,X>
  /// it should be: _ZacValueListFromJson<T,X>(json)
  ///
  /// This will result in X being a Never type
  factory ZacValueMap._freezedFix(ZacValueMap<T, Object?> zV) {
    return zV.map(
      (obj) {
        return ZacValueMap<T, X>(items: obj.items);
      },
      consume: (obj) {
        return ZacValueMap<T, X>.consume(
          family: obj.family,
          forceConsume: obj.forceConsume,
          itemTransformer: obj.itemTransformer,
          select: obj.select,
          transformer: obj.transformer,
        );
      },
    );
  }

  factory ZacValueMap.fromJson(Object data) {
    return ConverterHelper.ifRegisteredBuilder<ZacValueMap<T, X>>(
      data,
      cb: (map, converterName) {
        assert(const [
          ZacValueMap.unionFromValue,
          ZacValueMap.unionFromSharedValue,
        ].contains(converterName));
        final zV = _$ZacValueMapFromJson<T, X>(map);
        return ZacValueMap<T, X>._freezedFix(zV);
      },
      orElse: () {
        if (data is! Map) {
          throw StateError('Unsupported type in ${ZacValueMap<T, X>}: $data');
        }

        final zV = _$ZacValueMapFromJson<T, X>(<String, dynamic>{
          'converter': ZacValueMap.unionFromValue,
          'items': data,
        });
        return ZacValueMap<T, X>._freezedFix(zV);
      },
    );
  }

  @FreezedUnionValue(ZacValueMap.unionFromValue)
  factory ZacValueMap({
    required Map<String, ZacValue<T>> items,
  }) = _ZacValueMap<T, X>;

  @FreezedUnionValue(ZacValueMap.unionFromSharedValue)
  factory ZacValueMap.consume({
    required SharedValueFamily family,
    ZacTransformers? transformer,
    ZacTransformers? itemTransformer,
    ZacTransformers? select,
    SharedValueConsumeType? forceConsume,
  }) = _ZacValueMapConsume<T, X>;

  T _transformItem({
    required Object? value,
    required ZacContext zacContext,
    required ZacTransformers? transformer,
  }) {
    if (null == value) {
      if (null is T && true != transformer?.transformers.isNotEmpty) {
        return null as T;
      } else if (null is! T && true != transformer?.transformers.isNotEmpty) {
        throw StateError('''
It was not possible to return a $SharedValue of type $T from ${ZacValueMap<T, X>}.build()
because the value is null and there are no transformers added.
Value: $value''');
      }
    }

    if (value is T && true != transformer?.transformers.isNotEmpty) {
      return value;
    }

    if (null == transformer || transformer.transformers.isEmpty) {
      throw StateError('''
It was not possible to return a $SharedValue of type $T from ${ZacValueMap<T, X>}.build()
because there were no transformer.
The value of type ${value.runtimeType} was expected to be transformed.
$value''');
    }

    final transformedVal =
        transformer.transform(ZacTransformValue(value), zacContext, null);

    if (transformedVal is! T) {
      final transformerErr = transformer.transformers.map((e) => e.runtimeType);

      throw StateError('''
It was not possible to return a $SharedValue of type $T from ${ZacValueMap<T, X>} 
after transformers were applied.
Type of value before transformation: ${value.runtimeType}
Type of value after transformation: ${transformedVal.runtimeType}
${transformerErr.isEmpty ? 'No transformer were used.' : 'Following transformer were used: ${transformerErr.join(' > ')}.'}
Value before: $value
Value after: $transformedVal''');
    }

    return transformedVal;
  }

  @override
  X build(ZacContext zacContext,
      {SharedValueConsumeType onConsume =
          const SharedValueConsumeType.watch()}) {
    return map<X>(
      (obj) {
        return <String, T>{
          for (var entry in obj.items.entries)
            entry.key: entry.value.build(zacContext, onConsume: onConsume),
        } as X;
      },
      consume: (obj) {
        final consumedValue = SharedValue.get(
          zacContext: zacContext,
          select: obj.select,
          consumeType: obj.forceConsume ?? onConsume,
          family: obj.family,
        );
        if (consumedValue is! Map) {
          throw StateError(
              'Unexpected $SharedValue in ${ZacValueMap<T, X>}: $consumedValue');
        }
        final map = <Object?, Object?>{
          for (var entry in consumedValue.entries)
            entry.key: _transformItem(
              value: entry.value is ZacBuild<Object?>
                  ? (entry.value as ZacBuild<Object?>).build(zacContext)
                  : entry.value,
              zacContext: zacContext,
              transformer: obj.itemTransformer,
            )
        };

        final transformedMap = obj.transformer
                ?.transform(ZacTransformValue(map), zacContext, null) ??
            map;

        if (transformedMap is X) {
          return transformedMap as X;
        }

        if (transformedMap is! Map) {
          throw StateError('''
Unexpected value after transformation in ${ZacValueMap<T, X>}.
A $X is expected but the data is: $transformedMap''');
        }

        return Map<String, T>.from(transformedMap) as X;
      },
    );
  }
}

@freezedZacBuilder
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
        final val = obj.value.build(
          zacContext,
          onConsume: const SharedValueConsumeType.read(),
        );
        obj.actions.execute(ZacActionPayload.param(val), zacContext);
      },
    );
  }
}
