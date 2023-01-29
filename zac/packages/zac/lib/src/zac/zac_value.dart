import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/zac/registry.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/transformers.dart';
import 'package:zac/src/zac/zac_builder.dart';

part 'zac_value.freezed.dart';
part 'zac_value.g.dart';

@freezedZacBuilder
class ZacValueActions with _$ZacValueActions implements ZacBuilder<ZacAction> {
  ZacValueActions._();

  static const String unionValue = 'z:1:ZacValue.asActionPayload';

  factory ZacValueActions.fromJson(Map<String, dynamic> json) =>
      _$ZacValueActionsFromJson(json);

  @FreezedUnionValue(ZacValueActions.unionValue)
  factory ZacValueActions.asPayload({
    required ZacBuilder<Object?> value,
    required ZacBuilder<List<ZacAction>> actions,
  }) = _ZacValueActionsAsPayload;

  late final ZacAction _action = ZacAction(
      (ZacActionPayload payload, BuildContext context, ZacContext zacContext) {
    map(
      asPayload: (obj) {
        final val = obj.value.build(context, zacContext);
        obj.actions
            .build(context, zacContext)
            .execute(ZacActionPayload.param(val), context, zacContext);
      },
    );
  });

  @override
  ZacAction build(BuildContext context, ZacContext zacContext) => _action;
}

@freezedZacBuilder
class ZacValue<T> with _$ZacValue<T> implements ZacBuilder<T> {
  ZacValue._();

  static const String unionValue = 'z:1:ZacValue';

  factory ZacValue.fromJson(Map<String, dynamic> map) =>
      _$ZacValueFromJson(map);

  @FreezedUnionValue(ZacValue.unionValue)
  factory ZacValue(Object value) = _ZacValue<T>;

  @override
  T build(BuildContext context, ZacContext zacContext) {
    if (value is T) return value as T;

    throw StateError(
        'It was not possible to return $T from ${ZacValue<T>}.build');
  }
}

@freezedZacBuilder
class ZacNum with _$ZacNum implements ZacBuilder<num> {
  ZacNum._();

  static const String unionValue = 'z:1:num';

  factory ZacNum.fromJson(Object data) => ZacRegistry.ifBuilderLikeMap<ZacNum>(
        data,
        cb: (map, converterName) => _$ZacNumFromJson(map),
        orElse: () => _$ZacNumFromJson(<String, dynamic>{
          'builder': ZacNum.unionValue,
          'value': data,
        }),
      );

  @FreezedUnionValue(ZacNum.unionValue)
  factory ZacNum(num value) = _ZacNum;

  @override
  num build(BuildContext context, ZacContext zacContext) {
    return value;
  }
}

@freezedZacBuilder
class ZacInt with _$ZacInt implements ZacBuilder<int> {
  ZacInt._();

  static const String unionValue = 'z:1:int';

  factory ZacInt.fromJson(Object data) => ZacRegistry.ifBuilderLikeMap<ZacInt>(
        data,
        cb: (map, converterName) => _$ZacIntFromJson(map),
        orElse: () => _$ZacIntFromJson(<String, dynamic>{
          'builder': ZacInt.unionValue,
          'value': data,
        }),
      );

  @FreezedUnionValue(ZacInt.unionValue)
  factory ZacInt(int value) = _ZacInt;

  @override
  int build(BuildContext context, ZacContext zacContext) {
    return value;
  }
}

@freezedZacBuilder
class ZacDouble with _$ZacDouble implements ZacBuilder<double> {
  ZacDouble._();

  static const String unionValue = 'z:1:double';

  factory ZacDouble.fromJson(Object data) =>
      ZacRegistry.ifBuilderLikeMap<ZacDouble>(
        data,
        cb: (map, converterName) => _$ZacDoubleFromJson(map),
        orElse: () => _$ZacDoubleFromJson(<String, dynamic>{
          'builder': ZacDouble.unionValue,
          'value': data,
        }),
      );

  @FreezedUnionValue(ZacDouble.unionValue)
  factory ZacDouble(double value) = _ZacDouble;

  @override
  double build(BuildContext context, ZacContext zacContext) {
    return value;
  }
}

@freezedZacBuilder
class ZacString with _$ZacString implements ZacBuilder<String> {
  ZacString._();

  static const String unionValue = 'z:1:String';

  factory ZacString.fromJson(Object data) =>
      ZacRegistry.ifBuilderLikeMap<ZacString>(
        data,
        cb: (map, converterName) => _$ZacStringFromJson(map),
        orElse: () => _$ZacStringFromJson(<String, dynamic>{
          'builder': ZacString.unionValue,
          'value': data,
        }),
      );

  @FreezedUnionValue(ZacString.unionValue)
  factory ZacString(String value) = _ZacString;

  @override
  String build(BuildContext context, ZacContext zacContext) {
    return value;
  }
}

@freezedZacBuilder
class ZacBool with _$ZacBool implements ZacBuilder<bool> {
  ZacBool._();

  static const String unionValue = 'z:1:bool';

  factory ZacBool.fromJson(Object data) =>
      ZacRegistry.ifBuilderLikeMap<ZacBool>(
        data,
        cb: (map, converterName) => _$ZacBoolFromJson(map),
        orElse: () => _$ZacBoolFromJson(<String, dynamic>{
          'builder': ZacBool.unionValue,
          'value': data,
        }),
      );

  @FreezedUnionValue(ZacBool.unionValue)
  factory ZacBool(bool value) = _ZacBool;

  @override
  bool build(BuildContext context, ZacContext zacContext) {
    return value;
  }
}

@freezedZacBuilder
class ZacObject with _$ZacObject implements ZacBuilder<Object> {
  ZacObject._();

  static const String unionValue = 'z:1:Object';

  factory ZacObject.fromJson(Object data) =>
      ZacRegistry.ifBuilderLikeMap<ZacObject>(
        data,
        cb: (map, converterName) => _$ZacObjectFromJson(map),
        orElse: () => _$ZacObjectFromJson(<String, dynamic>{
          'builder': ZacObject.unionValue,
          'value': data,
        }),
      );

  @FreezedUnionValue(ZacObject.unionValue)
  factory ZacObject(Object value) = _ZacObject;

  @override
  Object build(BuildContext context, ZacContext zacContext) {
    return value;
  }
}

@freezedZacBuilder
class ZacDateTime with _$ZacDateTime implements ZacBuilder<DateTime> {
  ZacDateTime._();

  static const String unionValue = 'z:1:DateTime';

  factory ZacDateTime.fromJson(Object data) =>
      ZacRegistry.ifBuilderLikeMap<ZacDateTime>(
        data,
        cb: (map, converterName) => _$ZacDateTimeFromJson(map),
        orElse: () => _$ZacDateTimeFromJson(<String, dynamic>{
          'builder': ZacDateTime.unionValue,
          'value': data,
        }),
      );

  @FreezedUnionValue(ZacDateTime.unionValue)
  factory ZacDateTime(DateTime value) = _ZacDateTime;

  @override
  DateTime build(BuildContext context, ZacContext zacContext) {
    return value;
  }
}

@freezedZacBuilder
class ZacListOfWidgets
    with _$ZacListOfWidgets
    implements ZacBuilder<List<Widget>> {
  ZacListOfWidgets._();

  static const String unionValue = 'z:1:List<Widget>';

  factory ZacListOfWidgets.fromJson(Object data) =>
      ZacRegistry.ifBuilderLikeMap<ZacListOfWidgets>(
        data,
        cb: (map, converterName) => _$ZacListOfWidgetsFromJson(map),
        orElse: () => _$ZacListOfWidgetsFromJson(<String, dynamic>{
          'builder': ZacListOfWidgets.unionValue,
          'value': data,
        }),
      );

  @FreezedUnionValue(ZacListOfWidgets.unionValue)
  factory ZacListOfWidgets(List<ZacBuilder<Widget>> value) = _ZacListOfWidgets;

  @override
  List<Widget> build(BuildContext context, ZacContext zacContext) {
    return [...value.map((builder) => builder.build(context, zacContext))];
  }
}

@freezedZacBuilder
class ZacMapOfWidgets
    with _$ZacMapOfWidgets
    implements ZacBuilder<Map<String, Widget>> {
  ZacMapOfWidgets._();

  static const String unionValue = 'z:1:Map<String, Widget>';

  factory ZacMapOfWidgets.fromJson(Object data) =>
      ZacRegistry.ifBuilderLikeMap<ZacMapOfWidgets>(
        data,
        cb: (map, converterName) => _$ZacMapOfWidgetsFromJson(map),
        orElse: () => _$ZacMapOfWidgetsFromJson(<String, dynamic>{
          'builder': ZacMapOfWidgets.unionValue,
          'value': data,
        }),
      );

  @FreezedUnionValue(ZacMapOfWidgets.unionValue)
  factory ZacMapOfWidgets(Map<String, ZacBuilder<Widget>> value) =
      _ZacMapOfWidgets;

  @override
  Map<String, Widget> build(BuildContext context, ZacContext zacContext) {
    return <String, Widget>{
      for (var entry in value.entries)
        entry.key: entry.value.build(context, zacContext),
    };
  }
}

@freezedZacBuilder
class ZacListOfActions
    with _$ZacListOfActions
    implements ZacBuilder<List<ZacAction>> {
  ZacListOfActions._();

  static const String unionValue = 'z:1:List<ZacAction>';

  factory ZacListOfActions.fromJson(Object data) =>
      ZacRegistry.ifBuilderLikeMap<ZacListOfActions>(
        data,
        cb: (map, converterName) => _$ZacListOfActionsFromJson(map),
        orElse: () => _$ZacListOfActionsFromJson(<String, dynamic>{
          'builder': ZacListOfActions.unionValue,
          'value': data,
        }),
      );

  @FreezedUnionValue(ZacListOfActions.unionValue)
  factory ZacListOfActions(List<ZacBuilder<ZacAction>> value) =
      _ZacListOfActions;

  @override
  List<ZacAction> build(BuildContext context, ZacContext zacContext) {
    return [...value.map((e) => e.build(context, zacContext))];
  }
}

@freezedZacBuilder
class ZacListOfTransformers
    with _$ZacListOfTransformers
    implements ZacBuilder<List<ZacTransform>> {
  ZacListOfTransformers._();

  static const String unionValue = 'z:1:List<ZacTransform>';

  factory ZacListOfTransformers.fromJson(Object data) =>
      ZacRegistry.ifBuilderLikeMap<ZacListOfTransformers>(
        data,
        cb: (map, converterName) => _$ZacListOfTransformersFromJson(map),
        orElse: () => _$ZacListOfTransformersFromJson(<String, dynamic>{
          'builder': ZacListOfTransformers.unionValue,
          'value': data,
        }),
      );

  @FreezedUnionValue(ZacListOfTransformers.unionValue)
  factory ZacListOfTransformers(List<ZacBuilder<ZacTransform>> value) =
      _ZacListOfTransformers;

  @override
  List<ZacTransform> build(BuildContext context, ZacContext zacContext) {
    return [...value.map((e) => e.build(context, zacContext))];
  }
}
