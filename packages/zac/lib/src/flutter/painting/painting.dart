import 'package:zac/src/zac/any_value/any_value.dart';
import 'package:zac/src/zac/context/widget_context.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/flutter/dart_ui/dart_ui.dart';
import 'package:zac/src/flutter/mixed/shadow/shadow.dart';
import 'package:zac/src/base.dart';

part 'painting.freezed.dart';
part 'painting.g.dart';

@defaultConverterFreezed
class FlutterBoxShape with _$FlutterBoxShape {
  const FlutterBoxShape._();

  factory FlutterBoxShape.fromJson(Map<String, dynamic> json) =>
      _$FlutterBoxShapeFromJson(json);

  @FreezedUnionValue('f:1:BoxShape.circle')
  factory FlutterBoxShape.circle() = _FlutterBoxShapeCircle;

  @FreezedUnionValue('f:1:BoxShape.rectangle')
  factory FlutterBoxShape.rectangle() = _FlutterBoxShapeRectangle;

  BoxShape build(ZacBuildContext config) {
    return map(
      circle: (_) => BoxShape.circle,
      rectangle: (_) => BoxShape.rectangle,
    );
  }
}

@defaultConverterFreezed
class FlutterAxis with _$FlutterAxis {
  const FlutterAxis._();

  factory FlutterAxis.fromJson(Map<String, dynamic> json) =>
      _$FlutterAxisFromJson(json);

  @FreezedUnionValue('f:1:Axis.horizontal')
  factory FlutterAxis.horizontal() = _FlutterAxisHori;

  @FreezedUnionValue('f:1:Axis.vertical')
  factory FlutterAxis.vertical() = _FlutterAxisVertical;

  Axis build(ZacBuildContext context) {
    return map(
        horizontal: (_) => Axis.horizontal, vertical: (_) => Axis.vertical);
  }
}

@defaultConverterFreezed
class FlutterVerticalDirection with _$FlutterVerticalDirection {
  const FlutterVerticalDirection._();

  factory FlutterVerticalDirection.fromJson(Map<String, dynamic> json) =>
      _$FlutterVerticalDirectionFromJson(json);

  @FreezedUnionValue('f:1:VerticalDirection.up')
  factory FlutterVerticalDirection.up() = _FlutterVerticalDirectionUp;

  @FreezedUnionValue('f:1:VerticalDirection.down')
  factory FlutterVerticalDirection.down() = _FlutterVerticalDirectionDown;

  VerticalDirection build(ZacBuildContext config) {
    return map(
        up: (_) => VerticalDirection.up, down: (_) => VerticalDirection.down);
  }
}

@defaultConverterFreezed
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

  TextOverflow build(ZacBuildContext config) {
    return map(
      clip: (_) => TextOverflow.clip,
      ellipsis: (_) => TextOverflow.ellipsis,
      fade: (_) => TextOverflow.fade,
      visible: (_) => TextOverflow.visible,
    );
  }
}

@defaultConverterFreezed
class FlutterStrutStyle with _$FlutterStrutStyle {
  const FlutterStrutStyle._();

  factory FlutterStrutStyle.fromJson(Map<String, dynamic> json) =>
      _$FlutterStrutStyleFromJson(json);

  @FreezedUnionValue('f:1:StrutStyle')
  factory FlutterStrutStyle({
    ZacString? fontFamily,
    List<String>? fontFamilyFallback,
    ZacDouble? fontSize,
    ZacDouble? height,
    FlutterTextLeadingDistribution? leadingDistribution,
    ZacDouble? leading,
    FlutterFontWeight? fontWeight,
    FlutterFontStyle? fontStyle,
    ZacBool? forceStrutHeight,
    ZacString? debugLabel,
    ZacString? package,
  }) = _FlutterStrutStyle;

  @FreezedUnionValue('f:1:StrutStyle.fromTextStyle')
  factory FlutterStrutStyle.fromTextStyle(
    FlutterTextStyle textStyle, {
    ZacString? fontFamily,
    List<String>? fontFamilyFallback,
    ZacDouble? fontSize,
    ZacDouble? height,
    FlutterTextLeadingDistribution? leadingDistribution,
    ZacDouble? leading,
    FlutterFontWeight? fontWeight,
    FlutterFontStyle? fontStyle,
    ZacBool? forceStrutHeight,
    ZacString? debugLabel,
    ZacString? package,
  }) = _FlutterStrutStyleFromTextStyle;

  StrutStyle build(ZacBuildContext context) {
    return map(
      (_) => StrutStyle(
        fontFamily: fontFamily?.getValue(context),
        fontFamilyFallback: fontFamilyFallback,
        fontSize: fontSize?.getValue(context),
        height: height?.getValue(context),
        leadingDistribution: leadingDistribution?.build(context),
        leading: leading?.getValue(context),
        fontWeight: fontWeight?.build(context),
        fontStyle: fontStyle?.build(context),
        forceStrutHeight: forceStrutHeight?.getValue(context),
        debugLabel: debugLabel?.getValue(context),
        package: package?.getValue(context),
      ),
      fromTextStyle: (value) => StrutStyle.fromTextStyle(
        value.textStyle.build(context),
        fontFamily: fontFamily?.getValue(context),
        fontFamilyFallback: fontFamilyFallback,
        fontSize: fontSize?.getValue(context),
        height: height?.getValue(context),
        leadingDistribution: leadingDistribution?.build(context),
        leading: leading?.getValue(context),
        fontWeight: fontWeight?.build(context),
        fontStyle: fontStyle?.build(context),
        forceStrutHeight: forceStrutHeight?.getValue(context),
        debugLabel: debugLabel?.getValue(context),
        package: package?.getValue(context),
      ),
    );
  }
}

@defaultConverterFreezed
class FlutterTextWidthBasis with _$FlutterTextWidthBasis {
  const FlutterTextWidthBasis._();

  factory FlutterTextWidthBasis.fromJson(Map<String, dynamic> json) =>
      _$FlutterTextWidthBasisFromJson(json);

  @FreezedUnionValue('f:1:TextWidthBasis.longestLine')
  factory FlutterTextWidthBasis.longestLine() =
      _FlutterTextWidthBasisLongestLine;

  @FreezedUnionValue('f:1:TextWidthBasis.parent')
  factory FlutterTextWidthBasis.parent() = _FlutterTextWidthBasisParent;

  TextWidthBasis build(ZacBuildContext config) {
    return map(
        longestLine: (_) => TextWidthBasis.longestLine,
        parent: (_) => TextWidthBasis.parent);
  }
}

@defaultConverterFreezed
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

  BoxFit build(ZacBuildContext config) {
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

  ImageRepeat build(ZacBuildContext config) {
    return map(
      noRepeat: (_) => ImageRepeat.noRepeat,
      repeat: (_) => ImageRepeat.repeat,
      repeatX: (_) => ImageRepeat.repeatX,
      repeatY: (_) => ImageRepeat.repeatY,
    );
  }
}

@defaultConverterFreezed
class FlutterTextStyle with _$FlutterTextStyle {
  const FlutterTextStyle._();

  factory FlutterTextStyle.fromJson(Map<String, dynamic> json) =>
      _$FlutterTextStyleFromJson(json);

  @FreezedUnionValue('f:1:TextStyle')
  factory FlutterTextStyle({
    ZacBool? inherit,
    FlutterColor? color,
    FlutterColor? backgroundColor,
    ZacDouble? fontSize,
    FlutterFontWeight? fontWeight,
    FlutterFontStyle? fontStyle,
    ZacDouble? letterSpacing,
    ZacDouble? wordSpacing,
    FlutterTextBaseline? textBaseline,
    ZacDouble? height,
    FlutterTextLeadingDistribution? leadingDistribution,
    FlutterLocale? locale,
// Paint? foreground,
// Paint? background,
    List<FlutterShadow>? shadows,
    List<FlutterFontFeature>? fontFeatures,
    FlutterTextDecoration? decoration,
    FlutterColor? decorationColor,
    FlutterTextDecorationStyle? decorationStyle,
    ZacDouble? decorationThickness,
    ZacString? debugLabel,
    ZacString? fontFamily,
    List<String>? fontFamilyFallback,
    ZacString? package,
    FlutterTextOverflow? overflow,
  }) = _FlutterTextStyle;

  TextStyle build(ZacBuildContext context) {
    return TextStyle(
      inherit: inherit?.getValue(context) ?? true,
      color: color?.build(context),
      backgroundColor: backgroundColor?.build(context),
      fontSize: fontSize?.getValue(context),
      fontWeight: fontWeight?.build(context),
      fontStyle: fontStyle?.build(context),
      letterSpacing: letterSpacing?.getValue(context),
      wordSpacing: wordSpacing?.getValue(context),
      textBaseline: textBaseline?.build(context),
      height: height?.getValue(context),
      leadingDistribution: leadingDistribution?.build(context),
      locale: locale?.build(context),
      shadows: shadows?.map((e) => e.build(context)).toList(),
      fontFeatures: fontFeatures?.map((e) => e.build(context)).toList(),
      decoration: decoration?.build(context),
      decorationColor: decorationColor?.build(context),
      decorationStyle: decorationStyle?.build(context),
      decorationThickness: decorationThickness?.getValue(context),
      debugLabel: debugLabel?.getValue(context),
      fontFamily: fontFamily?.getValue(context),
      fontFamilyFallback: fontFamilyFallback,
      package: package?.getValue(context),
      overflow: overflow?.build(context),
    );
  }
}

@defaultConverterFreezed
class FlutterTextAlignVertical with _$FlutterTextAlignVertical {
  const FlutterTextAlignVertical._();

  factory FlutterTextAlignVertical.fromJson(Map<String, dynamic> json) =>
      _$FlutterTextAlignVerticalFromJson(json);

  @FreezedUnionValue('f:1:TextAlignVertical')
  factory FlutterTextAlignVertical({required ZacDouble y}) =
      _FlutterTextAlignVertical;
  @FreezedUnionValue('f:1:TextAlignVertical.bottom')
  factory FlutterTextAlignVertical.bottom() = _FlutterTextAlignVerticalbottom;
  @FreezedUnionValue('f:1:TextAlignVertical.center')
  factory FlutterTextAlignVertical.center() = _FlutterTextAlignVerticalcenter;
  @FreezedUnionValue('f:1:TextAlignVertical.top')
  factory FlutterTextAlignVertical.top() = _FlutterTextAlignVerticaltop;

  TextAlignVertical build(ZacBuildContext context) {
    return map(
      (value) => TextAlignVertical(y: value.y.getValue(context)),
      bottom: (_) => TextAlignVertical.bottom,
      center: (_) => TextAlignVertical.center,
      top: (_) => TextAlignVertical.top,
    );
  }
}
