import 'package:zac/src/zac/context/any_widget_context.dart';
import 'package:zac/src/converter.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/flutter/dart_ui/dart_ui.dart';
import 'package:zac/src/flutter/mixed/border/border.dart';
import 'package:zac/src/flutter/mixed/shadow/shadow.dart';
import 'package:zac/src/flutter/painting/painting.dart';
import 'package:zac/src/base.dart';

part 'decoration.freezed.dart';
part 'decoration.g.dart';

abstract class FlutterDecoration {
  factory FlutterDecoration.fromJson(Object data) {
    return ConverterHelper.convertToType<FlutterDecoration>(data);
  }

  Decoration build(ZacBuildContext context);
}

@defaultConverterFreezed
class FlutterBoxDecoration
    with _$FlutterBoxDecoration
    implements FlutterDecoration {
  const FlutterBoxDecoration._();

  static const String unionValue = 'f:1:BoxDecoration';

  factory FlutterBoxDecoration.fromJson(Map<String, dynamic> json) =>
      _$FlutterBoxDecorationFromJson(json);

  @FreezedUnionValue(FlutterBoxDecoration.unionValue)
  factory FlutterBoxDecoration({
    FlutterColor? color,
    FlutterBoxBorder? border,
    FlutterBorderRadiusGeometry? borderRadius,
    List<FlutterBoxShadow>? boxShadow,
    FlutterBoxShape? shape,
    FlutterBlendMode? backgroundBlendMode,
  }) = _FlutterBoxDecoration;

  @override
  BoxDecoration build(ZacBuildContext context) {
    return BoxDecoration(
        color: color?.build(context),
        border: border?.build(context),
        borderRadius: borderRadius?.build(context),
        boxShadow: boxShadow?.map((e) => e.build(context)).toList(),
        shape: shape?.build(context) ?? BoxShape.rectangle,
        backgroundBlendMode: backgroundBlendMode?.build(context));
  }
}

@defaultConverterFreezed
class FlutterShapeDecoration
    with _$FlutterShapeDecoration
    implements FlutterDecoration {
  const FlutterShapeDecoration._();

  static const String unionValue = 'f:1:ShapeDecoration';

  factory FlutterShapeDecoration.fromJson(Map<String, dynamic> json) =>
      _$FlutterShapeDecorationFromJson(json);

  @FreezedUnionValue(FlutterShapeDecoration.unionValue)
  factory FlutterShapeDecoration({
    FlutterColor? color,
    // FlutterDecorationImage? image,
    // FlutterGradient? gradient,
    List<FlutterBoxShadow>? shadows,
    required FlutterShapeBorder shape,
  }) = _FlutterShapeDecoration;

  @override
  ShapeDecoration build(ZacBuildContext context) {
    return ShapeDecoration(
      color: color?.build(context),
      shadows: shadows?.map((e) => e.build(context)).toList(),
      shape: shape.build(context),
    );
  }
}
