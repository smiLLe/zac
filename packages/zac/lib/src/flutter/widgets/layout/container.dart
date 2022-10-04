import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/zac/interactions.dart';
import 'package:zac/src/zac/any_value.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'container.freezed.dart';
part 'container.g.dart';

@defaultConverterFreezed
class FlutterContainer with _$FlutterContainer implements FlutterWidget {
  const FlutterContainer._();

  static const String unionValue = 'f:1:Container';

  factory FlutterContainer.fromJson(Map<String, dynamic> json) =>
      _$FlutterContainerFromJson(json);

  @FreezedUnionValue(FlutterContainer.unionValue)
  factory FlutterContainer({
    FlutterKey? key,
    FlutterWidget? child,
    FlutterColor? color,
    FlutterEdgeInsetsGeometry? margin,
    FlutterEdgeInsetsGeometry? padding,
    FlutterAlignmentGeometry? alignment,
    FlutterDecoration? decoration,
  }) = _FlutterContainer;

  @override
  Container buildWidget(
      BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime) {
    return Container(
      key: key?.buildKey(context, ref, lifetime),
      child: child?.buildWidget(context, ref, lifetime),
      color: color?.build(context, ref, lifetime),
      padding: padding?.build(context, ref, lifetime),
      margin: margin?.build(context, ref, lifetime),
      alignment: alignment?.build(context, ref, lifetime),
      decoration: decoration?.build(context, ref, lifetime),
    );
  }
}
