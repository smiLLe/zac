/* eslint-disable @typescript-eslint/no-explicit-any */
import {
  DartDouble,
  DartInt,
  DartDateTime,
  ZacTypes,
  ZacConverter,
} from "./base";
import { ZacValue, ZacValueList } from "./zac/zac_value";

export abstract class Widget extends ZacConverter {}
export abstract class DartShadow extends ZacConverter {}
export abstract class Key extends ZacConverter {}
export abstract class LocalKey extends ZacConverter implements Key {}
export abstract class AlignmentGeometry extends ZacConverter {}
export abstract class ShapeBorder extends ZacConverter {}
export abstract class BoxBorder extends ZacConverter implements ShapeBorder {}
export abstract class BorderRadiusGeometry extends ZacConverter {}
export abstract class OutlinedBorder
  extends ZacConverter
  implements ShapeBorder {}
export abstract class Decoration extends ZacConverter {}
export abstract class EdgeInsetsGeometry extends ZacConverter {}
export abstract class Route extends ZacConverter {}
export abstract class RouteFactory extends ZacConverter {}
export abstract class ZacAction extends ZacConverter {}
export abstract class InputBorder extends ZacConverter implements ShapeBorder {}
export abstract class ZacTransformer extends ZacConverter {}
export class Color extends ZacConverter {
  static fromARGB(data: { a: DartInt; r: DartInt; g: DartInt; b: DartInt }) {
    return new Color({
      converter: "f:1:Color.fromARGB",
      ...data,
    });
  }
  static fromRGBO(data: {
    r: DartInt;
    g: DartInt;
    b: DartInt;
    opacity: ZacValue<DartDouble>;
  }) {
    return new Color({
      converter: "f:1:Color.fromRGBO",
      ...data,
    });
  }
}
export class Offset extends ZacConverter {
  static new(data: { dx: ZacValue<DartDouble>; dy: ZacValue<DartDouble> }) {
    return new Offset({
      converter: "f:1:Offset",
      ...data,
    });
  }
  static fromDirection(data: {
    direction: ZacValue<DartDouble>;
    distance?: ZacValue<DartDouble>;
  }) {
    return new Offset({
      converter: "f:1:Offset.fromDirection",
      ...data,
    });
  }
}
export class BlurStyle extends ZacConverter {
  static inner() {
    return new BlurStyle({
      converter: "f:1:BlurSyle.inner",
    });
  }
  static normal() {
    return new BlurStyle({
      converter: "f:1:BlurSyle.normal",
    });
  }
  static outer() {
    return new BlurStyle({
      converter: "f:1:BlurSyle.outer",
    });
  }
  static solid() {
    return new BlurStyle({
      converter: "f:1:BlurSyle.solid",
    });
  }
}
export class Radius extends ZacConverter {
  static circular(data: { radius: ZacValue<DartDouble> }) {
    return new Radius({
      converter: "f:1:Radius.circular",
      ...data,
    });
  }
  static elliptical(data: {
    x: ZacValue<DartDouble>;
    y: ZacValue<DartDouble>;
  }) {
    return new Radius({
      converter: "f:1:Radius.elliptical",
      ...data,
    });
  }
}
export class TextDirection extends ZacConverter {
  static rtl() {
    return new TextDirection({
      converter: "f:1:TextDirection.rtl",
    });
  }
  static ltr() {
    return new TextDirection({
      converter: "f:1:TextDirection.ltr",
    });
  }
}
export class Clip extends ZacConverter {
  static none() {
    return new Clip({
      converter: "f:1:Clip.none",
    });
  }
  static antiAlias() {
    return new Clip({
      converter: "f:1:Clip.antiAlias",
    });
  }
  static hardEdge() {
    return new Clip({
      converter: "f:1:Clip.hardEdge",
    });
  }
}
export class TextBaseline extends ZacConverter {
  static alphabetic() {
    return new TextBaseline({
      converter: "f:1:TextBaseline.alphabetic",
    });
  }
  static ideographic() {
    return new TextBaseline({
      converter: "f:1:TextBaseline.ideographic",
    });
  }
}
export class FontWeight extends ZacConverter {
  static bold() {
    return new FontWeight({
      converter: "f:1:FontWeight.bold",
    });
  }
  static normal() {
    return new FontWeight({
      converter: "f:1:FontWeight.normal",
    });
  }
  static w100() {
    return new FontWeight({
      converter: "f:1:FontWeight.w100",
    });
  }
  static w200() {
    return new FontWeight({
      converter: "f:1:FontWeight.w200",
    });
  }
  static w300() {
    return new FontWeight({
      converter: "f:1:FontWeight.w300",
    });
  }
  static w400() {
    return new FontWeight({
      converter: "f:1:FontWeight.w400",
    });
  }
  static w500() {
    return new FontWeight({
      converter: "f:1:FontWeight.w500",
    });
  }
  static w600() {
    return new FontWeight({
      converter: "f:1:FontWeight.w600",
    });
  }
  static w700() {
    return new FontWeight({
      converter: "f:1:FontWeight.w700",
    });
  }
  static w800() {
    return new FontWeight({
      converter: "f:1:FontWeight.w800",
    });
  }
  static w900() {
    return new FontWeight({
      converter: "f:1:FontWeight.w900",
    });
  }
}
export class FontStyle extends ZacConverter {
  static italic() {
    return new FontStyle({
      converter: "f:1:FontStyle.italic",
    });
  }
  static normal() {
    return new FontStyle({
      converter: "f:1:FontStyle.normal",
    });
  }
}
export class TextDecoration extends ZacConverter {
  static lineThrough() {
    return new TextDecoration({
      converter: "f:1:TextDecoration.lineThrough",
    });
  }
  static none() {
    return new TextDecoration({
      converter: "f:1:TextDecoration.none",
    });
  }
  static overline() {
    return new TextDecoration({
      converter: "f:1:TextDecoration.overline",
    });
  }
  static underline() {
    return new TextDecoration({
      converter: "f:1:TextDecoration.underline",
    });
  }
}
export class TextLeadingDistribution extends ZacConverter {
  static even() {
    return new TextLeadingDistribution({
      converter: "f:1:TextLeadingDistribution.even",
    });
  }
  static proportional() {
    return new TextLeadingDistribution({
      converter: "f:1:TextLeadingDistribution.proportional",
    });
  }
}
export class Locale extends ZacConverter {
  static new(data: { languageCode: string; countryCode?: string }) {
    return new Locale({
      converter: "f:1:Locale",
      ...data,
    });
  }
}
export class FontFeature extends ZacConverter {
  static new(data: { feature: string; value?: ZacValue<DartInt> }) {
    return new FontFeature({
      converter: "f:1:FontFeature",
      ...data,
    });
  }
  static alternative(data: { value: DartInt }) {
    return new FontFeature({
      converter: "f:1:FontFeature.alternative",
      ...data,
    });
  }
  static alternativeFractions() {
    return new FontFeature({
      converter: "f:1:FontFeature.alternativeFractions",
    });
  }
  static caseSensitiveForms() {
    return new FontFeature({
      converter: "f:1:FontFeature.caseSensitiveForms",
    });
  }
  static characterVariant(data: { value: DartInt }) {
    return new FontFeature({
      converter: "f:1:FontFeature.characterVariant",
      ...data,
    });
  }
  static contextualAlternates() {
    return new FontFeature({
      converter: "f:1:FontFeature.contextualAlternates",
    });
  }
  static denominator() {
    return new FontFeature({
      converter: "f:1:FontFeature.denominator",
    });
  }
  static disable(data: { feature: string }) {
    return new FontFeature({
      converter: "f:1:FontFeature.disable",
      ...data,
    });
  }
  static enable(data: { feature: string }) {
    return new FontFeature({
      converter: "f:1:FontFeature.enable",
      ...data,
    });
  }
  static fractions() {
    return new FontFeature({
      converter: "f:1:FontFeature.fractions",
    });
  }
  static historicalForms() {
    return new FontFeature({
      converter: "f:1:FontFeature.historicalForms",
    });
  }
  static historicalLigatures() {
    return new FontFeature({
      converter: "f:1:FontFeature.historicalLigatures",
    });
  }
  static liningFigures() {
    return new FontFeature({
      converter: "f:1:FontFeature.liningFigures",
    });
  }
  static localeAware(data: { enable?: ZacValue<boolean> }) {
    return new FontFeature({
      converter: "f:1:FontFeature.localeAware",
      ...data,
    });
  }
  static notationalForms(data: { value?: ZacValue<DartInt> }) {
    return new FontFeature({
      converter: "f:1:FontFeature.notationalForms",
      ...data,
    });
  }
  static numerators() {
    return new FontFeature({
      converter: "f:1:FontFeature.numerators",
    });
  }
  static oldstyleFigures() {
    return new FontFeature({
      converter: "f:1:FontFeature.oldstyleFigures",
    });
  }
  static ordinalForms() {
    return new FontFeature({
      converter: "f:1:FontFeature.ordinalForms",
    });
  }
  static proportionalFigures() {
    return new FontFeature({
      converter: "f:1:FontFeature.proportionalFigures",
    });
  }
  static randomize() {
    return new FontFeature({
      converter: "f:1:FontFeature.randomize",
    });
  }
  static scientificInferiors() {
    return new FontFeature({
      converter: "f:1:FontFeature.scientificInferiors",
    });
  }
  static slashedZero() {
    return new FontFeature({
      converter: "f:1:FontFeature.slashedZero",
    });
  }
  static stylisticAlternates() {
    return new FontFeature({
      converter: "f:1:FontFeature.stylisticAlternates",
    });
  }
  static stylisticSet(data: { value: DartInt }) {
    return new FontFeature({
      converter: "f:1:FontFeature.stylisticSet",
      ...data,
    });
  }
  static subscripts() {
    return new FontFeature({
      converter: "f:1:FontFeature.subscripts",
    });
  }
  static superscripts() {
    return new FontFeature({
      converter: "f:1:FontFeature.superscripts",
    });
  }
  static swash(data: { value?: ZacValue<DartInt> }) {
    return new FontFeature({
      converter: "f:1:FontFeature.swash",
      ...data,
    });
  }
  static tabularFigures() {
    return new FontFeature({
      converter: "f:1:FontFeature.tabularFigures",
    });
  }
}
export class TextDecorationStyle extends ZacConverter {
  static dashed() {
    return new TextDecorationStyle({
      converter: "f:1:TextDecorationStyle.dashed",
    });
  }
  static dotted() {
    return new TextDecorationStyle({
      converter: "f:1:TextDecorationStyle.dotted",
    });
  }
  static double() {
    return new TextDecorationStyle({
      converter: "f:1:TextDecorationStyle.double",
    });
  }
  static solid() {
    return new TextDecorationStyle({
      converter: "f:1:TextDecorationStyle.solid",
    });
  }
  static wavy() {
    return new TextDecorationStyle({
      converter: "f:1:TextDecorationStyle.wavy",
    });
  }
}
export class TextAlign extends ZacConverter {
  static center() {
    return new TextAlign({
      converter: "f:1:TextAlign.center",
    });
  }
  static end() {
    return new TextAlign({
      converter: "f:1:TextAlign.end",
    });
  }
  static justify() {
    return new TextAlign({
      converter: "f:1:TextAlign.justify",
    });
  }
  static left() {
    return new TextAlign({
      converter: "f:1:TextAlign.left",
    });
  }
  static right() {
    return new TextAlign({
      converter: "f:1:TextAlign.right",
    });
  }
  static start() {
    return new TextAlign({
      converter: "f:1:TextAlign.start",
    });
  }
}
export class TextHeightBehavior extends ZacConverter {
  static new(data: {
    applyHeightToFirstAscent?: ZacValue<boolean>;
    applyHeightToLastDescent?: ZacValue<boolean>;
    leadingDistribution?: TextLeadingDistribution;
  }) {
    return new TextHeightBehavior({
      converter: "f:1:TextHeightBehavior",
      ...data,
    });
  }
}
export class BlendMode extends ZacConverter {
  static clear() {
    return new BlendMode({
      converter: "f:1:BlendMode.clear",
    });
  }
  static color() {
    return new BlendMode({
      converter: "f:1:BlendMode.color",
    });
  }
  static colorBurn() {
    return new BlendMode({
      converter: "f:1:BlendMode.colorBurn",
    });
  }
  static colorDodge() {
    return new BlendMode({
      converter: "f:1:BlendMode.colorDodge",
    });
  }
  static darken() {
    return new BlendMode({
      converter: "f:1:BlendMode.darken",
    });
  }
  static difference() {
    return new BlendMode({
      converter: "f:1:BlendMode.difference",
    });
  }
  static dst() {
    return new BlendMode({
      converter: "f:1:BlendMode.dst",
    });
  }
  static dstATop() {
    return new BlendMode({
      converter: "f:1:BlendMode.dstATop",
    });
  }
  static dstIn() {
    return new BlendMode({
      converter: "f:1:BlendMode.dstIn",
    });
  }
  static dstOut() {
    return new BlendMode({
      converter: "f:1:BlendMode.dstOut",
    });
  }
  static dstOver() {
    return new BlendMode({
      converter: "f:1:BlendMode.dstOver",
    });
  }
  static exclusion() {
    return new BlendMode({
      converter: "f:1:BlendMode.exclusion",
    });
  }
  static hardLight() {
    return new BlendMode({
      converter: "f:1:BlendMode.hardLight",
    });
  }
  static hue() {
    return new BlendMode({
      converter: "f:1:BlendMode.hue",
    });
  }
  static lighten() {
    return new BlendMode({
      converter: "f:1:BlendMode.lighten",
    });
  }
  static luminosity() {
    return new BlendMode({
      converter: "f:1:BlendMode.luminosity",
    });
  }
  static modulate() {
    return new BlendMode({
      converter: "f:1:BlendMode.modulate",
    });
  }
  static multiply() {
    return new BlendMode({
      converter: "f:1:BlendMode.multiply",
    });
  }
  static overlay() {
    return new BlendMode({
      converter: "f:1:BlendMode.overlay",
    });
  }
  static plus() {
    return new BlendMode({
      converter: "f:1:BlendMode.plus",
    });
  }
  static saturation() {
    return new BlendMode({
      converter: "f:1:BlendMode.saturation",
    });
  }
  static screen() {
    return new BlendMode({
      converter: "f:1:BlendMode.screen",
    });
  }
  static softLight() {
    return new BlendMode({
      converter: "f:1:BlendMode.softLight",
    });
  }
  static src() {
    return new BlendMode({
      converter: "f:1:BlendMode.src",
    });
  }
  static srcATop() {
    return new BlendMode({
      converter: "f:1:BlendMode.srcATop",
    });
  }
  static srcIn() {
    return new BlendMode({
      converter: "f:1:BlendMode.srcIn",
    });
  }
  static srcOut() {
    return new BlendMode({
      converter: "f:1:BlendMode.srcOut",
    });
  }
  static srcOver() {
    return new BlendMode({
      converter: "f:1:BlendMode.srcOver",
    });
  }
  static xor() {
    return new BlendMode({
      converter: "f:1:BlendMode.xor",
    });
  }
}
export class Rect extends ZacConverter {
  static fromCenter(data: {
    center: Offset;
    width: ZacValue<DartDouble>;
    height: ZacValue<DartDouble>;
  }) {
    return new Rect({
      converter: "f:1:Rect.fromCenter",
      ...data,
    });
  }
  static fromCircle(data: { center: Offset; radius: ZacValue<DartDouble> }) {
    return new Rect({
      converter: "f:1:Rect.fromCircle",
      ...data,
    });
  }
  static fromLTRB(data: {
    left: ZacValue<DartDouble>;
    top: ZacValue<DartDouble>;
    right: ZacValue<DartDouble>;
    bottom: ZacValue<DartDouble>;
  }) {
    return new Rect({
      converter: "f:1:Rect.fromLTRB",
      ...data,
    });
  }
  static fromLTWH(data: {
    left: ZacValue<DartDouble>;
    top: ZacValue<DartDouble>;
    width: ZacValue<DartDouble>;
    height: ZacValue<DartDouble>;
  }) {
    return new Rect({
      converter: "f:1:Rect.fromLTWH",
      ...data,
    });
  }
  static fromPoints(data: { a: Offset; b: Offset }) {
    return new Rect({
      converter: "f:1:Rect.fromPoints",
      ...data,
    });
  }
}
export class FilterQuality extends ZacConverter {
  static high() {
    return new FilterQuality({
      converter: "f:1:FilterQuality.high",
    });
  }
  static low() {
    return new FilterQuality({
      converter: "f:1:FilterQuality.low",
    });
  }
  static medium() {
    return new FilterQuality({
      converter: "f:1:FilterQuality.medium",
    });
  }
  static none() {
    return new FilterQuality({
      converter: "f:1:FilterQuality.none",
    });
  }
}
export class Brightness extends ZacConverter {
  static dark() {
    return new Brightness({
      converter: "f:1:Brightness.dark",
    });
  }
  static light() {
    return new Brightness({
      converter: "f:1:Brightness.light",
    });
  }
}
export class Size extends ZacConverter {
  static new(data: {
    width: ZacValue<DartDouble>;
    height: ZacValue<DartDouble>;
  }) {
    return new Size({
      converter: "f:1:Size",
      ...data,
    });
  }
}
export class BoxHeightStyle extends ZacConverter {
  static includeLineSpacingBottom() {
    return new BoxHeightStyle({
      converter: "f:1:BoxHeightStyle.includeLineSpacingBottom",
    });
  }
  static includeLineSpacingMiddle() {
    return new BoxHeightStyle({
      converter: "f:1:BoxHeightStyle.includeLineSpacingMiddle",
    });
  }
  static includeLineSpacingTop() {
    return new BoxHeightStyle({
      converter: "f:1:BoxHeightStyle.includeLineSpacingTop",
    });
  }
  static max() {
    return new BoxHeightStyle({
      converter: "f:1:BoxHeightStyle.max",
    });
  }
  static strut() {
    return new BoxHeightStyle({
      converter: "f:1:BoxHeightStyle.strut",
    });
  }
  static tight() {
    return new BoxHeightStyle({
      converter: "f:1:BoxHeightStyle.tight",
    });
  }
}
export class BoxWidthStyle extends ZacConverter {
  static max() {
    return new BoxWidthStyle({
      converter: "f:1:BoxWidthStyle.max",
    });
  }
  static tight() {
    return new BoxWidthStyle({
      converter: "f:1:BoxWidthStyle.tight",
    });
  }
}
export class Shadow extends ZacConverter implements DartShadow {
  static new(data: {
    color?: Color;
    offset?: Offset;
    blurRadius?: ZacValue<DartDouble>;
  }) {
    return new Shadow({
      converter: "f:1:Shadow",
      ...data,
    });
  }
}
export class ValueKey extends ZacConverter implements LocalKey {
  static new(data: { value: string }) {
    return new ValueKey({
      converter: "f:1:ValueKey",
      ...data,
    });
  }
}
export class StackFit extends ZacConverter {
  static expand() {
    return new StackFit({
      converter: "f:1:StackFit.expand",
    });
  }
  static loose() {
    return new StackFit({
      converter: "f:1:StackFit.loose",
    });
  }
  static passthrough() {
    return new StackFit({
      converter: "f:1:StackFit.passthrough",
    });
  }
}
export class SmartDashesType extends ZacConverter {
  static disabled() {
    return new SmartDashesType({
      converter: "f:1:SmartDashesType.disabled",
    });
  }
  static enabled() {
    return new SmartDashesType({
      converter: "f:1:SmartDashesType.enabled",
    });
  }
}
export class BoxShape extends ZacConverter {
  static circle() {
    return new BoxShape({
      converter: "f:1:BoxShape.circle",
    });
  }
  static rectangle() {
    return new BoxShape({
      converter: "f:1:BoxShape.rectangle",
    });
  }
}
export class Axis extends ZacConverter {
  static horizontal() {
    return new Axis({
      converter: "f:1:Axis.horizontal",
    });
  }
  static vertical() {
    return new Axis({
      converter: "f:1:Axis.vertical",
    });
  }
}
export class VerticalDirection extends ZacConverter {
  static up() {
    return new VerticalDirection({
      converter: "f:1:VerticalDirection.up",
    });
  }
  static down() {
    return new VerticalDirection({
      converter: "f:1:VerticalDirection.down",
    });
  }
}
export class TextOverflow extends ZacConverter {
  static clip() {
    return new TextOverflow({
      converter: "f:1:TextOverflow.clip",
    });
  }
  static ellipsis() {
    return new TextOverflow({
      converter: "f:1:TextOverflow.ellipsis",
    });
  }
  static fade() {
    return new TextOverflow({
      converter: "f:1:TextOverflow.fade",
    });
  }
  static visible() {
    return new TextOverflow({
      converter: "f:1:TextOverflow.visible",
    });
  }
}
export class StrutStyle extends ZacConverter {
  static new(data: {
    fontFamily?: ZacValue<string>;
    fontFamilyFallback?: Array<string>;
    fontSize?: ZacValue<DartDouble>;
    height?: ZacValue<DartDouble>;
    leadingDistribution?: TextLeadingDistribution;
    leading?: ZacValue<DartDouble>;
    fontWeight?: FontWeight;
    fontStyle?: FontStyle;
    forceStrutHeight?: ZacValue<boolean>;
    debugLabel?: ZacValue<string>;
    package?: ZacValue<string>;
  }) {
    return new StrutStyle({
      converter: "f:1:StrutStyle",
      ...data,
    });
  }
  static fromTextStyle(data: {
    textStyle: TextStyle;
    fontFamily?: ZacValue<string>;
    fontFamilyFallback?: Array<string>;
    fontSize?: ZacValue<DartDouble>;
    height?: ZacValue<DartDouble>;
    leadingDistribution?: TextLeadingDistribution;
    leading?: ZacValue<DartDouble>;
    fontWeight?: FontWeight;
    fontStyle?: FontStyle;
    forceStrutHeight?: ZacValue<boolean>;
    debugLabel?: ZacValue<string>;
    package?: ZacValue<string>;
  }) {
    return new StrutStyle({
      converter: "f:1:StrutStyle.fromTextStyle",
      ...data,
    });
  }
}
export class TextWidthBasis extends ZacConverter {
  static longestLine() {
    return new TextWidthBasis({
      converter: "f:1:TextWidthBasis.longestLine",
    });
  }
  static parent() {
    return new TextWidthBasis({
      converter: "f:1:TextWidthBasis.parent",
    });
  }
}
export class BoxFit extends ZacConverter {
  static contain() {
    return new BoxFit({
      converter: "f:1:BoxFit.contain",
    });
  }
  static cover() {
    return new BoxFit({
      converter: "f:1:BoxFit.cover",
    });
  }
  static fill() {
    return new BoxFit({
      converter: "f:1:BoxFit.fill",
    });
  }
  static fitHeight() {
    return new BoxFit({
      converter: "f:1:BoxFit.fitHeight",
    });
  }
  static fitWidth() {
    return new BoxFit({
      converter: "f:1:BoxFit.fitWidth",
    });
  }
  static none() {
    return new BoxFit({
      converter: "f:1:BoxFit.none",
    });
  }
  static scaleDown() {
    return new BoxFit({
      converter: "f:1:BoxFit.scaleDown",
    });
  }
}
export class ImageRepeat extends ZacConverter {
  static noRepeat() {
    return new ImageRepeat({
      converter: "f:1:ImageRepeat.noRepeat",
    });
  }
  static repeat() {
    return new ImageRepeat({
      converter: "f:1:ImageRepeat.repeat",
    });
  }
  static repeatX() {
    return new ImageRepeat({
      converter: "f:1:ImageRepeat.repeatX",
    });
  }
  static repeatY() {
    return new ImageRepeat({
      converter: "f:1:ImageRepeat.repeatY",
    });
  }
}
export class TextStyle extends ZacConverter {
  static new(data: {
    inherit?: ZacValue<boolean>;
    color?: Color;
    backgroundColor?: Color;
    fontSize?: ZacValue<DartDouble>;
    fontWeight?: FontWeight;
    fontStyle?: FontStyle;
    letterSpacing?: ZacValue<DartDouble>;
    wordSpacing?: ZacValue<DartDouble>;
    textBaseline?: TextBaseline;
    height?: ZacValue<DartDouble>;
    leadingDistribution?: TextLeadingDistribution;
    locale?: Locale;
    shadows?: Array<DartShadow>;
    fontFeatures?: Array<FontFeature>;
    decoration?: TextDecoration;
    decorationColor?: Color;
    decorationStyle?: TextDecorationStyle;
    decorationThickness?: ZacValue<DartDouble>;
    debugLabel?: ZacValue<string>;
    fontFamily?: ZacValue<string>;
    fontFamilyFallback?: Array<string>;
    package?: ZacValue<string>;
    overflow?: TextOverflow;
  }) {
    return new TextStyle({
      converter: "f:1:TextStyle",
      ...data,
    });
  }
}
export class TextAlignVertical extends ZacConverter {
  static new(data: { y: ZacValue<DartDouble> }) {
    return new TextAlignVertical({
      converter: "f:1:TextAlignVertical",
      ...data,
    });
  }
  static bottom() {
    return new TextAlignVertical({
      converter: "f:1:TextAlignVertical.bottom",
    });
  }
  static center() {
    return new TextAlignVertical({
      converter: "f:1:TextAlignVertical.center",
    });
  }
  static top() {
    return new TextAlignVertical({
      converter: "f:1:TextAlignVertical.top",
    });
  }
}
export class BoxShadow extends ZacConverter implements DartShadow {
  static new(data: {
    color?: Color;
    offset?: Offset;
    blurRadius?: ZacValue<DartDouble>;
    spreadRadius?: ZacValue<DartDouble>;
    blurStyle?: BlurStyle;
  }) {
    return new BoxShadow({
      converter: "f:1:BoxShadow",
      ...data,
    });
  }
}
export class Alignment extends ZacConverter implements AlignmentGeometry {
  static new(data: { x: ZacValue<DartDouble>; y: ZacValue<DartDouble> }) {
    return new Alignment({
      converter: "f:1:Alignment",
      ...data,
    });
  }
  static bottomCenter() {
    return new Alignment({
      converter: "f:1:Alignment.bottomCenter",
    });
  }
  static bottomLeft() {
    return new Alignment({
      converter: "f:1:Alignment.bottomLeft",
    });
  }
  static bottomRight() {
    return new Alignment({
      converter: "f:1:Alignment.bottomRight",
    });
  }
  static center() {
    return new Alignment({
      converter: "f:1:Alignment.center",
    });
  }
  static centerLeft() {
    return new Alignment({
      converter: "f:1:Alignment.centerLeft",
    });
  }
  static centerRight() {
    return new Alignment({
      converter: "f:1:Alignment.centerRight",
    });
  }
  static topCenter() {
    return new Alignment({
      converter: "f:1:Alignment.topCenter",
    });
  }
  static topLeft() {
    return new Alignment({
      converter: "f:1:Alignment.topLeft",
    });
  }
  static topRight() {
    return new Alignment({
      converter: "f:1:Alignment.topRight",
    });
  }
}
export class AlignmentDirectional
  extends ZacConverter
  implements AlignmentGeometry
{
  static new(data: { start: ZacValue<DartDouble>; y: ZacValue<DartDouble> }) {
    return new AlignmentDirectional({
      converter: "f:1:AlignmentDirectional",
      ...data,
    });
  }
  static bottomCenter() {
    return new AlignmentDirectional({
      converter: "f:1:AlignmentDirectional.bottomCenter",
    });
  }
  static bottomStart() {
    return new AlignmentDirectional({
      converter: "f:1:AlignmentDirectional.bottomStart",
    });
  }
  static bottomEnd() {
    return new AlignmentDirectional({
      converter: "f:1:AlignmentDirectional.bottomEnd",
    });
  }
  static center() {
    return new AlignmentDirectional({
      converter: "f:1:AlignmentDirectional.center",
    });
  }
  static centerStart() {
    return new AlignmentDirectional({
      converter: "f:1:AlignmentDirectional.centerStart",
    });
  }
  static centerEnd() {
    return new AlignmentDirectional({
      converter: "f:1:AlignmentDirectional.centerEnd",
    });
  }
  static topCenter() {
    return new AlignmentDirectional({
      converter: "f:1:AlignmentDirectional.topCenter",
    });
  }
  static topStart() {
    return new AlignmentDirectional({
      converter: "f:1:AlignmentDirectional.topStart",
    });
  }
  static topEnd() {
    return new AlignmentDirectional({
      converter: "f:1:AlignmentDirectional.topEnd",
    });
  }
}
export class FractionalOffset
  extends ZacConverter
  implements AlignmentGeometry
{
  static new(data: { dx: ZacValue<DartDouble>; dy: ZacValue<DartDouble> }) {
    return new FractionalOffset({
      converter: "f:1:FractionalOffset",
      ...data,
    });
  }
}
export class BorderDirectional extends ZacConverter implements BoxBorder {
  static new(data: {
    top?: BorderSide;
    start?: BorderSide;
    bottom?: BorderSide;
    end?: BorderSide;
  }) {
    return new BorderDirectional({
      converter: "f:1:BorderDirectional",
      ...data,
    });
  }
}
export class Border extends ZacConverter implements BoxBorder {
  static new(data: {
    top?: BorderSide;
    right?: BorderSide;
    bottom?: BorderSide;
    left?: BorderSide;
  }) {
    return new Border({
      converter: "f:1:Border",
      ...data,
    });
  }
  static all(data: {
    color?: Color;
    width?: ZacValue<DartDouble>;
    style?: BorderStyle;
  }) {
    return new Border({
      converter: "f:1:Border.all",
      ...data,
    });
  }
}
export class BorderStyle extends ZacConverter {
  static none() {
    return new BorderStyle({
      converter: "f:1:BorderStyle.none",
    });
  }
  static solid() {
    return new BorderStyle({
      converter: "f:1:BorderStyle.solid",
    });
  }
}
export class BorderRadius extends ZacConverter implements BorderRadiusGeometry {
  static all(data: { radius: Radius }) {
    return new BorderRadius({
      converter: "f:1:BorderRadius.all",
      ...data,
    });
  }
  static circular(data: { radius: ZacValue<DartDouble> }) {
    return new BorderRadius({
      converter: "f:1:BorderRadius.circular",
      ...data,
    });
  }
  static horizontal(data: { left?: Radius; right?: Radius }) {
    return new BorderRadius({
      converter: "f:1:BorderRadius.horizontal",
      ...data,
    });
  }
}
export class BorderSide extends ZacConverter {
  static new(data: {
    color?: Color;
    width?: ZacValue<DartDouble>;
    style?: BorderStyle;
  }) {
    return new BorderSide({
      converter: "f:1:BorderSide",
      ...data,
    });
  }
}
export class CircleBorder extends ZacConverter implements OutlinedBorder {
  static new(data: { side?: BorderSide }) {
    return new CircleBorder({
      converter: "f:1:CircleBorder",
      ...data,
    });
  }
}
export class RoundedRectangleBorder
  extends ZacConverter
  implements OutlinedBorder
{
  static new(data: { side?: BorderSide; borderRadius?: BorderRadiusGeometry }) {
    return new RoundedRectangleBorder({
      converter: "f:1:RoundedRectangleBorder",
      ...data,
    });
  }
}
export class BoxDecoration extends ZacConverter implements Decoration {
  static new(data: {
    color?: Color;
    border?: BoxBorder;
    borderRadius?: BorderRadiusGeometry;
    boxShadow?: Array<BoxShadow>;
    shape?: BoxShape;
    backgroundBlendMode?: BlendMode;
  }) {
    return new BoxDecoration({
      converter: "f:1:BoxDecoration",
      ...data,
    });
  }
}
export class ShapeDecoration extends ZacConverter implements Decoration {
  static new(data: {
    color?: Color;
    shadows?: Array<BoxShadow>;
    shape: ShapeBorder;
  }) {
    return new ShapeDecoration({
      converter: "f:1:ShapeDecoration",
      ...data,
    });
  }
}
export class EdgeInsets extends ZacConverter implements EdgeInsetsGeometry {
  static all(data: { value: ZacValue<DartDouble> }) {
    return new EdgeInsets({
      converter: "f:1:EdgeInsets.all",
      ...data,
    });
  }
  static symmetric(data: {
    vertical?: ZacValue<DartDouble>;
    horizontal?: ZacValue<DartDouble>;
  }) {
    return new EdgeInsets({
      converter: "f:1:EdgeInsets.symmetric",
      ...data,
    });
  }
  static only(data: {
    left?: ZacValue<DartDouble>;
    top?: ZacValue<DartDouble>;
    right?: ZacValue<DartDouble>;
    bottom?: ZacValue<DartDouble>;
  }) {
    return new EdgeInsets({
      converter: "f:1:EdgeInsets.only",
      ...data,
    });
  }
}
export class EdgeInsetsDirectional
  extends ZacConverter
  implements EdgeInsetsGeometry
{
  static all(data: { value: ZacValue<DartDouble> }) {
    return new EdgeInsetsDirectional({
      converter: "f:1:EdgeInsetsDirectional.all",
      ...data,
    });
  }
  static only(data: {
    start?: ZacValue<DartDouble>;
    top?: ZacValue<DartDouble>;
    end?: ZacValue<DartDouble>;
    bottom?: ZacValue<DartDouble>;
  }) {
    return new EdgeInsetsDirectional({
      converter: "f:1:EdgeInsetsDirectional.only",
      ...data,
    });
  }
}
export class HitTestBehavior extends ZacConverter {
  static deferToChild() {
    return new HitTestBehavior({
      converter: "f:1:HitTestBehavior.deferToChild",
    });
  }
  static opaque() {
    return new HitTestBehavior({
      converter: "f:1:HitTestBehavior.opaque",
    });
  }
  static translucent() {
    return new HitTestBehavior({
      converter: "f:1:HitTestBehavior.translucent",
    });
  }
}
export class CrossAxisAlignment extends ZacConverter {
  static baseline() {
    return new CrossAxisAlignment({
      converter: "f:1:CrossAxisAlignment.baseline",
    });
  }
  static center() {
    return new CrossAxisAlignment({
      converter: "f:1:CrossAxisAlignment.center",
    });
  }
  static end() {
    return new CrossAxisAlignment({
      converter: "f:1:CrossAxisAlignment.end",
    });
  }
  static start() {
    return new CrossAxisAlignment({
      converter: "f:1:CrossAxisAlignment.start",
    });
  }
  static stretch() {
    return new CrossAxisAlignment({
      converter: "f:1:CrossAxisAlignment.stretch",
    });
  }
}
export class MainAxisAlignment extends ZacConverter {
  static start() {
    return new MainAxisAlignment({
      converter: "f:1:MainAxisAlignment.start",
    });
  }
  static end() {
    return new MainAxisAlignment({
      converter: "f:1:MainAxisAlignment.end",
    });
  }
  static center() {
    return new MainAxisAlignment({
      converter: "f:1:MainAxisAlignment.center",
    });
  }
  static spaceBetween() {
    return new MainAxisAlignment({
      converter: "f:1:MainAxisAlignment.spaceBetween",
    });
  }
  static spaceAround() {
    return new MainAxisAlignment({
      converter: "f:1:MainAxisAlignment.spaceAround",
    });
  }
  static spaceEvenly() {
    return new MainAxisAlignment({
      converter: "f:1:MainAxisAlignment.spaceEvenly",
    });
  }
}
export class MainAxisSize extends ZacConverter {
  static min() {
    return new MainAxisSize({
      converter: "f:1:MainAxisSize.min",
    });
  }
  static max() {
    return new MainAxisSize({
      converter: "f:1:MainAxisSize.max",
    });
  }
}
export class FlexFit extends ZacConverter {
  static tight() {
    return new FlexFit({
      converter: "f:1:FlexFit.tight",
    });
  }
  static loose() {
    return new FlexFit({
      converter: "f:1:FlexFit.loose",
    });
  }
}
export class WrapAlignment extends ZacConverter {
  static start() {
    return new WrapAlignment({
      converter: "f:1:WrapAlignment.start",
    });
  }
  static end() {
    return new WrapAlignment({
      converter: "f:1:WrapAlignment.end",
    });
  }
  static center() {
    return new WrapAlignment({
      converter: "f:1:WrapAlignment.center",
    });
  }
  static spaceBetween() {
    return new WrapAlignment({
      converter: "f:1:WrapAlignment.spaceBetween",
    });
  }
  static spaceAround() {
    return new WrapAlignment({
      converter: "f:1:WrapAlignment.spaceAround",
    });
  }
  static spaceEvenly() {
    return new WrapAlignment({
      converter: "f:1:WrapAlignment.spaceEvenly",
    });
  }
}
export class WrapCrossAlignment extends ZacConverter {
  static center() {
    return new WrapCrossAlignment({
      converter: "f:1:WrapCrossAlignment.center",
    });
  }
  static end() {
    return new WrapCrossAlignment({
      converter: "f:1:WrapCrossAlignment.end",
    });
  }
  static start() {
    return new WrapCrossAlignment({
      converter: "f:1:WrapCrossAlignment.start",
    });
  }
}
export class BoxConstraints extends ZacConverter {
  static new(data: {
    minWidth?: ZacValue<DartDouble>;
    maxWidth?: ZacValue<DartDouble>;
    minHeight?: ZacValue<DartDouble>;
    maxHeight?: ZacValue<DartDouble>;
  }) {
    return new BoxConstraints({
      converter: "f:1:BoxConstraints",
      ...data,
    });
  }
  static expand(data: {
    width?: ZacValue<DartDouble>;
    height?: ZacValue<DartDouble>;
  }) {
    return new BoxConstraints({
      converter: "f:1:BoxConstraints.expand",
      ...data,
    });
  }
  static loose(data: { size: Size }) {
    return new BoxConstraints({
      converter: "f:1:BoxConstraints.loose",
      ...data,
    });
  }
  static tight(data: { size: Size }) {
    return new BoxConstraints({
      converter: "f:1:BoxConstraints.tight",
      ...data,
    });
  }
  static tightFor(data: {
    width?: ZacValue<DartDouble>;
    height?: ZacValue<DartDouble>;
  }) {
    return new BoxConstraints({
      converter: "f:1:BoxConstraints.tightFor",
      ...data,
    });
  }
  static tightForFinite(data: {
    width?: ZacValue<DartDouble>;
    height?: ZacValue<DartDouble>;
  }) {
    return new BoxConstraints({
      converter: "f:1:BoxConstraints.tightForFinite",
      ...data,
    });
  }
}
export class DecorationPosition extends ZacConverter {
  static background() {
    return new DecorationPosition({
      converter: "f:1:DecorationPosition.background",
    });
  }
  static foreground() {
    return new DecorationPosition({
      converter: "f:1:DecorationPosition.foreground",
    });
  }
}
export class SystemUiOverlayStyle extends ZacConverter {
  static new(data: {
    systemNavigationBarColor?: Color;
    systemNavigationBarDividerColor?: Color;
    systemNavigationBarIconBrightness?: Brightness;
    systemNavigationBarContrastEnforced?: ZacValue<boolean>;
    statusBarColor?: Color;
    statusBarBrightness?: Brightness;
    statusBarIconBrightness?: Brightness;
    systemStatusBarContrastEnforced?: ZacValue<boolean>;
  }) {
    return new SystemUiOverlayStyle({
      converter: "f:1:SystemUiOverlayStyle",
      ...data,
    });
  }
}
export class TextInputType extends ZacConverter {
  static datetime() {
    return new TextInputType({
      converter: "f:1:TextInputType.datetime",
    });
  }
  static emailAddress() {
    return new TextInputType({
      converter: "f:1:TextInputType.emailAddress",
    });
  }
  static multiline() {
    return new TextInputType({
      converter: "f:1:TextInputType.multiline",
    });
  }
  static name_() {
    return new TextInputType({
      converter: "f:1:TextInputType.name",
    });
  }
  static none() {
    return new TextInputType({
      converter: "f:1:TextInputType.none",
    });
  }
  static number() {
    return new TextInputType({
      converter: "f:1:TextInputType.number",
    });
  }
  static phone() {
    return new TextInputType({
      converter: "f:1:TextInputType.phone",
    });
  }
  static streetAddress() {
    return new TextInputType({
      converter: "f:1:TextInputType.streetAddress",
    });
  }
  static text() {
    return new TextInputType({
      converter: "f:1:TextInputType.text",
    });
  }
  static url() {
    return new TextInputType({
      converter: "f:1:TextInputType.url",
    });
  }
  static visiblePassword() {
    return new TextInputType({
      converter: "f:1:TextInputType.visiblePassword",
    });
  }
}
export class TextInputAction extends ZacConverter {
  static continueAction() {
    return new TextInputAction({
      converter: "f:1:TextInputAction.continueAction",
    });
  }
  static done() {
    return new TextInputAction({
      converter: "f:1:TextInputAction.done",
    });
  }
  static emergencyCall() {
    return new TextInputAction({
      converter: "f:1:TextInputAction.emergencyCall",
    });
  }
  static go() {
    return new TextInputAction({
      converter: "f:1:TextInputAction.go",
    });
  }
  static join() {
    return new TextInputAction({
      converter: "f:1:TextInputAction.join",
    });
  }
  static newline() {
    return new TextInputAction({
      converter: "f:1:TextInputAction.newline",
    });
  }
  static next() {
    return new TextInputAction({
      converter: "f:1:TextInputAction.next",
    });
  }
  static none() {
    return new TextInputAction({
      converter: "f:1:TextInputAction.none",
    });
  }
  static previous() {
    return new TextInputAction({
      converter: "f:1:TextInputAction.previous",
    });
  }
  static route() {
    return new TextInputAction({
      converter: "f:1:TextInputAction.route",
    });
  }
  static search() {
    return new TextInputAction({
      converter: "f:1:TextInputAction.search",
    });
  }
  static send() {
    return new TextInputAction({
      converter: "f:1:TextInputAction.send",
    });
  }
  static unspecified() {
    return new TextInputAction({
      converter: "f:1:TextInputAction.unspecified",
    });
  }
}
export class TextCapitalization extends ZacConverter {
  static characters() {
    return new TextCapitalization({
      converter: "f:1:TextCapitalization.characters",
    });
  }
  static none() {
    return new TextCapitalization({
      converter: "f:1:TextCapitalization.none",
    });
  }
  static sentences() {
    return new TextCapitalization({
      converter: "f:1:TextCapitalization.sentences",
    });
  }
  static words() {
    return new TextCapitalization({
      converter: "f:1:TextCapitalization.words",
    });
  }
}
export class SmartQuotesType extends ZacConverter {
  static disabled() {
    return new SmartQuotesType({
      converter: "f:1:SmartQuotesType.disabled",
    });
  }
  static enabled() {
    return new SmartQuotesType({
      converter: "f:1:SmartQuotesType.enabled",
    });
  }
}
export class ZacStateMachineProviderBuilder
  extends ZacConverter
  implements Widget
{
  static new(data: {
    key?: Key;
    family: ZacValue<string>;
    initialState: ZacValue<string>;
    states: Record<string, ZacStateConfig>;
    child: Widget;
    initialContext?: ZacValue<ZacTypes>;
  }) {
    return new ZacStateMachineProviderBuilder({
      converter: "z:1:StateMachine.provide",
      ...data,
    });
  }
}
export class ZacWidgetBuilder extends ZacConverter implements Widget {
  static new(data: { key?: Key; data: ZacValue<Widget> }) {
    return new ZacWidgetBuilder({
      converter: "z:1:Widget",
      ...data,
    });
  }
  static map(data: { key?: Key; data: ZacValue<Record<string, any>> }) {
    return new ZacWidgetBuilder({
      converter: "z:1:Widget.map",
      ...data,
    });
  }
  static isolate(data: {
    key?: Key;
    data: ZacValue<Record<string, any>>;
    errorChild?: Widget;
    debugRethrowError?: boolean;
  }) {
    return new ZacWidgetBuilder({
      converter: "z:1:Widget.isolate",
      ...data,
    });
  }
  static isolateString(data: {
    key?: Key;
    data: ZacValue<string>;
    errorChild?: Widget;
    debugRethrowError?: boolean;
  }) {
    return new ZacWidgetBuilder({
      converter: "z:1:Widget.isolateString",
      ...data,
    });
  }
}
export class ZacUpdateContextBuilder extends ZacConverter implements Widget {
  static new(data: { key?: Key; child: Widget }) {
    return new ZacUpdateContextBuilder({
      converter: "z:1:UpdateContext",
      ...data,
    });
  }
}
export class ZacStateMachineBuildStateBuilder
  extends ZacConverter
  implements Widget
{
  static new(data: {
    key?: Key;
    family: ZacValue<string>;
    states: Array<string>;
    unmappedStateWidget?: Widget;
  }) {
    return new ZacStateMachineBuildStateBuilder({
      converter: "z:1:StateMachine:BuildState",
      ...data,
    });
  }
}
export class SharedValueProviderBuilder extends ZacConverter implements Widget {
  static new(data: {
    key?: Key;
    value: ZacTypes | null;
    transformer?: ZacTransformers;
    itemTransformer?: ZacTransformers;
    family: ZacTypes;
    child: Widget;
    autoCreate: boolean;
  }) {
    return new SharedValueProviderBuilder({
      converter: "z:1:SharedValue.provide",
      ...data,
    });
  }
}
export class ZacExecuteActionsBuilder extends ZacConverter implements Widget {
  static once(data: { actions: ZacActions; child?: Widget }) {
    return new ZacExecuteActionsBuilder({
      converter: "z:1:ExecuteActions.once",
      ...data,
    });
  }
  static listen(data: {
    actions: ZacActions;
    family: ZacTypes;
    child?: Widget;
  }) {
    return new ZacExecuteActionsBuilder({
      converter: "z:1:ExecuteActions.listen",
      ...data,
    });
  }
}
export class ClipRect extends ZacConverter implements Widget {
  static new(data: { key?: Key; child?: Widget; clipBehavior?: Clip }) {
    return new ClipRect({
      converter: "f:1:ClipRect",
      ...data,
    });
  }
}
export class DecoratedBox extends ZacConverter implements Widget {
  static new(data: {
    key?: Key;
    child?: Widget;
    decoration: Decoration;
    position?: DecorationPosition;
  }) {
    return new DecoratedBox({
      converter: "f:1:DecoratedBox",
      ...data,
    });
  }
}
export class FractionalTranslation extends ZacConverter implements Widget {
  static new(data: {
    key?: Key;
    child?: Widget;
    translation: Offset;
    transformHitTests?: ZacValue<boolean>;
  }) {
    return new FractionalTranslation({
      converter: "f:1:FractionalTranslation",
      ...data,
    });
  }
}
export class GestureDetector extends ZacConverter implements Widget {
  static new(data: {
    key?: Key;
    child?: Widget;
    onTap?: ZacActions;
    onSecondaryTap?: ZacActions;
    onDoubleTap?: ZacActions;
    onLongPress?: ZacActions;
    onSecondaryLongPress?: ZacActions;
    onTertiaryLongPress?: ZacActions;
    behavior?: HitTestBehavior;
    excludeFromSemantics?: ZacValue<boolean>;
  }) {
    return new GestureDetector({
      converter: "f:1:GestureDetector",
      ...data,
    });
  }
}
export class Icon extends ZacConverter implements Widget {
  static new(data: {
    icon: IconData | null;
    key?: Key;
    size?: ZacValue<DartDouble>;
    color?: Color;
    semanticLabel?: ZacValue<string>;
    textDirection?: TextDirection;
  }) {
    return new Icon({
      converter: "f:1:Icon",
      ...data,
    });
  }
}
export class IconData extends ZacConverter {
  static new(data: {
    codePoint: ZacValue<DartInt>;
    fontFamily?: ZacValue<string>;
    fontPackage?: ZacValue<string>;
    matchTextDirection?: ZacValue<boolean>;
  }) {
    return new IconData({
      converter: "f:1:IconData",
      ...data,
    });
  }
}
export class IconThemeData extends ZacConverter {
  static new(data: {
    color?: Color;
    opacity?: ZacValue<DartDouble>;
    size?: ZacValue<DartDouble>;
  }) {
    return new IconThemeData({
      converter: "f:1:IconThemeData",
      ...data,
    });
  }
}
export class IgnorePointer extends ZacConverter implements Widget {
  static new(data: {
    key?: Key;
    ignoring?: ZacValue<boolean>;
    ignoringSemantics?: ZacValue<boolean>;
    child?: Widget;
  }) {
    return new IgnorePointer({
      converter: "f:1:IgnorePointer",
      ...data,
    });
  }
}
export class Image extends ZacConverter implements Widget {
  static network(data: {
    src: ZacValue<string>;
    key?: Key;
    scale?: ZacValue<DartDouble>;
    semanticLabel?: ZacValue<string>;
    excludeFromSemantics?: ZacValue<boolean>;
    width?: ZacValue<DartDouble>;
    height?: ZacValue<DartDouble>;
    color?: Color;
    colorBlendMode?: BlendMode;
    fit?: BoxFit;
    alignment?: AlignmentGeometry;
    repeat?: ImageRepeat;
    centerSlice?: Rect;
    matchTextDirection?: ZacValue<boolean>;
    gaplessPlayback?: ZacValue<boolean>;
    filterQuality?: FilterQuality;
    isAntiAlias?: ZacValue<boolean>;
    headers?: Record<string, string>;
    cacheWidth?: ZacValue<DartInt>;
    cacheHeight?: ZacValue<DartInt>;
  }) {
    return new Image({
      converter: "f:1:Image.network",
      ...data,
    });
  }
  static asset(data: {
    name: ZacValue<string>;
    key?: Key;
    semanticLabel?: ZacValue<string>;
    excludeFromSemantics?: ZacValue<boolean>;
    scale?: ZacValue<DartDouble>;
    width?: ZacValue<DartDouble>;
    height?: ZacValue<DartDouble>;
    color?: Color;
    colorBlendMode?: BlendMode;
    fit?: BoxFit;
    alignment?: AlignmentGeometry;
    repeat?: ImageRepeat;
    centerSlice?: Rect;
    matchTextDirection?: ZacValue<boolean>;
    gaplessPlayback?: ZacValue<boolean>;
    isAntiAlias?: ZacValue<boolean>;
    package?: ZacValue<string>;
    filterQuality?: FilterQuality;
    cacheWidth?: ZacValue<DartInt>;
    cacheHeight?: ZacValue<DartInt>;
  }) {
    return new Image({
      converter: "f:1:Image.asset",
      ...data,
    });
  }
}
export class InteractiveViewer extends ZacConverter implements Widget {
  static new(data: {
    key?: Key;
    child: Widget;
    clipBehavior?: Clip;
    alignPanAxis?: ZacValue<boolean>;
    boundaryMargin?: EdgeInsets;
    constrained?: ZacValue<boolean>;
    maxScale?: ZacValue<DartDouble>;
    minScale?: ZacValue<DartDouble>;
    onInteractionEnd?: ZacActions;
    onInteractionStart?: ZacActions;
    onInteractionUpdate?: ZacActions;
    panEnabled?: ZacValue<boolean>;
    scaleEnabled?: ZacValue<boolean>;
  }) {
    return new InteractiveViewer({
      converter: "f:1:InteractiveViewer",
      ...data,
    });
  }
}
export class ScrollViewKeyboardDismissBehavior extends ZacConverter {
  static manual() {
    return new ScrollViewKeyboardDismissBehavior({
      converter: "f:1:ScrollViewKeyboardDismissBehavior.manual",
    });
  }
  static onDrag() {
    return new ScrollViewKeyboardDismissBehavior({
      converter: "f:1:ScrollViewKeyboardDismissBehavior.onDrag",
    });
  }
}
export class Align extends ZacConverter implements Widget {
  static new(data: {
    key?: Key;
    alignment?: AlignmentGeometry;
    widthFactor?: ZacValue<DartDouble>;
    heightFactor?: ZacValue<DartDouble>;
    child?: Widget;
  }) {
    return new Align({
      converter: "f:1:Align",
      ...data,
    });
  }
}
export class AspectRatio extends ZacConverter implements Widget {
  static new(data: {
    key?: Key;
    aspectRatio: ZacValue<DartDouble>;
    child?: Widget;
  }) {
    return new AspectRatio({
      converter: "f:1:AspectRatio",
      ...data,
    });
  }
}
export class Center extends ZacConverter implements Widget {
  static new(data: {
    key?: Key;
    widthFactor?: ZacValue<DartDouble>;
    heightFactor?: ZacValue<DartDouble>;
    child?: Widget;
  }) {
    return new Center({
      converter: "f:1:Center",
      ...data,
    });
  }
}
export class ConstrainedBox extends ZacConverter implements Widget {
  static new(data: { key?: Key; constraints: BoxConstraints; child?: Widget }) {
    return new ConstrainedBox({
      converter: "f:1:ConstrainedBox",
      ...data,
    });
  }
}
export class Container extends ZacConverter implements Widget {
  static new(data: {
    key?: Key;
    child?: Widget;
    color?: Color;
    margin?: EdgeInsetsGeometry;
    padding?: EdgeInsetsGeometry;
    alignment?: AlignmentGeometry;
    decoration?: Decoration;
  }) {
    return new Container({
      converter: "f:1:Container",
      ...data,
    });
  }
}
export class Expanded extends ZacConverter implements Widget {
  static new(data: { key?: Key; flex?: ZacValue<DartInt>; child: Widget }) {
    return new Expanded({
      converter: "f:1:Expanded",
      ...data,
    });
  }
}
export class FittedBox extends ZacConverter implements Widget {
  static new(data: {
    key?: Key;
    fit?: BoxFit;
    alignment?: AlignmentGeometry;
    clipBehavior?: Clip;
    child?: Widget;
  }) {
    return new FittedBox({
      converter: "f:1:FittedBox",
      ...data,
    });
  }
}
export class Flexible extends ZacConverter implements Widget {
  static new(data: {
    key?: Key;
    flex?: ZacValue<DartInt>;
    fit?: FlexFit;
    child: Widget;
  }) {
    return new Flexible({
      converter: "f:1:Flexible",
      ...data,
    });
  }
}
export class FractionallySizedBox extends ZacConverter implements Widget {
  static new(data: {
    key?: Key;
    child?: Widget;
    alignment?: AlignmentGeometry;
    widthFactor?: ZacValue<DartDouble>;
    heightFactor?: ZacValue<DartDouble>;
  }) {
    return new FractionallySizedBox({
      converter: "f:1:FractionallySizedBox",
      ...data,
    });
  }
}
export class ClipOval extends ZacConverter implements Widget {
  static new(data: { key?: Key; child?: Widget; clipBehavior?: Clip }) {
    return new ClipOval({
      converter: "f:1:ClipOval",
      ...data,
    });
  }
}
export class IntrinsicWidth extends ZacConverter implements Widget {
  static new(data: { key?: Key; child?: Widget }) {
    return new IntrinsicWidth({
      converter: "f:1:IntrinsicWidth",
      ...data,
    });
  }
}
export class LimitedBox extends ZacConverter implements Widget {
  static new(data: {
    key?: Key;
    maxWidth?: ZacValue<DartDouble>;
    maxHeight?: ZacValue<DartDouble>;
    child?: Widget;
  }) {
    return new LimitedBox({
      converter: "f:1:LimitedBox",
      ...data,
    });
  }
}
export class Offstage extends ZacConverter implements Widget {
  static new(data: {
    key?: Key;
    offstage?: ZacValue<boolean>;
    child?: Widget;
  }) {
    return new Offstage({
      converter: "f:1:Offstage",
      ...data,
    });
  }
}
export class OverflowBox extends ZacConverter implements Widget {
  static new(data: {
    key?: Key;
    alignment?: AlignmentGeometry;
    minWidth?: ZacValue<DartDouble>;
    maxWidth?: ZacValue<DartDouble>;
    minHeight?: ZacValue<DartDouble>;
    maxHeight?: ZacValue<DartDouble>;
    child?: Widget;
  }) {
    return new OverflowBox({
      converter: "f:1:OverflowBox",
      ...data,
    });
  }
}
export class Padding extends ZacConverter implements Widget {
  static new(data: { key?: Key; padding: EdgeInsetsGeometry; child?: Widget }) {
    return new Padding({
      converter: "f:1:Padding",
      ...data,
    });
  }
}
export class Positioned extends ZacConverter implements Widget {
  static new(data: {
    key?: Key;
    left?: ZacValue<DartDouble>;
    top?: ZacValue<DartDouble>;
    right?: ZacValue<DartDouble>;
    bottom?: ZacValue<DartDouble>;
    width?: ZacValue<DartDouble>;
    height?: ZacValue<DartDouble>;
    child: Widget;
  }) {
    return new Positioned({
      converter: "f:1:Positioned",
      ...data,
    });
  }
  static directional(data: {
    key?: Key;
    textDirection: TextDirection;
    start?: ZacValue<DartDouble>;
    top?: ZacValue<DartDouble>;
    end?: ZacValue<DartDouble>;
    bottom?: ZacValue<DartDouble>;
    width?: ZacValue<DartDouble>;
    height?: ZacValue<DartDouble>;
    child: Widget;
  }) {
    return new Positioned({
      converter: "f:1:Positioned.directional",
      ...data,
    });
  }
  static fill(data: {
    key?: Key;
    left?: ZacValue<DartDouble>;
    top?: ZacValue<DartDouble>;
    right?: ZacValue<DartDouble>;
    bottom?: ZacValue<DartDouble>;
    child: Widget;
  }) {
    return new Positioned({
      converter: "f:1:Positioned.fill",
      ...data,
    });
  }
}
export class SafeArea extends ZacConverter implements Widget {
  static new(data: {
    key?: Key;
    left?: ZacValue<boolean>;
    top?: ZacValue<boolean>;
    right?: ZacValue<boolean>;
    bottom?: ZacValue<boolean>;
    minimum?: EdgeInsets;
    maintainBottomViewPadding?: ZacValue<boolean>;
    child: Widget;
  }) {
    return new SafeArea({
      converter: "f:1:SafeArea",
      ...data,
    });
  }
}
export class SingleChildScrollView extends ZacConverter implements Widget {
  static new(data: {
    key?: Key;
    scrollDirection?: Axis;
    reverse?: ZacValue<boolean>;
    padding?: EdgeInsetsGeometry;
    primary?: ZacValue<boolean>;
    child?: Widget;
    clipBehavior?: Clip;
    restorationId?: ZacValue<string>;
    keyboardDismissBehavior?: ScrollViewKeyboardDismissBehavior;
  }) {
    return new SingleChildScrollView({
      converter: "f:1:SingleChildScrollView",
      ...data,
    });
  }
}
export class SizedBox extends ZacConverter implements Widget {
  static new(data: {
    key?: Key;
    width?: ZacValue<DartDouble>;
    height?: ZacValue<DartDouble>;
    child?: Widget;
  }) {
    return new SizedBox({
      converter: "f:1:SizedBox",
      ...data,
    });
  }
  static expand(data: { key?: Key; child?: Widget }) {
    return new SizedBox({
      converter: "f:1:SizedBox.expand",
      ...data,
    });
  }
  static fromSize(data: { key?: Key; child?: Widget; size?: Size }) {
    return new SizedBox({
      converter: "f:1:SizedBox.fromSize",
      ...data,
    });
  }
  static shrink(data: { key?: Key; child?: Widget }) {
    return new SizedBox({
      converter: "f:1:SizedBox.shrink",
      ...data,
    });
  }
  static square(data: {
    key?: Key;
    child?: Widget;
    dimension?: ZacValue<DartDouble>;
  }) {
    return new SizedBox({
      converter: "f:1:SizedBox.square",
      ...data,
    });
  }
}
export class SizedOverflowBox extends ZacConverter implements Widget {
  static new(data: {
    key?: Key;
    size: Size;
    alignment?: AlignmentGeometry;
    child?: Widget;
  }) {
    return new SizedOverflowBox({
      converter: "f:1:SizedOverflowBox",
      ...data,
    });
  }
}
export class Spacer extends ZacConverter implements Widget {
  static new(data: { key?: Key; flex?: ZacValue<DartInt> }) {
    return new Spacer({
      converter: "f:1:Spacer",
      ...data,
    });
  }
}
export class UnconstrainedBox extends ZacConverter implements Widget {
  static new(data: {
    key?: Key;
    child?: Widget;
    textDirection?: TextDirection;
    alignment?: AlignmentGeometry;
    constrainedAxis?: Axis;
    clipBehavior?: Clip;
  }) {
    return new UnconstrainedBox({
      converter: "f:1:UnconstrainedBox",
      ...data,
    });
  }
}
export class Column extends ZacConverter implements Widget {
  static new(data: {
    key?: Key;
    mainAxisAlignment?: MainAxisAlignment;
    mainAxisSize?: MainAxisSize;
    crossAxisAlignment?: CrossAxisAlignment;
    textDirection?: TextDirection;
    verticalDirection?: VerticalDirection;
    textBaseline?: TextBaseline;
    children?: ZacValueList<Widget>;
  }) {
    return new Column({
      converter: "f:1:Column",
      ...data,
    });
  }
}
export class GridView extends ZacConverter implements Widget {
  static new(data: {
    key?: Key;
    scrollDirection?: Axis;
    reverse?: ZacValue<boolean>;
    primary?: ZacValue<boolean>;
    shrinkWrap?: ZacValue<boolean>;
    padding?: EdgeInsetsGeometry;
    gridDelegate: SliverGridDelegate;
    addAutomaticKeepAlives?: ZacValue<boolean>;
    addRepaintBoundaries?: ZacValue<boolean>;
    addSemanticIndexes?: ZacValue<boolean>;
    cacheExtent?: ZacValue<DartDouble>;
    children?: ZacValueList<Widget>;
    semanticChildCount?: ZacValue<DartInt>;
    clipBehavior?: Clip;
    keyboardDismissBehavior?: ScrollViewKeyboardDismissBehavior;
    restorationId?: ZacValue<string>;
  }) {
    return new GridView({
      converter: "f:1:GridView",
      ...data,
    });
  }
}
export class IndexedStack extends ZacConverter implements Widget {
  static new(data: {
    key?: Key;
    alignment?: AlignmentGeometry;
    textDirection?: TextDirection;
    sizing?: StackFit;
    index?: ZacValue<DartInt>;
    children?: ZacValueList<Widget>;
  }) {
    return new IndexedStack({
      converter: "f:1:IndexedStack",
      ...data,
    });
  }
}
export class ListView extends ZacConverter implements Widget {
  static new(data: {
    key?: Key;
    scrollDirection?: Axis;
    reverse?: ZacValue<boolean>;
    primary?: ZacValue<boolean>;
    physics?: ScrollPhysics;
    shrinkWrap?: ZacValue<boolean>;
    padding?: EdgeInsetsGeometry;
    itemExtent?: ZacValue<DartDouble>;
    prototypeItem?: Widget;
    addAutomaticKeepAlives?: ZacValue<boolean>;
    addRepaintBoundaries?: ZacValue<boolean>;
    addSemanticIndexes?: ZacValue<boolean>;
    cacheExtent?: ZacValue<DartDouble>;
    children?: ZacValueList<Widget>;
    semanticChildCount?: ZacValue<DartInt>;
    keyboardDismissBehavior?: ScrollViewKeyboardDismissBehavior;
    restorationId?: ZacValue<string>;
    clipBehavior?: Clip;
  }) {
    return new ListView({
      converter: "f:1:ListView",
      ...data,
    });
  }
}
export class Row extends ZacConverter implements Widget {
  static new(data: {
    key?: Key;
    mainAxisAlignment?: MainAxisAlignment;
    mainAxisSize?: MainAxisSize;
    crossAxisAlignment?: CrossAxisAlignment;
    textDirection?: TextDirection;
    verticalDirection?: VerticalDirection;
    textBaseline?: TextBaseline;
    children?: ZacValueList<Widget>;
  }) {
    return new Row({
      converter: "f:1:Row",
      ...data,
    });
  }
}
export class Material extends ZacConverter implements Widget {
  static new(data: {
    key?: Key;
    child?: Widget;
    elevation?: ZacValue<DartDouble>;
    color?: Color;
    shadowColor?: Color;
    textStyle?: TextStyle;
    borderRadius?: BorderRadiusGeometry;
    shape?: ShapeBorder;
    borderOnForeground?: ZacValue<boolean>;
    clipBehavior?: Clip;
  }) {
    return new Material({
      converter: "f:1:Material",
      ...data,
    });
  }
}
export class Wrap extends ZacConverter implements Widget {
  static new(data: {
    key?: Key;
    direction?: Axis;
    alignment?: WrapAlignment;
    spacing?: ZacValue<DartDouble>;
    runSpacing?: ZacValue<DartDouble>;
    runAlignment?: WrapAlignment;
    crossAxisAlignment?: WrapCrossAlignment;
    textDirection?: TextDirection;
    verticalDirection?: VerticalDirection;
    clipBehavior?: Clip;
    children?: ZacValueList<Widget>;
  }) {
    return new Wrap({
      converter: "f:1:Wrap",
      ...data,
    });
  }
}
export class AppBar extends ZacConverter implements Widget {
  static new(data: {
    key?: Key;
    leading?: Widget;
    automaticallyImplyLeading?: ZacValue<boolean>;
    title?: Widget;
    actions?: ZacValueList<Widget>;
    flexibleSpace?: Widget;
    bottom?: Widget;
    elevation?: ZacValue<DartDouble>;
    shadowColor?: Color;
    shape?: ShapeBorder;
    backgroundColor?: Color;
    foregroundColor?: Color;
    iconTheme?: IconThemeData;
    actionsIconTheme?: IconThemeData;
    primary?: ZacValue<boolean>;
    centerTitle?: ZacValue<boolean>;
    excludeHeaderSemantics?: ZacValue<boolean>;
    titleSpacing?: ZacValue<DartDouble>;
    toolbarOpacity?: ZacValue<DartDouble>;
    bottomOpacity?: ZacValue<DartDouble>;
    toolbarHeight?: ZacValue<DartDouble>;
    leadingWidth?: ZacValue<DartDouble>;
    toolbarTextStyle?: TextStyle;
    titleTextStyle?: TextStyle;
    systemOverlayStyle?: SystemUiOverlayStyle;
  }) {
    return new AppBar({
      converter: "f:1:AppBar",
      ...data,
    });
  }
}
export class ElevatedButton extends ZacConverter implements Widget {
  static new(data: {
    key?: Key;
    child: Widget | null;
    onPressed?: ZacActions;
    onLongPress?: ZacActions;
    autofocus?: ZacValue<boolean>;
    clipBehavior?: Clip;
  }) {
    return new ElevatedButton({
      converter: "f:1:ElevatedButton",
      ...data,
    });
  }
  static icon(data: {
    key?: Key;
    icon: Widget;
    label: Widget;
    onPressed?: ZacActions;
    onLongPress?: ZacActions;
    autofocus?: ZacValue<boolean>;
    clipBehavior?: Clip;
  }) {
    return new ElevatedButton({
      converter: "f:1:ElevatedButton.icon",
      ...data,
    });
  }
}
export class OutlinedButton extends ZacConverter implements Widget {
  static new(data: {
    key?: Key;
    child: Widget;
    onPressed?: ZacActions;
    onLongPress?: ZacActions;
    autofocus?: ZacValue<boolean>;
    clipBehavior?: Clip;
  }) {
    return new OutlinedButton({
      converter: "f:1:OutlinedButton",
      ...data,
    });
  }
  static icon(data: {
    key?: Key;
    icon: Widget;
    label: Widget;
    onPressed?: ZacActions;
    onLongPress?: ZacActions;
    autofocus?: ZacValue<boolean>;
    clipBehavior?: Clip;
  }) {
    return new OutlinedButton({
      converter: "f:1:OutlinedButton.icon",
      ...data,
    });
  }
}
export class TextButton extends ZacConverter implements Widget {
  static new(data: {
    key?: Key;
    child: Widget;
    onPressed?: ZacActions;
    onLongPress?: ZacActions;
    autofocus?: ZacValue<boolean>;
    clipBehavior?: Clip;
  }) {
    return new TextButton({
      converter: "f:1:TextButton",
      ...data,
    });
  }
  static icon(data: {
    key?: Key;
    icon: Widget;
    label: Widget;
    onPressed?: ZacActions;
    onLongPress?: ZacActions;
    autofocus?: ZacValue<boolean>;
    clipBehavior?: Clip;
  }) {
    return new TextButton({
      converter: "f:1:TextButton.icon",
      ...data,
    });
  }
}
export class ButtonBar extends ZacConverter implements Widget {
  static new(data: {
    key?: Key;
    alignment?: MainAxisAlignment;
    mainAxisSize?: MainAxisSize;
    buttonMinWidth?: ZacValue<DartDouble>;
    buttonHeight?: ZacValue<DartDouble>;
    buttonPadding?: EdgeInsetsGeometry;
    buttonAlignedDropdown?: ZacValue<boolean>;
    overflowDirection?: VerticalDirection;
    overflowButtonSpacing?: ZacValue<DartDouble>;
    children?: ZacValueList<Widget>;
  }) {
    return new ButtonBar({
      converter: "f:1:ButtonBar",
      ...data,
    });
  }
}
export class Card extends ZacConverter implements Widget {
  static new(data: {
    key?: Key;
    color?: Color;
    shadowColor?: Color;
    elevation?: ZacValue<DartDouble>;
    shape?: ShapeBorder;
    borderOnForeground?: ZacValue<boolean>;
    margin?: EdgeInsetsGeometry;
    clipBehavior?: Clip;
    child?: Widget;
    semanticContainer?: ZacValue<boolean>;
  }) {
    return new Card({
      converter: "f:1:Card",
      ...data,
    });
  }
}
export class Dialogs extends ZacConverter implements Widget {
  static dialog(data: {
    key?: Key;
    backgroundColor?: Color;
    elevation?: ZacValue<DartDouble>;
    insetPadding?: EdgeInsets;
    clipBehavior?: Clip;
    shape?: ShapeBorder;
    alignment?: AlignmentGeometry;
    child?: Widget;
  }) {
    return new Dialogs({
      converter: "f:1:Dialog",
      ...data,
    });
  }
  static alertDialog(data: {
    key?: Key;
    title?: Widget;
    content?: Widget;
    actions?: ZacValueList<Widget>;
    titlePadding?: EdgeInsetsGeometry;
    titleTextStyle?: TextStyle;
    contentPadding?: EdgeInsetsGeometry;
    contentTextStyle?: TextStyle;
    actionsPadding?: EdgeInsetsGeometry;
    actionsAlignment?: MainAxisAlignment;
    actionsOverflowDirection?: VerticalDirection;
    actionsOverflowButtonSpacing?: ZacValue<DartDouble>;
    buttonPadding?: EdgeInsetsGeometry;
    backgroundColor?: Color;
    elevation?: ZacValue<DartDouble>;
    semanticLabel?: ZacValue<string>;
    insetPadding?: EdgeInsets;
    clipBehavior?: Clip;
    shape?: ShapeBorder;
    alignment?: AlignmentGeometry;
    scrollable?: ZacValue<boolean>;
  }) {
    return new Dialogs({
      converter: "f:1:AlertDialog",
      ...data,
    });
  }
  static simpleDialog(data: {
    key?: Key;
    title?: Widget;
    children?: ZacValueList<Widget>;
    titlePadding?: EdgeInsetsGeometry;
    titleTextStyle?: TextStyle;
    contentPadding?: EdgeInsetsGeometry;
    backgroundColor?: Color;
    elevation?: ZacValue<DartDouble>;
    semanticLabel?: ZacValue<string>;
    insetPadding?: EdgeInsets;
    clipBehavior?: Clip;
    shape?: ShapeBorder;
    alignment?: AlignmentGeometry;
  }) {
    return new Dialogs({
      converter: "f:1:SimpleDialog",
      ...data,
    });
  }
  static simpleDialogOption(data: {
    key?: Key;
    child?: Widget;
    onPressed?: ZacActions;
    padding?: EdgeInsets;
  }) {
    return new Dialogs({
      converter: "f:1:SimpleDialogOption",
      ...data,
    });
  }
}
export class DialogActions extends ZacConverter implements ZacAction {
  static showDialog(data: {
    child: Widget;
    barrierDismissible?: ZacValue<boolean>;
    barrierColor?: Color;
    barrierLabel?: ZacValue<string>;
    useSafeArea?: ZacValue<boolean>;
    useRootNavigator?: ZacValue<boolean>;
    routeSettings?: RouteSettings;
  }) {
    return new DialogActions({
      converter: "f:1:showDialog",
      ...data,
    });
  }
}
export class Divider extends ZacConverter implements Widget {
  static new(data: {
    key?: Key;
    height?: ZacValue<DartDouble>;
    thickness?: ZacValue<DartDouble>;
    indent?: ZacValue<DartDouble>;
    endIndent?: ZacValue<DartDouble>;
    color?: Color;
  }) {
    return new Divider({
      converter: "f:1:Divider",
      ...data,
    });
  }
}
export class Drawer extends ZacConverter implements Widget {
  static new(data: {
    key?: Key;
    backgroundColor?: Color;
    elevation?: ZacValue<DartDouble>;
    shape?: ShapeBorder;
    child?: Widget;
    semanticLabel?: ZacValue<string>;
  }) {
    return new Drawer({
      converter: "f:1:Drawer",
      ...data,
    });
  }
}
export class ListTile extends ZacConverter implements Widget {
  static new(data: {
    key?: Key;
    leading?: Widget;
    title?: Widget;
    subtitle?: Widget;
    trailing?: Widget;
    isThreeLine?: ZacValue<boolean>;
    dense?: ZacValue<boolean>;
    shape?: ShapeBorder;
    selectedColor?: Color;
    iconColor?: Color;
    textColor?: Color;
    contentPadding?: EdgeInsetsGeometry;
    enabled?: ZacValue<boolean>;
    onTap?: ZacActions;
    onLongPress?: ZacActions;
    selected?: ZacValue<boolean>;
    focusColor?: Color;
    hoverColor?: Color;
    autofocus?: ZacValue<boolean>;
    tileColor?: Color;
    selectedTileColor?: Color;
    enableFeedback?: ZacValue<boolean>;
    horizontalTitleGap?: ZacValue<DartDouble>;
    minVerticalPadding?: ZacValue<DartDouble>;
    minLeadingWidth?: ZacValue<DartDouble>;
  }) {
    return new ListTile({
      converter: "f:1:ListTile",
      ...data,
    });
  }
}
export class Builder extends ZacConverter implements Widget {
  static new(data: { key?: Key; child: Widget }) {
    return new Builder({
      converter: "f:1:Builder",
      ...data,
    });
  }
}
export class MaterialApp extends ZacConverter implements Widget {
  static new(data: {
    key?: Key;
    navigatorKey?: ZacValue<any>;
    home?: Widget;
    initialRoute?: ZacValue<string>;
    onGenerateRoute?: RouteFactory;
    onUnknownRoute?: RouteFactory;
    title?: ZacValue<string>;
    color?: Color;
    locale?: Locale;
    debugShowMaterialGrid?: ZacValue<boolean>;
    showPerformanceOverlay?: ZacValue<boolean>;
    checkerboardRasterCacheImages?: ZacValue<boolean>;
    checkerboardOffscreenLayers?: ZacValue<boolean>;
    showSemanticsDebugger?: ZacValue<boolean>;
    debugShowCheckedModeBanner?: ZacValue<boolean>;
    restorationScopeId?: ZacValue<string>;
    useInheritedMediaQuery?: ZacValue<boolean>;
  }) {
    return new MaterialApp({
      converter: "f:1:MaterialApp",
      ...data,
    });
  }
}
export class ProgressIndicator extends ZacConverter implements Widget {
  static linear(data: {
    key?: Key;
    value?: ZacValue<DartDouble>;
    backgroundColor?: Color;
    color?: Color;
    minHeight?: ZacValue<DartDouble>;
    semanticsLabel?: ZacValue<string>;
    semanticsValue?: ZacValue<string>;
  }) {
    return new ProgressIndicator({
      converter: "f:1:LinearProgressIndicator",
      ...data,
    });
  }
  static circular(data: {
    key?: Key;
    value?: ZacValue<DartDouble>;
    backgroundColor?: Color;
    color?: Color;
    strokeWidth?: ZacValue<DartDouble>;
    semanticsLabel?: ZacValue<string>;
    semanticsValue?: ZacValue<string>;
  }) {
    return new ProgressIndicator({
      converter: "f:1:CircularProgressIndicator",
      ...data,
    });
  }
}
export class RefreshIndicator extends ZacConverter implements Widget {
  static new(data: {
    key?: Key;
    child: Widget;
    displacement?: ZacValue<DartDouble>;
    edgeOffset?: ZacValue<DartDouble>;
    onRefresh: ZacActions;
    color?: Color;
    backgroundColor?: Color;
    semanticsLabel?: ZacValue<string>;
    semanticsValue?: ZacValue<string>;
    strokeWidth?: ZacValue<DartDouble>;
    triggerMode?: RefreshIndicatorTriggerMode;
    family: ZacTypes;
  }) {
    return new RefreshIndicator({
      converter: "f:1:RefreshIndicator",
      ...data,
    });
  }
}
export class RefreshIndicatorTriggerMode extends ZacConverter {
  static onEdge() {
    return new RefreshIndicatorTriggerMode({
      converter: "f:1:RefreshIndicatorTriggerMode.onEdge",
    });
  }
  static anywhere() {
    return new RefreshIndicatorTriggerMode({
      converter: "f:1:RefreshIndicatorTriggerMode.anywhere",
    });
  }
}
export class Scaffold extends ZacConverter implements Widget {
  static new(data: {
    key?: Key;
    appBar?: Widget;
    body?: Widget;
    floatingActionButton?: Widget;
    persistentFooterButtons?: ZacValueList<Widget>;
    drawer?: Widget;
    endDrawer?: Widget;
    bottomNavigationBar?: Widget;
    bottomSheet?: Widget;
    backgroundColor?: Color;
    resizeToAvoidBottomInset?: ZacValue<boolean>;
    primary?: ZacValue<boolean>;
    extendBody?: ZacValue<boolean>;
    extendBodyBehindAppBar?: ZacValue<boolean>;
    drawerScrimColor?: Color;
    drawerEdgeDragWidth?: ZacValue<DartDouble>;
    drawerEnableOpenDragGesture?: ZacValue<boolean>;
    endDrawerEnableOpenDragGesture?: ZacValue<boolean>;
    restorationId?: ZacValue<string>;
  }) {
    return new Scaffold({
      converter: "f:1:Scaffold",
      ...data,
    });
  }
}
export class ScaffoldActions extends ZacConverter implements ZacAction {
  static openDrawer() {
    return new ScaffoldActions({
      converter: "f:1:Scaffold.openDrawer",
    });
  }
  static openEndDrawer() {
    return new ScaffoldActions({
      converter: "f:1:Scaffold.openEndDrawer",
    });
  }
  static showBodyScrim(data: {
    value: boolean;
    opacity: ZacValue<DartDouble>;
  }) {
    return new ScaffoldActions({
      converter: "f:1:Scaffold.showBodyScrim",
      ...data,
    });
  }
  static showBottomSheet(data: {
    child: Widget;
    backgroundColor?: Color;
    elevation?: ZacValue<DartDouble>;
    shape?: ShapeBorder;
    clipBehavior?: Clip;
    constraints?: BoxConstraints;
    enableDrag?: ZacValue<boolean>;
  }) {
    return new ScaffoldActions({
      converter: "f:1:Scaffold.showBottomSheet",
      ...data,
    });
  }
}
export class ScaffoldMessenger extends ZacConverter implements ZacAction {
  static showSnackBar(data: { snackBar: SnackBar }) {
    return new ScaffoldMessenger({
      converter: "f:1:ScaffoldMessenger.showSnackBar",
      ...data,
    });
  }
  static hideCurrentSnackBar() {
    return new ScaffoldMessenger({
      converter: "f:1:ScaffoldMessenger.hideCurrentSnackBar",
    });
  }
  static removeCurrentSnackBar() {
    return new ScaffoldMessenger({
      converter: "f:1:ScaffoldMessenger.removeCurrentSnackBar",
    });
  }
  static showMaterialBanner(data: { materialBanner: MaterialBanner }) {
    return new ScaffoldMessenger({
      converter: "f:1:ScaffoldMessenger.showMaterialBanner",
      ...data,
    });
  }
  static hideCurrentMaterialBanner() {
    return new ScaffoldMessenger({
      converter: "f:1:ScaffoldMessenger.hideCurrentMaterialBanner",
    });
  }
  static removeCurrentMaterialBanner() {
    return new ScaffoldMessenger({
      converter: "f:1:ScaffoldMessenger.removeCurrentMaterialBanner",
    });
  }
}
export class SnackBar extends ZacConverter implements Widget {
  static new(data: {
    key?: Key;
    content: Widget;
    backgroundColor?: Color;
    elevation?: ZacValue<DartDouble>;
    margin?: EdgeInsetsGeometry;
    padding?: EdgeInsetsGeometry;
    width?: ZacValue<DartDouble>;
    shape?: ShapeBorder;
    behavior?: SnackBarBehavior;
    action?: SnackBarAction;
    onVisible?: ZacActions;
  }) {
    return new SnackBar({
      converter: "f:1:SnackBar",
      ...data,
    });
  }
}
export class SnackBarBehavior extends ZacConverter {
  static fixed() {
    return new SnackBarBehavior({
      converter: "f:1:SnackBarBehavior.fixed",
    });
  }
  static floating() {
    return new SnackBarBehavior({
      converter: "f:1:SnackBarBehavior.floating",
    });
  }
}
export class SnackBarAction extends ZacConverter implements Widget {
  static new(data: {
    key?: Key;
    textColor?: Color;
    disabledTextColor?: Color;
    label: string;
    onPressed: ZacActions | null;
  }) {
    return new SnackBarAction({
      converter: "f:1:SnackBarAction",
      ...data,
    });
  }
}
export class MaterialBanner extends ZacConverter implements Widget {
  static new(data: {
    key?: Key;
    content: Widget;
    contentTextStyle?: TextStyle;
    actions: ZacValueList<Widget>;
    elevation?: ZacValue<DartDouble>;
    leading: Widget | null;
    backgroundColor?: Color;
    padding?: EdgeInsetsGeometry;
    leadingPadding?: EdgeInsetsGeometry;
    forceActionsBelow?: ZacValue<boolean>;
    onVisible?: ZacActions;
  }) {
    return new MaterialBanner({
      converter: "f:1:MaterialBanner",
      ...data,
    });
  }
}
export class SelectableText extends ZacConverter implements Widget {
  static new(data: {
    data: string;
    key?: Key;
    style?: TextStyle;
    strutStyle?: StrutStyle;
    textAlign?: TextAlign;
    textDirection?: TextDirection;
    textScaleFactor?: ZacValue<DartDouble>;
    showCursor?: ZacValue<boolean>;
    autofocus?: ZacValue<boolean>;
    minLines?: ZacValue<DartInt>;
    maxLines?: ZacValue<DartInt>;
    cursorWidth?: ZacValue<DartDouble>;
    cursorHeight?: ZacValue<DartDouble>;
    cursorRadius?: Radius;
    cursorColor?: Color;
    enableInteractiveSelection?: ZacValue<boolean>;
    semanticsLabel?: ZacValue<string>;
    textHeightBehavior?: TextHeightBehavior;
    textWidthBasis?: TextWidthBasis;
  }) {
    return new SelectableText({
      converter: "f:1:SelectableText",
      ...data,
    });
  }
}
export class TextField extends ZacConverter implements Widget {
  static new(data: {
    key?: Key;
    decoration?: InputDecoration;
    keyboardType?: TextInputType;
    textInputAction?: TextInputAction;
    textCapitalization?: TextCapitalization;
    style?: TextStyle;
    strutStyle?: StrutStyle;
    textAlign?: TextAlign;
    textAlignVertical?: TextAlignVertical;
    textDirection?: TextDirection;
    readOnly?: ZacValue<boolean>;
    showCursor?: ZacValue<boolean>;
    autofocus?: ZacValue<boolean>;
    obscuringCharacter?: ZacValue<string>;
    obscureText?: ZacValue<boolean>;
    autocorrect?: ZacValue<boolean>;
    smartDashesType?: SmartDashesType;
    smartQuotesType?: SmartQuotesType;
    enableSuggestions?: ZacValue<boolean>;
    maxLines?: ZacValue<DartInt>;
    minLines?: ZacValue<DartInt>;
    expands?: ZacValue<boolean>;
    maxLength?: ZacValue<DartInt>;
    onChanged?: ZacActions;
    onEditingComplete?: ZacActions;
    onSubmitted?: ZacActions;
    enabled?: ZacValue<boolean>;
    cursorWidth?: ZacValue<DartDouble>;
    cursorHeight?: ZacValue<DartDouble>;
    cursorRadius?: Radius;
    cursorColor?: Color;
    selectionHeightStyle?: BoxHeightStyle;
    selectionWidthStyle?: BoxWidthStyle;
    keyboardAppearance?: Brightness;
    scrollPadding?: EdgeInsets;
    enableInteractiveSelection?: ZacValue<boolean>;
    onTap?: ZacActions;
    clipBehavior?: Clip;
    restorationId?: ZacValue<string>;
    enableIMEPersonalizedLearning?: ZacValue<boolean>;
  }) {
    return new TextField({
      converter: "f:1:TextField",
      ...data,
    });
  }
}
export class NavigatorState extends ZacConverter {
  static closest() {
    return new NavigatorState({
      converter: "f:1:NavigatorState.closest",
    });
  }
  static root() {
    return new NavigatorState({
      converter: "f:1:NavigatorState.root",
    });
  }
  static shared(data: { value: ZacValue<any> }) {
    return new NavigatorState({
      converter: "z:1:NavigatorState.shared",
      ...data,
    });
  }
}
export class Navigator extends ZacConverter implements Widget {
  static new(data: {
    key?: Key;
    onGenerateRoute?: RouteFactory;
    onUnknownRoute?: RouteFactory;
    initialRoute?: ZacValue<string>;
    requestFocus?: ZacValue<boolean>;
  }) {
    return new Navigator({
      converter: "f:1:Navigator",
      ...data,
    });
  }
}
export class NavigatorActions extends ZacConverter implements ZacAction {
  static push(data: { route: Route; navigatorState?: NavigatorState }) {
    return new NavigatorActions({
      converter: "f:1:Navigator.push",
      ...data,
    });
  }
  static pushNamed(data: {
    routeName: ZacValue<string>;
    arguments?: ZacTypes;
    navigatorState?: NavigatorState;
  }) {
    return new NavigatorActions({
      converter: "f:1:Navigator.pushNamed",
      ...data,
    });
  }
  static pop(data: { actions?: ZacActions; navigatorState?: NavigatorState }) {
    return new NavigatorActions({
      converter: "f:1:Navigator.pop",
      ...data,
    });
  }
  static maybePop(data: {
    actions?: ZacActions;
    navigatorState?: NavigatorState;
  }) {
    return new NavigatorActions({
      converter: "f:1:Navigator.maybePop",
      ...data,
    });
  }
  static pushReplacement(data: {
    route: Route;
    result?: ZacActions;
    navigatorState?: NavigatorState;
  }) {
    return new NavigatorActions({
      converter: "f:1:Navigator.pushReplacement",
      ...data,
    });
  }
  static pushReplacementNamed(data: {
    routeName: ZacValue<string>;
    arguments?: ZacTypes;
    navigatorState?: NavigatorState;
    result?: ZacActions;
  }) {
    return new NavigatorActions({
      converter: "f:1:Navigator.pushReplacementNamed",
      ...data,
    });
  }
}
export class PageRouteBuilder extends ZacConverter implements Route {
  static new(data: {
    child: Widget;
    settings?: RouteSettings;
    opaque?: ZacValue<boolean>;
    barrierDismissible?: ZacValue<boolean>;
    barrierColor?: Color;
    barrierLabel?: ZacValue<string>;
    maintainState?: ZacValue<boolean>;
    fullscreenDialog?: ZacValue<boolean>;
  }) {
    return new PageRouteBuilder({
      converter: "f:1:PageRouteBuilder",
      ...data,
    });
  }
}
export class RouteSettings extends ZacConverter {
  static new(data: { name?: ZacValue<string>; arguments?: ZacTypes }) {
    return new RouteSettings({
      converter: "f:1:RouteSettings",
      ...data,
    });
  }
}
export class Opacity extends ZacConverter implements Widget {
  static new(data: {
    key?: Key;
    opacity: ZacValue<DartDouble>;
    alwaysIncludeSemantics?: ZacValue<boolean>;
    child?: Widget;
  }) {
    return new Opacity({
      converter: "f:1:Opacity",
      ...data,
    });
  }
}
export class RotatedBox extends ZacConverter implements Widget {
  static new(data: { key?: Key; child?: Widget; quarterTurns: DartInt }) {
    return new RotatedBox({
      converter: "f:1:RotatedBox",
      ...data,
    });
  }
}
export class ScrollPhysics extends ZacConverter {
  static alwaysScrollable(data: { parent?: ScrollPhysics }) {
    return new ScrollPhysics({
      converter: "f:1:AlwaysScrollableScrollPhysics",
      ...data,
    });
  }
  static bouncingScroll(data: { parent?: ScrollPhysics }) {
    return new ScrollPhysics({
      converter: "f:1:BouncingScrollPhysics",
      ...data,
    });
  }
  static clampingScrollPhysics(data: { parent?: ScrollPhysics }) {
    return new ScrollPhysics({
      converter: "f:1:ClampingScrollPhysics",
      ...data,
    });
  }
}
export class CustomScrollView extends ZacConverter implements Widget {
  static new(data: {
    key?: Key;
    scrollDirection?: Axis;
    reverse?: ZacValue<boolean>;
    primary?: ZacValue<boolean>;
    physics?: ScrollPhysics;
    shrinkWrap?: ZacValue<boolean>;
    center?: Key;
    anchor?: ZacValue<DartDouble>;
    cacheExtent?: ZacValue<DartDouble>;
    slivers?: ZacValueList<Widget>;
    semanticChildCount?: ZacValue<DartInt>;
    keyboardDismissBehavior?: ScrollViewKeyboardDismissBehavior;
    restorationId?: ZacValue<string>;
    clipBehavior?: Clip;
  }) {
    return new CustomScrollView({
      converter: "f:1:CustomScrollView",
      ...data,
    });
  }
}
export class SliverChildDelegate extends ZacConverter {
  static list(data: {
    children: ZacValueList<Widget>;
    addAutomaticKeepAlives?: ZacValue<boolean>;
    addRepaintBoundaries?: ZacValue<boolean>;
    addSemanticIndexes?: ZacValue<boolean>;
    semanticIndexOffset?: ZacValue<DartInt>;
  }) {
    return new SliverChildDelegate({
      converter: "f:1:SliverChildListDelegate",
      ...data,
    });
  }
  static listFixed(data: {
    children: ZacValueList<Widget>;
    addAutomaticKeepAlives?: ZacValue<boolean>;
    addRepaintBoundaries?: ZacValue<boolean>;
    addSemanticIndexes?: ZacValue<boolean>;
    semanticIndexOffset?: ZacValue<DartInt>;
  }) {
    return new SliverChildDelegate({
      converter: "f:1:SliverChildListDelegate.fixed",
      ...data,
    });
  }
}
export class SliverGridDelegate extends ZacConverter {
  static withFixedCrossAxisCount(data: {
    crossAxisCount: DartInt;
    mainAxisSpacing?: ZacValue<DartDouble>;
    crossAxisSpacing?: ZacValue<DartDouble>;
    childAspectRatio?: ZacValue<DartDouble>;
    mainAxisExtent?: ZacValue<DartDouble>;
  }) {
    return new SliverGridDelegate({
      converter: "f:1:SliverGridDelegateWithFixedCrossAxisCount",
      ...data,
    });
  }
  static withMaxCrossAxisExtent(data: {
    maxCrossAxisExtent: ZacValue<DartDouble>;
    mainAxisSpacing?: ZacValue<DartDouble>;
    crossAxisSpacing?: ZacValue<DartDouble>;
    childAspectRatio?: ZacValue<DartDouble>;
    mainAxisExtent?: ZacValue<DartDouble>;
  }) {
    return new SliverGridDelegate({
      converter: "f:1:SliverGridDelegateWithMaxCrossAxisExtent",
      ...data,
    });
  }
}
export class SliverGrid extends ZacConverter implements Widget {
  static new(data: {
    key?: Key;
    delegate: SliverChildDelegate;
    gridDelegate: SliverGridDelegate;
  }) {
    return new SliverGrid({
      converter: "f:1:SliverGrid",
      ...data,
    });
  }
}
export class SliverList extends ZacConverter implements Widget {
  static new(data: { key?: Key; delegate: SliverChildDelegate }) {
    return new SliverList({
      converter: "f:1:SliverList",
      ...data,
    });
  }
}
export class SliverPadding extends ZacConverter implements Widget {
  static new(data: {
    key?: Key;
    sliver?: Widget;
    padding: EdgeInsetsGeometry;
  }) {
    return new SliverPadding({
      converter: "f:1:SliverPadding",
      ...data,
    });
  }
}
export class SliverToBoxAdapter extends ZacConverter implements Widget {
  static new(data: { key?: Key; child?: Widget }) {
    return new SliverToBoxAdapter({
      converter: "f:1:SliverToBoxAdapter",
      ...data,
    });
  }
}
export class Text extends ZacConverter implements Widget {
  static new(data: {
    data: ZacValue<string>;
    key?: Key;
    style?: TextStyle;
    strutStyle?: StrutStyle;
    textAlign?: TextAlign;
    textDirection?: TextDirection;
    locale?: Locale;
    softWrap?: ZacValue<boolean>;
    overflow?: TextOverflow;
    textScaleFactor?: ZacValue<DartDouble>;
    maxLines?: ZacValue<DartInt>;
    semanticsLabel?: ZacValue<string>;
    textWidthBasis?: TextWidthBasis;
    textHeightBehavior?: TextHeightBehavior;
  }) {
    return new Text({
      converter: "f:1:Text",
      ...data,
    });
  }
}
export class Stack extends ZacConverter implements Widget {
  static new(data: {
    key?: Key;
    alignment?: AlignmentGeometry;
    textDirection?: TextDirection;
    fit?: StackFit;
    clipBehavior?: Clip;
    children?: ZacValueList<Widget>;
  }) {
    return new Stack({
      converter: "f:1:Stack",
      ...data,
    });
  }
}
export class IntrinsicHeight extends ZacConverter implements Widget {
  static new(data: { key?: Key; child?: Widget }) {
    return new IntrinsicHeight({
      converter: "f:1:IntrinsicHeight",
      ...data,
    });
  }
}
export class ZacFlutterGlobalKeyNavigatorStateProvider
  extends ZacConverter
  implements Widget
{
  static new(data: {
    family: ZacTypes;
    child: Widget;
    debugLabel?: ZacValue<string>;
  }) {
    return new ZacFlutterGlobalKeyNavigatorStateProvider({
      converter: "z:1:GlobalKeyNavigatorStateProvider",
      ...data,
    });
  }
}
export class ZacFlutterNavigatorActions
  extends ZacConverter
  implements ZacAction
{
  static popUntilRouteName(data: {
    routeName: ZacValue<string>;
    navigatorState?: NavigatorState;
  }) {
    return new ZacFlutterNavigatorActions({
      converter: "z:1:Navigator.popUntilRouteName",
      ...data,
    });
  }
}
export class RouteFactoryRouteConfig extends ZacConverter {
  static new(data: {
    route: Route;
    provideArgsName?: ZacValue<string>;
    transform?: ZacTransformers;
  }) {
    return new RouteFactoryRouteConfig({
      converter: "z:1:RouteFactoryRouteConfig",
      ...data,
    });
  }
}
export class RouteFactorySingleRoute
  extends ZacConverter
  implements RouteFactory
{
  static new(data: {
    routeConfig: RouteFactoryRouteConfig;
    provideArgsNamePrefix?: string;
  }) {
    return new RouteFactorySingleRoute({
      converter: "z:1:RouteFactorySingleRoute",
      ...data,
    });
  }
}
export class RouteFactoryFromRoutes
  extends ZacConverter
  implements RouteFactory
{
  static new(data: {
    routes: Record<string, RouteFactoryRouteConfig>;
    provideArgsNamePrefix?: string;
  }) {
    return new RouteFactoryFromRoutes({
      converter: "z:1:RouteFactoryFromRoutes",
      ...data,
    });
  }
}
export class RefreshIndicatorAction extends ZacConverter implements ZacAction {
  static new() {
    return new RefreshIndicatorAction({
      converter: "z:1:RefreshIndicator.complete",
    });
  }
}
export class SharedValueActions extends ZacConverter implements ZacAction {
  static update(data: {
    family: ZacTypes;
    transformer?: ZacTransformers;
    itemTransformer?: ZacTransformers;
    ifNoPayloadTakeCurrent?: boolean;
  }) {
    return new SharedValueActions({
      converter: "z:1:SharedValue.update",
      ...data,
    });
  }
}
export class SharedValueConsumeType extends ZacConverter {
  static watch(data: { select?: ZacTransformers }) {
    return new SharedValueConsumeType({
      converter: "z:1:SharedValueConsume.watch",
      ...data,
    });
  }
  static read() {
    return new SharedValueConsumeType({
      converter: "z:1:SharedValueConsume.read",
    });
  }
}
export class ZacTemplateExpressionsSyntax extends ZacConverter {
  static new() {
    return new ZacTemplateExpressionsSyntax({
      converter: "template_expressions:1:Syntax:Standard",
    });
  }
}
export class ZacTransition extends ZacConverter {
  static new(data: { event: string; target: string }) {
    return new ZacTransition({
      converter: "z:1:StateMachine:Transition",
      ...data,
    });
  }
}
export class ZacStateConfig extends ZacConverter {
  static new(data: { widget: Widget; on: Array<ZacTransition> }) {
    return new ZacStateConfig({
      converter: "z:1:StateMachine:StateConfig",
      ...data,
    });
  }
}
export class MaterialPageRoute extends ZacConverter implements Route {
  static new(data: {
    child: Widget;
    settings?: RouteSettings;
    maintainState?: ZacValue<boolean>;
    fullscreenDialog?: ZacValue<boolean>;
  }) {
    return new MaterialPageRoute({
      converter: "f:1:MaterialPageRoute",
      ...data,
    });
  }
}
export class UnderlineInputBorder extends ZacConverter implements InputBorder {
  static new(data: { borderSide?: BorderSide; borderRadius?: BorderRadius }) {
    return new UnderlineInputBorder({
      converter: "f:1:OutlineInputBorder",
      ...data,
    });
  }
}
export class ZacStateMachineActions extends ZacConverter implements ZacAction {
  static send(data: { family: ZacTypes; event: ZacValue<string> }) {
    return new ZacStateMachineActions({
      converter: "z:1:StateMachine:Action.send",
      ...data,
    });
  }
  static trySend(data: { family: ZacTypes; event: ZacValue<string> }) {
    return new ZacStateMachineActions({
      converter: "z:1:StateMachine:Action.trySend",
      ...data,
    });
  }
}
export class ZacStateMachineTransformer
  extends ZacConverter
  implements ZacTransformer
{
  static pickState() {
    return new ZacStateMachineTransformer({
      converter: "z:1:StateMachine:Transformer.pickState",
    });
  }
  static pickContext() {
    return new ZacStateMachineTransformer({
      converter: "z:1:StateMachine:Transformer.pickContext",
    });
  }
}
export class ZacTransformers extends ZacConverter {
  static new(data: { transformers: Array<ZacTransformer> }) {
    return new ZacTransformers({
      converter: "z:1:Transformers",
      ...data,
    });
  }
}
export class ConvertTransformer extends ZacConverter implements ZacTransformer {
  static new() {
    return new ConvertTransformer({
      converter: "z:1:Transformer:Converter",
    });
  }
}
export class MapTransformer extends ZacConverter implements ZacTransformer {
  static values() {
    return new MapTransformer({
      converter: "z:1:Transformer:Map.values",
    });
  }
  static keys() {
    return new MapTransformer({
      converter: "z:1:Transformer:Map.keys",
    });
  }
  static entries() {
    return new MapTransformer({
      converter: "z:1:Transformer:Map.entries",
    });
  }
  static length_() {
    return new MapTransformer({
      converter: "z:1:Transformer:Map.length",
    });
  }
  static isEmpty() {
    return new MapTransformer({
      converter: "z:1:Transformer:Map.isEmpty",
    });
  }
  static isNotEmpty() {
    return new MapTransformer({
      converter: "z:1:Transformer:Map.isNotEmpty",
    });
  }
  static containsKey(data: { key: ZacValue<ZacTypes> | null }) {
    return new MapTransformer({
      converter: "z:1:Transformer:Map.containsKey",
      ...data,
    });
  }
  static containsValue(data: { value: ZacValue<ZacTypes> | null }) {
    return new MapTransformer({
      converter: "z:1:Transformer:Map.containsValue",
      ...data,
    });
  }
  static mapper(data: {
    keyTransformer?: ZacTransformers;
    valueTransformer?: ZacTransformers;
  }) {
    return new MapTransformer({
      converter: "z:1:Transformer:Map.map",
      ...data,
    });
  }
  static fromObjectObject() {
    return new MapTransformer({
      converter: "z:1:Transformer:Map<Object, Object>.from",
    });
  }
  static fromStringObject() {
    return new MapTransformer({
      converter: "z:1:Transformer:Map<String, Object>.from",
    });
  }
  static fromStringNullObject() {
    return new MapTransformer({
      converter: "z:1:Transformer:Map<String, Object?>.from",
    });
  }
}
export class IterableTransformer
  extends ZacConverter
  implements ZacTransformer
{
  static map(data: { transformer: ZacTransformers }) {
    return new IterableTransformer({
      converter: "z:1:Transformer:Iterable.map",
      ...data,
    });
  }
  static single() {
    return new IterableTransformer({
      converter: "z:1:Transformer:Iterable.single",
    });
  }
  static first() {
    return new IterableTransformer({
      converter: "z:1:Transformer:Iterable.first",
    });
  }
  static last() {
    return new IterableTransformer({
      converter: "z:1:Transformer:Iterable.last",
    });
  }
  static length_() {
    return new IterableTransformer({
      converter: "z:1:Transformer:Iterable.length",
    });
  }
  static isEmpty() {
    return new IterableTransformer({
      converter: "z:1:Transformer:Iterable.isEmpty",
    });
  }
  static isNotEmpty() {
    return new IterableTransformer({
      converter: "z:1:Transformer:Iterable.isNotEmpty",
    });
  }
  static toList() {
    return new IterableTransformer({
      converter: "z:1:Transformer:Iterable.toList",
    });
  }
  static toSet() {
    return new IterableTransformer({
      converter: "z:1:Transformer:Iterable.toSet",
    });
  }
  static toString() {
    return new IterableTransformer({
      converter: "z:1:Transformer:Iterable.toString",
    });
  }
  static join(data: { separator?: string }) {
    return new IterableTransformer({
      converter: "z:1:Transformer:Iterable.join",
      ...data,
    });
  }
  static contains(data: { element: ZacValue<ZacTypes> | null }) {
    return new IterableTransformer({
      converter: "z:1:Transformer:Iterable.contains",
      ...data,
    });
  }
  static elementAt(data: { index: DartInt }) {
    return new IterableTransformer({
      converter: "z:1:Transformer:Iterable.elementAt",
      ...data,
    });
  }
  static skip(data: { count: DartInt }) {
    return new IterableTransformer({
      converter: "z:1:Transformer:Iterable.skip",
      ...data,
    });
  }
  static take(data: { count: DartInt }) {
    return new IterableTransformer({
      converter: "z:1:Transformer:Iterable.take",
      ...data,
    });
  }
}
export class ListTransformer extends ZacConverter implements ZacTransformer {
  static reversed() {
    return new ListTransformer({
      converter: "z:1:Transformer:List.reversed",
    });
  }
  static fromFlutterWidget() {
    return new ListTransformer({
      converter: "z:1:Transformer:List<FlutterWidget>.from",
    });
  }
}
export class ObjectTransformer extends ZacConverter implements ZacTransformer {
  static isList() {
    return new ObjectTransformer({
      converter: "z:1:Transformer:Object.isList",
    });
  }
  static isMap() {
    return new ObjectTransformer({
      converter: "z:1:Transformer:Object.isMap",
    });
  }
  static equals(data: { other: ZacTypes | null }) {
    return new ObjectTransformer({
      converter: "z:1:Transformer:Object.equals",
      ...data,
    });
  }
  static toString() {
    return new ObjectTransformer({
      converter: "z:1:Transformer:Object.toString",
    });
  }
  static runtimeType() {
    return new ObjectTransformer({
      converter: "z:1:Transformer:Object.runtimeType",
    });
  }
  static hashCode() {
    return new ObjectTransformer({
      converter: "z:1:Transformer:Object.hashCode",
    });
  }
  static equalsSharedValue(data: { value: ZacValue<ZacTypes | null> }) {
    return new ObjectTransformer({
      converter: "z:1:Transformer:Object.equalsSharedValue",
      ...data,
    });
  }
}
export class NumTransformer extends ZacConverter implements ZacTransformer {
  static toDouble() {
    return new NumTransformer({
      converter: "z:1:Transformer:num.toDouble",
    });
  }
  static toInt() {
    return new NumTransformer({
      converter: "z:1:Transformer:num.toInt",
    });
  }
  static abs() {
    return new NumTransformer({
      converter: "z:1:Transformer:num.abs",
    });
  }
  static ceil() {
    return new NumTransformer({
      converter: "z:1:Transformer:num.ceil",
    });
  }
  static ceilToDouble() {
    return new NumTransformer({
      converter: "z:1:Transformer:num.ceilToDouble",
    });
  }
  static floor() {
    return new NumTransformer({
      converter: "z:1:Transformer:num.floor",
    });
  }
  static floorToDouble() {
    return new NumTransformer({
      converter: "z:1:Transformer:num.floorToDouble",
    });
  }
  static round() {
    return new NumTransformer({
      converter: "z:1:Transformer:num.round",
    });
  }
  static roundToDouble() {
    return new NumTransformer({
      converter: "z:1:Transformer:num.roundToDouble",
    });
  }
  static isFinite() {
    return new NumTransformer({
      converter: "z:1:Transformer:num.isFinite",
    });
  }
  static isInfinite() {
    return new NumTransformer({
      converter: "z:1:Transformer:num.isInfinite",
    });
  }
  static isNan() {
    return new NumTransformer({
      converter: "z:1:Transformer:num.isNan",
    });
  }
  static isNegative() {
    return new NumTransformer({
      converter: "z:1:Transformer:num.isNegative",
    });
  }
}
export class IntTransformer extends ZacConverter implements ZacTransformer {
  static parse() {
    return new IntTransformer({
      converter: "z:1:Transformer:int.parse",
    });
  }
  static tryParse() {
    return new IntTransformer({
      converter: "z:1:Transformer:int.tryParse",
    });
  }
}
export class StringTransformer extends ZacConverter implements ZacTransformer {
  static length_() {
    return new StringTransformer({
      converter: "z:1:Transformer:String.length",
    });
  }
  static split(data: { pattern: ZacValue<string> }) {
    return new StringTransformer({
      converter: "z:1:Transformer:String.split",
      ...data,
    });
  }
  static isEmpty() {
    return new StringTransformer({
      converter: "z:1:Transformer:String.isEmpty",
    });
  }
  static isNotEmpty() {
    return new StringTransformer({
      converter: "z:1:Transformer:String.isNotEmpty",
    });
  }
  static replaceAll(data: {
    from: ZacValue<string>;
    replace: ZacValue<string>;
  }) {
    return new StringTransformer({
      converter: "z:1:Transformer:String.replaceAll",
      ...data,
    });
  }
}
export class JsonTransformer extends ZacConverter implements ZacTransformer {
  static encode() {
    return new JsonTransformer({
      converter: "z:1:Transformer:Json.encode",
    });
  }
  static decode() {
    return new JsonTransformer({
      converter: "z:1:Transformer:Json.decode",
    });
  }
}
export class OutlineInputBorder extends ZacConverter implements InputBorder {
  static new(data: {
    borderSide?: BorderSide;
    borderRadius?: BorderRadius;
    gapPadding?: ZacValue<DartDouble>;
  }) {
    return new OutlineInputBorder({
      converter: "f:1:OutlineInputBorder",
      ...data,
    });
  }
}
export class InputDecoration extends ZacConverter {
  static new(data: {
    icon?: Widget;
    iconColor?: Color;
    label?: Widget;
    labelText?: ZacValue<string>;
    labelStyle?: TextStyle;
    floatingLabelStyle?: TextStyle;
    helperText?: ZacValue<string>;
    helperStyle?: TextStyle;
    helperMaxLines?: ZacValue<DartInt>;
    hintText?: ZacValue<string>;
    hintStyle?: TextStyle;
    hintTextDirection?: TextDirection;
    hintMaxLines?: ZacValue<DartInt>;
    errorText?: ZacValue<string>;
    errorStyle?: TextStyle;
    errorMaxLines?: ZacValue<DartInt>;
    isCollapsed?: ZacValue<boolean>;
    isDense?: ZacValue<boolean>;
    contentPadding?: EdgeInsetsGeometry;
    prefixIcon?: Widget;
    prefixIconConstraints?: BoxConstraints;
    prefix?: Widget;
    prefixText?: ZacValue<string>;
    prefixStyle?: TextStyle;
    prefixIconColor?: Color;
    suffixIcon?: Widget;
    suffix?: Widget;
    suffixText?: ZacValue<string>;
    suffixStyle?: TextStyle;
    suffixIconColor?: Color;
    suffixIconConstraints?: BoxConstraints;
    counter?: Widget;
    counterText?: ZacValue<string>;
    counterStyle?: TextStyle;
    filled?: ZacValue<boolean>;
    fillColor?: Color;
    focusColor?: Color;
    hoverColor?: Color;
    errorBorder?: InputBorder;
    focusedBorder?: InputBorder;
    focusedErrorBorder?: InputBorder;
    disabledBorder?: InputBorder;
    enabledBorder?: InputBorder;
    border?: InputBorder;
    enabled?: ZacValue<boolean>;
    semanticCounterText?: ZacValue<string>;
    alignLabelWithHint?: ZacValue<boolean>;
    constraints?: BoxConstraints;
  }) {
    return new InputDecoration({
      converter: "f:1:InputDecoration",
      ...data,
    });
  }
}
export class ZacValueActions extends ZacConverter implements ZacAction {
  static asPayload(data: {
    value: ZacValue<ZacTypes | null>;
    actions: ZacActions;
  }) {
    return new ZacValueActions({
      converter: "z:1:ZacValue.asActionPayload",
      ...data,
    });
  }
}
export class ZacTemplateExpressionsTransformer
  extends ZacConverter
  implements ZacTransformer
{
  static new(data: {
    expression: string;
    context?: Record<string, ZacValue<ZacTypes>>;
    syntax: ZacTemplateExpressionsSyntax;
  }) {
    return new ZacTemplateExpressionsTransformer({
      converter: "template_expressions:1:Transformer:Template.process",
      ...data,
    });
  }
}
export class ZacActions extends ZacConverter {
  static new(data: { actions: Array<ZacAction> }) {
    return new ZacActions({
      converter: "z:1:Actions",
      ...data,
    });
  }
}
export class TsTest extends ZacConverter {
  static new(data: {
    reqButOpt: DartInt | null;
    someDate: DartDateTime;
    reqInt: ZacValue<DartInt>;
    optionalInt?: ZacValue<DartInt>;
    deep1?: ZacValue<ZacValue<ZacValue<DartInt>>>;
    deep2: ZacValue<ZacValue<ZacValue<DartInt> | null>> | null;
  }) {
    return new TsTest({
      converter: "f:1:BoxShape.circle",
      ...data,
    });
  }
}
