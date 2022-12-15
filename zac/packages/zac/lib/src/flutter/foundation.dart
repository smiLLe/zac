import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
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

  @override
  ValueKey<String> build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return map(
      (obj) => ValueKey<String>(obj.value),
    );
  }
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderDartFoundation)
class FlutterGlobalKeyNavigatorState
    with _$FlutterGlobalKeyNavigatorState
    implements ZacBuilder<Widget> {
  FlutterGlobalKeyNavigatorState._();

  factory FlutterGlobalKeyNavigatorState.fromJson(Map<String, dynamic> json) =>
      _$FlutterGlobalKeyNavigatorStateFromJson(json);

  @FreezedUnionValue('z:1:GlobalKey<NavigatorState>.provide')
  factory FlutterGlobalKeyNavigatorState({
    ZacValue<String?>? debugLabel,
    required SharedValueFamily family,
    required ZacValue<Widget> child,
  }) = _FlutterGlobalKeyNavigatorStateProvide;

  GlobalKey<NavigatorState> _valueBuilder(
      AutoDisposeStateProviderRef<Object?> ref, ZacContext zacContext) {
    return map((obj) => GlobalKey<NavigatorState>(
          debugLabel: obj.debugLabel?.build(zacContext),
        ));
  }

  Widget _childBuilder(ZacContext zacContext) => map(
        (obj) => obj.child.build(zacContext),
      );

  @override
  Widget build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return map(
      (obj) {
        return SharedValueProvider(
          childBuilder: _childBuilder,
          valueBuilder: _valueBuilder,
          family: obj.family,
        );
      },
    );
  }
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderDartFoundation)
class FlutterGlobalKeyScaffoldMessengerState
    with _$FlutterGlobalKeyScaffoldMessengerState
    implements ZacBuilder<Widget> {
  FlutterGlobalKeyScaffoldMessengerState._();

  factory FlutterGlobalKeyScaffoldMessengerState.fromJson(
          Map<String, dynamic> json) =>
      _$FlutterGlobalKeyScaffoldMessengerStateFromJson(json);

  @FreezedUnionValue('z:1:GlobalKey<ScaffoldMessengerState>.provide')
  factory FlutterGlobalKeyScaffoldMessengerState({
    ZacValue<String?>? debugLabel,
    required SharedValueFamily family,
    required ZacValue<Widget> child,
  }) = _FlutterGlobalKeyScaffoldMessengerStateProvide;

  GlobalKey<ScaffoldMessengerState> _valueBuilder(
      AutoDisposeStateProviderRef<Object?> ref, ZacContext zacContext) {
    return map((obj) => GlobalKey<ScaffoldMessengerState>(
          debugLabel: obj.debugLabel?.build(zacContext),
        ));
  }

  Widget _childBuilder(ZacContext zacContext) => map(
        (obj) => obj.child.build(zacContext),
      );

  @override
  Widget build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return map(
      (obj) {
        return SharedValueProvider(
          childBuilder: _childBuilder,
          valueBuilder: _valueBuilder,
          family: obj.family,
        );
      },
    );
  }
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
}
