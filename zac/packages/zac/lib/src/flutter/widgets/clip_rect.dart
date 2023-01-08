import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
part 'clip_rect.freezed.dart';
part 'clip_rect.g.dart';

@freezedZacBuilder
class FlutterClipRect with _$FlutterClipRect implements ZacBuilder<ClipRect> {
  const FlutterClipRect._();

  static const String unionValue = 'f:1:ClipRect';

  factory FlutterClipRect.fromJson(Map<String, dynamic> json) =>
      _$FlutterClipRectFromJson(json);

  @FreezedUnionValue(FlutterClipRect.unionValue)
  factory FlutterClipRect({
    ZacBuilder<Key?>? key,
    ZacBuilder<Widget?>? child,
    // CustomClipper<Rect>? clipper,
    ZacBuilder<Clip?>? clipBehavior,
  }) = _FlutterClipRect;

  ClipRect _buildWidget(BuildContext context, ZacContext zacContext) {
    return ClipRect(
      key: key?.build(context, zacContext),
      clipBehavior: clipBehavior?.build(context, zacContext) ?? Clip.hardEdge,
      child: child?.build(context, zacContext),
    );
  }

  @override
  ClipRect build(BuildContext context, ZacContext zacContext) {
    return _buildWidget(context, zacContext);
  }
}
