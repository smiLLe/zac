import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';

part 'clip_oval.freezed.dart';
part 'clip_oval.g.dart';

@freezedZacBuilder
class FlutterClipOval with _$FlutterClipOval implements ZacBuilder<ClipOval> {
  const FlutterClipOval._();

  static const String unionValue = 'f:1:ClipOval';

  factory FlutterClipOval.fromJson(Map<String, dynamic> json) =>
      _$FlutterClipOvalFromJson(json);

  @FreezedUnionValue(FlutterClipOval.unionValue)
  factory FlutterClipOval({
    ZacBuilder<Key?>? key,
    ZacBuilder<Widget?>? child,
    // CustomClipper<Rect>? clipper,
    ZacBuilder<Clip?>? clipBehavior,
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
