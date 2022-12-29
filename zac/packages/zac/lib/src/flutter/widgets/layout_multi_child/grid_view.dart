import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_build.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';

part 'grid_view.freezed.dart';
part 'grid_view.g.dart';

@freezedZacBuilder
class FlutterGridView with _$FlutterGridView implements ZacBuilder<GridView> {
  const FlutterGridView._();

  static const String unionValue = 'f:1:GridView';

  factory FlutterGridView.fromJson(Map<String, dynamic> json) =>
      _$FlutterGridViewFromJson(json);

  @FreezedUnionValue(FlutterGridView.unionValue)
  factory FlutterGridView({
    ZacBuilder<Key?>? key,
    ZacBuilder<Axis?>? scrollDirection,
    ZacBuilder<bool?>? reverse,
    ZacBuilder<ScrollController?>? controller,
    ZacBuilder<bool?>? primary,
    // ScrollPhysics? physics,
    ZacBuilder<bool?>? shrinkWrap,
    ZacBuilder<EdgeInsetsGeometry?>? padding,
    required ZacBuilder<SliverGridDelegate> gridDelegate,
    ZacBuilder<bool?>? addAutomaticKeepAlives,
    ZacBuilder<bool?>? addRepaintBoundaries,
    ZacBuilder<bool?>? addSemanticIndexes,
    ZacBuilder<double?>? cacheExtent,
    ZacListBuilder<Widget, List<Widget>?>? children,
    ZacBuilder<int?>? semanticChildCount,
    // DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    ZacBuilder<Clip?>? clipBehavior,
    ZacBuilder<ScrollViewKeyboardDismissBehavior?>? keyboardDismissBehavior,
    ZacBuilder<String?>? restorationId,
  }) = _FlutterGridView;

  GridView _buildWidget(ZacContext zacContext) {
    return GridView(
      gridDelegate: gridDelegate.build(zacContext),
      key: key?.build(zacContext),
      scrollDirection: scrollDirection?.build(zacContext) ?? Axis.vertical,
      reverse: reverse?.build(zacContext) ?? false,
      controller: controller?.build(zacContext),
      primary: primary?.build(zacContext),
      shrinkWrap: shrinkWrap?.build(zacContext) ?? false,
      padding: padding?.build(zacContext),
      addAutomaticKeepAlives: addAutomaticKeepAlives?.build(zacContext) ?? true,
      addRepaintBoundaries: addRepaintBoundaries?.build(zacContext) ?? true,
      addSemanticIndexes: addSemanticIndexes?.build(zacContext) ?? true,
      cacheExtent: cacheExtent?.build(zacContext),
      semanticChildCount: semanticChildCount?.build(zacContext),
      keyboardDismissBehavior: keyboardDismissBehavior?.build(zacContext) ??
          ScrollViewKeyboardDismissBehavior.manual,
      restorationId: restorationId?.build(zacContext),
      clipBehavior: clipBehavior?.build(zacContext) ?? Clip.hardEdge,
      children: children?.build(zacContext) ?? const <Widget>[],
    );
  }

  @override
  GridView build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
