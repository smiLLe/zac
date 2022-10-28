import { DartDouble, DartInt, ZacConverter, ZacConverterType, ZacValue } from "../base";

export class Color extends ZacConverter {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static fromARGB(data: {
        a: DartInt,
        r: DartInt,
        g: DartInt,
        b: DartInt,
    }) {
        return new Color({
            converter: 'f:1:Color.fromARGB',
            ...data
        })
    }

    static fromRGBO(data: {
        r: DartInt,
        g: DartInt,
        b: DartInt,
        opacity: ZacValue<DartDouble>,
    }) {
        return new Color({
            converter: 'f:1:Color.fromRGBO',
            ...data
        })
    }
}

export class Offset extends ZacConverter {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static new(data: { dx: ZacValue<DartDouble>, dy: ZacValue<DartDouble> }) {
        return new Offset({
            converter: 'f:1:Offset',
            ...data
        })
    }

    static fromDirection(data: { direction: ZacValue<DartDouble>, distance?: ZacValue<DartDouble> }) {
        return new Offset({
            converter: 'f:1:Offset.fromDirection',
            ...data
        })
    }
}
export class BlurStyle extends ZacConverter {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static inner() {
        return new BlurStyle({ converter: 'f:1:BlurSyle.inner' })
    }

    static normal() {
        return new BlurStyle({ converter: 'f:1:BlurSyle.normal' })
    }

    static outer() {
        return new BlurStyle({ converter: 'f:1:BlurSyle.outer' })
    }

    static solid() {
        return new BlurStyle({ converter: 'f:1:BlurSyle.solid' })
    }
}

export class Radius extends ZacConverter {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static circular(data: { radius: ZacValue<DartDouble> }) {
        return new Radius({ converter: 'f:1:Radius.circular', ...data })
    }

    static elliptical(data: { x: ZacValue<DartDouble>, y: ZacValue<DartDouble> }) {
        return new Radius({ converter: 'f:1:Radius.elliptical', ...data })
    }
}

export class TextDirection extends ZacConverter {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static rtl() {
        return new TextDirection({ converter: 'f:1:TextDirection.rtl' })
    }

    static ltr() {
        return new TextDirection({ converter: 'f:1:TextDirection.ltr' })
    }

}

export class Clip extends ZacConverter {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static none() {
        return new Clip({ converter: 'f:1:Clip.none' })
    }

    static antiAlias() {
        return new Clip({ converter: 'f:1:Clip.antiAlias' })
    }

    static hardEdge() {
        return new Clip({ converter: 'f:1:Clip.hardEdge' })
    }
}

export class TextBaseline extends ZacConverter {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static alphabetic() {
        return new TextBaseline({ converter: 'f:1:TextBaseline.alphabetic' })
    }

    static ideographic() {
        return new TextBaseline({ converter: 'f:1:TextBaseline.ideographic' })
    }
}

export class FontWeight extends ZacConverter {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static bold() {
        return new FontWeight({ converter: 'f:1:FontWeight.bold' })
    }

    static normal() {
        return new FontWeight({ converter: 'f:1:FontWeight.normal' })
    }

    static w100() {
        return new FontWeight({ converter: 'f:1:FontWeight.w100' })
    }

    static w200() {
        return new FontWeight({ converter: 'f:1:FontWeight.w200' })
    }

    static w300() {
        return new FontWeight({ converter: 'f:1:FontWeight.w300' })
    }
    static w400() {
        return new FontWeight({ converter: 'f:1:FontWeight.w400' })
    }

    static w500() {
        return new FontWeight({ converter: 'f:1:FontWeight.w500' })
    }

    static w600() {
        return new FontWeight({ converter: 'f:1:FontWeight.w600' })
    }

    static w700() {
        return new FontWeight({ converter: 'f:1:FontWeight.w700' })
    }

    static w800() {
        return new FontWeight({ converter: 'f:1:FontWeight.w800' })
    }

    static w900() {
        return new FontWeight({ converter: 'f:1:FontWeight.w900' })
    }
}

export class FontStyle extends ZacConverter {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static italic() {
        return new FontStyle({ converter: 'f:1:FontStyle.italic' })
    }

    static normal() {
        return new FontStyle({ converter: 'f:1:FontStyle.normal' })
    }
}

export class TextDecoration extends ZacConverter {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static lineThrough() {
        return new TextDecoration({ converter: 'f:1:TextDecoration.lineThrough' })
    }

    static none() {
        return new TextDecoration({ converter: 'f:1:TextDecoration.none' })
    }

    static overline() {
        return new TextDecoration({ converter: 'f:1:TextDecoration.overline' })
    }

    static underline() {
        return new TextDecoration({ converter: 'f:1:TextDecoration.underline' })
    }
}

export class TextLeadingDistribution extends ZacConverter {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static even() {
        return new TextLeadingDistribution({ converter: 'f:1:TextLeadingDistribution.even' })
    }

    static proportional() {
        return new TextLeadingDistribution({ converter: 'f:1:TextLeadingDistribution.proportional' })
    }
}

export class Locale extends ZacConverter {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static new(data: {
        languageCode: string, countryCode?: string
    }) {
        return new Locale({ converter: 'f:1:Locale', ...data })
    }
}

export class FontFeature extends ZacConverter {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static new(data: {
        feature: string, value?: ZacValue<DartInt>
    }) {
        return new FontFeature({ converter: 'f:1:FontFeature', ...data })
    }

    static alternative(data: {
        value: DartInt
    }) {
        return new FontFeature({ converter: 'f:1:FontFeature.alternative', ...data })
    }

    static alternativeFractions() {
        return new FontFeature({ converter: 'f:1:FontFeature.alternativeFractions' })
    }

    static caseSensitiveForms() {
        return new FontFeature({ converter: 'f:1:FontFeature.caseSensitiveForms' })
    }

    static characterVariant(data: { value: DartInt }) {
        return new FontFeature({ converter: 'f:1:FontFeature.characterVariant', ...data })
    }

    static contextualAlternates() {
        return new FontFeature({ converter: 'f:1:FontFeature.contextualAlternates' })
    }

    static denominator() {
        return new FontFeature({ converter: 'f:1:FontFeature.denominator' })
    }

    static disable(data: { feature: string }) {
        return new FontFeature({ converter: 'f:1:FontFeature.disable', ...data })
    }

    static enable(data: { feature: string }) {
        return new FontFeature({ converter: 'f:1:FontFeature.enable', ...data })
    }

    static fractions() {
        return new FontFeature({ converter: 'f:1:FontFeature.fractions' })
    }

    static historicalForms() {
        return new FontFeature({ converter: 'f:1:FontFeature.historicalForms' })
    }

    static historicalLigatures() {
        return new FontFeature({ converter: 'f:1:FontFeature.historicalLigatures' })
    }

    static liningFigures() {
        return new FontFeature({ converter: 'f:1:FontFeature.liningFigures' })
    }

    static localeAware(data: { enable?: ZacValue<boolean> }) {
        return new FontFeature({ converter: 'f:1:FontFeature.localeAware', ...data })
    }

    static notationalForms(data: { value?: ZacValue<DartInt> }) {
        return new FontFeature({ converter: 'f:1:FontFeature.notationalForms', ...data })
    }

    static numerators() {
        return new FontFeature({ converter: 'f:1:FontFeature.numerators' })
    }

    static oldstyleFigures() {
        return new FontFeature({ converter: 'f:1:FontFeature.oldstyleFigures' })
    }

    static ordinalForms() {
        return new FontFeature({ converter: 'f:1:FontFeature.ordinalForms' })
    }

    static proportionalFigures() {
        return new FontFeature({ converter: 'f:1:FontFeature.proportionalFigures' })
    }

    static randomize() {
        return new FontFeature({ converter: 'f:1:FontFeature.randomize' })
    }

    static scientificInferiors() {
        return new FontFeature({ converter: 'f:1:FontFeature.scientificInferiors' })
    }

    static slashedZero() {
        return new FontFeature({ converter: 'f:1:FontFeature.slashedZero' })
    }

    static stylisticAlternates() {
        return new FontFeature({ converter: 'f:1:FontFeature.stylisticAlternates' })
    }

    static stylisticSet(data: { value: DartInt }) {
        return new FontFeature({ converter: 'f:1:FontFeature.stylisticSet', ...data })
    }

    static subscripts() {
        return new FontFeature({ converter: 'f:1:FontFeature.subscripts' })
    }

    static superscripts() {
        return new FontFeature({ converter: 'f:1:FontFeature.superscripts' })
    }

    static swash() {
        return new FontFeature({ converter: 'f:1:FontFeature.swash' })
    }

    static tabularFigures() {
        return new FontFeature({ converter: 'f:1:FontFeature.tabularFigures' })
    }
}

export class TextDecorationStyle extends ZacConverter {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static dashed() {
        return new TextDecorationStyle({ converter: 'f:1:TextDecorationStyle.dashed' })
    }

    static dotted() {
        return new TextDecorationStyle({ converter: 'f:1:TextDecorationStyle.dotted' })
    }

    static double() {
        return new TextDecorationStyle({ converter: 'f:1:TextDecorationStyle.double' })
    }

    static solid() {
        return new TextDecorationStyle({ converter: 'f:1:TextDecorationStyle.solid' })
    }

    static wavy() {
        return new TextDecorationStyle({ converter: 'f:1:TextDecorationStyle.wavy' })
    }
}

export class TextAlign extends ZacConverter {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static center() {
        return new TextAlign({ converter: 'f:1:TextAlign.center' })
    }

    static end() {
        return new TextAlign({ converter: 'f:1:TextAlign.end' })
    }

    static justify() {
        return new TextAlign({ converter: 'f:1:TextAlign.justify' })
    }

    static left() {
        return new TextAlign({ converter: 'f:1:TextAlign.left' })
    }

    static right() {
        return new TextAlign({ converter: 'f:1:TextAlign.right' })
    }

    static start() {
        return new TextAlign({ converter: 'f:1:TextAlign.start' })
    }
}

export class TextHeightBehavior extends ZacConverter {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static new(data: {
        applyHeightToFirstAscent?: ZacValue<boolean>,
        applyHeightToLastDescent?: ZacValue<boolean>,
        leadingDistribution?: TextLeadingDistribution,
    }) {
        return new TextHeightBehavior({ converter: 'f:1:TextHeightBehavior', ...data })
    }
}

export class BlendMode extends ZacConverter {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static clear() {
        return new BlendMode({ converter: 'f:1:BlendMode.clear' })
    }

    static color() {
        return new BlendMode({ converter: 'f:1:BlendMode.color' })
    }

    static colorBurn() {
        return new BlendMode({ converter: 'f:1:BlendMode.colorBurn' })
    }

    static colorDodge() {
        return new BlendMode({ converter: 'f:1:BlendMode.colorDodge' })
    }

    static darken() {
        return new BlendMode({ converter: 'f:1:BlendMode.darken' })
    }

    static difference() {
        return new BlendMode({ converter: 'f:1:BlendMode.difference' })
    }

    static dst() {
        return new BlendMode({ converter: 'f:1:BlendMode.dst' })
    }

    static dstATop() {
        return new BlendMode({ converter: 'f:1:BlendMode.dstATop' })
    }

    static dstIn() {
        return new BlendMode({ converter: 'f:1:BlendMode.dstIn' })
    }

    static dstOut() {
        return new BlendMode({ converter: 'f:1:BlendMode.dstOut' })
    }

    static exclusion() {
        return new BlendMode({ converter: 'f:1:BlendMode.exclusion' })
    }

    static hardLight() {
        return new BlendMode({ converter: 'f:1:BlendMode.hardLight' })
    }

    static hue() {
        return new BlendMode({ converter: 'f:1:BlendMode.hue' })
    }

    static lighten() {
        return new BlendMode({ converter: 'f:1:BlendMode.lighten' })
    }

    static luminosity() {
        return new BlendMode({ converter: 'f:1:BlendMode.luminosity' })
    }

    static dstOver() {
        return new BlendMode({ converter: 'f:1:BlendMode.dstOver' })
    }

    static multiply() {
        return new BlendMode({ converter: 'f:1:BlendMode.multiply' })
    }

    static overlay() {
        return new BlendMode({ converter: 'f:1:BlendMode.overlay' })
    }

    static plus() {
        return new BlendMode({ converter: 'f:1:BlendMode.plus' })
    }

    static saturation() {
        return new BlendMode({ converter: 'f:1:BlendMode.saturation' })
    }

    static screen() {
        return new BlendMode({ converter: 'f:1:BlendMode.screen' })
    }

    static softLight() {
        return new BlendMode({ converter: 'f:1:BlendMode.softLight' })
    }

    static src() {
        return new BlendMode({ converter: 'f:1:BlendMode.src' })
    }

    static srcATop() {
        return new BlendMode({ converter: 'f:1:BlendMode.srcATop' })
    }

    static srcIn() {
        return new BlendMode({ converter: 'f:1:BlendMode.srcIn' })
    }

    static srcOut() {
        return new BlendMode({ converter: 'f:1:BlendMode.srcOut' })
    }

    static srcOver() {
        return new BlendMode({ converter: 'f:1:BlendMode.srcOver' })
    }

    static xor() {
        return new BlendMode({ converter: 'f:1:BlendMode.xor' })
    }
}

export class Rect extends ZacConverter {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static fromCenter(data: {
        center: Offset,
        width: ZacValue<DartDouble>,
        height: ZacValue<DartDouble>,
    }) {
        return new Rect({ converter: 'f:1:Rect.fromCenter', ...data })
    }

    static fromCircle(data: {
        center: Offset,
        radius: ZacValue<DartDouble>,
    }) {
        return new Rect({ converter: 'f:1:Rect.fromCircle', ...data })
    }

    static fromLTRB(data: {
        left: ZacValue<DartDouble>, top: ZacValue<DartDouble>,
        right: ZacValue<DartDouble>, bottom: ZacValue<DartDouble>
    }) {
        return new Rect({ converter: 'f:1:Rect.fromLTRB', ...data })
    }

    static fromLTWH(data: {
        left: ZacValue<DartDouble>, top: ZacValue<DartDouble>,
        width: ZacValue<DartDouble>, height: ZacValue<DartDouble>
    }) {
        return new Rect({ converter: 'f:1:Rect.fromLTWH', ...data })
    }

    static fromPoints(data: {
        a: Offset, b: Offset
    }) {
        return new Rect({ converter: 'f:1:Rect.fromPoints', ...data })
    }
}

export class FilterQuality extends ZacConverter {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static high() {
        return new FilterQuality({ converter: 'f:1:FilterQuality.high' })
    }

    static low() {
        return new FilterQuality({ converter: 'f:1:FilterQuality.low' })
    }

    static medium() {
        return new FilterQuality({ converter: 'f:1:FilterQuality.medium' })
    }

    static none() {
        return new FilterQuality({ converter: 'f:1:FilterQuality.none' })
    }
}

export class Brightness extends ZacConverter {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static dark() {
        return new Brightness({ converter: 'f:1:Brightness.dark' })
    }

    static light() {
        return new Brightness({ converter: 'f:1:Brightness.light' })
    }
}

export class Size extends ZacConverter {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static new(data: {
        width: ZacValue<DartDouble>,
        height: ZacValue<DartDouble>,

    }) {
        return new Size({ converter: 'f:1:Size', ...data })
    }
}

export class BoxHeightStyle extends ZacConverter {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static includeLineSpacingBottom() {
        return new BoxHeightStyle({ converter: 'f:1:BoxHeightStyle.includeLineSpacingBottom' })
    }

    static includeLineSpacingMiddle() {
        return new BoxHeightStyle({ converter: 'f:1:BoxHeightStyle.includeLineSpacingMiddle' })
    }

    static includeLineSpacingTop() {
        return new BoxHeightStyle({ converter: 'f:1:BoxHeightStyle.includeLineSpacingTop' })
    }

    static max() {
        return new BoxHeightStyle({ converter: 'f:1:BoxHeightStyle.max' })
    }

    static strut() {
        return new BoxHeightStyle({ converter: 'f:1:BoxHeightStyle.strut' })
    }

    static tight() {
        return new BoxHeightStyle({ converter: 'f:1:BoxHeightStyle.tight' })
    }
}

export class BoxWidthStyle extends ZacConverter {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static max() {
        return new BoxWidthStyle({ converter: 'f:1:BoxWidthStyle.max' })
    }

    static tight() {
        return new BoxWidthStyle({ converter: 'f:1:BoxWidthStyle.tight' })
    }
}

export abstract class FlutterDartUiShadow extends ZacConverter { }

export class DartUiShadow extends FlutterDartUiShadow {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static new(data: {
        color?: Color,
        offset?: Offset,
        blurRadius?: ZacValue<DartDouble>,
    }) {
        return new DartUiShadow({ converter: 'f:1:Shadow', ...data })
    }
}
