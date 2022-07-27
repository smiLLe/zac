import 'package:zac/src/zac/any_value/any_value.dart';

import 'package:zac/src/zac/context/any_widget_context.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui/dart_ui.dart';
import 'package:zac/src/flutter/mixed/alignment/alignment.dart';
import 'package:zac/src/flutter/mixed/decoration/decoration.dart';
import 'package:zac/src/flutter/mixed/insets/edge_insets.dart';
import 'package:zac/src/flutter/mixed/keys/keys.dart';

part 'container.freezed.dart';
part 'container.g.dart';

@defaultConverterFreezed
class FlutterContainer with _$FlutterContainer implements ZacWidget {
  const FlutterContainer._();

  static const String unionValue = 'f:1:Container';

  factory FlutterContainer.fromJson(Map<String, dynamic> json) =>
      _$FlutterContainerFromJson(json);

  @FreezedUnionValue(FlutterContainer.unionValue)
  factory FlutterContainer({
    FlutterKey? key,
    ZacWidget? child,
    FlutterColor? color,
    FlutterEdgeInsetsGeometry? margin,
    FlutterEdgeInsetsGeometry? padding,
    FlutterAlignmentGeometry? alignment,
    FlutterDecoration? decoration,
  }) = _FlutterContainer;

  @override
  Container buildWidget(ZacBuildContext context) {
    return Container(
      key: key?.build(context),
      child: child?.buildWidget(context),
      color: color?.build(context),
      padding: padding?.build(context),
      margin: margin?.build(context),
      alignment: alignment?.build(context),
      decoration: decoration?.build(context),
    );
  }
}
