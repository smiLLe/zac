import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_build.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';

part 'grid_view.freezed.dart';
part 'grid_view.g.dart';

@freezedZacBuilder
class FlutterGridView with _$FlutterGridView implements ZacBuild<GridView> {
  const FlutterGridView._();

  static const String unionValue = 'f:1:GridView';

  factory FlutterGridView.fromJson(Map<String, dynamic> json) =>
      _$FlutterGridViewFromJson(json);

  @FreezedUnionValue(FlutterGridView.unionValue)
  factory FlutterGridView({
    ZacValue<Key?>? key,
    ZacValue<Axis?>? scrollDirection,
    ZacValue<bool?>? reverse,
    ZacValue<ScrollController?>? controller,
    ZacValue<bool?>? primary,
    // ScrollPhysics? physics,
    ZacValue<bool?>? shrinkWrap,
    ZacValue<EdgeInsetsGeometry?>? padding,
    required ZacValue<SliverGridDelegate> gridDelegate,
    ZacValue<bool?>? addAutomaticKeepAlives,
    ZacValue<bool?>? addRepaintBoundaries,
    ZacValue<bool?>? addSemanticIndexes,
    ZacValue<double?>? cacheExtent,
    ZacValueList<Widget, List<Widget>?>? children,
    ZacValue<int?>? semanticChildCount,
    // DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    ZacValue<Clip?>? clipBehavior,
    ZacValue<ScrollViewKeyboardDismissBehavior?>? keyboardDismissBehavior,
    ZacValue<String?>? restorationId,
  }) = _FlutterGridView;

  GridView _buildWidget(ZacContext zacContext) {
    return GridView(
      gridDelegate: gridDelegate.getValue(zacContext),
      key: key?.getValue(zacContext),
      scrollDirection: scrollDirection?.getValue(zacContext) ?? Axis.vertical,
      reverse: reverse?.getValue(zacContext) ?? false,
      controller: controller?.getValue(zacContext),
      primary: primary?.getValue(zacContext),
      shrinkWrap: shrinkWrap?.getValue(zacContext) ?? false,
      padding: padding?.getValue(zacContext),
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
      children: children?.build(zacContext) ?? const <Widget>[],
    );
  }

  @override
  GridView build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
