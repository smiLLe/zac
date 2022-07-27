import 'package:zac/src/zac/any_value/any_value.dart';
import 'package:zac/src/zac/context/any_widget_context.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/converter.dart';
import 'package:zac/src/flutter/dart_ui/dart_ui.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'border.freezed.dart';
part 'border.g.dart';

abstract class FlutterShapeBorder {
  factory FlutterShapeBorder.fromJson(Object data) {
    return ConverterHelper.convertToType<FlutterShapeBorder>(data);
  }

  ShapeBorder build(ZacBuildContext context);
}

abstract class FlutterBoxBorder implements FlutterShapeBorder {
  factory FlutterBoxBorder.fromJson(Object data) {
    return ConverterHelper.convertToType<FlutterBoxBorder>(data);
  }

  @override
  BoxBorder build(ZacBuildContext context);
}

@defaultConverterFreezed
class FlutterBorderDirectional
    with _$FlutterBorderDirectional
    implements FlutterBoxBorder {
  const FlutterBorderDirectional._();

  static const String unionValue = 'f:1:BorderDirectional';

  factory FlutterBorderDirectional.fromJson(Map<String, dynamic> json) =>
      _$FlutterBorderDirectionalFromJson(json);

  @FreezedUnionValue(FlutterBorderDirectional.unionValue)
  factory FlutterBorderDirectional({
    FlutterBorderSide? top,
    FlutterBorderSide? start,
    FlutterBorderSide? bottom,
    FlutterBorderSide? end,
  }) = _FlutterBorderDirectional;

  @override
  BorderDirectional build(ZacBuildContext context) {
    return BorderDirectional(
      top: top?.build(context) ?? BorderSide.none,
      start: start?.build(context) ?? BorderSide.none,
      bottom: bottom?.build(context) ?? BorderSide.none,
      end: end?.build(context) ?? BorderSide.none,
    );
  }
}

@defaultConverterFreezed
class FlutterBorder with _$FlutterBorder implements FlutterBoxBorder {
  const FlutterBorder._();

  static const String unionValue = 'f:1:Border';
  static const String unionValueAll = 'f:1:Border.all';

  factory FlutterBorder.fromJson(Map<String, dynamic> json) =>
      _$FlutterBorderFromJson(json);

  @FreezedUnionValue(FlutterBorder.unionValue)
  factory FlutterBorder({
    FlutterBorderSide? top,
    FlutterBorderSide? right,
    FlutterBorderSide? bottom,
    FlutterBorderSide? left,
  }) = _FlutterBorder;

  @FreezedUnionValue(FlutterBorder.unionValueAll)
  factory FlutterBorder.all({
    FlutterColor? color,
    ZacDouble? width,
    FlutterBorderStyle? style,
  }) = _FlutterBorderAll;

  @override
  Border build(ZacBuildContext context) {
    return map(
      (value) => Border(
        top: value.top?.build(context) ?? BorderSide.none,
        right: value.right?.build(context) ?? BorderSide.none,
        bottom: value.bottom?.build(context) ?? BorderSide.none,
        left: value.left?.build(context) ?? BorderSide.none,
      ),
      all: (value) => Border.all(
        color: value.color?.build(context) ?? const Color(0xFF000000),
        width: value.width?.getValue(context) ?? 1.0,
        style: value.style?.build(context) ?? BorderStyle.solid,
      ),
    );
  }
}

@defaultConverterFreezed
class FlutterBorderStyle with _$FlutterBorderStyle {
  const FlutterBorderStyle._();

  factory FlutterBorderStyle.fromJson(Map<String, dynamic> json) =>
      _$FlutterBorderStyleFromJson(json);

  @FreezedUnionValue('f:1:BorderStyle.none')
  factory FlutterBorderStyle.none() = _FlutterBorderStyleNone;

  @FreezedUnionValue('f:1:BorderStyle.solid')
  factory FlutterBorderStyle.solid() = _FlutterBorderStyleSolid;

  BorderStyle build(ZacBuildContext config) {
    return map(
      none: (_) => BorderStyle.none,
      solid: (_) => BorderStyle.solid,
    );
  }
}

abstract class FlutterBorderRadiusGeometry {
  factory FlutterBorderRadiusGeometry.fromJson(Object data) {
    return ConverterHelper.convertToType<FlutterBorderRadiusGeometry>(data);
  }

  BorderRadiusGeometry build(ZacBuildContext context);
}

@defaultConverterFreezed
class FlutterBorderRadius
    with _$FlutterBorderRadius
    implements FlutterBorderRadiusGeometry {
  const FlutterBorderRadius._();

  static const String unionValueAll = 'f:1:BorderRadius.all';
  static const String unionValueCircular = 'f:1:BorderRadius.circular';
  static const String unionValueHorizontal = 'f:1:BorderRadius.horizontal';

  factory FlutterBorderRadius.fromJson(Map<String, dynamic> json) =>
      _$FlutterBorderRadiusFromJson(json);

  @FreezedUnionValue(FlutterBorderRadius.unionValueAll)
  factory FlutterBorderRadius.all(FlutterRadius radius) =
      _FlutterBorderRadiusAll;

  @FreezedUnionValue(FlutterBorderRadius.unionValueCircular)
  factory FlutterBorderRadius.circular(ZacDouble radius) =
      _FlutterBorderRadiusCircular;

  @FreezedUnionValue(FlutterBorderRadius.unionValueHorizontal)
  factory FlutterBorderRadius.horizontal({
    FlutterRadius? left,
    FlutterRadius? right,
  }) = _FlutterBorderRadiusHorizontal;

  @override
  BorderRadius build(ZacBuildContext context) {
    return map(
      all: (value) => BorderRadius.all(value.radius.build(context)),
      circular: (value) =>
          BorderRadius.circular(value.radius.getValue(context)),
      horizontal: (value) => BorderRadius.horizontal(
        left: value.left?.build(context) ?? Radius.zero,
        right: value.right?.build(context) ?? Radius.zero,
      ),
    );
  }
}

@defaultConverterFreezed
class FlutterBorderSide with _$FlutterBorderSide {
  const FlutterBorderSide._();

  factory FlutterBorderSide.fromJson(Map<String, dynamic> json) =>
      _$FlutterBorderSideFromJson(json);

  @FreezedUnionValue('f:1:BorderSide')
  factory FlutterBorderSide({
    FlutterColor? color,
    ZacDouble? width,
    FlutterBorderStyle? style,
  }) = _FlutterBorderSide;

  BorderSide build(ZacBuildContext context) {
    return BorderSide(
      color: color?.build(context) ?? const Color(0xFF000000),
      width: width?.getValue(context) ?? 1.0,
      style: style?.build(context) ?? BorderStyle.solid,
    );
  }
}

abstract class FlutterInputBorder implements FlutterShapeBorder {
  factory FlutterInputBorder.fromJson(Object data) {
    return ConverterHelper.convertToType<FlutterInputBorder>(data);
  }

  @override
  InputBorder build(ZacBuildContext context);
}

@defaultConverterFreezed
class FlutterOutlineInputBorder
    with _$FlutterOutlineInputBorder
    implements FlutterInputBorder {
  const FlutterOutlineInputBorder._();

  static const String unionValue = 'f:1:OutlineInputBorder';

  factory FlutterOutlineInputBorder.fromJson(Map<String, dynamic> json) =>
      _$FlutterOutlineInputBorderFromJson(json);

  @FreezedUnionValue(FlutterOutlineInputBorder.unionValue)
  factory FlutterOutlineInputBorder({
    FlutterBorderSide? borderSide,
    FlutterBorderRadius? borderRadius,
    ZacDouble? gapPadding,
  }) = _FlutterOutlineInputBorder;

  @override
  OutlineInputBorder build(ZacBuildContext context) {
    return OutlineInputBorder(
      borderSide: borderSide?.build(context) ?? const BorderSide(),
      borderRadius: borderRadius?.build(context) ??
          const BorderRadius.all(Radius.circular(4.0)),
      gapPadding: gapPadding?.getValue(context) ?? 4.0,
    );
  }
}

@defaultConverterFreezed
class FlutterUnderlineInputBorder
    with _$FlutterUnderlineInputBorder
    implements FlutterInputBorder {
  const FlutterUnderlineInputBorder._();

  static const String unionValue = 'f:1:UnderlineInputBorder';

  factory FlutterUnderlineInputBorder.fromJson(Map<String, dynamic> json) =>
      _$FlutterUnderlineInputBorderFromJson(json);

  @FreezedUnionValue(FlutterOutlineInputBorder.unionValue)
  factory FlutterUnderlineInputBorder({
    FlutterBorderSide? borderSide,
    FlutterBorderRadius? borderRadius,
  }) = _FlutterUnderlineInputBorder;

  @override
  UnderlineInputBorder build(ZacBuildContext context) {
    return UnderlineInputBorder(
      borderSide: borderSide?.build(context) ?? const BorderSide(),
      borderRadius: borderRadius?.build(context) ??
          const BorderRadius.only(
            topLeft: Radius.circular(4.0),
            topRight: Radius.circular(4.0),
          ),
    );
  }
}

abstract class FlutterOutlinedBorder implements FlutterShapeBorder {
  factory FlutterOutlinedBorder.fromJson(Object data) {
    return ConverterHelper.convertToType<FlutterOutlinedBorder>(data);
  }

  @override
  OutlinedBorder build(ZacBuildContext context);
}

@defaultConverterFreezed
class FlutterCircleBorder
    with _$FlutterCircleBorder
    implements FlutterOutlinedBorder {
  const FlutterCircleBorder._();

  static const String unionValue = 'f:1:CircleBorder';

  factory FlutterCircleBorder.fromJson(Map<String, dynamic> json) =>
      _$FlutterCircleBorderFromJson(json);

  @FreezedUnionValue(FlutterCircleBorder.unionValue)
  factory FlutterCircleBorder({FlutterBorderSide? side}) = _FlutterCircleBorder;

  @override
  CircleBorder build(ZacBuildContext context) {
    return CircleBorder(side: side?.build(context) ?? BorderSide.none);
  }
}

@defaultConverterFreezed
class FlutterRoundedRectangleBorder
    with _$FlutterRoundedRectangleBorder
    implements FlutterOutlinedBorder {
  const FlutterRoundedRectangleBorder._();

  static const String unionValue = 'f:1:RoundedRectangleBorder';

  factory FlutterRoundedRectangleBorder.fromJson(Map<String, dynamic> json) =>
      _$FlutterRoundedRectangleBorderFromJson(json);

  @FreezedUnionValue(FlutterRoundedRectangleBorder.unionValue)
  factory FlutterRoundedRectangleBorder({
    FlutterBorderSide? side,
    FlutterBorderRadiusGeometry? borderRadius,
  }) = _FlutterRoundedRectangleBorder;

  @override
  RoundedRectangleBorder build(ZacBuildContext context) {
    return RoundedRectangleBorder(
      side: side?.build(context) ?? BorderSide.none,
      borderRadius: borderRadius?.build(context) ?? BorderRadius.zero,
    );
  }
}
