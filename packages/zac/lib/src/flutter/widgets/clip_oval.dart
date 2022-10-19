import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/zac/origin.dart';

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
  ClipOval buildWidget(ZacContext zacContext) {
    return ClipOval(
      key: key?.buildKey(zacContext),
      child: child?.buildWidget(zacContext),
      clipBehavior: clipBehavior?.build(zacContext) ?? Clip.antiAlias,
    );
  }
}
