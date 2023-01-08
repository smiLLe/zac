import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
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

  GridView _buildWidget(BuildContext context, ZacContext zacContext) {
    return GridView(
      gridDelegate: gridDelegate.build(context, zacContext),
      key: key?.build(context, zacContext),
      scrollDirection:
          scrollDirection?.build(context, zacContext) ?? Axis.vertical,
      reverse: reverse?.build(context, zacContext) ?? false,
      controller: controller?.build(context, zacContext),
      primary: primary?.build(context, zacContext),
      shrinkWrap: shrinkWrap?.build(context, zacContext) ?? false,
      padding: padding?.build(context, zacContext),
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
      children: children?.build(context, zacContext) ?? const <Widget>[],
    );
  }

  @override
  GridView build(BuildContext context, ZacContext zacContext) {
    return _buildWidget(context, zacContext);
  }
}
