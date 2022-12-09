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
  T fromJson(Object json) {
    if (json is! T) {
      throw StateError('''
It was not possible to create ${ZacValue<T>}.
The error was probably created by using "${ZacValue.unionFromValue}" converter.
The data used: $json.''');
    }
    return json as T;
  }

  @override
  Object toJson(T object) => throw StateError('not supported');
}

class _ValueListConverter<T> implements JsonConverter<T, Object> {
  const _ValueListConverter();

  @override
  T fromJson(Object json) {
    if (json is! T) {
      throw StateError('''
It was not possible to create ${ZacValueList<T>}.
The error was probably created by using "${ZacValueList.unionFromValue}" converter.
There was at least one item in the list that was not an instance of $T.
The data used: $json.''');
    }
    return json as T;
  }

  @override
  Object toJson(T object) => throw StateError('not supported');
}

class _BuilderConverter<T>
    implements JsonConverter<ZacBuilder<dynamic>, Object> {
  const _BuilderConverter();

  @override
  ZacBuilder<dynamic> fromJson(Object json) {
    print('AAAAAAAAAAAAAAAAA');
    assert(() {
      /// Check if item can be converted
      ConverterHelper.ifRegisteredBuilderCb(
        json,
        orElse: () {
          throw StateError('''
It was not possible to create ${ZacValue<T>}.
The error was probably created by using "${ZacValue.unionFromBuilder}" converter.
The data could not be converted as no valid converter was found.
This will fail on production.
The data: $json''');
        },
      );

      print('BBBBBBBBBBBBBBBBBBBBBB');

      final builder = ConverterHelper.convertToType<Object?>(json);
      if (builder is! ZacBuilder<T>) {
        throw StateError('''
It was not possible to create ${ZacValue<T>}.
The error was probably created by using "${ZacValue.unionFromBuilder}" converter.
The created builder was not an instance of ${ZacBuilder<T>}.
This will fail on production.
The builder: $builder''');
      }
      return true;
    }());
    return ConverterHelper.convertToType<ZacBuilder<T>>(json);
  }

  @override
  Object toJson(ZacBuilder<dynamic> object) =>
      throw StateError('not supported');
}

class _BuilderListConverter<T> implements JsonConverter<ZacBuilder<T>, Object> {
  const _BuilderListConverter();

  @override
  ZacBuilder<T> fromJson(Object json) {
    assert(() {
      /// Check if item can be converted
      ConverterHelper.ifRegisteredBuilderCb(json, orElse: () {
        throw StateError('''
It was not possible to create ${ZacValueList<T>}.
The error was probably created by using "${ZacValueList.unionFromBuilder}" converter.
There was at least one item in the list that can not be converted to an instance of ${ZacBuilder<T>}.
This will fail on production.
The item: $json''');
      });
      return true;
    }());
    return ConverterHelper.convertToType<ZacBuilder<T>>(json);
  }

  @override
  Object toJson(ZacBuilder<T> object) => throw StateError('not supported');
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterAbstractsB + 1)
class ZacValue<T> with _$ZacValue<T> implements ZacBuilder<T> {
  static const String unionFromValue = 'z:1:ZacValue.value';
  static const String unionFromBuilder = 'z:1:ZacValue.builder';
  static const String unionFromSharedValue = 'z:1:ZacValue.consume';

  factory ZacValue.fromJson(
    Object data,
    T Function(Object? json) fromJsonT,
  ) {
    final isConverter = ConverterHelper.isConverter(data);
    if (isConverter &&
        [
          ZacValue.unionFromValue,
          ZacValue.unionFromBuilder,
          ZacValue.unionFromSharedValue,
        ].contains((data as Map<String, dynamic>)['converter'])) {
      return _$ZacValueFromJson<T>(data);
    } else if (isConverter) {
      return _$ZacValueFromJson<T>(<String, dynamic>{
        'converter': ZacValue.unionFromBuilder,
        'builder': data,
      });
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
        'It was not possible to create ${ZacValue<T>} from data: $data');
  }

  static T _choiceListFromJson<T>(Object data) {
    return data as T;
    // return ConverterHelper.convertToType<ZacBuilder<T>>(data);
  }

  @FreezedUnionValue(ZacValue.unionFromBuilder)
  // @JsonSerializable(genericArgumentFactories: true, createToJson: false)
  factory ZacValue.builder({
    // required ZacBuilder<T> builder,
    // @JsonKey(fromJson: _choiceListFromJson) required ZacBuilder<T> builder,
    @_BuilderConverter<T>() required ZacBuilder<T> builder,
  }) = _ZacValueBuilder<T>;

  @FreezedUnionValue(ZacValue.unionFromValue)
  factory ZacValue.value({
    @_ValueConverter() required T value,
  }) = _ZacValueValue<T>;

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
      value: (obj) => obj.value,
      builder: (obj) {
        return obj.builder.build(zacContext, onConsume: onConsume);
      },
      consume: (obj) {
        return SharedValue.getTyped<T>(
          zacContext: zacContext,
          consumeType:
              (obj.forceConsume ?? const SharedValueConsumeType.watch()),
          family: obj.family,
          select: obj.select,
          transformer: obj.transformer,
        );
      },
    );
  }

  @override
  T? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return map<T?>(
      value: (obj) => obj.value,
      builder: (obj) {
        return obj.builder.buildOrNull(zacContext, onConsume: onConsume);
      },
      consume: (obj) {
        return SharedValue.getTypedOrNull<T>(
          zacContext: zacContext,
          consumeType:
              (obj.forceConsume ?? const SharedValueConsumeType.watch()),
          family: obj.family,
          select: obj.select,
          transformer: obj.transformer,
        );
      },
    );
  }
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterAbstractsB + 1)
class ZacValueList<T> with _$ZacValueList<T> implements ZacBuilder<List<T>> {
  const ZacValueList._();

  static const String unionFromValue = 'z:1:ZacValueList.value';
  static const String unionFromBuilder = 'z:1:ZacValueList.builder';
  static const String unionFromSharedValue = 'z:1:ZacValueList.consume';

  factory ZacValueList.fromJson(Map<String, dynamic> json) =>
      _$ZacValueListFromJson(json);

  @FreezedUnionValue(ZacValue.unionFromBuilder)
  factory ZacValueList.builder({
    @_BuilderListConverter() required List<ZacBuilder<T>> items,
  }) = _ZacValueListBuilder<T>;

  @FreezedUnionValue(ZacValue.unionFromValue)
  factory ZacValueList.value({
    @_ValueListConverter() required List<T> items,
  }) = _ZacValueListValue<T>;

  @FreezedUnionValue(ZacValue.unionFromSharedValue)
  factory ZacValueList.consume({
    required SharedValueFamily family,
    ZacTransformers? transformer,
    ZacTransformers? itemTransformer,
    ZacTransformers? select,
    SharedValueConsumeType? forceConsume,
  }) = _ZacValueListConsume<T>;

  @override
  List<T> build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return map<List<T>>(
      value: (obj) => obj.items,
      builder: (obj) {
        return obj.items
            .map((e) => e.build(zacContext, onConsume: onConsume))
            .toList();
      },
      consume: (obj) {
        return SharedValue.getTypedList<T>(
          zacContext: zacContext,
          consumeType:
              (obj.forceConsume ?? const SharedValueConsumeType.watch()),
          family: obj.family,
          select: obj.select,
          transformer: obj.transformer,
          itemTransformer: obj.itemTransformer,
        );
      },
    );
  }

  @override
  List<T>? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return map<List<T>?>(
      value: (obj) => obj.items,
      builder: (obj) {
        return obj.items
            .map((e) => e.build(zacContext, onConsume: onConsume))
            .toList();
      },
      consume: (obj) {
        return SharedValue.getTypedListOrNull<T>(
          zacContext: zacContext,
          consumeType:
              (obj.forceConsume ?? const SharedValueConsumeType.watch()),
          family: obj.family,
          select: obj.select,
          transformer: obj.transformer,
          itemTransformer: obj.itemTransformer,
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
