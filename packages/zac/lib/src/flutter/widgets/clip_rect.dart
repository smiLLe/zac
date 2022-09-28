import 'package:zac/src/zac/any_value.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zac/src/zac/update_context.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';

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
  ClipRect buildWidget(
      BuildContext context, WidgetRef ref, ZacBuildContext zacContext) {
    return ClipRect(
      key: key?.buildKey(context, ref, zacContext),
      child: child?.buildWidget(context, ref, zacContext),
      clipBehavior:
          clipBehavior?.build(context, ref, zacContext) ?? Clip.hardEdge,
    );
  }
}
