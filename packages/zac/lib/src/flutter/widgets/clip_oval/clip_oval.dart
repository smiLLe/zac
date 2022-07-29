import 'package:zac/src/zac/any_value/any_value.dart';

import 'package:zac/src/zac/context/widget_context.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui/dart_ui.dart';
import 'package:zac/src/flutter/foundation/foundation.dart';

part 'clip_oval.freezed.dart';
part 'clip_oval.g.dart';

@defaultConverterFreezed
class FlutterClipOval with _$FlutterClipOval implements ZacWidget {
  const FlutterClipOval._();

  static const String unionValue = 'f:1:ClipOval';

  factory FlutterClipOval.fromJson(Map<String, dynamic> json) =>
      _$FlutterClipOvalFromJson(json);

  @FreezedUnionValue(FlutterClipOval.unionValue)
  factory FlutterClipOval({
    FlutterKey? key,
    ZacWidget? child,
    // CustomClipper<Rect>? clipper,
    FlutterClip? clipBehavior,
  }) = _FlutterClipOval;

  @override
  ClipOval buildWidget(ZacBuildContext context) {
    return ClipOval(
      key: key?.buildKey(context),
      child: child?.buildWidget(context),
      clipBehavior: clipBehavior?.build(context) ?? Clip.antiAlias,
    );
  }
}
