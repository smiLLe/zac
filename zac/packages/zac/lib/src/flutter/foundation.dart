import 'package:flutter/material.dart';
import 'package:zac/zac.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'foundation.freezed.dart';
part 'foundation.g.dart';

@ZacGenerate(order: zacGenerateOrderFlutterAbstractsA)
abstract class FlutterKey with ZacBuilder<Key> {
  factory FlutterKey.fromJson(Object data) {
    return ConverterHelper.convertToType<FlutterKey>(data);
  }
}

@ZacGenerate(order: zacGenerateOrderFlutterAbstractsA)
abstract class FlutterLocalKey implements FlutterKey {
  factory FlutterLocalKey.fromJson(Object data) {
    return ConverterHelper.convertToType<FlutterLocalKey>(data);
  }
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderDartFoundation)
class FlutterValueKey with _$FlutterValueKey implements FlutterLocalKey {
  const FlutterValueKey._();

  factory FlutterValueKey.fromJson(Map<String, dynamic> json) =>
      _$FlutterValueKeyFromJson(json);

  @FreezedUnionValue('f:1:ValueKey')
  factory FlutterValueKey(String value) = _FlutterValueKey;

  @FreezedUnionValue('z:1:ValueKey.consume')
  @With<ConsumeSharedValue<ValueKey<String>>>()
  factory FlutterValueKey.consume({
    required SharedValueFamily family,
    ZacTransformers? transformer,
    ZacTransformers? select,
    SharedValueConsumeType? forceConsume,
  }) = _FlutterValueKeyConsumeSharedValue;

  @override
  ValueKey<String> build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return map(
      (obj) => ValueKey<String>(obj.value),
      consume: (obj) => obj.buildConsume(zacContext, onConsume),
    );
  }

  @override
  ValueKey<String>? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return map(
      (obj) => ValueKey<String>(obj.value),
      consume: (obj) => obj.buildConsumeOrNull(zacContext, onConsume),
    );
  }
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderDartFoundation)
class FlutterGlobalKeyNavigatorState
    with _$FlutterGlobalKeyNavigatorState
    implements FlutterKey {
  FlutterGlobalKeyNavigatorState._();

  factory FlutterGlobalKeyNavigatorState.fromJson(Map<String, dynamic> json) =>
      _$FlutterGlobalKeyNavigatorStateFromJson(json);

  @FreezedUnionValue('z:1:GlobalKey<NavigatorState>.consume')
  @With<ConsumeSharedValue<GlobalKey<NavigatorState>>>()
  factory FlutterGlobalKeyNavigatorState.consume({
    required SharedValueFamily family,
    ZacTransformers? transformer,
    ZacTransformers? select,
    SharedValueConsumeType? forceConsume,
  }) = _FlutterGlobalKeyNavigatorState;

  @override
  GlobalKey<NavigatorState> build(ZacContext zacContext,
          {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) =>
      map(
        consume: (obj) => obj.buildConsume(zacContext, onConsume),
      );

  @override
  GlobalKey<NavigatorState>? buildOrNull(ZacContext zacContext,
          {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) =>
      map(
        consume: (obj) => obj.buildConsumeOrNull(zacContext, onConsume),
      );
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderDartFoundation)
class FlutterGlobalKeyScaffoldMessengerState
    with _$FlutterGlobalKeyScaffoldMessengerState
    implements FlutterKey {
  FlutterGlobalKeyScaffoldMessengerState._();

  factory FlutterGlobalKeyScaffoldMessengerState.fromJson(
          Map<String, dynamic> json) =>
      _$FlutterGlobalKeyScaffoldMessengerStateFromJson(json);

  @FreezedUnionValue('z:1:GlobalKey<ScaffoldMessengerState>.consume')
  @With<ConsumeSharedValue<GlobalKey<ScaffoldMessengerState>>>()
  factory FlutterGlobalKeyScaffoldMessengerState.consume({
    required SharedValueFamily family,
    ZacTransformers? transformer,
    ZacTransformers? select,
    SharedValueConsumeType? forceConsume,
  }) = _FlutterGlobalKeyScaffoldMessengerState;

  @override
  GlobalKey<ScaffoldMessengerState> build(ZacContext zacContext,
          {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) =>
      map(
        consume: (obj) => obj.buildConsume(zacContext, onConsume),
      );

  @override
  GlobalKey<ScaffoldMessengerState>? buildOrNull(ZacContext zacContext,
          {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) =>
      map(
        consume: (obj) => obj.buildConsumeOrNull(zacContext, onConsume),
      );
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
    required ZacValue<Widget> child,
    required SharedValueFamily family,
    String? debugLabel,
  }) = _ZacProvideFlutterKeyGlobalNavigatorState;

  @FreezedUnionValue('z:1:ProvideKey:GlobalKey<ScaffoldMessengerState>')
  factory ZacProvideFlutterKey.scaffoldMessengerState({
    required ZacValue<Widget> child,
    required SharedValueFamily family,
    String? debugLabel,
  }) = _ZacProvideFlutterKeyGlobalKeyScaffoldMessengerState;

  Widget childBuilder(ZacContext zacContext) => child.build(zacContext);

  Widget _buildWidget(ZacContext zacContext) {
    return SharedValueProvider(
      valueBuilder: (ref, zacContext) {
        return map<Key>(
          navigatorState: (obj) =>
              GlobalKey<NavigatorState>(debugLabel: obj.debugLabel),
          scaffoldMessengerState: (obj) =>
              GlobalKey<ScaffoldMessengerState>(debugLabel: obj.debugLabel),
        );
      },
      childBuilder: childBuilder,
      family: family,
      autoCreate: true,
    );
  }

  @override
  Widget build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }

  @override
  Widget? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }
}
