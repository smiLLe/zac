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

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterAbstractsB + 1)
class ZacInt with _$ZacInt, ZacBuilder<int>, ZV<int, int> {
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

  @override
  int buildItem(ZacContext zacContext, int item) => item;
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterAbstractsB + 1)
class ZacDouble with _$ZacDouble, ZacBuilder<double>, ZV<double, double> {
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

  @override
  double buildItem(ZacContext zacContext, double item) => item;
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterAbstractsB + 1)
class ZacNum with _$ZacNum, ZacBuilder<num>, ZV<num, num> {
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

  @override
  num buildItem(ZacContext zacContext, num item) => item;
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterAbstractsB + 1)
class ZacString with _$ZacString, ZacBuilder<String>, ZV<String, String> {
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

  @override
  String buildItem(ZacContext zacContext, String item) => item;
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterAbstractsB + 1)
class ZacBool with _$ZacBool, ZacBuilder<bool>, ZV<bool, bool> {
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

  @override
  bool buildItem(ZacContext zacContext, bool item) => item;
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterAbstractsB + 1)
class ZacObject with _$ZacObject, ZacBuilder<Object>, ZV<Object, Object> {
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

  @override
  Object buildItem(ZacContext zacContext, Object item) => item;
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterAbstractsB + 1)
class ZacFlutterWidget
    with _$ZacFlutterWidget, ZacBuilder<Widget>, ZV<Widget, FlutterWidget> {
  const ZacFlutterWidget._();

  static const String unionValue = 'z:1:FlutterWidget';
  static const String unionValueConsume = 'z:1:FlutterWidget.consume';

  factory ZacFlutterWidget.fromJson(Object data) {
    data as Map<String, dynamic>;
    final json = <String, dynamic>{};
    final converter = (data['converter'] as String);
    if (converter != ZacFlutterWidget.unionValue &&
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

  @FreezedUnionValue(ZacFlutterWidget.unionValueConsume)
  @With<ConsumeSharedValue<FlutterWidget>>()
  factory ZacFlutterWidget.consume({
    required SharedValueFamily family,
    ZacTransformers? transformer,
    ZacTransformers? select,
    SharedValueConsumeType? forceConsume,
  }) = _ZacFlutterWidgetConsumeSharedValue;

  @override
  Widget buildItem(ZacContext zacContext, FlutterWidget item) =>
      item.build(zacContext);
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterAbstractsB + 1)
class ZacDateTime
    with _$ZacDateTime, ZacBuilder<DateTime>, ZV<DateTime, DateTime> {
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

  @override
  DateTime buildItem(ZacContext zacContext, DateTime item) => item;
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
