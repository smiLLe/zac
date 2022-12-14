import 'package:zac/src/flutter/widgets/scroll_controller.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/flutter/widgets/keyboard.dart';
import 'package:zac/src/flutter/widgets/scroll_physics.dart';

part 'list_view.freezed.dart';
part 'list_view.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterListView with _$FlutterListView implements FlutterWidget {
  const FlutterListView._();

  static const String unionValue = 'f:1:ListView';

  factory FlutterListView.fromJson(Map<String, dynamic> json) =>
      _$FlutterListViewFromJson(json);

  @FreezedUnionValue(FlutterListView.unionValue)
  factory FlutterListView({
    FlutterKey? key,
    FlutterAxis? scrollDirection,
    ZacValue<bool?>? reverse,
    FlutterScrollController? controller,
    ZacValue<bool?>? primary,
    FlutterScrollPhysics? physics,
    ZacValue<bool?>? shrinkWrap,
    FlutterEdgeInsetsGeometry? padding,
    ZacValue<double?>? itemExtent,
    FlutterWidget? prototypeItem,
    ZacValue<bool?>? addAutomaticKeepAlives,
    ZacValue<bool?>? addRepaintBoundaries,
    ZacValue<bool?>? addSemanticIndexes,
    ZacValue<double?>? cacheExtent,
    ZacValueList<Widget, List<Widget>?>? children,
    ZacValue<int?>? semanticChildCount,
// DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    FlutterScrollViewKeyboardDismissBehavior? keyboardDismissBehavior,
    ZacValue<String?>? restorationId,
    FlutterClip? clipBehavior,
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
  ListView build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }

  @override
  ListView? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }
}
