import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';

part 'scroll_physics.freezed.dart';
part 'scroll_physics.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterScrollPhysics
    with _$FlutterScrollPhysics, ZacBuilder<ScrollPhysics> {
  const FlutterScrollPhysics._();

  static const String unionValueAlwaysScrollableScrollPhysics =
      'f:1:AlwaysScrollableScrollPhysics';
  static const String unionValueBouncingScrollPhysics =
      'f:1:BouncingScrollPhysics';
  static const String unionValueClampingScrollPhysics =
      'f:1:ClampingScrollPhysics';

  factory FlutterScrollPhysics.fromJson(Map<String, dynamic> json) =>
      _$FlutterScrollPhysicsFromJson(json);

  @FreezedUnionValue(
      FlutterScrollPhysics.unionValueAlwaysScrollableScrollPhysics)
  factory FlutterScrollPhysics.alwaysScrollable(
      {FlutterScrollPhysics? parent}) = _FlutterScrollPhysicsalwaysScrollable;

  @FreezedUnionValue(FlutterScrollPhysics.unionValueBouncingScrollPhysics)
  factory FlutterScrollPhysics.bouncingScroll({FlutterScrollPhysics? parent}) =
      _FlutterScrollPhysicsBouncingScroll;

  @FreezedUnionValue(FlutterScrollPhysics.unionValueClampingScrollPhysics)
  factory FlutterScrollPhysics.clampingScrollPhysics(
          {FlutterScrollPhysics? parent}) =
      _FlutterScrollPhysicsClampingScrollPhysics;

  ScrollPhysics _build(ZacContext zacContext) {
    return map(
      alwaysScrollable: (value) => AlwaysScrollableScrollPhysics(
          parent: parent?.buildOrNull(zacContext)),
      bouncingScroll: (value) =>
          BouncingScrollPhysics(parent: parent?.buildOrNull(zacContext)),
      clampingScrollPhysics: (value) =>
          ClampingScrollPhysics(parent: parent?.buildOrNull(zacContext)),
    );
  }

  @override
  ScrollPhysics build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _build(zacContext);
  }

  @override
  ScrollPhysics? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _build(zacContext);
  }
}
