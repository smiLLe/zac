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

class ZacValueConverter<T> implements JsonConverter<T, Object> {
  const ZacValueConverter();

  @override
  T fromJson(Object json) => json as T;

  @override
  Object toJson(T object) => throw StateError('not supported');
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterAbstractsB + 1)
class ZacValue<T> with _$ZacValue<T> implements ZacBuilder<T> {
  const ZacValue._();

  factory ZacValue.fromJson(Object data) {
    final isConverter = ConverterHelper.isConverter(data);
    if (isConverter &&
        ['z:1:ZacValue.builder', 'z:1:ZacValue.value', 'z:1:ZacValue.consume']
            .contains((data as Map<String, dynamic>)['converter'])) {
      final zV = _$ZacValueFromJson<T>(data);
      assert(() {
        if (zV is _ZacValueBuilder<T>) {
          if (zV.builder is! ZacBuilder<T> &&
              true != zV.transformer?.transformers.isNotEmpty) {
            throw AssertionError('''
It was not possible to create ${ZacValue<T>}.
The return type was expected to be $T which the builder should return.
Otherwise a transformer is required but none was provided.
The builder was of type ${zV.builder.runtimeType}.
''');
          }
        }
        return true;
      }());
      return zV;
    } else if (isConverter) {
      return ZacValue.builder(
        builder: ConverterHelper.convertToType<ZacBuilder<T>>(data),
        transformer: null,
      );
    } else if (T == Object) {
      return ZacValue<T>.value(value: data as T);
    } else if (T == int && data is num) {
      return ZacValue<T>.value(value: data.toInt() as T);
    } else if (T == double && data is num) {
      return ZacValue<T>.value(value: data.toDouble() as T);
    } else if (T == num && data is num) {
      return ZacValue<T>.value(value: data as T);
    } else if (T == String && data is String) {
      return ZacValue<T>.value(value: data as T);
    } else if (T == bool && data is bool) {
      return ZacValue<T>.value(value: data as T);
    } else if (T == DateTime && data is String) {
      return ZacValue<T>.value(value: DateTime.parse(data) as T);
    } else if (data is T) {
      return ZacValue<T>.value(value: data as T);
    }

    throw StateError(
        'It was not possible to convert data to ${ZacValue<T>}. $data');
  }

  @FreezedUnionValue('z:1:ZacValue.builder')
  factory ZacValue.builder({
    required ZacBuilder<Object?> builder,
    ZacTransformers? transformer,
  }) = _ZacValueBuilder<T>;

  @FreezedUnionValue('z:1:ZacValue.value')
  factory ZacValue.value({
    @ZacValueConverter() required T value,
  }) = _ZacValueValue<T>;

  @FreezedUnionValue('z:1:ZacValue.consume')
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
      value: (obj) => obj.value,
      builder: (obj) {
        var val = obj.builder.build(zacContext, onConsume: onConsume);
        if (val is T) return val;
        val = obj.transformer?.transform(
            ZacTransformValue(val), zacContext, const ZacActionPayload());
        if (val is T) return val;
        throw StateError('');
      },
      consume: (obj) {
        return SharedValue.getTyped<ZacBuilder<T>>(
          zacContext: zacContext,
          consumeType:
              (obj.forceConsume ?? const SharedValueConsumeType.watch()),
          family: obj.family,
          select: obj.select,
          transformer: obj.transformer,
        ).build(zacContext);
      },
    );
  }

  @override
  T? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return map<T?>(
      value: (obj) => obj.value,
      builder: (obj) {
        var val = obj.builder.build(zacContext, onConsume: onConsume);
        if (val is T?) return val;
        val = obj.transformer?.transform(
            ZacTransformValue(val), zacContext, const ZacActionPayload());
        if (val is T?) return val;
        throw StateError('');
      },
      consume: (obj) {
        return SharedValue.getTypedOrNull<ZacBuilder<T?>>(
          zacContext: zacContext,
          consumeType:
              (obj.forceConsume ?? const SharedValueConsumeType.watch()),
          family: obj.family,
          select: obj.select,
          transformer: obj.transformer,
        )?.buildOrNull(zacContext);
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
    required ZacValue<bool> value,
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
