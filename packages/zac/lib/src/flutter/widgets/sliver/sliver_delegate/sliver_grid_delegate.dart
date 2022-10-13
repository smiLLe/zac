import 'package:zac/src/zac/origin.dart';
import 'package:zac/src/zac/zac_values.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';

part 'sliver_grid_delegate.freezed.dart';
part 'sliver_grid_delegate.g.dart';

@defaultConverterFreezed
class FlutterSliverGridDelegate with _$FlutterSliverGridDelegate {
  const FlutterSliverGridDelegate._();

  static const String unionValueSliverGridDelegateWithFixedCrossAxisCount =
      'f:1:SliverGridDelegateWithFixedCrossAxisCount';
  static const String unionValueSliverGridDelegateWithMaxCrossAxisExtent =
      'f:1:SliverGridDelegateWithMaxCrossAxisExtent';

  factory FlutterSliverGridDelegate.fromJson(Map<String, dynamic> json) =>
      _$FlutterSliverGridDelegateFromJson(json);

  @FreezedUnionValue(FlutterSliverGridDelegate
      .unionValueSliverGridDelegateWithFixedCrossAxisCount)
  factory FlutterSliverGridDelegate.withFixedCrossAxisCount({
    required int crossAxisCount,
    ZacDouble? mainAxisSpacing,
    ZacDouble? crossAxisSpacing,
    ZacDouble? childAspectRatio,
    ZacDouble? mainAxisExtent,
  }) = _SliverGridDelegateWithFixedCrossAxisCount;

  @FreezedUnionValue(FlutterSliverGridDelegate
      .unionValueSliverGridDelegateWithMaxCrossAxisExtent)
  factory FlutterSliverGridDelegate.withMaxCrossAxisExtent({
    required ZacDouble maxCrossAxisExtent,
    ZacDouble? mainAxisSpacing,
    ZacDouble? crossAxisSpacing,
    ZacDouble? childAspectRatio,
    ZacDouble? mainAxisExtent,
  }) = _SliverGridDelegateWithMaxCrossAxisExtent;

  SliverGridDelegate build(ZacOriginWidgetTree origin) {
    return map(
      withFixedCrossAxisCount: (value) =>
          SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: value.crossAxisCount,
        childAspectRatio: value.childAspectRatio?.getValue(origin) ?? 1.0,
        crossAxisSpacing: value.crossAxisSpacing?.getValue(origin) ?? 0.0,
        mainAxisExtent: value.mainAxisExtent?.getValue(origin),
        mainAxisSpacing: value.mainAxisSpacing?.getValue(origin) ?? 0.0,
      ),
      withMaxCrossAxisExtent: (value) =>
          SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: value.maxCrossAxisExtent.getValue(origin),
        mainAxisExtent: value.mainAxisExtent?.getValue(origin),
        childAspectRatio: value.childAspectRatio?.getValue(origin) ?? 1.0,
        crossAxisSpacing: value.crossAxisSpacing?.getValue(origin) ?? 0.0,
        mainAxisSpacing: value.mainAxisSpacing?.getValue(origin) ?? 0.0,
      ),
    );
  }
}
