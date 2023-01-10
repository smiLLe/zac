import 'dart:ui';

import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/base.dart';

part 'painting.freezed.dart';
part 'painting.g.dart';

@freezedZacBuilder
class FlutterBoxShape with _$FlutterBoxShape, ZacBuilder<BoxShape> {
  const FlutterBoxShape._();

  factory FlutterBoxShape.fromJson(Map<String, dynamic> json) =>
      _$FlutterBoxShapeFromJson(json);

  @FreezedUnionValue('f:1:BoxShape.circle')
  factory FlutterBoxShape.circle() = _FlutterBoxShapeCircle;

  @FreezedUnionValue('f:1:BoxShape.rectangle')
  factory FlutterBoxShape.rectangle() = _FlutterBoxShapeRectangle;

  BoxShape _build(BuildContext context, ZacContext zacContext) {
    return map(
      circle: (_) => BoxShape.circle,
      rectangle: (_) => BoxShape.rectangle,
    );
  }

  @override
  BoxShape build(BuildContext context, ZacContext zacContext) {
    return _build(context, zacContext);
  }
}

@freezedZacBuilder
class FlutterAxis with _$FlutterAxis, ZacBuilder<Axis> {
  const FlutterAxis._();

  factory FlutterAxis.fromJson(Map<String, dynamic> json) =>
      _$FlutterAxisFromJson(json);

  @FreezedUnionValue('f:1:Axis.horizontal')
  factory FlutterAxis.horizontal() = _FlutterAxisHori;

  @FreezedUnionValue('f:1:Axis.vertical')
  factory FlutterAxis.vertical() = _FlutterAxisVertical;

  Axis _build(BuildContext context, ZacContext zacContext) {
    return map(
        horizontal: (_) => Axis.horizontal, vertical: (_) => Axis.vertical);
  }

  @override
  Axis build(BuildContext context, ZacContext zacContext) {
    return _build(context, zacContext);
  }
}

@freezedZacBuilder
class FlutterVerticalDirection
    with _$FlutterVerticalDirection, ZacBuilder<VerticalDirection> {
  const FlutterVerticalDirection._();

  factory FlutterVerticalDirection.fromJson(Map<String, dynamic> json) =>
      _$FlutterVerticalDirectionFromJson(json);

  @FreezedUnionValue('f:1:VerticalDirection.up')
  factory FlutterVerticalDirection.up() = _FlutterVerticalDirectionUp;

  @FreezedUnionValue('f:1:VerticalDirection.down')
  factory FlutterVerticalDirection.down() = _FlutterVerticalDirectionDown;

  VerticalDirection _build(BuildContext context, ZacContext zacContext) {
    return map(
        up: (_) => VerticalDirection.up, down: (_) => VerticalDirection.down);
  }

  @override
  VerticalDirection build(BuildContext context, ZacContext zacContext) {
    return _build(context, zacContext);
  }
}

@freezedZacBuilder
class FlutterTextOverflow with _$FlutterTextOverflow, ZacBuilder<TextOverflow> {
  const FlutterTextOverflow._();

  factory FlutterTextOverflow.fromJson(Map<String, dynamic> json) =>
      _$FlutterTextOverflowFromJson(json);

  @FreezedUnionValue('f:1:TextOverflow.clip')
  factory FlutterTextOverflow.clip() = _FlutterTextOverflowClip;

  @FreezedUnionValue('f:1:TextOverflow.ellipsis')
  factory FlutterTextOverflow.ellipsis() = _FlutterTextOverflowEllipsis;

  @FreezedUnionValue('f:1:TextOverflow.fade')
  factory FlutterTextOverflow.fade() = _FlutterTextOverflowFade;

  @FreezedUnionValue('f:1:TextOverflow.visible')
  factory FlutterTextOverflow.visible() = _FlutterTextOverflowVisible;

  TextOverflow _build(BuildContext context, ZacContext zacContext) {
    return map(
      clip: (_) => TextOverflow.clip,
      ellipsis: (_) => TextOverflow.ellipsis,
      fade: (_) => TextOverflow.fade,
      visible: (_) => TextOverflow.visible,
    );
  }

  @override
  TextOverflow build(BuildContext context, ZacContext zacContext) {
    return _build(context, zacContext);
  }
}

@freezedZacBuilder
class FlutterStrutStyle with _$FlutterStrutStyle, ZacBuilder<StrutStyle> {
  const FlutterStrutStyle._();

  factory FlutterStrutStyle.fromJson(Map<String, dynamic> json) =>
      _$FlutterStrutStyleFromJson(json);

  @FreezedUnionValue('f:1:StrutStyle')
  factory FlutterStrutStyle({
    ZacBuilder<String?>? fontFamily,
    List<String>? fontFamilyFallback,
    ZacBuilder<double?>? fontSize,
    ZacBuilder<double?>? height,
    ZacBuilder<TextLeadingDistribution?>? leadingDistribution,
    ZacBuilder<double?>? leading,
    ZacBuilder<FontWeight?>? fontWeight,
    ZacBuilder<FontStyle?>? fontStyle,
    ZacBuilder<bool?>? forceStrutHeight,
    ZacBuilder<String?>? debugLabel,
    ZacBuilder<String?>? package,
  }) = _FlutterStrutStyle;

  @FreezedUnionValue('f:1:StrutStyle.fromTextStyle')
  factory FlutterStrutStyle.fromTextStyle(
    FlutterTextStyle textStyle, {
    ZacBuilder<String?>? fontFamily,
    List<String>? fontFamilyFallback,
    ZacBuilder<double?>? fontSize,
    ZacBuilder<double?>? height,
    ZacBuilder<TextLeadingDistribution?>? leadingDistribution,
    ZacBuilder<double?>? leading,
    ZacBuilder<FontWeight?>? fontWeight,
    ZacBuilder<FontStyle?>? fontStyle,
    ZacBuilder<bool?>? forceStrutHeight,
    ZacBuilder<String?>? debugLabel,
    ZacBuilder<String?>? package,
  }) = _FlutterStrutStyleFromTextStyle;

  StrutStyle _build(BuildContext context, ZacContext zacContext) {
    return map(
      (_) => StrutStyle(
        fontFamily: fontFamily?.build(context, zacContext),
        fontFamilyFallback: fontFamilyFallback,
        fontSize: fontSize?.build(context, zacContext),
        height: height?.build(context, zacContext),
        leadingDistribution: leadingDistribution?.build(context, zacContext),
        leading: leading?.build(context, zacContext),
        fontWeight: fontWeight?.build(context, zacContext),
        fontStyle: fontStyle?.build(context, zacContext),
        forceStrutHeight: forceStrutHeight?.build(context, zacContext),
        debugLabel: debugLabel?.build(context, zacContext),
        package: package?.build(context, zacContext),
      ),
      fromTextStyle: (value) => StrutStyle.fromTextStyle(
        value.textStyle.build(context, zacContext),
        fontFamily: fontFamily?.build(context, zacContext),
        fontFamilyFallback: fontFamilyFallback,
        fontSize: fontSize?.build(context, zacContext),
        height: height?.build(context, zacContext),
        leadingDistribution: leadingDistribution?.build(context, zacContext),
        leading: leading?.build(context, zacContext),
        fontWeight: fontWeight?.build(context, zacContext),
        fontStyle: fontStyle?.build(context, zacContext),
        forceStrutHeight: forceStrutHeight?.build(context, zacContext),
        debugLabel: debugLabel?.build(context, zacContext),
        package: package?.build(context, zacContext),
      ),
    );
  }

  @override
  StrutStyle build(BuildContext context, ZacContext zacContext) {
    return _build(context, zacContext);
  }
}

@freezedZacBuilder
class FlutterTextWidthBasis
    with _$FlutterTextWidthBasis, ZacBuilder<TextWidthBasis> {
  const FlutterTextWidthBasis._();

  factory FlutterTextWidthBasis.fromJson(Map<String, dynamic> json) =>
      _$FlutterTextWidthBasisFromJson(json);

  @FreezedUnionValue('f:1:TextWidthBasis.longestLine')
  factory FlutterTextWidthBasis.longestLine() =
      _FlutterTextWidthBasisLongestLine;

  @FreezedUnionValue('f:1:TextWidthBasis.parent')
  factory FlutterTextWidthBasis.parent() = _FlutterTextWidthBasisParent;

  TextWidthBasis _build(BuildContext context, ZacContext zacContext) {
    return map(
        longestLine: (_) => TextWidthBasis.longestLine,
        parent: (_) => TextWidthBasis.parent);
  }

  @override
  TextWidthBasis build(BuildContext context, ZacContext zacContext) {
    return _build(context, zacContext);
  }
}

@freezedZacBuilder
class FlutterBoxFit with _$FlutterBoxFit, ZacBuilder<BoxFit> {
  const FlutterBoxFit._();

  factory FlutterBoxFit.fromJson(Map<String, dynamic> json) =>
      _$FlutterBoxFitFromJson(json);

  @FreezedUnionValue('f:1:BoxFit.contain')
  factory FlutterBoxFit.contain() = _FlutterBoxFitContain;

  @FreezedUnionValue('f:1:BoxFit.cover')
  factory FlutterBoxFit.cover() = _FlutterBoxFitCover;

  @FreezedUnionValue('f:1:BoxFit.fill')
  factory FlutterBoxFit.fill() = _FlutterBoxFitFill;

  @FreezedUnionValue('f:1:BoxFit.fitHeight')
  factory FlutterBoxFit.fitHeight() = _FlutterBoxFitFitHeight;

  @FreezedUnionValue('f:1:BoxFit.fitWidth')
  factory FlutterBoxFit.fitWidth() = _FlutterBoxFitFitWidth;

  @FreezedUnionValue('f:1:BoxFit.none')
  factory FlutterBoxFit.none() = _FlutterBoxFitNone;

  @FreezedUnionValue('f:1:BoxFit.scaleDown')
  factory FlutterBoxFit.scaleDown() = _FlutterBoxFitScaleDown;

  BoxFit _build(BuildContext context, ZacContext zacContext) {
    return map(
      contain: (_) => BoxFit.contain,
      cover: (_) => BoxFit.cover,
      fill: (_) => BoxFit.fill,
      fitHeight: (_) => BoxFit.fitHeight,
      fitWidth: (_) => BoxFit.fitWidth,
      none: (_) => BoxFit.none,
      scaleDown: (_) => BoxFit.scaleDown,
    );
  }

  @override
  BoxFit build(BuildContext context, ZacContext zacContext) {
    return _build(context, zacContext);
  }
}

@freezedZacBuilder
class FlutterImageRepeat with _$FlutterImageRepeat, ZacBuilder<ImageRepeat> {
  const FlutterImageRepeat._();

  factory FlutterImageRepeat.fromJson(Map<String, dynamic> json) =>
      _$FlutterImageRepeatFromJson(json);

  @FreezedUnionValue('f:1:ImageRepeat.noRepeat')
  factory FlutterImageRepeat.noRepeat() = _FlutterImageRepeatNoRepeat;

  @FreezedUnionValue('f:1:ImageRepeat.repeat')
  factory FlutterImageRepeat.repeat() = _FlutterImageRepeatRepeat;

  @FreezedUnionValue('f:1:ImageRepeat.repeatX')
  factory FlutterImageRepeat.repeatX() = _FlutterImageRepeatRepeatX;

  @FreezedUnionValue('f:1:ImageRepeat.repeatY')
  factory FlutterImageRepeat.repeatY() = _FlutterImageRepeatRepeatY;

  ImageRepeat _build(BuildContext context, ZacContext zacContext) {
    return map(
      noRepeat: (_) => ImageRepeat.noRepeat,
      repeat: (_) => ImageRepeat.repeat,
      repeatX: (_) => ImageRepeat.repeatX,
      repeatY: (_) => ImageRepeat.repeatY,
    );
  }

  @override
  ImageRepeat build(BuildContext context, ZacContext zacContext) {
    return _build(context, zacContext);
  }
}

@freezedZacBuilder
class FlutterTextStyle with _$FlutterTextStyle, ZacBuilder<TextStyle> {
  const FlutterTextStyle._();

  factory FlutterTextStyle.fromJson(Map<String, dynamic> json) =>
      _$FlutterTextStyleFromJson(json);

  @FreezedUnionValue('f:1:TextStyle')
  factory FlutterTextStyle({
    ZacBuilder<bool?>? inherit,
    ZacBuilder<Color?>? color,
    ZacBuilder<Color?>? backgroundColor,
    ZacBuilder<double?>? fontSize,
    ZacBuilder<FontWeight?>? fontWeight,
    ZacBuilder<FontStyle?>? fontStyle,
    ZacBuilder<double?>? letterSpacing,
    ZacBuilder<double?>? wordSpacing,
    ZacBuilder<TextBaseline?>? textBaseline,
    ZacBuilder<double?>? height,
    ZacBuilder<TextLeadingDistribution?>? leadingDistribution,
    ZacBuilder<Locale?>? locale,
// Paint? foreground,
// Paint? background,
    ZacListBuilder<Shadow, List<Shadow>?>? shadows,
    ZacListBuilder<FontFeature, List<FontFeature>?>? fontFeatures,
    ZacBuilder<TextDecoration?>? decoration,
    ZacBuilder<Color?>? decorationColor,
    ZacBuilder<TextDecorationStyle?>? decorationStyle,
    ZacBuilder<double?>? decorationThickness,
    ZacBuilder<String?>? debugLabel,
    ZacBuilder<String?>? fontFamily,
    ZacListBuilder<String, List<String>?>? fontFamilyFallback,
    ZacBuilder<String?>? package,
    ZacBuilder<TextOverflow?>? overflow,
  }) = _FlutterTextStyle;

  TextStyle _build(BuildContext context, ZacContext zacContext) {
    return TextStyle(
      inherit: inherit?.build(context, zacContext) ?? true,
      color: color?.build(context, zacContext),
      backgroundColor: backgroundColor?.build(context, zacContext),
      fontSize: fontSize?.build(context, zacContext),
      fontWeight: fontWeight?.build(context, zacContext),
      fontStyle: fontStyle?.build(context, zacContext),
      letterSpacing: letterSpacing?.build(context, zacContext),
      wordSpacing: wordSpacing?.build(context, zacContext),
      textBaseline: textBaseline?.build(context, zacContext),
      height: height?.build(context, zacContext),
      leadingDistribution: leadingDistribution?.build(context, zacContext),
      locale: locale?.build(context, zacContext),
      shadows: shadows?.build(context, zacContext),
      fontFeatures: fontFeatures?.build(context, zacContext),
      decoration: decoration?.build(context, zacContext),
      decorationColor: decorationColor?.build(context, zacContext),
      decorationStyle: decorationStyle?.build(context, zacContext),
      decorationThickness: decorationThickness?.build(context, zacContext),
      debugLabel: debugLabel?.build(context, zacContext),
      fontFamily: fontFamily?.build(context, zacContext),
      fontFamilyFallback: fontFamilyFallback?.build(context, zacContext),
      package: package?.build(context, zacContext),
      overflow: overflow?.build(context, zacContext),
    );
  }

  @override
  TextStyle build(BuildContext context, ZacContext zacContext) {
    return _build(context, zacContext);
  }
}

@freezedZacBuilder
class FlutterTextAlignVertical
    with _$FlutterTextAlignVertical, ZacBuilder<TextAlignVertical> {
  const FlutterTextAlignVertical._();

  factory FlutterTextAlignVertical.fromJson(Map<String, dynamic> json) =>
      _$FlutterTextAlignVerticalFromJson(json);

  @FreezedUnionValue('f:1:TextAlignVertical')
  factory FlutterTextAlignVertical({required ZacBuilder<double> y}) =
      _FlutterTextAlignVertical;
  @FreezedUnionValue('f:1:TextAlignVertical.bottom')
  factory FlutterTextAlignVertical.bottom() = _FlutterTextAlignVerticalbottom;
  @FreezedUnionValue('f:1:TextAlignVertical.center')
  factory FlutterTextAlignVertical.center() = _FlutterTextAlignVerticalcenter;
  @FreezedUnionValue('f:1:TextAlignVertical.top')
  factory FlutterTextAlignVertical.top() = _FlutterTextAlignVerticaltop;

  TextAlignVertical _build(BuildContext context, ZacContext zacContext) {
    return map(
      (value) => TextAlignVertical(y: value.y.build(context, zacContext)),
      bottom: (_) => TextAlignVertical.bottom,
      center: (_) => TextAlignVertical.center,
      top: (_) => TextAlignVertical.top,
    );
  }

  @override
  TextAlignVertical build(BuildContext context, ZacContext zacContext) {
    return _build(context, zacContext);
  }
}

@freezedZacBuilder
class FlutterBoxShadow
    with _$FlutterBoxShadow
    implements ZacBuilder<BoxShadow> {
  const FlutterBoxShadow._();

  static const String unionValue = 'f:1:BoxShadow';

  factory FlutterBoxShadow.fromJson(Map<String, dynamic> json) =>
      _$FlutterBoxShadowFromJson(json);

  @FreezedUnionValue(FlutterBoxShadow.unionValue)
  factory FlutterBoxShadow({
    ZacBuilder<Color?>? color,
    ZacBuilder<Offset?>? offset,
    ZacBuilder<double?>? blurRadius,
    ZacBuilder<double?>? spreadRadius,
    FlutterBlurStyle? blurStyle,
  }) = _FlutterBoxShadow;

  BoxShadow _build(BuildContext context, ZacContext zacContext) {
    return BoxShadow(
      color: color?.build(context, zacContext) ?? const Color(0xFF000000),
      offset: offset?.build(context, zacContext) ?? Offset.zero,
      blurRadius: blurRadius?.build(context, zacContext) ?? 0.0,
      spreadRadius: spreadRadius?.build(context, zacContext) ?? 0.0,
      blurStyle: blurStyle?.build(context, zacContext) ?? BlurStyle.normal,
    );
  }

  @override
  BoxShadow build(BuildContext context, ZacContext zacContext) {
    return _build(context, zacContext);
  }
}

@freezedZacBuilder
class FlutterAlignment
    with _$FlutterAlignment
    implements ZacBuilder<Alignment> {
  const FlutterAlignment._();

  static const String unionValue = 'f:1:Alignment';
  static const String unionValueBottomCenter = 'f:1:Alignment.bottomCenter';
  static const String unionValueBottomLeft = 'f:1:Alignment.bottomLeft';
  static const String unionValueBottomRight = 'f:1:Alignment.bottomRight';
  static const String unionValueCenter = 'f:1:Alignment.center';
  static const String unionValueCenterLeft = 'f:1:Alignment.centerLeft';
  static const String unionValueCenterRight = 'f:1:Alignment.centerRight';
  static const String unionValueTopCenter = 'f:1:Alignment.topCenter';
  static const String unionValueTopLeft = 'f:1:Alignment.topLeft';
  static const String unionValueTopRight = 'f:1:Alignment.topRight';

  factory FlutterAlignment.fromJson(Map<String, dynamic> json) =>
      _$FlutterAlignmentFromJson(json);

  @FreezedUnionValue(FlutterAlignment.unionValue)
  factory FlutterAlignment(ZacBuilder<double> x, ZacBuilder<double> y) =
      _FlutterAlignment;

  @FreezedUnionValue(FlutterAlignment.unionValueBottomCenter)
  factory FlutterAlignment.bottomCenter() = _FlutterAlignmentbottomCenter;

  @FreezedUnionValue(FlutterAlignment.unionValueBottomLeft)
  factory FlutterAlignment.bottomLeft() = _FlutterAlignmentbottomLeft;

  @FreezedUnionValue(FlutterAlignment.unionValueBottomRight)
  factory FlutterAlignment.bottomRight() = _FlutterAlignmentbottomRight;

  @FreezedUnionValue(FlutterAlignment.unionValueCenter)
  factory FlutterAlignment.center() = _FlutterAlignmentcenter;

  @FreezedUnionValue(FlutterAlignment.unionValueCenterLeft)
  factory FlutterAlignment.centerLeft() = _FlutterAlignmentcenterLeft;

  @FreezedUnionValue(FlutterAlignment.unionValueCenterRight)
  factory FlutterAlignment.centerRight() = _FlutterAlignmentcenterRight;

  @FreezedUnionValue(FlutterAlignment.unionValueTopCenter)
  factory FlutterAlignment.topCenter() = _FlutterAlignmenttopCenter;

  @FreezedUnionValue(FlutterAlignment.unionValueTopLeft)
  factory FlutterAlignment.topLeft() = _FlutterAlignmenttopLeft;

  @FreezedUnionValue(FlutterAlignment.unionValueTopRight)
  factory FlutterAlignment.topRight() = _FlutterAlignmenttopRight;

  Alignment _build(BuildContext context, ZacContext zacContext) {
    return map(
      (value) => Alignment(value.x.build(context, zacContext),
          value.y.build(context, zacContext)),
      bottomCenter: (_) => Alignment.bottomCenter,
      bottomLeft: (_) => Alignment.bottomLeft,
      bottomRight: (_) => Alignment.bottomRight,
      center: (_) => Alignment.center,
      centerLeft: (_) => Alignment.centerLeft,
      centerRight: (_) => Alignment.centerRight,
      topCenter: (_) => Alignment.topCenter,
      topLeft: (_) => Alignment.topLeft,
      topRight: (_) => Alignment.topRight,
    );
  }

  @override
  Alignment build(BuildContext context, ZacContext zacContext) {
    return _build(context, zacContext);
  }
}

@freezedZacBuilder
class FlutterAlignmentDirectional
    with _$FlutterAlignmentDirectional
    implements ZacBuilder<AlignmentDirectional> {
  const FlutterAlignmentDirectional._();

  static const String unionValue = 'f:1:AlignmentDirectional';
  static const String unionValueBottomCenter =
      'f:1:AlignmentDirectional.bottomCenter';
  static const String unionValueBottomEnd =
      'f:1:AlignmentDirectional.bottomEnd';
  static const String unionValueBottomStart =
      'f:1:AlignmentDirectional.bottomStart';
  static const String unionValueCenter = 'f:1:AlignmentDirectional.center';
  static const String unionValueCenterEnd =
      'f:1:AlignmentDirectional.centerEnd';
  static const String unionValueCenterStart =
      'f:1:AlignmentDirectional.centerStart';
  static const String unionValueTopCenter =
      'f:1:AlignmentDirectional.topCenter';
  static const String unionValueTopEnd = 'f:1:AlignmentDirectional.topEnd';
  static const String unionValueTopStart = 'f:1:AlignmentDirectional.topStart';

  factory FlutterAlignmentDirectional.fromJson(Map<String, dynamic> json) =>
      _$FlutterAlignmentDirectionalFromJson(json);

  @FreezedUnionValue(FlutterAlignmentDirectional.unionValue)
  factory FlutterAlignmentDirectional(
          ZacBuilder<double> start, ZacBuilder<double> y) =
      _FlutterAlignmentDirectional;

  @FreezedUnionValue(FlutterAlignmentDirectional.unionValueBottomCenter)
  factory FlutterAlignmentDirectional.bottomCenter() =
      _FlutterAlignmentDirectionalbottomCenter;

  @FreezedUnionValue(FlutterAlignmentDirectional.unionValueBottomStart)
  factory FlutterAlignmentDirectional.bottomStart() =
      _FlutterAlignmentDirectionalbottomStart;

  @FreezedUnionValue(FlutterAlignmentDirectional.unionValueBottomEnd)
  factory FlutterAlignmentDirectional.bottomEnd() =
      _FlutterAlignmentDirectionalbottomEnd;

  @FreezedUnionValue(FlutterAlignmentDirectional.unionValueCenter)
  factory FlutterAlignmentDirectional.center() =
      _FlutterAlignmentDirectionalcenter;

  @FreezedUnionValue(FlutterAlignmentDirectional.unionValueCenterStart)
  factory FlutterAlignmentDirectional.centerStart() =
      _FlutterAlignmentDirectionalcenterStart;

  @FreezedUnionValue(FlutterAlignmentDirectional.unionValueCenterEnd)
  factory FlutterAlignmentDirectional.centerEnd() =
      _FlutterAlignmentDirectionalcenterEnd;

  @FreezedUnionValue(FlutterAlignmentDirectional.unionValueTopCenter)
  factory FlutterAlignmentDirectional.topCenter() =
      _FlutterAlignmentDirectionaltopCenter;

  @FreezedUnionValue(FlutterAlignmentDirectional.unionValueTopStart)
  factory FlutterAlignmentDirectional.topStart() =
      _FlutterAlignmentDirectionaltopStart;

  @FreezedUnionValue(FlutterAlignmentDirectional.unionValueTopEnd)
  factory FlutterAlignmentDirectional.topEnd() =
      _FlutterAlignmentDirectionaltopEnd;

  AlignmentDirectional _build(BuildContext context, ZacContext zacContext) {
    return map(
      (value) => AlignmentDirectional(value.start.build(context, zacContext),
          value.y.build(context, zacContext)),
      bottomCenter: (_) => AlignmentDirectional.bottomCenter,
      bottomStart: (_) => AlignmentDirectional.bottomStart,
      bottomEnd: (_) => AlignmentDirectional.bottomEnd,
      center: (_) => AlignmentDirectional.center,
      centerStart: (_) => AlignmentDirectional.centerStart,
      centerEnd: (_) => AlignmentDirectional.centerEnd,
      topCenter: (_) => AlignmentDirectional.topCenter,
      topStart: (_) => AlignmentDirectional.topStart,
      topEnd: (_) => AlignmentDirectional.topEnd,
    );
  }

  @override
  AlignmentDirectional build(BuildContext context, ZacContext zacContext) {
    return _build(context, zacContext);
  }
}

@freezedZacBuilder
class FlutterFractionalOffset
    with _$FlutterFractionalOffset
    implements ZacBuilder<FractionalOffset> {
  const FlutterFractionalOffset._();

  static const String unionValue = 'f:1:FractionalOffset';

  factory FlutterFractionalOffset.fromJson(Map<String, dynamic> json) =>
      _$FlutterFractionalOffsetFromJson(json);

  @FreezedUnionValue(FlutterFractionalOffset.unionValue)
  factory FlutterFractionalOffset(
      ZacBuilder<double> dx, ZacBuilder<double> dy) = _FlutterFractionalOffset;

  FractionalOffset _build(BuildContext context, ZacContext zacContext) {
    return FractionalOffset(
        dx.build(context, zacContext), dy.build(context, zacContext));
  }

  @override
  FractionalOffset build(BuildContext context, ZacContext zacContext) {
    return _build(context, zacContext);
  }
}

@freezedZacBuilder
class FlutterBorderDirectional
    with _$FlutterBorderDirectional
    implements ZacBuilder<BorderDirectional> {
  const FlutterBorderDirectional._();

  static const String unionValue = 'f:1:BorderDirectional';

  factory FlutterBorderDirectional.fromJson(Map<String, dynamic> json) =>
      _$FlutterBorderDirectionalFromJson(json);

  @FreezedUnionValue(FlutterBorderDirectional.unionValue)
  factory FlutterBorderDirectional({
    ZacBuilder<BorderSide?>? top,
    ZacBuilder<BorderSide?>? start,
    ZacBuilder<BorderSide?>? bottom,
    ZacBuilder<BorderSide?>? end,
  }) = _FlutterBorderDirectional;

  BorderDirectional _build(BuildContext context, ZacContext zacContext) {
    return BorderDirectional(
      top: top?.build(context, zacContext) ?? BorderSide.none,
      start: start?.build(context, zacContext) ?? BorderSide.none,
      bottom: bottom?.build(context, zacContext) ?? BorderSide.none,
      end: end?.build(context, zacContext) ?? BorderSide.none,
    );
  }

  @override
  BorderDirectional build(BuildContext context, ZacContext zacContext) {
    return _build(context, zacContext);
  }
}

@freezedZacBuilder
class FlutterBorder with _$FlutterBorder implements ZacBuilder<Border> {
  const FlutterBorder._();

  static const String unionValue = 'f:1:Border';
  static const String unionValueAll = 'f:1:Border.all';

  factory FlutterBorder.fromJson(Map<String, dynamic> json) =>
      _$FlutterBorderFromJson(json);

  @FreezedUnionValue(FlutterBorder.unionValue)
  factory FlutterBorder({
    ZacBuilder<BorderSide?>? top,
    ZacBuilder<BorderSide?>? right,
    ZacBuilder<BorderSide?>? bottom,
    ZacBuilder<BorderSide?>? left,
  }) = _FlutterBorder;

  @FreezedUnionValue(FlutterBorder.unionValueAll)
  factory FlutterBorder.all({
    ZacBuilder<Color?>? color,
    ZacBuilder<double?>? width,
    ZacBuilder<BorderStyle?>? style,
  }) = _FlutterBorderAll;

  Border _build(BuildContext context, ZacContext zacContext) {
    return map(
      (value) => Border(
        top: value.top?.build(context, zacContext) ?? BorderSide.none,
        right: value.right?.build(context, zacContext) ?? BorderSide.none,
        bottom: value.bottom?.build(context, zacContext) ?? BorderSide.none,
        left: value.left?.build(context, zacContext) ?? BorderSide.none,
      ),
      all: (value) => Border.all(
        color:
            value.color?.build(context, zacContext) ?? const Color(0xFF000000),
        width: value.width?.build(context, zacContext) ?? 1.0,
        style: value.style?.build(context, zacContext) ?? BorderStyle.solid,
      ),
    );
  }

  @override
  Border build(BuildContext context, ZacContext zacContext) {
    return _build(context, zacContext);
  }
}

@freezedZacBuilder
class FlutterBorderStyle with _$FlutterBorderStyle, ZacBuilder<BorderStyle> {
  const FlutterBorderStyle._();

  factory FlutterBorderStyle.fromJson(Map<String, dynamic> json) =>
      _$FlutterBorderStyleFromJson(json);

  @FreezedUnionValue('f:1:BorderStyle.none')
  factory FlutterBorderStyle.none() = _FlutterBorderStyleNone;

  @FreezedUnionValue('f:1:BorderStyle.solid')
  factory FlutterBorderStyle.solid() = _FlutterBorderStyleSolid;

  BorderStyle _build(BuildContext context, ZacContext zacContext) {
    return map(
      none: (_) => BorderStyle.none,
      solid: (_) => BorderStyle.solid,
    );
  }

  @override
  BorderStyle build(BuildContext context, ZacContext zacContext) {
    return _build(context, zacContext);
  }
}

@freezedZacBuilder
class FlutterBorderRadius
    with _$FlutterBorderRadius
    implements ZacBuilder<BorderRadius> {
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
  factory FlutterBorderRadius.circular(ZacBuilder<double> radius) =
      _FlutterBorderRadiusCircular;

  @FreezedUnionValue(FlutterBorderRadius.unionValueHorizontal)
  factory FlutterBorderRadius.horizontal({
    ZacBuilder<Radius?>? left,
    ZacBuilder<Radius?>? right,
  }) = _FlutterBorderRadiusHorizontal;

  BorderRadius _build(BuildContext context, ZacContext zacContext) {
    return map(
      all: (value) => BorderRadius.all(value.radius.build(context, zacContext)),
      circular: (value) =>
          BorderRadius.circular(value.radius.build(context, zacContext)),
      horizontal: (value) => BorderRadius.horizontal(
        left: value.left?.build(context, zacContext) ?? Radius.zero,
        right: value.right?.build(context, zacContext) ?? Radius.zero,
      ),
    );
  }

  @override
  BorderRadius build(BuildContext context, ZacContext zacContext) {
    return _build(context, zacContext);
  }
}

@freezedZacBuilder
class FlutterBorderSide with _$FlutterBorderSide, ZacBuilder<BorderSide> {
  const FlutterBorderSide._();

  factory FlutterBorderSide.fromJson(Map<String, dynamic> json) =>
      _$FlutterBorderSideFromJson(json);

  @FreezedUnionValue('f:1:BorderSide')
  factory FlutterBorderSide({
    ZacBuilder<Color?>? color,
    ZacBuilder<double?>? width,
    ZacBuilder<BorderStyle?>? style,
  }) = _FlutterBorderSide;

  BorderSide _build(BuildContext context, ZacContext zacContext) {
    return BorderSide(
      color: color?.build(context, zacContext) ?? const Color(0xFF000000),
      width: width?.build(context, zacContext) ?? 1.0,
      style: style?.build(context, zacContext) ?? BorderStyle.solid,
    );
  }

  @override
  BorderSide build(BuildContext context, ZacContext zacContext) {
    return _build(context, zacContext);
  }
}

@freezedZacBuilder
class FlutterCircleBorder
    with _$FlutterCircleBorder
    implements ZacBuilder<CircleBorder> {
  const FlutterCircleBorder._();

  static const String unionValue = 'f:1:CircleBorder';

  factory FlutterCircleBorder.fromJson(Map<String, dynamic> json) =>
      _$FlutterCircleBorderFromJson(json);

  @FreezedUnionValue(FlutterCircleBorder.unionValue)
  factory FlutterCircleBorder({ZacBuilder<BorderSide?>? side}) =
      _FlutterCircleBorder;

  CircleBorder _build(BuildContext context, ZacContext zacContext) {
    return CircleBorder(
        side: side?.build(context, zacContext) ?? BorderSide.none);
  }

  @override
  CircleBorder build(BuildContext context, ZacContext zacContext) {
    return _build(context, zacContext);
  }
}

@freezedZacBuilder
class FlutterRoundedRectangleBorder
    with _$FlutterRoundedRectangleBorder
    implements ZacBuilder<RoundedRectangleBorder> {
  const FlutterRoundedRectangleBorder._();

  static const String unionValue = 'f:1:RoundedRectangleBorder';

  factory FlutterRoundedRectangleBorder.fromJson(Map<String, dynamic> json) =>
      _$FlutterRoundedRectangleBorderFromJson(json);

  @FreezedUnionValue(FlutterRoundedRectangleBorder.unionValue)
  factory FlutterRoundedRectangleBorder({
    ZacBuilder<BorderSide?>? side,
    ZacBuilder<BorderRadiusGeometry?>? borderRadius,
  }) = _FlutterRoundedRectangleBorder;

  RoundedRectangleBorder _build(BuildContext context, ZacContext zacContext) {
    return RoundedRectangleBorder(
      side: side?.build(context, zacContext) ?? BorderSide.none,
      borderRadius:
          borderRadius?.build(context, zacContext) ?? BorderRadius.zero,
    );
  }

  @override
  RoundedRectangleBorder build(BuildContext context, ZacContext zacContext) {
    return _build(context, zacContext);
  }
}

@freezedZacBuilder
class FlutterBoxDecoration
    with _$FlutterBoxDecoration
    implements ZacBuilder<BoxDecoration> {
  const FlutterBoxDecoration._();

  static const String unionValue = 'f:1:BoxDecoration';

  factory FlutterBoxDecoration.fromJson(Map<String, dynamic> json) =>
      _$FlutterBoxDecorationFromJson(json);

  @FreezedUnionValue(FlutterBoxDecoration.unionValue)
  factory FlutterBoxDecoration({
    ZacBuilder<Color?>? color,
    ZacBuilder<BoxBorder?>? border,
    ZacBuilder<BorderRadiusGeometry?>? borderRadius,
    List<FlutterBoxShadow>? boxShadow,
    ZacBuilder<BoxShape?>? shape,
    ZacBuilder<BlendMode?>? backgroundBlendMode,
  }) = _FlutterBoxDecoration;

  BoxDecoration _build(BuildContext context, ZacContext zacContext) {
    return BoxDecoration(
        color: color?.build(context, zacContext),
        border: border?.build(context, zacContext),
        borderRadius: borderRadius?.build(context, zacContext),
        boxShadow: boxShadow?.map((e) => e.build(context, zacContext)).toList(),
        shape: shape?.build(context, zacContext) ?? BoxShape.rectangle,
        backgroundBlendMode: backgroundBlendMode?.build(context, zacContext));
  }

  @override
  BoxDecoration build(BuildContext context, ZacContext zacContext) {
    return _build(context, zacContext);
  }
}

@freezedZacBuilder
class FlutterShapeDecoration
    with _$FlutterShapeDecoration
    implements ZacBuilder<ShapeDecoration> {
  const FlutterShapeDecoration._();

  static const String unionValue = 'f:1:ShapeDecoration';

  factory FlutterShapeDecoration.fromJson(Map<String, dynamic> json) =>
      _$FlutterShapeDecorationFromJson(json);

  @FreezedUnionValue(FlutterShapeDecoration.unionValue)
  factory FlutterShapeDecoration({
    ZacBuilder<Color?>? color,
    ZacBuilder<DecorationImage?>? image,
    ZacBuilder<Gradient?>? gradient,
    List<FlutterBoxShadow>? shadows,
    required ZacBuilder<ShapeBorder> shape,
  }) = _FlutterShapeDecoration;

  ShapeDecoration _build(BuildContext context, ZacContext zacContext) {
    return ShapeDecoration(
      color: color?.build(context, zacContext),
      shadows: shadows?.map((e) => e.build(context, zacContext)).toList(),
      shape: shape.build(context, zacContext),
      image: image?.build(context, zacContext),
      gradient: gradient?.build(context, zacContext),
    );
  }

  @override
  ShapeDecoration build(BuildContext context, ZacContext zacContext) {
    return _build(context, zacContext);
  }
}

@freezedZacBuilder
class FlutterEdgeInsets
    with _$FlutterEdgeInsets
    implements ZacBuilder<EdgeInsets> {
  const FlutterEdgeInsets._();

  static const unionValueAll = 'f:1:EdgeInsets.all';
  static const unionValueSymmetric = 'f:1:EdgeInsets.symmetric';
  static const unionValueOnly = 'f:1:EdgeInsets.only';

  factory FlutterEdgeInsets.fromJson(Map<String, dynamic> json) =>
      _$FlutterEdgeInsetsFromJson(json);

  @FreezedUnionValue(FlutterEdgeInsets.unionValueAll)
  factory FlutterEdgeInsets.all(ZacBuilder<double> value) =
      _FlutterEdgeInsetsAll;

  @FreezedUnionValue(FlutterEdgeInsets.unionValueSymmetric)
  factory FlutterEdgeInsets.symmetric({
    ZacBuilder<double?>? vertical,
    ZacBuilder<double?>? horizontal,
  }) = _FlutterEdgeInsetsSymmetric;

  @FreezedUnionValue(FlutterEdgeInsets.unionValueOnly)
  factory FlutterEdgeInsets.only({
    ZacBuilder<double?>? left,
    ZacBuilder<double?>? top,
    ZacBuilder<double?>? right,
    ZacBuilder<double?>? bottom,
  }) = _FlutterEdgeInsetsOnly;

  EdgeInsets _build(BuildContext context, ZacContext zacContext) {
    return map(
      all: (value) => EdgeInsets.all(value.value.build(context, zacContext)),
      symmetric: (value) => EdgeInsets.symmetric(
        vertical: value.vertical?.build(context, zacContext) ?? 0.0,
        horizontal: value.horizontal?.build(context, zacContext) ?? 0.0,
      ),
      only: (value) => EdgeInsets.only(
        left: value.left?.build(context, zacContext) ?? 0.0,
        top: value.top?.build(context, zacContext) ?? 0.0,
        right: value.right?.build(context, zacContext) ?? 0.0,
        bottom: value.bottom?.build(context, zacContext) ?? 0.0,
      ),
    );
  }

  @override
  EdgeInsets build(BuildContext context, ZacContext zacContext) {
    return _build(context, zacContext);
  }
}

@freezedZacBuilder
class FlutterEdgeInsetsDirectional
    with _$FlutterEdgeInsetsDirectional
    implements ZacBuilder<EdgeInsetsDirectional> {
  const FlutterEdgeInsetsDirectional._();

  static const String unionValueAll = 'f:1:EdgeInsetsDirectional.all';

  static const String unionValueOnly = 'f:1:EdgeInsetsDirectional.only';

  factory FlutterEdgeInsetsDirectional.fromJson(Map<String, dynamic> json) =>
      _$FlutterEdgeInsetsDirectionalFromJson(json);

  @FreezedUnionValue(FlutterEdgeInsetsDirectional.unionValueAll)
  factory FlutterEdgeInsetsDirectional.all(ZacBuilder<double> value) =
      _FlutterEdgeInsetsDirectionalAll;

  @FreezedUnionValue(FlutterEdgeInsetsDirectional.unionValueOnly)
  factory FlutterEdgeInsetsDirectional.only({
    ZacBuilder<double?>? start,
    ZacBuilder<double?>? top,
    ZacBuilder<double?>? end,
    ZacBuilder<double?>? bottom,
  }) = _FlutterEdgeInsetsDirectionalOnly;

  EdgeInsetsDirectional _build(BuildContext context, ZacContext zacContext) {
    return map(
      all: (value) =>
          EdgeInsetsDirectional.all(value.value.build(context, zacContext)),
      only: (value) => EdgeInsetsDirectional.only(
        start: value.start?.build(context, zacContext) ?? 0.0,
        top: value.top?.build(context, zacContext) ?? 0.0,
        end: value.end?.build(context, zacContext) ?? 0.0,
        bottom: value.bottom?.build(context, zacContext) ?? 0.0,
      ),
    );
  }

  @override
  EdgeInsetsDirectional build(BuildContext context, ZacContext zacContext) {
    return _build(context, zacContext);
  }
}
