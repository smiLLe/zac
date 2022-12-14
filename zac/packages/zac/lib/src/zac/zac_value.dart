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

bool isType<T, Y>() => T == Y;

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

class _BuiltInValueConverter<T> implements JsonConverter<T, Object> {
  const _BuiltInValueConverter();

  @override
  T fromJson(Object data) {
    if (isType<T, Object>() || isType<T, Object?>()) {
      return data as T;
    } else if ((isType<T, int>() || isType<T, int?>()) && data is num) {
      return data.toInt() as T;
    } else if ((isType<T, double>() || isType<T, double?>()) && data is num) {
      return data.toDouble() as T;
    } else if ((isType<T, num>() || isType<T, num?>()) && data is num) {
      return data as T;
    } else if ((isType<T, String>() || isType<T, String?>()) &&
        data is String) {
      return data as T;
    } else if ((isType<T, bool>() || isType<T, bool?>()) && data is bool) {
      return data as T;
    } else if ((isType<T, DateTime>() || isType<T, DateTime?>()) &&
        data is String) {
      return DateTime.parse(data) as T;
    } else if (data is T) {
      return data as T;
    }

    throw StateError('''
It is not possible to convert data in ${_BuiltInValueConverter<T>}.fromJson().
The given data is not supported:
$data''');
  }

  @override
  Object toJson(T object) => throw StateError('not supported');
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterAbstractsB + 1)
class ZacValue<T extends Object?> with _$ZacValue<T> implements ZacBuilder<T> {
  const ZacValue._();

  static const String unionFromBuiltIn = 'z:1:ZacValue';
  static const String unionFromBuilder = 'z:1:ZacValue.builder';
  static const String unionFromSharedValue = 'z:1:ZacValue.consume';

  factory ZacValue.fromJson(Object? data) {
    final zacValue = ConverterHelper.ifRegisteredBuilder<ZacValue<T>>(
      data,
      cb: (map, converterName) {
        if (const [
          ZacValue.unionFromBuiltIn,
          ZacValue.unionFromBuilder,
          ZacValue.unionFromSharedValue,
        ].contains(converterName)) {
          return _$ZacValueFromJson<T>(map);
        }
        return _$ZacValueFromJson<T>(<String, dynamic>{
          'converter': ZacValue.unionFromBuilder,
          'value': data,
        });
      },
      orElse: () => _$ZacValueFromJson<T>(<String, dynamic>{
        'converter': ZacValue.unionFromBuiltIn,
        'value': data,
      }),
    );

    return zacValue;
  }

  @FreezedUnionValue(ZacValue.unionFromBuiltIn)
  factory ZacValue(@_BuiltInValueConverter() T value) = _ZacValueBuiltIn<T>;

  @FreezedUnionValue(ZacValue.unionFromBuilder)
  factory ZacValue.builder(ZacBuilder<T> value) = _ZacValueFromBuilder<T>;

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
        return obj.value;
      },
      builder: (obj) {
        return obj.value.build(
          zacContext,
          onConsume: onConsume,
        );
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
@ZacGenerate(order: zacGenerateOrderFlutterAbstractsB + 1)
class ZacValueList<T extends Object?, X extends List<T>?>
    with _$ZacValueList<T, X>
    implements ZacBuilder<X> {
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
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
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
          consumeType: obj.forceConsume ?? onConsume.type,
          family: obj.family,
        );

        if (consumedValue is! List) {
          throw StateError(
              'Unexpected $SharedValue in ${ZacValueList<T, X>}: $consumedValue');
        }

        final list = [
          ...consumedValue.map<T>((dynamic e) {
            final value = e is ZacBuilder<Object?>
                ? e.build(zacContext, onConsume: onConsume)
                : e as Object?;
            return _transformItem(
              value: value,
              zacContext: zacContext,
              transformer: obj.itemTransformer,
            );
          })
        ];

        final transformedList = obj.transformer?.transform(
                ZacTransformValue(list),
                zacContext,
                const ZacActionPayload()) ??
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
