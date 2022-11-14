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

  Key buildKey(ZacContext zacContext);
}

@ZacGenerate(order: zacGenerateOrderFlutterAbstractsA)
abstract class FlutterLocalKey implements FlutterKey {
  factory FlutterLocalKey.fromJson(Object data) {
    return ConverterHelper.convertToType<FlutterLocalKey>(data);
  }

  @override
  LocalKey buildKey(ZacContext zacContext);
}

@defaultConverterFreezed
@ZacGenerate(order: zacGenerateOrderDartFoundation)
class FlutterValueKey with _$FlutterValueKey implements FlutterLocalKey {
  const FlutterValueKey._();

  static const String unionValue = 'f:1:ValueKey';

  factory FlutterValueKey.fromJson(Map<String, dynamic> json) =>
      _$FlutterValueKeyFromJson(json);

  @FreezedUnionValue(FlutterValueKey.unionValue)
  factory FlutterValueKey(String value) = _FlutterValueKey;

  @override
  ValueKey<String> buildKey(ZacContext zacContext) {
    return ValueKey<String>(value);
  }
}

abstract class FlutterGlobalKey<T extends State<StatefulWidget>>
    implements FlutterKey {
  @override
  GlobalKey<T> buildKey(ZacContext zacContext);
}

@defaultConverterFreezed
@ZacGenerate(order: zacGenerateOrderDartFoundation)
class FlutterGlobalKeyNavigatorState
    with _$FlutterGlobalKeyNavigatorState
    implements FlutterGlobalKey<NavigatorState> {
  FlutterGlobalKeyNavigatorState._();

  static const String unionValue = 'f:1:GlobalKey<NavigatorState>';

  factory FlutterGlobalKeyNavigatorState.fromJson(Map<String, dynamic> json) =>
      _$FlutterGlobalKeyNavigatorStateFromJson(json);

  @FreezedUnionValue(FlutterGlobalKeyNavigatorState.unionValue)
  factory FlutterGlobalKeyNavigatorState({String? debugLabel}) =
      _FlutterGlobalKeyNavigatorState;

  late final GlobalKey<NavigatorState> key =
      GlobalKey<NavigatorState>(debugLabel: debugLabel);

  @override
  GlobalKey<NavigatorState> buildKey(ZacContext zacContext) {
    return key;
  }
}

@defaultConverterFreezed
@ZacGenerate(order: zacGenerateOrderDartFoundation)
class FlutterGlobalKeyScaffoldMessengerState
    with _$FlutterGlobalKeyScaffoldMessengerState
    implements FlutterGlobalKey<ScaffoldMessengerState> {
  FlutterGlobalKeyScaffoldMessengerState._();

  static const String unionValue = 'f:1:GlobalKey<ScaffoldMessengerState>';

  factory FlutterGlobalKeyScaffoldMessengerState.fromJson(
          Map<String, dynamic> json) =>
      _$FlutterGlobalKeyScaffoldMessengerStateFromJson(json);

  @FreezedUnionValue(FlutterGlobalKeyScaffoldMessengerState.unionValue)
  factory FlutterGlobalKeyScaffoldMessengerState({String? debugLabel}) =
      _FlutterGlobalKeyScaffoldMessengerState;

  late final GlobalKey<ScaffoldMessengerState> key =
      GlobalKey<ScaffoldMessengerState>(debugLabel: debugLabel);

  @override
  GlobalKey<ScaffoldMessengerState> buildKey(ZacContext zacContext) {
    return key;
  }
}
