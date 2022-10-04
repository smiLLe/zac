import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zac/src/converter.dart';
import 'package:zac/src/zac/interactions.dart';

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

abstract class FlutterWidget {
  factory FlutterWidget.fromJson(Object data) =>
      ConverterHelper.convertToType<FlutterWidget>(data);

  Widget buildWidget(
      BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime);
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
