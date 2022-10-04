import 'package:zac/src/zac/interactions.dart';
import 'package:zac/zac.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'foundation.freezed.dart';
part 'foundation.g.dart';

abstract class FlutterKey {
  factory FlutterKey.fromJson(Object data) {
    return ConverterHelper.convertToType<FlutterKey>(data);
  }

  Key buildKey(
      BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime);
}

abstract class FlutterLocalKey implements FlutterKey {
  factory FlutterLocalKey.fromJson(Object data) {
    return ConverterHelper.convertToType<FlutterLocalKey>(data);
  }

  @override
  LocalKey buildKey(
      BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime);
}

@defaultConverterFreezed
class FlutterValueKey with _$FlutterValueKey implements FlutterLocalKey {
  const FlutterValueKey._();

  static const String unionValue = 'f:1:ValueKey';

  factory FlutterValueKey.fromJson(Map<String, dynamic> json) =>
      _$FlutterValueKeyFromJson(json);

  @FreezedUnionValue(FlutterValueKey.unionValue)
  factory FlutterValueKey(String value) = _FlutterValueKey;

  @override
  ValueKey<String> buildKey(
      BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime) {
    return ValueKey<String>(value);
  }
}

abstract class FlutterGlobalKeyNavigatorState implements FlutterKey {
  factory FlutterGlobalKeyNavigatorState.fromJson(Object data) {
    return ConverterHelper.convertToType<FlutterGlobalKeyNavigatorState>(data);
  }

  @override
  GlobalKey<NavigatorState> buildKey(
      BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime);
}
