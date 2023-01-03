import 'package:freezed_annotation/freezed_annotation.dart';

const builderKey = 'builder';
const freezedZacBuilder = Freezed(
  fromJson: true,
  toJson: false,
  map: FreezedMapOptions(map: true, mapOrNull: false, maybeMap: false),
  when: FreezedWhenOptions(when: false, whenOrNull: false, maybeWhen: false),
  copyWith: false,
  unionKey: builderKey,
);

const freezedZacDefaults = Freezed(
  fromJson: false,
  toJson: false,
  map: FreezedMapOptions(map: true, mapOrNull: false, maybeMap: false),
  when: FreezedWhenOptions(when: false, whenOrNull: false, maybeWhen: false),
  copyWith: false,
);
