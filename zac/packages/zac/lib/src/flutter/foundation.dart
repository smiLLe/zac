import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/zac.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'foundation.freezed.dart';
part 'foundation.g.dart';

@freezedZacBuilder
class FlutterValueKey
    with _$FlutterValueKey
    implements ZacBuilder<ValueKey<String>> {
  FlutterValueKey._();

  factory FlutterValueKey.fromJson(Map<String, dynamic> json) =>
      _$FlutterValueKeyFromJson(json);

  @FreezedUnionValue('f:1:ValueKey')
  factory FlutterValueKey(String value) = _FlutterValueKey;

  late final ValueKey<String> _key = ValueKey<String>(value);

  @override
  ValueKey<String> build(BuildContext context, ZacContext zacContext) {
    return _key;
  }
}

@freezedZacBuilder
class FlutterGlobalKeyNavigatorStateProvider
    with _$FlutterGlobalKeyNavigatorStateProvider
    implements ZacBuilder<Widget> {
  FlutterGlobalKeyNavigatorStateProvider._();

  factory FlutterGlobalKeyNavigatorStateProvider.fromJson(
          Map<String, dynamic> json) =>
      _$FlutterGlobalKeyNavigatorStateProviderFromJson(json);

  @FreezedUnionValue('z:1:GlobalKey<NavigatorState>.provide')
  factory FlutterGlobalKeyNavigatorStateProvider({
    ZacBuilder<String?>? debugLabel,
    required SharedValueFamily family,
    required ZacBuilder<Widget> child,
  }) = _FlutterGlobalKeyNavigatorStateProvider;

  GlobalKey<NavigatorState> _valueBuilder(
      AutoDisposeStateProviderRef<Object?> ref,
      BuildContext context,
      ZacContext zacContext) {
    return GlobalKey<NavigatorState>(
      debugLabel: debugLabel?.build(context, zacContext),
    );
  }

  @override
  Widget build(BuildContext context, ZacContext zacContext) {
    return SharedValueProvider(
      childBuilder: child.build,
      valueBuilder: _valueBuilder,
      family: family,
    );
  }
}

@freezedZacBuilder
class FlutterGlobalKeyScaffoldMessengerStateProvider
    with _$FlutterGlobalKeyScaffoldMessengerStateProvider
    implements ZacBuilder<Widget> {
  FlutterGlobalKeyScaffoldMessengerStateProvider._();

  factory FlutterGlobalKeyScaffoldMessengerStateProvider.fromJson(
          Map<String, dynamic> json) =>
      _$FlutterGlobalKeyScaffoldMessengerStateProviderFromJson(json);

  @FreezedUnionValue('z:1:GlobalKey<ScaffoldMessengerState>.provide')
  factory FlutterGlobalKeyScaffoldMessengerStateProvider({
    ZacBuilder<String?>? debugLabel,
    required SharedValueFamily family,
    required ZacBuilder<Widget> child,
  }) = _FlutterGlobalKeyScaffoldMessengerStateProvider;

  GlobalKey<ScaffoldMessengerState> _valueBuilder(
      AutoDisposeStateProviderRef<Object?> ref,
      BuildContext context,
      ZacContext zacContext) {
    return GlobalKey<ScaffoldMessengerState>(
      debugLabel: debugLabel?.build(context, zacContext),
    );
  }

  @override
  Widget build(BuildContext context, ZacContext zacContext) {
    return SharedValueProvider(
      childBuilder: child.build,
      valueBuilder: _valueBuilder,
      family: family,
    );
  }
}
