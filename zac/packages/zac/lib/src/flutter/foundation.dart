import 'package:zac/zac.dart';
import 'package:flutter/widgets.dart';
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

@ZacGenerate(order: zacGenerateOrderFlutterAbstractsA)
abstract class FlutterGlobalKey implements FlutterKey {}

@ZacGenerate(order: zacGenerateOrderFlutterAbstractsA)
abstract class FlutterGlobalKeyNavigatorState implements FlutterGlobalKey {
  @override
  GlobalKey<NavigatorState> buildKey(ZacContext zacContext);
}

@defaultConverterFreezed
@ZacGenerate(order: zacGenerateOrderDartFoundation)
class FlutterGlobalKeyNavigatorStateBuilder
    with _$FlutterGlobalKeyNavigatorStateBuilder
    implements FlutterGlobalKeyNavigatorState {
  FlutterGlobalKeyNavigatorStateBuilder._();

  static const String unionValue = 'f:1:GlobalKey<NavigatorState>';

  factory FlutterGlobalKeyNavigatorStateBuilder.fromJson(
          Map<String, dynamic> json) =>
      _$FlutterGlobalKeyNavigatorStateBuilderFromJson(json);

  @FreezedUnionValue(FlutterGlobalKeyNavigatorStateBuilder.unionValue)
  factory FlutterGlobalKeyNavigatorStateBuilder({String? debugLabel}) =
      _FlutterGlobalKeyNavigatorStateBuilder;

  late final GlobalKey<NavigatorState> key = () {
    return GlobalKey<NavigatorState>(debugLabel: debugLabel);
  }();

  @override
  GlobalKey<NavigatorState> buildKey(ZacContext zacContext) {
    return key;
  }
}

/// This class is not meant to be used as a Builder and cannot be converted.
/// Instead an application must create this class in their code and should
/// manually provide it as a [SharedValue] so that it can be consumed
/// by a [ZacValue]<[FlutterGlobalKeyNavigatorState]>
@nonConverterFreezed
class ZacGlobalKeyNavigatorState
    with _$ZacGlobalKeyNavigatorState
    implements FlutterGlobalKeyNavigatorState {
  const ZacGlobalKeyNavigatorState._();

  factory ZacGlobalKeyNavigatorState(GlobalKey<NavigatorState> key) =
      _ZacGlobalKeyNavigatorState;

  @override
  GlobalKey<NavigatorState> buildKey(ZacContext zacContext) {
    return key;
  }
}
