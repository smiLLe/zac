import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_build.dart';
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
    ZacListBuilder<Widget, List<Widget>?>? children,
    ZacBuilder<int?>? semanticChildCount,
// DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    ZacBuilder<ScrollViewKeyboardDismissBehavior?>? keyboardDismissBehavior,
    ZacBuilder<String?>? restorationId,
    ZacBuilder<Clip?>? clipBehavior,
  }) = _FlutterListView;

  ListView _buildWidget(ZacContext zacContext) {
    return ListView(
      key: key?.build(zacContext),
      scrollDirection: scrollDirection?.build(zacContext) ?? Axis.vertical,
      reverse: reverse?.build(zacContext) ?? false,
      controller: controller?.build(zacContext),
      primary: primary?.build(zacContext),
      shrinkWrap: shrinkWrap?.build(zacContext) ?? false,
      padding: padding?.build(zacContext),
      itemExtent: itemExtent?.build(zacContext),
      prototypeItem: prototypeItem?.build(zacContext),
      addAutomaticKeepAlives: addAutomaticKeepAlives?.build(zacContext) ?? true,
      addRepaintBoundaries: addRepaintBoundaries?.build(zacContext) ?? true,
      addSemanticIndexes: addSemanticIndexes?.build(zacContext) ?? true,
      cacheExtent: cacheExtent?.build(zacContext),
      semanticChildCount: semanticChildCount?.build(zacContext),
      keyboardDismissBehavior: keyboardDismissBehavior?.build(zacContext) ??
          ScrollViewKeyboardDismissBehavior.manual,
      restorationId: restorationId?.build(zacContext),
      clipBehavior: clipBehavior?.build(zacContext) ?? Clip.hardEdge,
      physics: physics?.build(zacContext),
      children: children?.build(zacContext) ?? const <Widget>[],
    );
  }

  @override
  ListView build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
