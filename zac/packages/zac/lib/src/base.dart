import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/converter.dart';

const freezedZacBuilder = Freezed(
  fromJson: true,
  toJson: false,
  map: FreezedMapOptions(map: true, mapOrNull: false, maybeMap: false),
  when: FreezedWhenOptions(when: false, whenOrNull: false, maybeWhen: false),
  copyWith: false,
  unionKey: converterKey,
);

const freezedZacDefaults = Freezed(
  fromJson: false,
  toJson: false,
  map: FreezedMapOptions(map: true, mapOrNull: false, maybeMap: false),
  when: FreezedWhenOptions(when: false, whenOrNull: false, maybeWhen: false),
  copyWith: false,
);

const zacGenerateOrderLast = 10000;
const zacGenerateOrderFlutterWidget = 9999;
const zacGenerateOrderZacWidget = 9998;
const zacGenerateOrderDartClasses = 9002;
const zacGenerateOrderDartFoundation = 9001;
const zacGenerateOrderDartUi = 9000;
const zacGenerateOrderFlutterAbstractsB = 8501;
const zacGenerateOrderFlutterAbstractsA = 8500;
const zacGenerateOrderFirst = 8000;

/// Annotation class for Builders or other classes in order to create
/// zac libraries or other helper classes
class ZacGenerate {
  const ZacGenerate({int? order}) : order = order ?? zacGenerateOrderLast;

  final int order;
}
