import 'package:zac/src/zac/any_value/any_value.dart';
import 'package:zac/src/zac/context/any_widget_context.dart';
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

  @override
  SliverGridDelegate build(ZacBuildContext context) {
    return map(
      withFixedCrossAxisCount: (value) =>
          SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: value.crossAxisCount,
        childAspectRatio: value.childAspectRatio?.getValue(context) ?? 1.0,
        crossAxisSpacing: value.crossAxisSpacing?.getValue(context) ?? 0.0,
        mainAxisExtent: value.mainAxisExtent?.getValue(context),
        mainAxisSpacing: value.mainAxisSpacing?.getValue(context) ?? 0.0,
      ),
      withMaxCrossAxisExtent: (value) =>
          SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: value.maxCrossAxisExtent.getValue(context),
        mainAxisExtent: value.mainAxisExtent?.getValue(context),
        childAspectRatio: value.childAspectRatio?.getValue(context) ?? 1.0,
        crossAxisSpacing: value.crossAxisSpacing?.getValue(context) ?? 0.0,
        mainAxisSpacing: value.mainAxisSpacing?.getValue(context) ?? 0.0,
      ),
    );
  }
}
