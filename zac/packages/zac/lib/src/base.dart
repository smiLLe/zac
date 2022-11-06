import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/converter.dart';
import 'package:zac/src/zac/context.dart';

const tsOrderLast = 10000;
const tsOrderFlutterWidget = 9999;
const tsOrderZacWidget = 9998;
const tsOrderDartClasses = 9002;
const tsOrderDartFoundation = 9001;
const tsOrderDartUi = 9000;
const tsOrderFlutterAbstractsB = 8501;
const tsOrderFlutterAbstractsA = 8500;

class TsClass {
  const TsClass({int? order}) : order = order ?? tsOrderLast;

  final int order;
}

// ignore: constant_identifier_names
const defaultConverterFreezed = Freezed(
  fromJson: true,
  toJson: false,
  map: FreezedMapOptions(map: true, mapOrNull: false, maybeMap: false),
  when: FreezedWhenOptions(when: false, whenOrNull: false, maybeWhen: false),
  copyWith: false,
  unionKey: converterKey,
);

const nonConverterFreezed = Freezed(
  fromJson: false,
  toJson: false,
  map: FreezedMapOptions(map: true, mapOrNull: false, maybeMap: false),
  when: FreezedWhenOptions(when: false, whenOrNull: false, maybeWhen: false),
  copyWith: false,
);

@TsClass(order: tsOrderFlutterAbstractsA)
abstract class FlutterWidget {
  factory FlutterWidget.fromJson(Object data) =>
      ConverterHelper.convertToType<FlutterWidget>(data);

  Widget buildWidget(ZacContext zacContext);
}

const consumeUnion = 'z:1:SharedValue.consume';

/// take the generic SharedValue.consume and map it to another converter name.
Object mapConsumeUnion(String other, Object map) {
  if (ConverterHelper.isConverter(map)) {
    final m = map as Map<String, dynamic>;
    if (m[converterKey] == consumeUnion) {
      m[converterKey] = other;
    }
    return m;
  }
  return map;
}
