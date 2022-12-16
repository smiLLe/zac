import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:zac/src/zac/zac_value.dart';

part 'clip_oval.freezed.dart';
part 'clip_oval.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterClipOval with _$FlutterClipOval implements ZacBuilder<ClipOval> {
  const FlutterClipOval._();

  static const String unionValue = 'f:1:ClipOval';

  factory FlutterClipOval.fromJson(Map<String, dynamic> json) =>
      _$FlutterClipOvalFromJson(json);

  @FreezedUnionValue(FlutterClipOval.unionValue)
  factory FlutterClipOval({
    FlutterKey? key,
    ZacValue<Widget?>? child,
    // CustomClipper<Rect>? clipper,
    FlutterClip? clipBehavior,
  }) = _FlutterClipOval;

  ClipOval _buildWidget(ZacContext zacContext) {
    return ClipOval(
      key: key?.build(zacContext),
      clipBehavior: clipBehavior?.build(zacContext) ?? Clip.antiAlias,
      child: child?.build(zacContext),
    );
  }

  @override
  ClipOval build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
