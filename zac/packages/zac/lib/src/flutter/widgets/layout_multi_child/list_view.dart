import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_build.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';

part 'list_view.freezed.dart';
part 'list_view.g.dart';

@freezedZacBuilder
class FlutterListView with _$FlutterListView implements ZacBuild<ListView> {
  const FlutterListView._();

  static const String unionValue = 'f:1:ListView';

  factory FlutterListView.fromJson(Map<String, dynamic> json) =>
      _$FlutterListViewFromJson(json);

  @FreezedUnionValue(FlutterListView.unionValue)
  factory FlutterListView({
    ZacValue<Key?>? key,
    ZacValue<Axis?>? scrollDirection,
    ZacValue<bool?>? reverse,
    ZacValue<ScrollController?>? controller,
    ZacValue<bool?>? primary,
    ZacValue<ScrollPhysics?>? physics,
    ZacValue<bool?>? shrinkWrap,
    ZacValue<EdgeInsetsGeometry?>? padding,
    ZacValue<double?>? itemExtent,
    ZacValue<Widget?>? prototypeItem,
    ZacValue<bool?>? addAutomaticKeepAlives,
    ZacValue<bool?>? addRepaintBoundaries,
    ZacValue<bool?>? addSemanticIndexes,
    ZacValue<double?>? cacheExtent,
    ZacValueList<Widget, List<Widget>?>? children,
    ZacValue<int?>? semanticChildCount,
// DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    ZacValue<ScrollViewKeyboardDismissBehavior?>? keyboardDismissBehavior,
    ZacValue<String?>? restorationId,
    ZacValue<Clip?>? clipBehavior,
  }) = _FlutterListView;

  ListView _buildWidget(ZacContext zacContext) {
    return ListView(
      key: key?.getValue(zacContext),
      scrollDirection: scrollDirection?.getValue(zacContext) ?? Axis.vertical,
      reverse: reverse?.getValue(zacContext) ?? false,
      controller: controller?.getValue(zacContext),
      primary: primary?.getValue(zacContext),
      shrinkWrap: shrinkWrap?.getValue(zacContext) ?? false,
      padding: padding?.getValue(zacContext),
      itemExtent: itemExtent?.getValue(zacContext),
      prototypeItem: prototypeItem?.getValue(zacContext),
      addAutomaticKeepAlives:
          addAutomaticKeepAlives?.getValue(zacContext) ?? true,
      addRepaintBoundaries: addRepaintBoundaries?.getValue(zacContext) ?? true,
      addSemanticIndexes: addSemanticIndexes?.getValue(zacContext) ?? true,
      cacheExtent: cacheExtent?.getValue(zacContext),
      semanticChildCount: semanticChildCount?.getValue(zacContext),
      keyboardDismissBehavior: keyboardDismissBehavior?.getValue(zacContext) ??
          ScrollViewKeyboardDismissBehavior.manual,
      restorationId: restorationId?.getValue(zacContext),
      clipBehavior: clipBehavior?.getValue(zacContext) ?? Clip.hardEdge,
      physics: physics?.getValue(zacContext),
      children: children?.getList(zacContext) ?? const <Widget>[],
    );
  }

  @override
  ListView build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
