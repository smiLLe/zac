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

mixin ZV<T> on ZacBuilder<T> {
  @override
  T build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    if (this is ZacSimpleValue<T>) {
      return (this as ZacSimpleValue<T>).value;
    } else if (this is ConsumeSharedValue<T>) {
      return (this as ConsumeSharedValue<T>)
          .buildConsume(zacContext, onConsume);
    }

    throw StateError('Could not return $T in $this');
  }

  @override
  T? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    if (this is ZacSimpleValue<T>) {
      return (this as ZacSimpleValue<T>).value;
    } else if (this is ConsumeSharedValue<T>) {
      return (this as ConsumeSharedValue<T>)
          .buildConsumeOrNull(zacContext, onConsume);
    }

    throw StateError('Could not return $T in $this');
  }
}

mixin ZacGetValueList<T> {
  List<T> getValue(ZacContext zacContext,
      {SharedValueConsumeType prefered =
          const SharedValueConsumeType.watch()}) {
    if (this is ZacSimpleValueList<T>) {
      return (this as ZacSimpleValueList<T>).items;
    } else if (this is ZacValueTranformableList<T>) {
      return (this as ZacValueTranformableList<T>)
          .getTransformedValue(zacContext);
    } else if (this is ZacValueConsumeList<T>) {
      return (this as ZacValueConsumeList<T>).getSharedValue(zacContext);
    }
    throw StateError('''
${ZacGetValueList<T>} could not return a list because $this did not implement one
of the following classes: ${ZacGetValueList<T>}, ${ZacValueTranformableList<T>}, ${ZacValueConsumeList<T>}''');
  }

  List<T>? getValueOrNull(ZacContext zacContext,
      {SharedValueConsumeType prefered =
          const SharedValueConsumeType.watch()}) {
    if (this is ZacSimpleValueList<T>) {
      return (this as ZacSimpleValueList<T>).items;
    } else if (this is ZacValueTranformableList<T>) {
      return (this as ZacValueTranformableList<T>)
          .getTransformedValueOrNull(zacContext);
    } else if (this is ZacValueConsumeList<T>) {
      return (this as ZacValueConsumeList<T>).getSharedValueOrNull(zacContext);
    }
    throw StateError('''
${ZacGetValueList<T>} could not return a list because $this did not implement one
of the following classes: ${ZacGetValueList<T>}, ${ZacValueTranformableList<T>}, ${ZacValueConsumeList<T>}''');
  }
}

mixin ZacSimpleValueList<T> {
  List<T> get items;
}

mixin ZacValueTranformableList<T> {
  List<Object> get items;
  ZacTransformers? get transformer;
  ZacTransformers? get itemTransformer;

  List<T> getTransformedValue(ZacContext zacContext) {
    return TransformObjectHelper.list<T>(
      fromValue: items,
      transformer: transformer,
      itemTransformer: itemTransformer,
      zacContext: zacContext,
    );
  }

  List<T>? getTransformedValueOrNull(ZacContext zacContext) {
    return TransformObjectHelper.listOrNull<T>(
      fromValue: items,
      transformer: transformer,
      itemTransformer: itemTransformer,
      zacContext: zacContext,
    );
  }
}

mixin ZacValueConsumeList<T> {
  SharedValueFamily get family;
  ZacTransformers? get transformer;
  ZacTransformers? get itemTransformer;
  ZacTransformers? get select;
  SharedValueConsumeType? get forceConsume;

  List<T> getSharedValue(ZacContext zacContext,
      {SharedValueConsumeType prefered =
          const SharedValueConsumeType.watch()}) {
    return SharedValue.getTypedList<T>(
      zacContext: zacContext,
      consumeType: (forceConsume ?? prefered),
      family: family,
      select: select,
      transformer: transformer,
      itemTransformer: itemTransformer,
    );
  }

  List<T>? getSharedValueOrNull(ZacContext zacContext,
      {SharedValueConsumeType prefered =
          const SharedValueConsumeType.watch()}) {
    return SharedValue.getTypedListOrNull<T>(
      zacContext: zacContext,
      consumeType: (forceConsume ?? prefered),
      family: family,
      select: select,
      transformer: transformer,
      itemTransformer: itemTransformer,
    );
  }
}

mixin ZacGetValue<T> {
  T getValue(ZacContext zacContext,
      {SharedValueConsumeType prefered =
          const SharedValueConsumeType.watch()}) {
    if (this is ZacSimpleValue<T>) {
      return (this as ZacSimpleValue<T>).value;
    } else if (this is ZacValueTranformable<T>) {
      return (this as ZacValueTranformable<T>).getTransformedValue(zacContext);
    } else if (this is ZacValueConsume<T>) {
      return (this as ZacValueConsume<T>)
          .getSharedValue(zacContext, prefered: prefered);
    }
    throw StateError('''
${ZacGetValue<T>} could not return a value because $this did not implement one
of the following classes: ${ZacSimpleValue<T>}, ${ZacValueTranformable<T>}, ${ZacValueConsume<T>}''');
  }

  T? getValueOrNull(ZacContext zacContext,
      {SharedValueConsumeType prefered =
          const SharedValueConsumeType.watch()}) {
    if (this is ZacSimpleValue<T>) {
      return (this as ZacSimpleValue<T>).value;
    } else if (this is ZacValueTranformable<T>) {
      return (this as ZacValueTranformable<T>)
          .getTransformedValueOrNull(zacContext);
    } else if (this is ZacValueConsume<T>) {
      return (this as ZacValueConsume<T>)
          .getSharedValueOrNull(zacContext, prefered: prefered);
    }
    throw StateError('''
${ZacGetValue<T>} could not return a value because $this did not implement one
of the following classes: ${ZacSimpleValue<T>}, ${ZacValueTranformable<T>}, ${ZacValueConsume<T>}''');
  }
}

mixin ZacSimpleValue<T> {
  T get value;
}

mixin ZacValueTranformable<T> {
  Object get value;
  ZacTransformers get transformer;

  T getTransformedValue(ZacContext zacContext) {
    return TransformObjectHelper.simple<T>(
      fromValue: value,
      transformer: transformer,
      zacContext: zacContext,
    );
  }

  T? getTransformedValueOrNull(ZacContext zacContext) {
    return TransformObjectHelper.simpleOrNull<T>(
      fromValue: value,
      transformer: transformer,
      zacContext: zacContext,
    );
  }
}

mixin ZacValueConsumeImpl<T> on ZacValueConsume<T> {
  @override
  T getSharedValue(ZacContext zacContext,
      {SharedValueConsumeType prefered =
          const SharedValueConsumeType.watch()}) {
    final value = SharedValue.getTyped<T>(
      zacContext: zacContext,
      consumeType: (forceConsume ?? prefered),
      family: family,
      select: select,
      transformer: transformer,
    );

    return value;
  }

  @override
  T? getSharedValueOrNull(ZacContext zacContext,
      {SharedValueConsumeType prefered =
          const SharedValueConsumeType.watch()}) {
    final value = SharedValue.getTypedOrNull<T?>(
      zacContext: zacContext,
      consumeType: (forceConsume ?? prefered),
      family: family,
      select: select,
      transformer: transformer,
    );

    return value;
  }
}

abstract class ZacValueConsume<T> {
  factory ZacValueConsume.fromJson(Object data) {
    return ConverterHelper.convertToType<ZacValueConsume<T>>(data);
  }

  SharedValueFamily get family;
  ZacTransformers? get transformer;
  ZacTransformers? get select;
  SharedValueConsumeType? get forceConsume;

  T getSharedValue(ZacContext zacContext,
      {SharedValueConsumeType prefered = const SharedValueConsumeType.watch()});

  T? getSharedValueOrNull(ZacContext zacContext,
      {SharedValueConsumeType prefered = const SharedValueConsumeType.watch()});
}

bool _assertIsBuilder<T>(Map<String, dynamic> json) {
  assert(() {
    ConverterHelper.validateConverter<T>(json);
    return true;
  }(), '');
  return true;
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterAbstractsB + 1)
class ZacInt with _$ZacInt, ZacBuilder<int>, ZV<int> {
  const ZacInt._();

  static const String unionValue = 'z:1:int';

  factory ZacInt.fromJson(Object data) {
    final json = <String, dynamic>{};
    if (data is num) {
      json['converter'] = ZacInt.unionValue;
      json['value'] = data;
    } else if (data is Map<String, dynamic>) {
      json.addAll(data);
    }

    assert(_assertIsBuilder<ZacInt>(json), '');

    if (json['converter'] == ZacInt.unionValue && json['value'] is double) {
      json['value'] = (json['value'] as double).toInt();
    }

    return _$ZacIntFromJson(json);
  }

  @FreezedUnionValue(ZacInt.unionValue)
  @With<ZacSimpleValue<int>>()
  factory ZacInt({required int value}) = _ZacInt;

  @FreezedUnionValue('z:1:int.consume')
  @With<ConsumeSharedValue<int>>()
  factory ZacInt.consume({
    required SharedValueFamily family,
    ZacTransformers? transformer,
    ZacTransformers? select,
    SharedValueConsumeType? forceConsume,
  }) = _ZacIntConsumeSharedValue;
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterAbstractsB + 1)
class ZacDouble with _$ZacDouble, ZacBuilder<double>, ZV<double> {
  const ZacDouble._();

  static const String unionValue = 'z:1:double';

  factory ZacDouble.fromJson(Object data) {
    final json = <String, dynamic>{};
    if (data is num) {
      json['converter'] = ZacDouble.unionValue;
      json['value'] = data;
    } else if (data is Map<String, dynamic>) {
      json.addAll(data);
    }

    assert(_assertIsBuilder<ZacDouble>(json), '');

    if (json['converter'] == ZacDouble.unionValue && json['value'] is int) {
      json['value'] = (json['value'] as int).toDouble();
    }

    return _$ZacDoubleFromJson(json);
  }

  @FreezedUnionValue(ZacDouble.unionValue)
  @With<ZacSimpleValue<double>>()
  factory ZacDouble({required double value}) = _ZacDouble;

  @FreezedUnionValue('z:1:double.consume')
  @With<ConsumeSharedValue<double>>()
  factory ZacDouble.consume({
    required SharedValueFamily family,
    ZacTransformers? transformer,
    ZacTransformers? select,
    SharedValueConsumeType? forceConsume,
  }) = _ZacDoubleConsumeSharedValue;
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterAbstractsB + 1)
class ZacNum with _$ZacNum, ZacBuilder<num>, ZV<num> {
  const ZacNum._();

  static const String unionValue = 'z:1:num';

  factory ZacNum.fromJson(Object data) {
    final json = <String, dynamic>{};
    if (data is num) {
      json['converter'] = ZacNum.unionValue;
      json['value'] = data;
    } else if (data is Map<String, dynamic>) {
      json.addAll(data);
    }

    assert(_assertIsBuilder<ZacNum>(json), '');

    return _$ZacNumFromJson(json);
  }

  @FreezedUnionValue(ZacNum.unionValue)
  @With<ZacSimpleValue<num>>()
  factory ZacNum({required num value}) = _ZacNum;

  @FreezedUnionValue('z:1:num.consume')
  @With<ConsumeSharedValue<num>>()
  factory ZacNum.consume({
    required SharedValueFamily family,
    ZacTransformers? transformer,
    ZacTransformers? select,
    SharedValueConsumeType? forceConsume,
  }) = _ZacNumConsumeSharedValue;
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterAbstractsB + 1)
class ZacString with _$ZacString, ZacBuilder<String>, ZV<String> {
  const ZacString._();

  static const String unionValue = 'z:1:String';

  factory ZacString.fromJson(Object data) {
    final json = <String, dynamic>{};
    if (data is String) {
      json['converter'] = ZacString.unionValue;
      json['value'] = data;
    } else if (data is Map<String, dynamic>) {
      json.addAll(data);
    }

    assert(_assertIsBuilder<ZacString>(json), '');

    return _$ZacStringFromJson(json);
  }

  @FreezedUnionValue(ZacString.unionValue)
  @With<ZacSimpleValue<String>>()
  factory ZacString({required String value}) = _ZacString;

  @FreezedUnionValue('z:1:String.consume')
  @With<ConsumeSharedValue<String>>()
  factory ZacString.consume({
    required SharedValueFamily family,
    ZacTransformers? transformer,
    ZacTransformers? select,
    SharedValueConsumeType? forceConsume,
  }) = _ZacStringConsumeSharedValue;
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterAbstractsB + 1)
class ZacBool with _$ZacBool, ZacBuilder<bool>, ZV<bool> {
  const ZacBool._();

  static const String unionValue = 'z:1:bool';

  factory ZacBool.fromJson(Object data) {
    final json = <String, dynamic>{};
    if (data is bool) {
      json['converter'] = ZacBool.unionValue;
      json['value'] = data;
    } else if (data is Map<String, dynamic>) {
      json.addAll(data);
    }

    assert(_assertIsBuilder<ZacBool>(json), '');

    return _$ZacBoolFromJson(json);
  }

  @FreezedUnionValue(ZacBool.unionValue)
  @With<ZacSimpleValue<bool>>()
  factory ZacBool({required bool value}) = _ZacBool;

  @FreezedUnionValue('z:1:bool.consume')
  @With<ConsumeSharedValue<bool>>()
  factory ZacBool.consume({
    required SharedValueFamily family,
    ZacTransformers? transformer,
    ZacTransformers? select,
    SharedValueConsumeType? forceConsume,
  }) = _ZacBoolConsumeSharedValue;
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterAbstractsB + 1)
class ZacObject with _$ZacObject, ZacBuilder<Object>, ZV<Object> {
  const ZacObject._();

  static const String unionValue = 'z:1:Object';

  factory ZacObject.fromJson(Object data) {
    final json = <String, dynamic>{};
    if (data is Map<String, dynamic>) {
      json.addAll(data);
    } else {
      json['converter'] = ZacObject.unionValue;
      json['value'] = data;
    }

    assert(_assertIsBuilder<ZacObject>(json), '');

    return _$ZacObjectFromJson(json);
  }

  @FreezedUnionValue(ZacObject.unionValue)
  @With<ZacSimpleValue<Object>>()
  factory ZacObject({required Object value}) = _ZacObject;

  @FreezedUnionValue('z:1:Object.consume')
  @With<ConsumeSharedValue<Object>>()
  factory ZacObject.consume({
    required SharedValueFamily family,
    ZacTransformers? transformer,
    ZacTransformers? select,
    SharedValueConsumeType? forceConsume,
  }) = _ZacObjectConsumeSharedValue;
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterAbstractsB + 1)
class ZacFlutterWidget with _$ZacFlutterWidget, ZacGetValue<FlutterWidget> {
  const ZacFlutterWidget._();

  static const String unionValue = 'z:1:FlutterWidget';
  static const String unionValueTransformable =
      'z:1:FlutterWidget.transformable';
  static const String unionValueConsume = 'z:1:FlutterWidget.consume';

  factory ZacFlutterWidget.fromJson(Object data) {
    data as Map<String, dynamic>;
    final json = <String, dynamic>{};
    final converter = (data['converter'] as String);
    if (converter != ZacFlutterWidget.unionValue &&
        converter != ZacFlutterWidget.unionValueTransformable &&
        converter != ZacFlutterWidget.unionValueConsume) {
      json['converter'] = ZacFlutterWidget.unionValue;
      json['value'] = data;
    } else {
      json.addAll(data);
    }

    return _$ZacFlutterWidgetFromJson(json);
  }

  @FreezedUnionValue(ZacFlutterWidget.unionValue)
  @With<ZacSimpleValue<FlutterWidget>>()
  factory ZacFlutterWidget({required FlutterWidget value}) = _ZacFlutterWidget;

  @FreezedUnionValue(ZacFlutterWidget.unionValueTransformable)
  @With<ZacValueTranformable<FlutterWidget>>()
  factory ZacFlutterWidget.transformable({
    required Object value,
    required ZacTransformers transformer,
  }) = _ZacFlutterWidgetTransformable;

  @FreezedUnionValue(ZacFlutterWidget.unionValueConsume)
  @Implements<ZacValueConsume<FlutterWidget>>()
  @With<ZacValueConsumeImpl<FlutterWidget>>()
  factory ZacFlutterWidget.consume({
    required SharedValueFamily family,
    ZacTransformers? transformer,
    ZacTransformers? select,
    SharedValueConsumeType? forceConsume,
  }) = _ZacFlutterWidgetConsumeSharedValue;
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterAbstractsB + 1)
class ZacDateTime with _$ZacDateTime, ZacBuilder<DateTime>, ZV<DateTime> {
  const ZacDateTime._();

  static const String unionValue = 'z:1:DateTime';

  factory ZacDateTime.fromJson(Object data) {
    final json = <String, dynamic>{};
    if (data is String) {
      json['converter'] = ZacDateTime.unionValue;
      json['value'] = data;
    } else if (data is Map<String, dynamic>) {
      json.addAll(data);
    }

    assert(_assertIsBuilder<ZacDateTime>(json), '');

    return _$ZacDateTimeFromJson(json);
  }

  @FreezedUnionValue(ZacDateTime.unionValue)
  @With<ZacSimpleValue<DateTime>>()
  factory ZacDateTime({required DateTime value}) = _ZacDateTime;

  @FreezedUnionValue('z:1:DateTime.consume')
  @With<ConsumeSharedValue<DateTime>>()
  factory ZacDateTime.consume({
    required SharedValueFamily family,
    ZacTransformers? transformer,
    ZacTransformers? select,
    SharedValueConsumeType? forceConsume,
  }) = _ZacDateTimeSharedValue;
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterAbstractsB + 1)
class ZacListOfFlutterWidget
    with _$ZacListOfFlutterWidget, ZacGetValueList<FlutterWidget> {
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

  @FreezedUnionValue('z:1:List<FlutterWidget>.transformable')
  @With<ZacValueTranformableList<FlutterWidget>>()
  factory ZacListOfFlutterWidget.transformable({
    required List<Object> items,
    ZacTransformers? transformer,
    ZacTransformers? itemTransformer,
  }) = _ZacListOfFlutterWidgetTransformable;

  @FreezedUnionValue('z:1:List<FlutterWidget>.consume')
  @With<ZacValueConsumeList<FlutterWidget>>()
  factory ZacListOfFlutterWidget.consume({
    required SharedValueFamily family,
    ZacTransformers? transformer,
    ZacTransformers? itemTransformer,
    ZacTransformers? select,
    SharedValueConsumeType? forceConsume,
  }) = _ZacListOfFlutterWidgetSharedValue;
}

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

@freezedZacBuilder
class ZacValueConsumeOnly<T> with _$ZacValueConsumeOnly<T> {
  const ZacValueConsumeOnly._();

  @FreezedUnionValue(ZacValue.unionValueConsume)
  factory ZacValueConsumeOnly(ZacValue<T> zacValue) = _ZacValueConsumeOnly<T>;

  factory ZacValueConsumeOnly.fromJson(Object data) {
    final zacValue = ZacValueConsumeOnly<T>(ZacValue<T>.fromJson(data));
    if (zacValue.zacValue is! _ZacValueConsume<T>) {
      throw StateError('''
Something very bad happend. ${ZacValueConsumeOnly<T>} must always contain a ${_ZacValueConsume<T>}.
Invalid data: $data''');
    }
    return zacValue;
  }

  SharedValueFamily get family => map((obj) => obj.zacValue.map(
        (value) => throw StateError('must never happen'),
        consume: (obj) => obj.family,
      ));

  T getValue(ZacContext zacContext,
      {SharedValueConsumeType prefered =
          const SharedValueConsumeType.watch()}) {
    return map((obj) => obj.zacValue.getValue(zacContext));
  }
}

@freezedZacBuilder
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
    SharedValueConsumeType? forceConsume,
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
      {SharedValueConsumeType prefered =
          const SharedValueConsumeType.watch()}) {
    var value = map<Object?>(
      (obj) => obj.data,
      consume: (obj) => SharedValue.get(
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

@freezedZacBuilder
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
    SharedValueConsumeType? forceConsume,
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
      {SharedValueConsumeType prefered =
          const SharedValueConsumeType.watch()}) {
    var value = map<Object?>(
      (obj) => obj.data.map((key, value) {
        if (value is ZacValue<T>) {
          return MapEntry(key, value.getValue(zacContext, prefered: prefered));
        }
        return MapEntry(key, value);
      }),
      consume: (obj) => SharedValue.get(
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

@freezedZacBuilder
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
    SharedValueConsumeType? forceConsume,
  }) = _ZacValueListConsume<T>;

  factory ZacValueList.fromJson(Object data) {
    late Map<String, dynamic> json;
    if (data is List) {
      json = <String, dynamic>{
        'converter': ZacValueList.unionValue,
        'data': data,
      };
    } else if (_isZacValueListConverter(data)) {
      json = data as Map<String, dynamic>;
    } else {
      throw StateError('Unsupported data type in ${ZacValueList<T>}: $data');
    }

    if (json[converterKey] == ZacValueList.unionValue) {
      json['data'] = (json['data'] as List<Object?>).map<Object?>(
        (Object? value) {
          if (_isZacValueConverter(value)) {
            return ZacValue<T>.fromJson(value as Map<String, dynamic>);
          }
          return _mapValue<T>(data: value);
        },
      ).toList();
    }

    return _$ZacValueListFromJson<T>(json);
  }

  List<T> getValue(ZacContext zacContext,
      {SharedValueConsumeType prefered =
          const SharedValueConsumeType.watch()}) {
    var value = map<Object?>(
      (obj) => obj.data.map((item) {
        if (item is ZacValue<T>) {
          return item.getValue(zacContext, prefered: prefered);
        }
        return item;
      }).toList(),
      consume: (obj) => SharedValue.get(
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

@freezedZacBuilder
@ZacGenerate()
class ZacValueActions with _$ZacValueActions implements ZacAction {
  const ZacValueActions._();

  static const String unionValue = 'z:1:ZacValue.asActionPayload';

  factory ZacValueActions.fromJson(Map<String, dynamic> json) =>
      _$ZacValueActionsFromJson(json);

  @FreezedUnionValue(ZacValueActions.unionValue)
  factory ZacValueActions.asPayload({
    required ZacObject value,
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
