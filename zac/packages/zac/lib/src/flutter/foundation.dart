import 'package:flutter/material.dart';
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
class FlutterGlobalKeyNavigatorState
    with _$FlutterGlobalKeyNavigatorState
    implements ZacBuilder<GlobalKey<NavigatorState>> {
  FlutterGlobalKeyNavigatorState._();
  factory FlutterGlobalKeyNavigatorState.fromJson(Map<String, dynamic> json) =>
      _$FlutterGlobalKeyNavigatorStateFromJson(json);

  @FreezedUnionValue('f:1:GlobalKey<NavigatorState>')
  factory FlutterGlobalKeyNavigatorState({String? debugLabel}) =
      _FlutterGlobalKeyNavigatorState;

  late final GlobalKey<NavigatorState> _key =
      GlobalKey<NavigatorState>(debugLabel: debugLabel);

  @override
  GlobalKey<NavigatorState> build(
          BuildContext context, ZacContext zacContext) =>
      _key;
}

@freezedZacBuilder
class FlutterGlobalKeyScaffoldMessengerState
    with _$FlutterGlobalKeyScaffoldMessengerState
    implements ZacBuilder<GlobalKey<ScaffoldMessengerState>> {
  FlutterGlobalKeyScaffoldMessengerState._();
  factory FlutterGlobalKeyScaffoldMessengerState.fromJson(
          Map<String, dynamic> json) =>
      _$FlutterGlobalKeyScaffoldMessengerStateFromJson(json);

  @FreezedUnionValue('f:1:GlobalKey<ScaffoldMessengerState>')
  factory FlutterGlobalKeyScaffoldMessengerState({String? debugLabel}) =
      _FlutterGlobalKeyScaffoldMessengerState;

  late final GlobalKey<ScaffoldMessengerState> _key =
      GlobalKey<ScaffoldMessengerState>(debugLabel: debugLabel);

  @override
  GlobalKey<ScaffoldMessengerState> build(
          BuildContext context, ZacContext zacContext) =>
      _key;
}
