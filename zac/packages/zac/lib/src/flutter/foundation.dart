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
  FlutterValueKey._();

  factory FlutterValueKey.fromJson(Map<String, dynamic> json) =>
      _$FlutterValueKeyFromJson(json);

  @FreezedUnionValue('f:1:ValueKey')
  factory FlutterValueKey(String value) = _FlutterValueKey;

  late final ValueKey<String> _key = ValueKey<String>(value);

  @override
  ValueKey<String> build(ZacContext zacContext) {
    return _key;
  }
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderDartFoundation)
class FlutterGlobalKeyNavigatorStateProvider
    with _$FlutterGlobalKeyNavigatorStateProvider
    implements ZacBuilder<Widget> {
  FlutterGlobalKeyNavigatorStateProvider._();

  factory FlutterGlobalKeyNavigatorStateProvider.fromJson(
          Map<String, dynamic> json) =>
      _$FlutterGlobalKeyNavigatorStateProviderFromJson(json);

  @FreezedUnionValue('z:1:GlobalKey<NavigatorState>.provide')
  factory FlutterGlobalKeyNavigatorStateProvider({
    ZacValue<String?>? debugLabel,
    required SharedValueFamily family,
    required ZacValue<Widget> child,
  }) = _FlutterGlobalKeyNavigatorStateProvider;

  GlobalKey<NavigatorState> _valueBuilder(
      AutoDisposeStateProviderRef<Object?> ref, ZacContext zacContext) {
    return GlobalKey<NavigatorState>(
      debugLabel: debugLabel?.build(zacContext),
    );
  }

  @override
  Widget build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return SharedValueProvider(
      childBuilder: child.build,
      valueBuilder: _valueBuilder,
      family: family,
    );
  }
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderDartFoundation)
class FlutterGlobalKeyScaffoldMessengerStateProvider
    with _$FlutterGlobalKeyScaffoldMessengerStateProvider
    implements ZacBuilder<Widget> {
  FlutterGlobalKeyScaffoldMessengerStateProvider._();

  factory FlutterGlobalKeyScaffoldMessengerStateProvider.fromJson(
          Map<String, dynamic> json) =>
      _$FlutterGlobalKeyScaffoldMessengerStateProviderFromJson(json);

  @FreezedUnionValue('z:1:GlobalKey<ScaffoldMessengerState>.provide')
  factory FlutterGlobalKeyScaffoldMessengerStateProvider({
    ZacValue<String?>? debugLabel,
    required SharedValueFamily family,
    required ZacValue<Widget> child,
  }) = _FlutterGlobalKeyScaffoldMessengerStateProvider;

  GlobalKey<ScaffoldMessengerState> _valueBuilder(
      AutoDisposeStateProviderRef<Object?> ref, ZacContext zacContext) {
    return GlobalKey<ScaffoldMessengerState>(
      debugLabel: debugLabel?.build(zacContext),
    );
  }

  @override
  Widget build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return SharedValueProvider(
      childBuilder: child.build,
      valueBuilder: _valueBuilder,
      family: family,
    );
  }
}
