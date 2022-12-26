import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:zac/src/zac/zac_value.dart';
part 'clip_rect.freezed.dart';
part 'clip_rect.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterClipRect with _$FlutterClipRect implements ZacBuild<ClipRect> {
  const FlutterClipRect._();

  static const String unionValue = 'f:1:ClipRect';

  factory FlutterClipRect.fromJson(Map<String, dynamic> json) =>
      _$FlutterClipRectFromJson(json);

  @FreezedUnionValue(FlutterClipRect.unionValue)
  factory FlutterClipRect({
    ZacValue<Key?>? key,
    ZacValue<Widget?>? child,
    // CustomClipper<Rect>? clipper,
    ZacValue<Clip?>? clipBehavior,
  }) = _FlutterClipRect;

  ClipRect _buildWidget(ZacContext zacContext) {
    return ClipRect(
      key: key?.build(zacContext),
      clipBehavior: clipBehavior?.build(zacContext) ?? Clip.hardEdge,
      child: child?.build(zacContext),
    );
  }

  @override
  ClipRect build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
