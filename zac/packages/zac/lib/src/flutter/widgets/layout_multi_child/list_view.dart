import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';

part 'list_view.freezed.dart';
part 'list_view.g.dart';

@freezedZacBuilder
class FlutterListView with _$FlutterListView implements ZacBuilder<ListView> {
  const FlutterListView._();

  static const String unionValue = 'f:1:ListView';

  factory FlutterListView.fromJson(Map<String, dynamic> json) =>
      _$FlutterListViewFromJson(json);

  @FreezedUnionValue(FlutterListView.unionValue)
  factory FlutterListView({
    ZacBuilder<Key?>? key,
    ZacBuilder<Axis?>? scrollDirection,
    ZacBuilder<bool?>? reverse,
    ZacBuilder<ScrollController?>? controller,
    ZacBuilder<bool?>? primary,
    ZacBuilder<ScrollPhysics?>? physics,
    ZacBuilder<bool?>? shrinkWrap,
    ZacBuilder<EdgeInsetsGeometry?>? padding,
    ZacBuilder<double?>? itemExtent,
    ZacBuilder<Widget?>? prototypeItem,
    ZacBuilder<bool?>? addAutomaticKeepAlives,
    ZacBuilder<bool?>? addRepaintBoundaries,
    ZacBuilder<bool?>? addSemanticIndexes,
    ZacBuilder<double?>? cacheExtent,
    ZacBuilder<List<Widget>?>? children,
    ZacBuilder<int?>? semanticChildCount,
// DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    ZacBuilder<ScrollViewKeyboardDismissBehavior?>? keyboardDismissBehavior,
    ZacBuilder<String?>? restorationId,
    ZacBuilder<Clip?>? clipBehavior,
  }) = _FlutterListView;

  ListView _buildWidget(BuildContext context, ZacContext zacContext) {
    return ListView(
      key: key?.build(context, zacContext),
      scrollDirection:
          scrollDirection?.build(context, zacContext) ?? Axis.vertical,
      reverse: reverse?.build(context, zacContext) ?? false,
      controller: controller?.build(context, zacContext),
      primary: primary?.build(context, zacContext),
      shrinkWrap: shrinkWrap?.build(context, zacContext) ?? false,
      padding: padding?.build(context, zacContext),
      itemExtent: itemExtent?.build(context, zacContext),
      prototypeItem: prototypeItem?.build(context, zacContext),
      addAutomaticKeepAlives:
          addAutomaticKeepAlives?.build(context, zacContext) ?? true,
      addRepaintBoundaries:
          addRepaintBoundaries?.build(context, zacContext) ?? true,
      addSemanticIndexes:
          addSemanticIndexes?.build(context, zacContext) ?? true,
      cacheExtent: cacheExtent?.build(context, zacContext),
      semanticChildCount: semanticChildCount?.build(context, zacContext),
      keyboardDismissBehavior:
          keyboardDismissBehavior?.build(context, zacContext) ??
              ScrollViewKeyboardDismissBehavior.manual,
      restorationId: restorationId?.build(context, zacContext),
      clipBehavior: clipBehavior?.build(context, zacContext) ?? Clip.hardEdge,
      physics: physics?.build(context, zacContext),
      children: children?.build(context, zacContext) ?? const <Widget>[],
    );
  }

  @override
  ListView build(BuildContext context, ZacContext zacContext) {
    return _buildWidget(context, zacContext);
  }
}
