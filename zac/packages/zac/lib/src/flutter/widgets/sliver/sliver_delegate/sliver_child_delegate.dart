import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:zac/src/base.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sliver_child_delegate.freezed.dart';
part 'sliver_child_delegate.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterSliverChildDelegate
    with _$FlutterSliverChildDelegate
    implements ZacBuild<SliverChildDelegate> {
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
    ZacValueList<Widget, List<Widget>> children, {
    ZacValue<bool?>? addAutomaticKeepAlives,
    ZacValue<bool?>? addRepaintBoundaries,
    ZacValue<bool?>? addSemanticIndexes,
// SemanticIndexCallback semanticIndexCallback = _kDefaultSemanticIndexCallback,
    ZacValue<int?>? semanticIndexOffset,
  }) = _FlutterSliverChildListDelegate;

  @FreezedUnionValue(
      FlutterSliverChildDelegate.unionValueSliverChildListDelegateFixed)
  factory FlutterSliverChildDelegate.listFixed(
    ZacValueList<Widget, List<Widget>> children, {
    ZacValue<bool?>? addAutomaticKeepAlives,
    ZacValue<bool?>? addRepaintBoundaries,
    ZacValue<bool?>? addSemanticIndexes,
// SemanticIndexCallback semanticIndexCallback = _kDefaultSemanticIndexCallback,
    ZacValue<int?>? semanticIndexOffset,
  }) = _FlutterSliverChildListDelegateFixed;

  @override
  SliverChildDelegate build(ZacContext zacContext) {
    return map(
      list: (value) => SliverChildListDelegate(
        children.build(zacContext),
        addAutomaticKeepAlives:
            addAutomaticKeepAlives?.build(zacContext) ?? true,
        addRepaintBoundaries: addRepaintBoundaries?.build(zacContext) ?? true,
        addSemanticIndexes: addSemanticIndexes?.build(zacContext) ?? true,
        semanticIndexOffset: semanticIndexOffset?.build(zacContext) ?? 0,
        // semanticIndexCallback:
      ),
      listFixed: (value) => SliverChildListDelegate.fixed(
        children.build(zacContext),
        addAutomaticKeepAlives:
            addAutomaticKeepAlives?.build(zacContext) ?? true,
        addRepaintBoundaries: addRepaintBoundaries?.build(zacContext) ?? true,
        addSemanticIndexes: addSemanticIndexes?.build(zacContext) ?? true,
        semanticIndexOffset: semanticIndexOffset?.build(zacContext) ?? 0,
        // semanticIndexCallback:
      ),
    );
  }
}
