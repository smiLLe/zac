import 'package:zac/src/zac/interactions.dart';
import 'package:zac/src/zac/any_value.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'clip_oval.freezed.dart';
part 'clip_oval.g.dart';

@defaultConverterFreezed
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

  @override
  ClipOval buildWidget(
      BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime) {
    return ClipOval(
      key: key?.buildKey(context, ref, lifetime),
      child: child?.buildWidget(context, ref, lifetime),
      clipBehavior:
          clipBehavior?.build(context, ref, lifetime) ?? Clip.antiAlias,
    );
  }
}
