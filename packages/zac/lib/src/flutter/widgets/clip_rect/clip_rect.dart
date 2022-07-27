import 'package:zac/src/zac/any_value/any_value.dart';

import 'package:zac/src/zac/context/widget_context.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui/dart_ui.dart';
import 'package:zac/src/flutter/foundation/foundation.dart';

part 'clip_rect.freezed.dart';
part 'clip_rect.g.dart';

@defaultConverterFreezed
class FlutterClipRect with _$FlutterClipRect implements ZacWidget {
  const FlutterClipRect._();

  static const String unionValue = 'f:1:ClipRect';

  factory FlutterClipRect.fromJson(Map<String, dynamic> json) =>
      _$FlutterClipRectFromJson(json);

  @FreezedUnionValue(FlutterClipRect.unionValue)
  factory FlutterClipRect({
    FlutterKey? key,
    ZacWidget? child,
    // CustomClipper<Rect>? clipper,
    FlutterClip? clipBehavior,
  }) = _FlutterClipRect;

  @override
  ClipRect buildWidget(ZacBuildContext context) {
    return ClipRect(
      key: key?.build(context),
      child: child?.buildWidget(context),
      clipBehavior: clipBehavior?.build(context) ?? Clip.hardEdge,
    );
  }
}
