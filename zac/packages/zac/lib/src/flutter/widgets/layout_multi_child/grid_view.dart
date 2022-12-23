import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';

part 'grid_view.freezed.dart';
part 'grid_view.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterGridView with _$FlutterGridView implements ZacBuilder<GridView> {
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
