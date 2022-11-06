import 'package:zac/zac.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'foundation.freezed.dart';
part 'foundation.g.dart';

@TsClass(order: tsOrderFlutterAbstractsA)
abstract class FlutterKey {
  factory FlutterKey.fromJson(Object data) {
    return ConverterHelper.convertToType<FlutterKey>(data);
  }

  Key buildKey(ZacContext zacContext);
}

@TsClass(order: tsOrderFlutterAbstractsA)
abstract class FlutterLocalKey implements FlutterKey {
  factory FlutterLocalKey.fromJson(Object data) {
    return ConverterHelper.convertToType<FlutterLocalKey>(data);
  }

  @override
  LocalKey buildKey(ZacContext zacContext);
}

@defaultConverterFreezed
@TsClass(order: tsOrderDartFoundation)
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
