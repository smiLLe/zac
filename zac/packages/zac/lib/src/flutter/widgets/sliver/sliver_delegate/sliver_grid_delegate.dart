import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_build.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';

part 'sliver_grid_delegate.freezed.dart';
part 'sliver_grid_delegate.g.dart';

@freezedZacBuilder
class FlutterSliverGridDelegate
    with _$FlutterSliverGridDelegate
    implements ZacBuilder<SliverGridDelegate> {
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
    ZacBuilder<double?>? mainAxisSpacing,
    ZacBuilder<double?>? crossAxisSpacing,
    ZacBuilder<double?>? childAspectRatio,
    ZacBuilder<double?>? mainAxisExtent,
  }) = _SliverGridDelegateWithFixedCrossAxisCount;

  @FreezedUnionValue(FlutterSliverGridDelegate
      .unionValueSliverGridDelegateWithMaxCrossAxisExtent)
  factory FlutterSliverGridDelegate.withMaxCrossAxisExtent({
    required ZacBuilder<double> maxCrossAxisExtent,
    ZacBuilder<double?>? mainAxisSpacing,
    ZacBuilder<double?>? crossAxisSpacing,
    ZacBuilder<double?>? childAspectRatio,
    ZacBuilder<double?>? mainAxisExtent,
  }) = _SliverGridDelegateWithMaxCrossAxisExtent;

  @override
  SliverGridDelegate build(ZacContext zacContext) {
    return map(
      withFixedCrossAxisCount: (value) =>
          SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: value.crossAxisCount,
        childAspectRatio: value.childAspectRatio?.build(zacContext) ?? 1.0,
        crossAxisSpacing: value.crossAxisSpacing?.build(zacContext) ?? 0.0,
        mainAxisExtent: value.mainAxisExtent?.build(zacContext),
        mainAxisSpacing: value.mainAxisSpacing?.build(zacContext) ?? 0.0,
      ),
      withMaxCrossAxisExtent: (value) =>
          SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: value.maxCrossAxisExtent.build(zacContext),
        mainAxisExtent: value.mainAxisExtent?.build(zacContext),
        childAspectRatio: value.childAspectRatio?.build(zacContext) ?? 1.0,
        crossAxisSpacing: value.crossAxisSpacing?.build(zacContext) ?? 0.0,
        mainAxisSpacing: value.mainAxisSpacing?.build(zacContext) ?? 0.0,
      ),
    );
  }
}
