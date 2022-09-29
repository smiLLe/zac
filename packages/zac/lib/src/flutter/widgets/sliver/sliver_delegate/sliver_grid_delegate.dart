import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/any_value.dart';
import 'package:zac/src/zac/misc.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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

  SliverGridDelegate build(
      BuildContext context, WidgetRef ref, ZacActionHelper helper) {
    final zacRef = ZacRef.widget(ref);
    return map(
      withFixedCrossAxisCount: (value) =>
          SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: value.crossAxisCount,
        childAspectRatio: value.childAspectRatio?.getValue(zacRef) ?? 1.0,
        crossAxisSpacing: value.crossAxisSpacing?.getValue(zacRef) ?? 0.0,
        mainAxisExtent: value.mainAxisExtent?.getValue(zacRef),
        mainAxisSpacing: value.mainAxisSpacing?.getValue(zacRef) ?? 0.0,
      ),
      withMaxCrossAxisExtent: (value) =>
          SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: value.maxCrossAxisExtent.getValue(zacRef),
        mainAxisExtent: value.mainAxisExtent?.getValue(zacRef),
        childAspectRatio: value.childAspectRatio?.getValue(zacRef) ?? 1.0,
        crossAxisSpacing: value.crossAxisSpacing?.getValue(zacRef) ?? 0.0,
        mainAxisSpacing: value.mainAxisSpacing?.getValue(zacRef) ?? 0.0,
      ),
    );
  }
}
