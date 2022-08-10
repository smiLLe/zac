import 'package:zac/src/zac/update_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';

part 'scroll_physics.freezed.dart';
part 'scroll_physics.g.dart';

@defaultConverterFreezed
class FlutterScrollPhysics with _$FlutterScrollPhysics {
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

  ScrollPhysics build(ZacBuildContext context) {
    return map(
      alwaysScrollable: (value) =>
          AlwaysScrollableScrollPhysics(parent: parent?.build(context)),
      bouncingScroll: (value) =>
          BouncingScrollPhysics(parent: parent?.build(context)),
      clampingScrollPhysics: (value) =>
          ClampingScrollPhysics(parent: parent?.build(context)),
    );
  }
}
