import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/converter.dart';

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
