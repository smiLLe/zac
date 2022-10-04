import 'package:zac/src/zac/interactions.dart';
import 'package:zac/src/zac/zac_values.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'clip_rect.freezed.dart';
part 'clip_rect.g.dart';

@defaultConverterFreezed
class FlutterClipRect with _$FlutterClipRect implements FlutterWidget {
  const FlutterClipRect._();

  static const String unionValue = 'f:1:ClipRect';

  factory FlutterClipRect.fromJson(Map<String, dynamic> json) =>
      _$FlutterClipRectFromJson(json);

  @FreezedUnionValue(FlutterClipRect.unionValue)
  factory FlutterClipRect({
    FlutterKey? key,
    FlutterWidget? child,
    // CustomClipper<Rect>? clipper,
    FlutterClip? clipBehavior,
  }) = _FlutterClipRect;

  @override
  ClipRect buildWidget(
      BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime) {
    return ClipRect(
      key: key?.buildKey(context, ref, lifetime),
      child: child?.buildWidget(context, ref, lifetime),
      clipBehavior:
          clipBehavior?.build(context, ref, lifetime) ?? Clip.hardEdge,
    );
  }
}
