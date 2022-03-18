import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/flutter/interface.dart';
import 'package:zac/zac.dart';

part 'border.freezed.dart';
part 'border.g.dart';

@Freezed(maybeMap: false, maybeWhen: false)
class ZacShapeBorder
    with _$ZacShapeBorder
    implements ZacToFlutter<ShapeBorder> {
  const ZacShapeBorder._();

  @FreezedUnionValue('zac:painting:ShapeBorder>BoxBorder')
  factory ZacShapeBorder.boxBorder(ZacBoxBorder subclass) =
      _ZacShapeBorderBoxBorder;

  @override
  ShapeBorder toFlutter(BuildContext context) {
    return map(boxBorder: (value) => value.subclass.toFlutter(context));
  }
}

@Freezed(maybeMap: false, maybeWhen: false)
class ZacBoxBorder with _$ZacBoxBorder implements ZacToFlutter<BoxBorder> {
  const ZacBoxBorder._();

  factory ZacBoxBorder.fromJson(Map<String, dynamic> json) =>
      _$ZacBoxBorderFromJson(json);

  @FreezedUnionValue('zac:painting:BoxBorder>Border')
  factory ZacBoxBorder.border(ZacBorder subclass) = _ZacBoxBorderBorder;

  @override
  BoxBorder toFlutter(BuildContext context) {
    return map(
      border: (value) => value.subclass.toFlutter(context),
    );
  }
}

@Freezed(maybeMap: false, maybeWhen: false)
class ZacBorder with _$ZacBorder implements ZacToFlutter<Border> {
  const ZacBorder._();

  factory ZacBorder.fromJson(Map<String, dynamic> json) =>
      _$ZacBorderFromJson(json);

  @FreezedUnionValue('zac:painting:Border.all')
  factory ZacBorder.all({
    ZacColor? color,
    double? width,
    ZacBorderStyle? style,
  }) = _ZacBorderAll;

  @override
  Border toFlutter(BuildContext context) {
    return map(
      all: (value) => Border.all(
        color: value.color?.toFlutter(context) ?? const Color(0xFF000000),
        width: value.width ?? 1.0,
        style: value.style?.toFlutter(context) ?? BorderStyle.solid,
      ),
    );
  }
}

@Freezed(maybeMap: false, maybeWhen: false)
class ZacBorderStyle
    with _$ZacBorderStyle
    implements ZacToFlutter<BorderStyle> {
  const ZacBorderStyle._();

  factory ZacBorderStyle.fromJson(Map<String, dynamic> json) =>
      _$ZacBorderStyleFromJson(json);

  @FreezedUnionValue('zac:painting:BorderStyle.none')
  factory ZacBorderStyle.none() = _ZacBorderStyleNone;

  @FreezedUnionValue('zac:painting:BorderStyle.solid')
  factory ZacBorderStyle.solid() = _ZacBorderStyleSolid;

  @override
  BorderStyle toFlutter(BuildContext context) {
    return map(
      none: (_) => BorderStyle.none,
      solid: (_) => BorderStyle.solid,
    );
  }
}

@Freezed(maybeMap: false, maybeWhen: false)
class ZacBorderRadiusGeometry
    with _$ZacBorderRadiusGeometry
    implements ZacToFlutter<BorderRadiusGeometry> {
  const ZacBorderRadiusGeometry._();

  factory ZacBorderRadiusGeometry.fromJson(Map<String, dynamic> json) =>
      _$ZacBorderRadiusGeometryFromJson(json);

  @FreezedUnionValue('zac:painting:BorderRadiusGeometry>BorderRadius')
  factory ZacBorderRadiusGeometry.radius(ZacBorderRadius subclass) =
      _ZacBorderRadiusGeometryRadius;

  @override
  BorderRadiusGeometry toFlutter(BuildContext context) {
    return map(radius: (value) => value.subclass.toFlutter(context));
  }
}

@Freezed(maybeMap: false, maybeWhen: false)
class ZacBorderRadius
    with _$ZacBorderRadius
    implements ZacToFlutter<BorderRadius> {
  const ZacBorderRadius._();

  factory ZacBorderRadius.fromJson(Map<String, dynamic> json) =>
      _$ZacBorderRadiusFromJson(json);

  @FreezedUnionValue('zac:painting:BorderRadius.all')
  factory ZacBorderRadius.all(ZacRadius radius) = _ZacBorderRadiusAll;

  @FreezedUnionValue('zac:painting:BorderRadius.circular')
  factory ZacBorderRadius.circular(double radius) = _ZacBorderRadiusCircular;

  @FreezedUnionValue('zac:painting:BorderRadius.horizontal')
  factory ZacBorderRadius.horizontal({ZacRadius? left, ZacRadius? right}) =
      _ZacBorderRadiusHorizontal;

  @override
  BorderRadius toFlutter(BuildContext context) {
    return map(
      all: (value) => BorderRadius.all(value.radius.toFlutter(context)),
      circular: (value) => BorderRadius.circular(value.radius),
      horizontal: (value) => BorderRadius.horizontal(
        left: value.left?.toFlutter(context) ?? Radius.zero,
        right: value.right?.toFlutter(context) ?? Radius.zero,
      ),
    );
  }
}
