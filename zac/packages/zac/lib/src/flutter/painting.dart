import 'package:zac/src/converter.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/base.dart';

part 'painting.freezed.dart';
part 'painting.g.dart';

@defaultConverterFreezed
@ZacGenerate(order: zacGenerateOrderDartClasses)
class FlutterBoxShape with _$FlutterBoxShape {
  const FlutterBoxShape._();

  factory FlutterBoxShape.fromJson(Map<String, dynamic> json) =>
      _$FlutterBoxShapeFromJson(json);

  @FreezedUnionValue('f:1:BoxShape.circle')
  factory FlutterBoxShape.circle() = _FlutterBoxShapeCircle;

  @FreezedUnionValue('f:1:BoxShape.rectangle')
  factory FlutterBoxShape.rectangle() = _FlutterBoxShapeRectangle;

  BoxShape build(ZacContext zacContext) {
    return map(
      circle: (_) => BoxShape.circle,
      rectangle: (_) => BoxShape.rectangle,
    );
  }
}

@defaultConverterFreezed
@ZacGenerate(order: zacGenerateOrderDartClasses)
class FlutterAxis with _$FlutterAxis {
  const FlutterAxis._();

  factory FlutterAxis.fromJson(Map<String, dynamic> json) =>
      _$FlutterAxisFromJson(json);

  @FreezedUnionValue('f:1:Axis.horizontal')
  factory FlutterAxis.horizontal() = _FlutterAxisHori;

  @FreezedUnionValue('f:1:Axis.vertical')
  factory FlutterAxis.vertical() = _FlutterAxisVertical;

  Axis build(ZacContext zacContext) {
    return map(
        horizontal: (_) => Axis.horizontal, vertical: (_) => Axis.vertical);
  }
}

@defaultConverterFreezed
@ZacGenerate(order: zacGenerateOrderDartClasses)
class FlutterVerticalDirection with _$FlutterVerticalDirection {
  const FlutterVerticalDirection._();

  factory FlutterVerticalDirection.fromJson(Map<String, dynamic> json) =>
      _$FlutterVerticalDirectionFromJson(json);

  @FreezedUnionValue('f:1:VerticalDirection.up')
  factory FlutterVerticalDirection.up() = _FlutterVerticalDirectionUp;

  @FreezedUnionValue('f:1:VerticalDirection.down')
  factory FlutterVerticalDirection.down() = _FlutterVerticalDirectionDown;

  VerticalDirection build(ZacContext zacContext) {
    return map(
        up: (_) => VerticalDirection.up, down: (_) => VerticalDirection.down);
  }
}

@defaultConverterFreezed
@ZacGenerate(order: zacGenerateOrderDartClasses)
class FlutterTextOverflow with _$FlutterTextOverflow {
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

  TextOverflow build(ZacContext zacContext) {
    return map(
      clip: (_) => TextOverflow.clip,
      ellipsis: (_) => TextOverflow.ellipsis,
      fade: (_) => TextOverflow.fade,
      visible: (_) => TextOverflow.visible,
    );
  }
}

@defaultConverterFreezed
@ZacGenerate(order: zacGenerateOrderDartClasses)
class FlutterStrutStyle with _$FlutterStrutStyle {
  const FlutterStrutStyle._();

  factory FlutterStrutStyle.fromJson(Map<String, dynamic> json) =>
      _$FlutterStrutStyleFromJson(json);

  @FreezedUnionValue('f:1:StrutStyle')
  factory FlutterStrutStyle({
    ZacValue<String>? fontFamily,
    List<String>? fontFamilyFallback,
    ZacValue<double>? fontSize,
    ZacValue<double>? height,
    FlutterTextLeadingDistribution? leadingDistribution,
    ZacValue<double>? leading,
    FlutterFontWeight? fontWeight,
    FlutterFontStyle? fontStyle,
    ZacValue<bool>? forceStrutHeight,
    ZacValue<String>? debugLabel,
    ZacValue<String>? package,
  }) = _FlutterStrutStyle;

  @FreezedUnionValue('f:1:StrutStyle.fromTextStyle')
  factory FlutterStrutStyle.fromTextStyle(
    FlutterTextStyle textStyle, {
    ZacValue<String>? fontFamily,
    List<String>? fontFamilyFallback,
    ZacValue<double>? fontSize,
    ZacValue<double>? height,
    FlutterTextLeadingDistribution? leadingDistribution,
    ZacValue<double>? leading,
    FlutterFontWeight? fontWeight,
    FlutterFontStyle? fontStyle,
    ZacValue<bool>? forceStrutHeight,
    ZacValue<String>? debugLabel,
    ZacValue<String>? package,
  }) = _FlutterStrutStyleFromTextStyle;

  StrutStyle build(ZacContext zacContext) {
    return map(
      (_) => StrutStyle(
        fontFamily: fontFamily?.getValue(zacContext),
        fontFamilyFallback: fontFamilyFallback,
        fontSize: fontSize?.getValue(zacContext),
        height: height?.getValue(zacContext),
        leadingDistribution: leadingDistribution?.build(zacContext),
        leading: leading?.getValue(zacContext),
        fontWeight: fontWeight?.build(zacContext),
        fontStyle: fontStyle?.build(zacContext),
        forceStrutHeight: forceStrutHeight?.getValue(zacContext),
        debugLabel: debugLabel?.getValue(zacContext),
        package: package?.getValue(zacContext),
      ),
      fromTextStyle: (value) => StrutStyle.fromTextStyle(
        value.textStyle.build(zacContext),
        fontFamily: fontFamily?.getValue(zacContext),
        fontFamilyFallback: fontFamilyFallback,
        fontSize: fontSize?.getValue(zacContext),
        height: height?.getValue(zacContext),
        leadingDistribution: leadingDistribution?.build(zacContext),
        leading: leading?.getValue(zacContext),
        fontWeight: fontWeight?.build(zacContext),
        fontStyle: fontStyle?.build(zacContext),
        forceStrutHeight: forceStrutHeight?.getValue(zacContext),
        debugLabel: debugLabel?.getValue(zacContext),
        package: package?.getValue(zacContext),
      ),
    );
  }
}

@defaultConverterFreezed
@ZacGenerate(order: zacGenerateOrderDartClasses)
class FlutterTextWidthBasis with _$FlutterTextWidthBasis {
  const FlutterTextWidthBasis._();

  factory FlutterTextWidthBasis.fromJson(Map<String, dynamic> json) =>
      _$FlutterTextWidthBasisFromJson(json);

  @FreezedUnionValue('f:1:TextWidthBasis.longestLine')
  factory FlutterTextWidthBasis.longestLine() =
      _FlutterTextWidthBasisLongestLine;

  @FreezedUnionValue('f:1:TextWidthBasis.parent')
  factory FlutterTextWidthBasis.parent() = _FlutterTextWidthBasisParent;

  TextWidthBasis build(ZacContext zacContext) {
    return map(
        longestLine: (_) => TextWidthBasis.longestLine,
        parent: (_) => TextWidthBasis.parent);
  }
}

@defaultConverterFreezed
@ZacGenerate(order: zacGenerateOrderDartClasses)
class FlutterBoxFit with _$FlutterBoxFit {
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

  BoxFit build(ZacContext zacContext) {
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
}

@defaultConverterFreezed
@ZacGenerate(order: zacGenerateOrderDartClasses)
class FlutterImageRepeat with _$FlutterImageRepeat {
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

  ImageRepeat build(ZacContext zacContext) {
    return map(
      noRepeat: (_) => ImageRepeat.noRepeat,
      repeat: (_) => ImageRepeat.repeat,
      repeatX: (_) => ImageRepeat.repeatX,
      repeatY: (_) => ImageRepeat.repeatY,
    );
  }
}

@defaultConverterFreezed
@ZacGenerate(order: zacGenerateOrderDartClasses)
class FlutterTextStyle with _$FlutterTextStyle {
  const FlutterTextStyle._();

  factory FlutterTextStyle.fromJson(Map<String, dynamic> json) =>
      _$FlutterTextStyleFromJson(json);

  @FreezedUnionValue('f:1:TextStyle')
  factory FlutterTextStyle({
    ZacValue<bool>? inherit,
    FlutterColor? color,
    FlutterColor? backgroundColor,
    ZacValue<double>? fontSize,
    FlutterFontWeight? fontWeight,
    FlutterFontStyle? fontStyle,
    ZacValue<double>? letterSpacing,
    ZacValue<double>? wordSpacing,
    FlutterTextBaseline? textBaseline,
    ZacValue<double>? height,
    FlutterTextLeadingDistribution? leadingDistribution,
    FlutterLocale? locale,
// Paint? foreground,
// Paint? background,
    List<DartShadow>? shadows,
    List<FlutterFontFeature>? fontFeatures,
    FlutterTextDecoration? decoration,
    FlutterColor? decorationColor,
    FlutterTextDecorationStyle? decorationStyle,
    ZacValue<double>? decorationThickness,
    ZacValue<String>? debugLabel,
    ZacValue<String>? fontFamily,
    List<String>? fontFamilyFallback,
    ZacValue<String>? package,
    FlutterTextOverflow? overflow,
  }) = _FlutterTextStyle;

  TextStyle build(ZacContext zacContext) {
    return TextStyle(
      inherit: inherit?.getValue(zacContext) ?? true,
      color: color?.build(zacContext),
      backgroundColor: backgroundColor?.build(zacContext),
      fontSize: fontSize?.getValue(zacContext),
      fontWeight: fontWeight?.build(zacContext),
      fontStyle: fontStyle?.build(zacContext),
      letterSpacing: letterSpacing?.getValue(zacContext),
      wordSpacing: wordSpacing?.getValue(zacContext),
      textBaseline: textBaseline?.build(zacContext),
      height: height?.getValue(zacContext),
      leadingDistribution: leadingDistribution?.build(zacContext),
      locale: locale?.build(zacContext),
      shadows: shadows?.map((e) => e.build(zacContext)).toList(),
      fontFeatures: fontFeatures?.map((e) => e.build(zacContext)).toList(),
      decoration: decoration?.build(zacContext),
      decorationColor: decorationColor?.build(zacContext),
      decorationStyle: decorationStyle?.build(zacContext),
      decorationThickness: decorationThickness?.getValue(zacContext),
      debugLabel: debugLabel?.getValue(zacContext),
      fontFamily: fontFamily?.getValue(zacContext),
      fontFamilyFallback: fontFamilyFallback,
      package: package?.getValue(zacContext),
      overflow: overflow?.build(zacContext),
    );
  }
}

@defaultConverterFreezed
@ZacGenerate(order: zacGenerateOrderDartClasses)
class FlutterTextAlignVertical with _$FlutterTextAlignVertical {
  const FlutterTextAlignVertical._();

  factory FlutterTextAlignVertical.fromJson(Map<String, dynamic> json) =>
      _$FlutterTextAlignVerticalFromJson(json);

  @FreezedUnionValue('f:1:TextAlignVertical')
  factory FlutterTextAlignVertical({required ZacValue<double> y}) =
      _FlutterTextAlignVertical;
  @FreezedUnionValue('f:1:TextAlignVertical.bottom')
  factory FlutterTextAlignVertical.bottom() = _FlutterTextAlignVerticalbottom;
  @FreezedUnionValue('f:1:TextAlignVertical.center')
  factory FlutterTextAlignVertical.center() = _FlutterTextAlignVerticalcenter;
  @FreezedUnionValue('f:1:TextAlignVertical.top')
  factory FlutterTextAlignVertical.top() = _FlutterTextAlignVerticaltop;

  TextAlignVertical build(ZacContext zacContext) {
    return map(
      (value) => TextAlignVertical(y: value.y.getValue(zacContext)),
      bottom: (_) => TextAlignVertical.bottom,
      center: (_) => TextAlignVertical.center,
      top: (_) => TextAlignVertical.top,
    );
  }
}

@defaultConverterFreezed
@ZacGenerate(order: zacGenerateOrderDartClasses)
class FlutterBoxShadow with _$FlutterBoxShadow implements DartShadow {
  const FlutterBoxShadow._();

  static const String unionValue = 'f:1:BoxShadow';

  factory FlutterBoxShadow.fromJson(Map<String, dynamic> json) =>
      _$FlutterBoxShadowFromJson(json);

  @FreezedUnionValue(FlutterBoxShadow.unionValue)
  factory FlutterBoxShadow({
    FlutterColor? color,
    FlutterOffset? offset,
    ZacValue<double>? blurRadius,
    ZacValue<double>? spreadRadius,
    FlutterBlurStyle? blurStyle,
  }) = _FlutterBoxShadow;

  @override
  BoxShadow build(ZacContext zacContext) {
    return BoxShadow(
      color: color?.build(zacContext) ?? const Color(0xFF000000),
      offset: offset?.build(zacContext) ?? Offset.zero,
      blurRadius: blurRadius?.getValue(zacContext) ?? 0.0,
      spreadRadius: spreadRadius?.getValue(zacContext) ?? 0.0,
      blurStyle: blurStyle?.build(zacContext) ?? BlurStyle.normal,
    );
  }
}

@ZacGenerate(order: zacGenerateOrderFlutterAbstractsA)
abstract class FlutterAlignmentGeometry {
  factory FlutterAlignmentGeometry.fromJson(Object data) {
    return ConverterHelper.convertToType<FlutterAlignmentGeometry>(data);
  }

  AlignmentGeometry build(ZacContext zacContext);
}

@defaultConverterFreezed
@ZacGenerate(order: zacGenerateOrderDartClasses)
class FlutterAlignment
    with _$FlutterAlignment
    implements FlutterAlignmentGeometry {
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
  factory FlutterAlignment(ZacValue<double> x, ZacValue<double> y) =
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

  @override
  Alignment build(ZacContext zacContext) {
    return map(
      (value) =>
          Alignment(value.x.getValue(zacContext), value.y.getValue(zacContext)),
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
}

@defaultConverterFreezed
@ZacGenerate(order: zacGenerateOrderDartClasses)
class FlutterAlignmentDirectional
    with _$FlutterAlignmentDirectional
    implements FlutterAlignmentGeometry {
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
          ZacValue<double> start, ZacValue<double> y) =
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

  @override
  AlignmentDirectional build(ZacContext zacContext) {
    return map(
      (value) => AlignmentDirectional(
          value.start.getValue(zacContext), value.y.getValue(zacContext)),
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
}

@defaultConverterFreezed
@ZacGenerate(order: zacGenerateOrderDartClasses)
class FlutterFractionalOffset
    with _$FlutterFractionalOffset
    implements FlutterAlignmentGeometry {
  const FlutterFractionalOffset._();

  static const String unionValue = 'f:1:FractionalOffset';

  factory FlutterFractionalOffset.fromJson(Map<String, dynamic> json) =>
      _$FlutterFractionalOffsetFromJson(json);

  @FreezedUnionValue(FlutterFractionalOffset.unionValue)
  factory FlutterFractionalOffset(ZacValue<double> dx, ZacValue<double> dy) =
      _FlutterFractionalOffset;

  @override
  FractionalOffset build(ZacContext zacContext) {
    return FractionalOffset(dx.getValue(zacContext), dy.getValue(zacContext));
  }
}

@ZacGenerate(order: zacGenerateOrderFlutterAbstractsA)
abstract class FlutterShapeBorder {
  factory FlutterShapeBorder.fromJson(Object data) {
    return ConverterHelper.convertToType<FlutterShapeBorder>(data);
  }

  ShapeBorder build(ZacContext zacContext);
}

@ZacGenerate(order: zacGenerateOrderFlutterAbstractsA)
abstract class FlutterBoxBorder implements FlutterShapeBorder {
  factory FlutterBoxBorder.fromJson(Object data) {
    return ConverterHelper.convertToType<FlutterBoxBorder>(data);
  }

  @override
  BoxBorder build(ZacContext zacContext);
}

@defaultConverterFreezed
@ZacGenerate(order: zacGenerateOrderDartClasses)
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
  BorderDirectional build(ZacContext zacContext) {
    return BorderDirectional(
      top: top?.build(zacContext) ?? BorderSide.none,
      start: start?.build(zacContext) ?? BorderSide.none,
      bottom: bottom?.build(zacContext) ?? BorderSide.none,
      end: end?.build(zacContext) ?? BorderSide.none,
    );
  }
}

@defaultConverterFreezed
@ZacGenerate(order: zacGenerateOrderDartClasses)
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
    ZacValue<double>? width,
    FlutterBorderStyle? style,
  }) = _FlutterBorderAll;

  @override
  Border build(ZacContext zacContext) {
    return map(
      (value) => Border(
        top: value.top?.build(zacContext) ?? BorderSide.none,
        right: value.right?.build(zacContext) ?? BorderSide.none,
        bottom: value.bottom?.build(zacContext) ?? BorderSide.none,
        left: value.left?.build(zacContext) ?? BorderSide.none,
      ),
      all: (value) => Border.all(
        color: value.color?.build(zacContext) ?? const Color(0xFF000000),
        width: value.width?.getValue(zacContext) ?? 1.0,
        style: value.style?.build(zacContext) ?? BorderStyle.solid,
      ),
    );
  }
}

@defaultConverterFreezed
@ZacGenerate(order: zacGenerateOrderDartClasses)
class FlutterBorderStyle with _$FlutterBorderStyle {
  const FlutterBorderStyle._();

  factory FlutterBorderStyle.fromJson(Map<String, dynamic> json) =>
      _$FlutterBorderStyleFromJson(json);

  @FreezedUnionValue('f:1:BorderStyle.none')
  factory FlutterBorderStyle.none() = _FlutterBorderStyleNone;

  @FreezedUnionValue('f:1:BorderStyle.solid')
  factory FlutterBorderStyle.solid() = _FlutterBorderStyleSolid;

  BorderStyle build(ZacContext zacContext) {
    return map(
      none: (_) => BorderStyle.none,
      solid: (_) => BorderStyle.solid,
    );
  }
}

@ZacGenerate(order: zacGenerateOrderFlutterAbstractsA)
abstract class FlutterBorderRadiusGeometry {
  factory FlutterBorderRadiusGeometry.fromJson(Object data) {
    return ConverterHelper.convertToType<FlutterBorderRadiusGeometry>(data);
  }

  BorderRadiusGeometry build(ZacContext zacContext);
}

@defaultConverterFreezed
@ZacGenerate(order: zacGenerateOrderDartClasses)
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
  factory FlutterBorderRadius.circular(ZacValue<double> radius) =
      _FlutterBorderRadiusCircular;

  @FreezedUnionValue(FlutterBorderRadius.unionValueHorizontal)
  factory FlutterBorderRadius.horizontal({
    FlutterRadius? left,
    FlutterRadius? right,
  }) = _FlutterBorderRadiusHorizontal;

  @override
  BorderRadius build(ZacContext zacContext) {
    return map(
      all: (value) => BorderRadius.all(value.radius.build(zacContext)),
      circular: (value) =>
          BorderRadius.circular(value.radius.getValue(zacContext)),
      horizontal: (value) => BorderRadius.horizontal(
        left: value.left?.build(zacContext) ?? Radius.zero,
        right: value.right?.build(zacContext) ?? Radius.zero,
      ),
    );
  }
}

@defaultConverterFreezed
@ZacGenerate(order: zacGenerateOrderDartClasses)
class FlutterBorderSide with _$FlutterBorderSide {
  const FlutterBorderSide._();

  factory FlutterBorderSide.fromJson(Map<String, dynamic> json) =>
      _$FlutterBorderSideFromJson(json);

  @FreezedUnionValue('f:1:BorderSide')
  factory FlutterBorderSide({
    FlutterColor? color,
    ZacValue<double>? width,
    FlutterBorderStyle? style,
  }) = _FlutterBorderSide;

  BorderSide build(ZacContext zacContext) {
    return BorderSide(
      color: color?.build(zacContext) ?? const Color(0xFF000000),
      width: width?.getValue(zacContext) ?? 1.0,
      style: style?.build(zacContext) ?? BorderStyle.solid,
    );
  }
}

@ZacGenerate(order: zacGenerateOrderFlutterAbstractsA)
abstract class FlutterOutlinedBorder implements FlutterShapeBorder {
  factory FlutterOutlinedBorder.fromJson(Object data) {
    return ConverterHelper.convertToType<FlutterOutlinedBorder>(data);
  }

  @override
  OutlinedBorder build(ZacContext zacContext);
}

@defaultConverterFreezed
@ZacGenerate(order: zacGenerateOrderDartClasses)
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
  CircleBorder build(ZacContext zacContext) {
    return CircleBorder(side: side?.build(zacContext) ?? BorderSide.none);
  }
}

@defaultConverterFreezed
@ZacGenerate(order: zacGenerateOrderDartClasses)
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
  RoundedRectangleBorder build(ZacContext zacContext) {
    return RoundedRectangleBorder(
      side: side?.build(zacContext) ?? BorderSide.none,
      borderRadius: borderRadius?.build(zacContext) ?? BorderRadius.zero,
    );
  }
}

@ZacGenerate(order: zacGenerateOrderFlutterAbstractsA)
abstract class FlutterDecoration {
  factory FlutterDecoration.fromJson(Object data) {
    return ConverterHelper.convertToType<FlutterDecoration>(data);
  }

  Decoration build(ZacContext zacContext);
}

@defaultConverterFreezed
@ZacGenerate(order: zacGenerateOrderDartClasses)
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
  BoxDecoration build(ZacContext zacContext) {
    return BoxDecoration(
        color: color?.build(zacContext),
        border: border?.build(zacContext),
        borderRadius: borderRadius?.build(zacContext),
        boxShadow: boxShadow?.map((e) => e.build(zacContext)).toList(),
        shape: shape?.build(zacContext) ?? BoxShape.rectangle,
        backgroundBlendMode: backgroundBlendMode?.build(zacContext));
  }
}

@defaultConverterFreezed
@ZacGenerate(order: zacGenerateOrderDartClasses)
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
  ShapeDecoration build(ZacContext zacContext) {
    return ShapeDecoration(
      color: color?.build(zacContext),
      shadows: shadows?.map((e) => e.build(zacContext)).toList(),
      shape: shape.build(zacContext),
    );
  }
}

@ZacGenerate(order: zacGenerateOrderFlutterAbstractsA)
abstract class FlutterEdgeInsetsGeometry {
  factory FlutterEdgeInsetsGeometry.fromJson(Object data) {
    return ConverterHelper.convertToType<FlutterEdgeInsetsGeometry>(data);
  }

  EdgeInsetsGeometry build(ZacContext zacContext);
}

@defaultConverterFreezed
@ZacGenerate(order: zacGenerateOrderDartClasses)
class FlutterEdgeInsets
    with _$FlutterEdgeInsets
    implements FlutterEdgeInsetsGeometry {
  const FlutterEdgeInsets._();

  static const unionValueAll = 'f:1:EdgeInsets.all';
  static const unionValueSymmetric = 'f:1:EdgeInsets.symmetric';
  static const unionValueOnly = 'f:1:EdgeInsets.only';

  factory FlutterEdgeInsets.fromJson(Map<String, dynamic> json) =>
      _$FlutterEdgeInsetsFromJson(json);

  @FreezedUnionValue(FlutterEdgeInsets.unionValueAll)
  factory FlutterEdgeInsets.all(ZacValue<double> value) = _FlutterEdgeInsetsAll;

  @FreezedUnionValue(FlutterEdgeInsets.unionValueSymmetric)
  factory FlutterEdgeInsets.symmetric({
    ZacValue<double>? vertical,
    ZacValue<double>? horizontal,
  }) = _FlutterEdgeInsetsSymmetric;

  @FreezedUnionValue(FlutterEdgeInsets.unionValueOnly)
  factory FlutterEdgeInsets.only({
    ZacValue<double>? left,
    ZacValue<double>? top,
    ZacValue<double>? right,
    ZacValue<double>? bottom,
  }) = _FlutterEdgeInsetsOnly;

  @override
  EdgeInsets build(ZacContext zacContext) {
    return map(
      all: (value) => EdgeInsets.all(value.value.getValue(zacContext)),
      symmetric: (value) => EdgeInsets.symmetric(
        vertical: value.vertical?.getValue(zacContext) ?? 0.0,
        horizontal: value.horizontal?.getValue(zacContext) ?? 0.0,
      ),
      only: (value) => EdgeInsets.only(
        left: value.left?.getValue(zacContext) ?? 0.0,
        top: value.top?.getValue(zacContext) ?? 0.0,
        right: value.right?.getValue(zacContext) ?? 0.0,
        bottom: value.bottom?.getValue(zacContext) ?? 0.0,
      ),
    );
  }
}

@defaultConverterFreezed
@ZacGenerate(order: zacGenerateOrderDartClasses)
class FlutterEdgeInsetsDirectional
    with _$FlutterEdgeInsetsDirectional
    implements FlutterEdgeInsetsGeometry {
  const FlutterEdgeInsetsDirectional._();

  static const String unionValueAll = 'f:1:EdgeInsetsDirectional.all';

  static const String unionValueOnly = 'f:1:EdgeInsetsDirectional.only';

  factory FlutterEdgeInsetsDirectional.fromJson(Map<String, dynamic> json) =>
      _$FlutterEdgeInsetsDirectionalFromJson(json);

  @FreezedUnionValue(FlutterEdgeInsetsDirectional.unionValueAll)
  factory FlutterEdgeInsetsDirectional.all(ZacValue<double> value) =
      _FlutterEdgeInsetsDirectionalAll;

  @FreezedUnionValue(FlutterEdgeInsetsDirectional.unionValueOnly)
  factory FlutterEdgeInsetsDirectional.only({
    ZacValue<double>? start,
    ZacValue<double>? top,
    ZacValue<double>? end,
    ZacValue<double>? bottom,
  }) = _FlutterEdgeInsetsDirectionalOnly;

  @override
  EdgeInsetsDirectional build(ZacContext zacContext) {
    return map(
      all: (value) =>
          EdgeInsetsDirectional.all(value.value.getValue(zacContext)),
      only: (value) => EdgeInsetsDirectional.only(
        start: value.start?.getValue(zacContext) ?? 0.0,
        top: value.top?.getValue(zacContext) ?? 0.0,
        end: value.end?.getValue(zacContext) ?? 0.0,
        bottom: value.bottom?.getValue(zacContext) ?? 0.0,
      ),
    );
  }
}
