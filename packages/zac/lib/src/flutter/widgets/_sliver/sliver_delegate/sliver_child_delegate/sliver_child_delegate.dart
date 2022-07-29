import 'package:zac/src/zac/any_value/any_value.dart';
import 'package:zac/src/zac/context/widget_context.dart';
import 'package:zac/src/base.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sliver_child_delegate.freezed.dart';
part 'sliver_child_delegate.g.dart';

@defaultConverterFreezed
class FlutterSliverChildDelegate with _$FlutterSliverChildDelegate {
  const FlutterSliverChildDelegate._();

  static const String unionValueSliverChildListDelegate =
      'f:1:SliverChildListDelegate';
  static const String unionValueSliverChildListDelegateFixed =
      'f:1:SliverChildListDelegate.fixed';

  factory FlutterSliverChildDelegate.fromJson(Map<String, dynamic> json) =>
      _$FlutterSliverChildDelegateFromJson(json);

  @FreezedUnionValue(
      FlutterSliverChildDelegate.unionValueSliverChildListDelegate)
  factory FlutterSliverChildDelegate.list(
    ListOfZacWidget children, {
    ZacBool? addAutomaticKeepAlives,
    ZacBool? addRepaintBoundaries,
    ZacBool? addSemanticIndexes,
// SemanticIndexCallback semanticIndexCallback = _kDefaultSemanticIndexCallback,
    ZacInt? semanticIndexOffset,
  }) = _FlutterSliverChildListDelegate;

  @FreezedUnionValue(
      FlutterSliverChildDelegate.unionValueSliverChildListDelegateFixed)
  factory FlutterSliverChildDelegate.listFixed(
    ListOfZacWidget children, {
    ZacBool? addAutomaticKeepAlives,
    ZacBool? addRepaintBoundaries,
    ZacBool? addSemanticIndexes,
// SemanticIndexCallback semanticIndexCallback = _kDefaultSemanticIndexCallback,
    ZacInt? semanticIndexOffset,
  }) = _FlutterSliverChildListDelegateFixed;

  SliverChildDelegate build(ZacBuildContext context) {
    return map(
      list: (value) => SliverChildListDelegate(
        children.getValue(context),
        addAutomaticKeepAlives:
            addAutomaticKeepAlives?.getValue(context) ?? true,
        addRepaintBoundaries: addRepaintBoundaries?.getValue(context) ?? true,
        addSemanticIndexes: addSemanticIndexes?.getValue(context) ?? true,
        semanticIndexOffset: semanticIndexOffset?.getValue(context) ?? 0,
        // semanticIndexCallback:
      ),
      listFixed: (value) => SliverChildListDelegate.fixed(
        children.getValue(context),
        addAutomaticKeepAlives:
            addAutomaticKeepAlives?.getValue(context) ?? true,
        addRepaintBoundaries: addRepaintBoundaries?.getValue(context) ?? true,
        addSemanticIndexes: addSemanticIndexes?.getValue(context) ?? true,
        semanticIndexOffset: semanticIndexOffset?.getValue(context) ?? 0,
        // semanticIndexCallback:
      ),
    );
  }
}
