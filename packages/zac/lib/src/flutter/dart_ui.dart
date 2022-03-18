import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/flutter/interface.dart';

part 'dart_ui.freezed.dart';
part 'dart_ui.g.dart';

@Freezed(maybeMap: false, maybeWhen: false)
class ZacColor with _$ZacColor implements ZacToFlutter<Color> {
  const ZacColor._();

  factory ZacColor.fromJson(Map<String, dynamic> json) =>
      _$ZacColorFromJson(json);

  @FreezedUnionValue('zac:dartui:Color.fromARGB')
  factory ZacColor.fromARGB({
    required int a,
    required int r,
    required int g,
    required int b,
  }) = _ZacColorFromARGB;

  @FreezedUnionValue('zac:dartui:Color.fromRGBO')
  factory ZacColor.fromRGBO({
    required int r,
    required int g,
    required int b,
    required double opacity,
  }) = _ZacColorFromARGO;

  @override
  Color toFlutter(BuildContext context) {
    return map(
      fromARGB: (value) {
        return Color.fromARGB(value.a, value.r, value.g, value.b);
      },
      fromRGBO: (value) {
        return Color.fromRGBO(value.r, value.g, value.b, value.opacity);
      },
    );
  }
}

@Freezed(maybeMap: false, maybeWhen: false)
class ZacOffset with _$ZacOffset implements ZacToFlutter<Offset> {
  const ZacOffset._();

  factory ZacOffset.fromJson(Map<String, dynamic> json) =>
      _$ZacOffsetFromJson(json);

  @FreezedUnionValue('zac:dartui:Offset')
  factory ZacOffset(double dx, double dy) = _ZacOffset;

  @FreezedUnionValue('zac:dartui:Offset.fromDirection')
  factory ZacOffset.fromDirection(
      {required double direction, double? distance}) = _ZacOffsetFromDirection;

  @override
  Offset toFlutter(BuildContext context) {
    return map(
      (value) => Offset(value.dx, value.dy),
      fromDirection: (value) =>
          Offset.fromDirection(value.direction, value.distance ?? 1.0),
    );
  }
}

@Freezed(maybeMap: false, maybeWhen: false)
class ZacBlurStyle with _$ZacBlurStyle implements ZacToFlutter<BlurStyle> {
  const ZacBlurStyle._();

  factory ZacBlurStyle.fromJson(Map<String, dynamic> json) =>
      _$ZacBlurStyleFromJson(json);

  @FreezedUnionValue('zac:dartui:BlurSyle.inner')
  factory ZacBlurStyle.inner() = _ZacBlurStyleInner;

  @FreezedUnionValue('zac:dartui:BlurSyle.normal')
  factory ZacBlurStyle.normal() = _ZacBlurStyleNormal;

  @FreezedUnionValue('zac:dartui:BlurSyle.outer')
  factory ZacBlurStyle.outer() = _ZacBlurStyleOuter;

  @FreezedUnionValue('zac:dartui:BlurSyle.solid')
  factory ZacBlurStyle.solid() = _ZacBlurStyleSolid;

  @override
  BlurStyle toFlutter(BuildContext context) {
    return map(
      inner: (_) => BlurStyle.inner,
      normal: (_) => BlurStyle.normal,
      outer: (_) => BlurStyle.outer,
      solid: (_) => BlurStyle.solid,
    );
  }
}

@Freezed(maybeMap: false, maybeWhen: false)
class ZacRadius with _$ZacRadius implements ZacToFlutter<Radius> {
  const ZacRadius._();

  factory ZacRadius.fromJson(Map<String, dynamic> json) =>
      _$ZacRadiusFromJson(json);

  @FreezedUnionValue('zac:dartui:Radius.circular')
  factory ZacRadius.circular(double radius) = _ZacRadiusCircular;

  @FreezedUnionValue('zac:dartui:Radius.elliptical')
  factory ZacRadius.elliptical(double x, double y) = _ZacRadiusElliptical;

  @override
  Radius toFlutter(BuildContext context) {
    return map(
      circular: (value) => Radius.circular(value.radius),
      elliptical: (value) => Radius.elliptical(value.x, value.y),
    );
  }
}
