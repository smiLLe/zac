import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/converter.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:zac/src/zac/transformers.dart';
import 'package:zac/src/zac/zac_builder.dart';

part 'zac_value.freezed.dart';
part 'zac_value.g.dart';

mixin ZacSimpleValueList<T> {
  List<T> get items;
}

mixin ZacSimpleValue<T> {
  T get value;
}

mixin ZV<Return, From> on ZacBuilder<Return> {
  Return buildItem(ZacContext zacContext, From item);

  From getVal(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    if (this is ZacSimpleValue<From>) {
      return (this as ZacSimpleValue<From>).value;
    } else if (this is ConsumeSharedValue<From>) {
      return (this as ConsumeSharedValue<From>)
          .buildConsume(zacContext, onConsume);
    }

    throw StateError('Could not return $Return in $this');
  }

  From? getValOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    if (this is ZacSimpleValue<From>) {
      return (this as ZacSimpleValue<From>).value;
    } else if (this is ConsumeSharedValue<From>) {
      return (this as ConsumeSharedValue<From>)
          .buildConsumeOrNull(zacContext, onConsume);
    }

    throw StateError('Could not return $Return in $this');
  }

  @override
  Return build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return buildItem(zacContext, getVal(zacContext, onConsume: onConsume));
  }

  @override
  Return? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    final val = getValOrNull(zacContext, onConsume: onConsume);
    return null == val ? null : buildItem(zacContext, val);
  }
}

mixin ZVList<Return, From> on ZacBuilder<List<Return>> {
  Return buildItem(ZacContext zacContext, From item);

  @override
  List<Return> build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    if (this is ZacSimpleValueList<From>) {
      return (this as ZacSimpleValueList<From>)
          .items
          .map((e) => buildItem(zacContext, e))
          .toList();
    } else if (this is ConsumeSharedValueList<From>) {
      return (this as ConsumeSharedValueList<From>)
          .buildConsume(zacContext, onConsume)
          .map((e) => buildItem(zacContext, e))
          .toList();
    }

    throw StateError('Could not return ${List<Return>} in $this');
  }

  @override
  List<Return>? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    if (this is ZacSimpleValueList<From>) {
      return (this as ZacSimpleValueList<From>)
          .items
          .map((e) => buildItem(zacContext, e))
          .toList();
    } else if (this is ConsumeSharedValueList<From>) {
      return (this as ConsumeSharedValueList<From>)
          .buildConsumeOrNull(zacContext, onConsume)
          ?.map((e) => buildItem(zacContext, e))
          .toList();
    }

    throw StateError('Could not return ${List<Return>} in $this');
  }
}

bool _assertIsBuilder<T>(Map<String, dynamic> json) {
  assert(() {
    ConverterHelper.validateConverter<T>(json);
    return true;
  }(), '');
  return true;
}

class _ValueConverter<T> implements JsonConverter<T, Object> {
  const _ValueConverter();

  @override
  T fromJson(Object data) {
    return ConverterHelper.ifRegisteredBuilder(
      data,
      cb: (map, converterName) {
        return ConverterHelper.convertToType<Object>(map);
      },
      orElse: () => data,
    ) as T;
//     if (json is! T) {
//       throw StateError('''
// It was not possible to create ${ZacValue<T>}.
// The error was probably created by using "${ZacValue.unionFromValue}" converter.
// The data used: $json.''');
//     }
//     return json as T;
  }

  @override
  Object toJson(T object) => throw StateError('not supported');
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterAbstractsB + 1)
class ZacValue<T extends Object?> with _$ZacValue<T> implements ZacBuilder<T> {
  const ZacValue._();

  static const String unionFromValue = 'z:1:ZacValue.value';
  static const String unionFromSharedValue = 'z:1:ZacValue.consume';

  factory ZacValue.fromJson(Object data) {
    final isConverter = ConverterHelper.isConverter(data);
    if (isConverter &&
        [
          ZacValue.unionFromValue,
          ZacValue.unionFromSharedValue,
        ].contains((data as Map<String, dynamic>)['converter'])) {
      return _$ZacValueFromJson<T>(data);
    } else if (isConverter) {
      return _$ZacValueFromJson<T>(<String, dynamic>{
        'converter': ZacValue.unionFromValue,
        'value': data,
      });
    } else if (T == Object) {
      return ZacValue<T>(data as T);
    } else if (T == int && data is num) {
      return ZacValue<T>(data.toInt() as T);
    } else if (T == double && data is num) {
      return ZacValue<T>(data.toDouble() as T);
    } else if (T == num && data is num) {
      return ZacValue<T>(data as T);
    } else if (T == String && data is String) {
      return ZacValue<T>(data as T);
    } else if (T == bool && data is bool) {
      return ZacValue<T>(data as T);
    } else if (T == DateTime && data is String) {
      return ZacValue<T>(DateTime.parse(data) as T);
    } else if (data is T) {
      return ZacValue<T>(data as T);
    }

    throw StateError(
        'It was not possible to create ${ZacValue<T>} from data: $data');
  }

  @FreezedUnionValue(ZacValue.unionFromValue)
  factory ZacValue(Object? value) = _ZacValueValue<T>;

  @FreezedUnionValue(ZacValue.unionFromSharedValue)
  factory ZacValue.consume({
    required SharedValueFamily family,
    ZacTransformers? transformer,
    ZacTransformers? select,
    SharedValueConsumeType? forceConsume,
  }) = _ZacValueConsume<T>;

  @override
  T build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return map<T>(
      (obj) {
        if (null is T && null == obj.value) return null as T;
        if (obj.value is T) return obj.value as T;
        if (obj.value is ZacBuilder<T>) {
          return (obj.value as ZacBuilder<T>).build(
            zacContext,
            onConsume: onConsume,
          );
        }
        throw StateError('''
It was not possible to return a value of type $T from ${ZacValue<T>}.build().
The value: ${obj.value}''');
      },
      consume: (obj) {
        final value = SharedValue.get(
          zacContext: zacContext,
          select: obj.select,
          consumeType: (obj.forceConsume ?? onConsume.type),
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
because the value is null and there are no transformers added.''');
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

// @freezedZacBuilder
// @ZacGenerate(order: zacGenerateOrderFlutterAbstractsB + 1)
class ZacValueIterable<T extends Object?, X extends Iterable<T>?> {}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterAbstractsB + 1)
class ZacValueList<T> with _$ZacValueList<T> implements ZacBuilder<List<T>> {
  const ZacValueList._();

  static const String unionFromValue = 'z:1:ZacValueList';
  static const String unionFromSharedValue = 'z:1:ZacValueList.consume';

  factory ZacValueList.fromJson(Map<String, dynamic> json) {
    return ConverterHelper.ifRegisteredBuilder<ZacValueList<T>>(
      json,
      cb: (map, converterName) {
        if (converterName == ZacValueList.unionFromValue) {
          map['items'] =
              (map['items'] as List<dynamic>).map<Object>((dynamic e) {
            return ConverterHelper.ifRegisteredBuilder(
              e,
              cb: (map, converterName) {
                return ConverterHelper.convertToType<ZacBuilder<T>>(map);
              },
              orElse: () {
                if (e is! T) {
                  throw StateError('');
                }
                return e as Object;
              },
            );
          }).toList();
        }
        return _$ZacValueListFromJson<T>(map);
      },
      orElse: () => throw StateError('unsupported'),
    );
  }

  @FreezedUnionValue(ZacValueList.unionFromValue)
  factory ZacValueList.value({
    required List<Object> items,
  }) = _ZacValueListValue<T>;

  @FreezedUnionValue(ZacValueList.unionFromSharedValue)
  factory ZacValueList.consume({
    required SharedValueFamily family,
    ZacTransformers? transformer,
    ZacTransformers? itemTransformer,
    ZacTransformers? select,
    SharedValueConsumeType? forceConsume,
  }) = _ZacValueListConsume<T>;

  X _consume<X>({
    required List<Object?> consumedValue,
    required ZacContext zacContext,
    required ZacBuilderConsume onConsume,
    required ZacTransformers? transformer,
    required ZacTransformers? itemTransformer,
  }) {
    final list = [
      ...consumedValue.map<T>((dynamic e) {
        final value = e is ZacBuilder<Object?>
            ? e.build(zacContext, onConsume: onConsume)
            : e as Object?;
        return TransformObjectHelper.simple<T>(
          fromValue: value,
          zacContext: zacContext,
          transformer: itemTransformer,
        );
      })
    ];

    final transformedList = transformer?.transform(
            ZacTransformValue(list), zacContext, const ZacActionPayload()) ??
        list;

    if (transformedList is! X) {
      throw StateError('');
    }

    return list as X;
  }

  @override
  List<T> build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return map<List<T>>(
      value: (obj) => [
        ...obj.items.map((Object e) {
          if (e is! T && e is! ZacBuilder) {
            throw StateError('');
          }
          if (e is ZacBuilder) {
            final Object? val = e.build(zacContext, onConsume: onConsume);
            assert(val is T);
            return val as T;
          }
          return e as T;
        })
      ],
      consume: (obj) {
        final consumedValue = SharedValue.get(
          zacContext: zacContext,
          select: obj.select,
          consumeType: obj.forceConsume ?? onConsume.type,
          family: obj.family,
        );

        if (consumedValue is! List) {
          throw StateError('Unexpected $SharedValue: $consumedValue');
        }

        return _consume<List<T>>(
          consumedValue: consumedValue,
          zacContext: zacContext,
          onConsume: onConsume,
          itemTransformer: obj.itemTransformer,
          transformer: obj.transformer,
        );
      },
    );
  }

  @override
  List<T>? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return map<List<T>?>(
      value: (obj) => [
        ...obj.items.map((Object e) {
          if (e is! T && e is! ZacBuilder) {
            throw StateError('');
          }
          if (e is ZacBuilder) {
            final Object? val = e.build(zacContext, onConsume: onConsume);
            assert(val is T);
            return val as T;
          }
          return e as T;
        })
      ],
      consume: (obj) {
        final consumedValue = SharedValue.get(
          zacContext: zacContext,
          select: obj.select,
          consumeType: obj.forceConsume ?? onConsume.type,
          family: obj.family,
        );
        if (null == consumedValue) {
          return null;
        }
        if (consumedValue is! List) {
          throw StateError('Unexpected $SharedValue: $consumedValue');
        }

        return _consume<List<T>?>(
          consumedValue: consumedValue,
          zacContext: zacContext,
          onConsume: onConsume,
          itemTransformer: obj.itemTransformer,
          transformer: obj.transformer,
        );
      },
    );
  }
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterAbstractsB + 1)
class ZacListOfFlutterWidget
    with
        _$ZacListOfFlutterWidget,
        ZacBuilder<List<Widget>>,
        ZVList<Widget, FlutterWidget> {
  const ZacListOfFlutterWidget._();

  static const String unionValue = 'z:1:List<FlutterWidget>';

  factory ZacListOfFlutterWidget.fromJson(Object data) {
    final json = <String, dynamic>{};
    if (data is List) {
      json['converter'] = ZacListOfFlutterWidget.unionValue;
      json['items'] = data;
    } else if (data is Map<String, dynamic>) {
      json.addAll(data);
    }

    assert(_assertIsBuilder<ZacListOfFlutterWidget>(json), '');

    return _$ZacListOfFlutterWidgetFromJson(json);
  }

  @FreezedUnionValue(ZacListOfFlutterWidget.unionValue)
  @With<ZacSimpleValueList<FlutterWidget>>()
  factory ZacListOfFlutterWidget({required List<FlutterWidget> items}) =
      _ZacListOfFlutterWidget;

  @FreezedUnionValue('z:1:List<FlutterWidget>.consume')
  @With<ConsumeSharedValueList<FlutterWidget>>()
  factory ZacListOfFlutterWidget.consume({
    required SharedValueFamily family,
    ZacTransformers? transformer,
    ZacTransformers? itemTransformer,
    ZacTransformers? select,
    SharedValueConsumeType? forceConsume,
  }) = _ZacListOfFlutterWidgetSharedValue;

  @override
  Widget buildItem(ZacContext zacContext, FlutterWidget item,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return item.build(zacContext);
  }
}

@freezedZacBuilder
@ZacGenerate()
class ZacValueActions with _$ZacValueActions implements ZacAction {
  const ZacValueActions._();

  static const String unionValue = 'z:1:ZacValue.asActionPayload';

  factory ZacValueActions.fromJson(Map<String, dynamic> json) =>
      _$ZacValueActionsFromJson(json);

  @FreezedUnionValue(ZacValueActions.unionValue)
  factory ZacValueActions.asPayload({
    required ZacValue<Object> value,
    required ZacActions actions,
  }) = _ZacValueActionsAsPayload;

  @override
  void execute(ZacActionPayload payload, ZacContext zacContext) {
    map(
      asPayload: (obj) {
        final val = obj.value.build(
          zacContext,
          onConsume:
              const ZacBuilderConsume(type: SharedValueConsumeType.read()),
        );
        obj.actions.execute(ZacActionPayload.param(val), zacContext);
      },
    );
  }
}
