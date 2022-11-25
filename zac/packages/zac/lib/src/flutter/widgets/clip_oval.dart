import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';

part 'clip_oval.freezed.dart';
part 'clip_oval.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterClipOval with _$FlutterClipOval implements FlutterWidget {
  const FlutterClipOval._();

  static const String unionValue = 'f:1:ClipOval';

  factory FlutterClipOval.fromJson(Map<String, dynamic> json) =>
      _$FlutterClipOvalFromJson(json);

  @FreezedUnionValue(FlutterClipOval.unionValue)
  factory FlutterClipOval({
    FlutterKey? key,
    FlutterWidget? child,
    // CustomClipper<Rect>? clipper,
    FlutterClip? clipBehavior,
  }) = _FlutterClipOval;

  ClipOval _buildWidget(ZacContext zacContext) {
    return ClipOval(
      key: key?.buildOrNull(zacContext),
      clipBehavior: clipBehavior?.buildOrNull(zacContext) ?? Clip.antiAlias,
      child: child?.buildOrNull(zacContext),
    );
  }

  @override
  ClipOval build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }

  @override
  ClipOval? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }
}
