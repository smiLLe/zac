import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/flutter/interface.dart';
import 'package:zac/src/flutter/painting/border.dart';
import 'package:zac/zac.dart';

part 'painting.freezed.dart';
part 'painting.g.dart';

@Freezed(maybeMap: false, maybeWhen: false)
class ZacEdgeInsetsGeometry
    with _$ZacEdgeInsetsGeometry
    implements ZacToFlutter<EdgeInsetsGeometry> {
  const ZacEdgeInsetsGeometry._();

  factory ZacEdgeInsetsGeometry.fromJson(Map<String, dynamic> json) =>
      _$ZacEdgeInsetsGeometryFromJson(json);

  @FreezedUnionValue('zac:painting:EdgeInsets.all')
  factory ZacEdgeInsetsGeometry.edgeInsetsAll(double value) =
      _ZacEdgeInsetsGeometryEdgeInsetsAll;

  @FreezedUnionValue('zac:painting:EdgeInsets.symmetric')
  factory ZacEdgeInsetsGeometry.edgeInsetsSymmetric({
    double? vertical,
    double? horizontal,
  }) = _ZacEdgeInsetsGeometryEdgeInsetsSymmetric;

  @FreezedUnionValue('zac:painting:EdgeInsets.only')
  factory ZacEdgeInsetsGeometry.edgeInsetsOnly({
    double? left,
    double? top,
    double? right,
    double? bottom,
  }) = _ZacEdgeInsetsGeometryEdgeInsetsOnly;

  @FreezedUnionValue('zac:painting:EdgeInsetsDirectional.all')
  factory ZacEdgeInsetsGeometry.edgeInsetsDirectionalAll(double value) =
      _ZacEdgeInsetsGeometryEdgeInsetsDirectionalAll;

  @FreezedUnionValue('zac:painting:EdgeInsetsDirectional.only')
  factory ZacEdgeInsetsGeometry.edgeInsetsDirectionalOnly({
    double? start,
    double? top,
    double? end,
    double? bottom,
  }) = _ZacEdgeInsetsGeometryEdgeInsetsDirectionalOnly;

  @override
  EdgeInsetsGeometry toFlutter(BuildContext context) {
    return map(
      edgeInsetsDirectionalAll: (value) =>
          EdgeInsetsDirectional.all(value.value),
      edgeInsetsDirectionalOnly: (value) => EdgeInsetsDirectional.only(
        start: value.start ?? 0.0,
        top: value.top ?? 0.0,
        end: value.end ?? 0.0,
        bottom: value.bottom ?? 0.0,
      ),
      edgeInsetsAll: (value) => EdgeInsets.all(value.value),
      edgeInsetsSymmetric: (value) => EdgeInsets.symmetric(
        vertical: value.vertical ?? 0.0,
        horizontal: value.horizontal ?? 0.0,
      ),
      edgeInsetsOnly: (value) => EdgeInsets.only(
        left: value.left ?? 0.0,
        top: value.top ?? 0.0,
        right: value.right ?? 0.0,
        bottom: value.bottom ?? 0.0,
      ),
    );
  }
}

@Freezed(maybeMap: false, maybeWhen: false)
class ZacAlignment
    with _$ZacAlignment
    implements ZacToFlutter<AlignmentGeometry> {
  const ZacAlignment._();

  factory ZacAlignment.fromJson(Map<String, dynamic> json) =>
      _$ZacAlignmentFromJson(json);

  @FreezedUnionValue('zac:painting:Alignment')
  factory ZacAlignment(double x, double y) = _ZacAlignment;

  @FreezedUnionValue('zac:painting:AlignmentDirectional')
  factory ZacAlignment.directional(double start, double y) =
      _ZacAlignmentDirectional;

  @override
  AlignmentGeometry toFlutter(BuildContext context) {
    return map(
      (value) => Alignment(value.x, value.y),
      directional: (value) => AlignmentDirectional(value.start, value.y),
    );
  }
}

@Freezed(maybeMap: false, maybeWhen: false)
class ZacDecoration with _$ZacDecoration implements ZacToFlutter<Decoration> {
  const ZacDecoration._();

  factory ZacDecoration.fromJson(Map<String, dynamic> json) =>
      _$ZacDecorationFromJson(json);

  @FreezedUnionValue('zac:painting:Decoration>BoxDecoration')
  factory ZacDecoration.boxDecoration(ZacBoxDecoration subclass) =
      _ZacDecorationBoxDecoration;

  @override
  Decoration toFlutter(BuildContext context) {
    return map(
      boxDecoration: (value) => value.subclass.toFlutter(context),
    );
  }
}

@Freezed(maybeMap: false, maybeWhen: false)
class ZacBoxDecoration
    with _$ZacBoxDecoration
    implements ZacToFlutter<BoxDecoration> {
  const ZacBoxDecoration._();

  factory ZacBoxDecoration.fromJson(Map<String, dynamic> json) =>
      _$ZacBoxDecorationFromJson(json);

  factory ZacBoxDecoration({
    ZacColor? color,
    ZacBoxBorder? border,
    ZacBorderRadiusGeometry? borderRadius,
    List<ZacBoxShadow>? boxShadow,
    ZacBoxShape? shape,
  }) = _ZacBoxDecoration;

  @override
  BoxDecoration toFlutter(BuildContext context) {
    return BoxDecoration(
      color: color?.toFlutter(context),
      border: border?.toFlutter(context),
      borderRadius: borderRadius?.toFlutter(context),
      boxShadow: boxShadow?.map((e) => e.toFlutter(context)).toList(),
      shape: shape?.toFlutter(context) ?? BoxShape.rectangle,
    );
  }
}

@Freezed(maybeMap: false, maybeWhen: false)
class ZacBoxShadow with _$ZacBoxShadow implements ZacToFlutter<BoxShadow> {
  const ZacBoxShadow._();

  factory ZacBoxShadow.fromJson(Map<String, dynamic> json) =>
      _$ZacBoxShadowFromJson(json);

  factory ZacBoxShadow({
    ZacColor? color,
    ZacOffset? offset,
    double? blurRadius,
    double? spreadRadius,
    ZacBlurStyle? blurStyle,
  }) = _ZacBoxShadow;

  @override
  BoxShadow toFlutter(BuildContext context) {
    return BoxShadow(
      color: color?.toFlutter(context) ?? const Color(0xFF000000),
      offset: offset?.toFlutter(context) ?? Offset.zero,
      blurRadius: blurRadius ?? 0.0,
      spreadRadius: spreadRadius ?? 0.0,
      blurStyle: blurStyle?.toFlutter(context) ?? BlurStyle.normal,
    );
  }
}

@Freezed(maybeMap: false, maybeWhen: false)
class ZacBoxShape with _$ZacBoxShape implements ZacToFlutter<BoxShape> {
  const ZacBoxShape._();

  factory ZacBoxShape.fromJson(Map<String, dynamic> json) =>
      _$ZacBoxShapeFromJson(json);

  factory ZacBoxShape.circle() = _ZacBoxShapeCircle;
  factory ZacBoxShape.rectangle() = _ZacBoxShapeRectangle;

  @override
  BoxShape toFlutter(BuildContext context) {
    return map(
      circle: (_) => BoxShape.circle,
      rectangle: (_) => BoxShape.rectangle,
    );
  }
}
