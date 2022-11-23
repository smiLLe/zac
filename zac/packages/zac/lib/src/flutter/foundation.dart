import 'package:flutter/material.dart';
import 'package:zac/zac.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'foundation.freezed.dart';
part 'foundation.g.dart';

@ZacGenerate(order: zacGenerateOrderFlutterAbstractsA)
abstract class FlutterKey {
  factory FlutterKey.fromJson(Object data) {
    return ConverterHelper.convertToType<FlutterKey>(data);
  }

  @deprecated
  Key buildKey(ZacContext zacContext);

  Key getKey(ZacContext zacContext,
      {SharedValueConsumeType prefered = const SharedValueConsumeType.watch()});

  Key? getKeyOrNull(ZacContext zacContext,
      {SharedValueConsumeType prefered = const SharedValueConsumeType.watch()});
}

@ZacGenerate(order: zacGenerateOrderFlutterAbstractsA)
abstract class FlutterLocalKey implements FlutterKey {
  factory FlutterLocalKey.fromJson(Object data) {
    return ConverterHelper.convertToType<FlutterLocalKey>(data);
  }

  @override
  @deprecated
  LocalKey buildKey(ZacContext zacContext);

  @override
  LocalKey getKey(ZacContext zacContext,
      {SharedValueConsumeType prefered = const SharedValueConsumeType.watch()});

  @override
  LocalKey? getKeyOrNull(ZacContext zacContext,
      {SharedValueConsumeType prefered = const SharedValueConsumeType.watch()});
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderDartFoundation)
class FlutterValueKey
    with _$FlutterValueKey, ZacGetValue<ValueKey<String>>
    implements FlutterLocalKey {
  const FlutterValueKey._();

  factory FlutterValueKey.fromJson(Map<String, dynamic> json) =>
      _$FlutterValueKeyFromJson(json);

  @FreezedUnionValue('f:1:ValueKey')
  factory FlutterValueKey(String value) = _FlutterValueKey;

  @FreezedUnionValue('z:1:ValueKey.consume')
  @Implements<ZacValueConsume<ValueKey<String>>>()
  @With<ZacValueConsumeImpl<ValueKey<String>>>()
  factory FlutterValueKey.consume({
    required SharedValueFamily family,
    ZacTransformers? transformer,
    ZacTransformers? select,
    SharedValueConsumeType? forceConsume,
  }) = _FlutterValueKeyConsumeSharedValue;

  @override
  ValueKey<String> buildKey(ZacContext zacContext) {
    return map(
      (obj) => ValueKey<String>(obj.value),
      consume: (obj) => throw StateError('must never happen'),
    );
  }

  @override
  ValueKey<String> getKey(ZacContext zacContext,
      {SharedValueConsumeType prefered =
          const SharedValueConsumeType.watch()}) {
    return map(
      (obj) => ValueKey<String>(obj.value),
      consume: (obj) => obj.getValue(zacContext, prefered: prefered),
    );
  }

  @override
  ValueKey<String>? getKeyOrNull(ZacContext zacContext,
      {SharedValueConsumeType prefered =
          const SharedValueConsumeType.watch()}) {
    return map(
      (obj) => ValueKey<String>(obj.value),
      consume: (obj) => obj.getValueOrNull(zacContext, prefered: prefered),
    );
  }
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderDartFoundation)
class FlutterGlobalKeyNavigatorState
    with
        _$FlutterGlobalKeyNavigatorState,
        ZacGetValue<GlobalKey<NavigatorState>>
    implements FlutterKey {
  FlutterGlobalKeyNavigatorState._();

  factory FlutterGlobalKeyNavigatorState.fromJson(Map<String, dynamic> json) =>
      _$FlutterGlobalKeyNavigatorStateFromJson(json);

  @FreezedUnionValue('z:1:GlobalKey<NavigatorState>.consume')
  @Implements<ZacValueConsume<GlobalKey<NavigatorState>>>()
  @With<ZacValueConsumeImpl<GlobalKey<NavigatorState>>>()
  factory FlutterGlobalKeyNavigatorState.consume({
    required SharedValueFamily family,
    ZacTransformers? transformer,
    ZacTransformers? select,
    SharedValueConsumeType? forceConsume,
  }) = _FlutterGlobalKeyNavigatorState;

  @override
  GlobalKey<NavigatorState> buildKey(ZacContext zacContext) {
    throw StateError('DEPRECATED');
  }

  @override
  GlobalKey<NavigatorState> getKey(ZacContext zacContext,
          {SharedValueConsumeType prefered =
              const SharedValueConsumeType.watch()}) =>
      getValue(zacContext, prefered: prefered);

  @override
  GlobalKey<NavigatorState>? getKeyOrNull(ZacContext zacContext,
          {SharedValueConsumeType prefered =
              const SharedValueConsumeType.watch()}) =>
      getValueOrNull(zacContext, prefered: prefered);
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderDartFoundation)
class FlutterGlobalKeyScaffoldMessengerState
    with
        _$FlutterGlobalKeyScaffoldMessengerState,
        ZacGetValue<GlobalKey<ScaffoldMessengerState>>
    implements FlutterKey {
  FlutterGlobalKeyScaffoldMessengerState._();

  factory FlutterGlobalKeyScaffoldMessengerState.fromJson(
          Map<String, dynamic> json) =>
      _$FlutterGlobalKeyScaffoldMessengerStateFromJson(json);

  @FreezedUnionValue('z:1:GlobalKey<ScaffoldMessengerState>.consume')
  @Implements<ZacValueConsume<GlobalKey<ScaffoldMessengerState>>>()
  @With<ZacValueConsumeImpl<GlobalKey<ScaffoldMessengerState>>>()
  factory FlutterGlobalKeyScaffoldMessengerState.consume({
    required SharedValueFamily family,
    ZacTransformers? transformer,
    ZacTransformers? select,
    SharedValueConsumeType? forceConsume,
  }) = _FlutterGlobalKeyScaffoldMessengerState;

  @override
  GlobalKey<NavigatorState> buildKey(ZacContext zacContext) {
    throw StateError('DEPRECATED');
  }

  @override
  GlobalKey<ScaffoldMessengerState> getKey(ZacContext zacContext,
          {SharedValueConsumeType prefered =
              const SharedValueConsumeType.watch()}) =>
      getValue(zacContext, prefered: prefered);

  @override
  GlobalKey<ScaffoldMessengerState>? getKeyOrNull(ZacContext zacContext,
          {SharedValueConsumeType prefered =
              const SharedValueConsumeType.watch()}) =>
      getValueOrNull(zacContext, prefered: prefered);
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderDartFoundation)
class ZacProvideFlutterKey
    with _$ZacProvideFlutterKey
    implements FlutterWidget {
  ZacProvideFlutterKey._();

  factory ZacProvideFlutterKey.fromJson(Map<String, dynamic> json) =>
      _$ZacProvideFlutterKeyFromJson(json);

  @FreezedUnionValue('z:1:ProvideKey:GlobalKey<NavigatorState>')
  factory ZacProvideFlutterKey.navigatorState({
    required ZacFlutterWidget child,
    required SharedValueFamily family,
    String? debugLabel,
  }) = _ZacProvideFlutterKeyGlobalNavigatorState;

  @FreezedUnionValue('z:1:ProvideKey:GlobalKey<ScaffoldMessengerState>')
  factory ZacProvideFlutterKey.scaffoldMessengerState({
    required ZacFlutterWidget child,
    required SharedValueFamily family,
    String? debugLabel,
  }) = _ZacProvideFlutterKeyGlobalKeyScaffoldMessengerState;

  @override
  Widget buildWidget(ZacContext zacContext) {
    return SharedValueProvider(
      valueBuilder: (ref, zacContext) {
        return map<Key>(
          navigatorState: (obj) =>
              GlobalKey<NavigatorState>(debugLabel: obj.debugLabel),
          scaffoldMessengerState: (obj) =>
              GlobalKey<ScaffoldMessengerState>(debugLabel: obj.debugLabel),
        );
      },
      childBuilder: child.getValue(zacContext).buildWidget,
      family: family,
      autoCreate: true,
    );
  }
}
