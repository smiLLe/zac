import 'package:zac/src/flutter/widgets/scroll_controller.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/flutter/widgets/keyboard.dart';
import 'package:zac/src/flutter/widgets/scroll_physics.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'custom_scroll_view.freezed.dart';
part 'custom_scroll_view.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterCustomScrollView
    with _$FlutterCustomScrollView
    implements FlutterWidget {
  const FlutterCustomScrollView._();

  static const String unionValue = 'f:1:CustomScrollView';

  factory FlutterCustomScrollView.fromJson(Map<String, dynamic> json) =>
      _$FlutterCustomScrollViewFromJson(json);

  @FreezedUnionValue(FlutterCustomScrollView.unionValue)
  factory FlutterCustomScrollView({
    FlutterKey? key,
    FlutterAxis? scrollDirection,
    ZacBool? reverse,
    FlutterScrollController? controller,
    ZacBool? primary,
    FlutterScrollPhysics? physics,
// FlutterScrollBehavior? scrollBehavior,
    ZacBool? shrinkWrap,
    FlutterKey? center,
    ZacDouble? anchor,
    ZacDouble? cacheExtent,
    ZacListOfFlutterWidget? slivers,
    ZacInt? semanticChildCount,
// FluDragStartBehavior dragStartBehavior = DragStartBehavior.start,
    FlutterScrollViewKeyboardDismissBehavior? keyboardDismissBehavior,
    ZacString? restorationId,
    FlutterClip? clipBehavior,
  }) = _FlutterCustomScrollView;

  @override
  CustomScrollView build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    // TODO: implement build
    throw UnimplementedError();
  }

  @override
  CustomScrollView? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    // TODO: implement buildOrNull
    throw UnimplementedError();
  }
}
