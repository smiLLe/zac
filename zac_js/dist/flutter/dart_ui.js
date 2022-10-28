import { ZacConverter } from "../base";
export class Color extends ZacConverter {
    constructor(data) {
        super(data);
    }
    static fromARGB(data) {
        return new Color(Object.assign({ converter: 'f:1:Color.fromARGB' }, data));
    }
    static fromRGBO(data) {
        return new Color(Object.assign({ converter: 'f:1:Color.fromRGBO' }, data));
    }
}
export class Offset extends ZacConverter {
    constructor(data) {
        super(data);
    }
    static new(data) {
        return new Offset(Object.assign({ converter: 'f:1:Offset' }, data));
    }
    static fromDirection(data) {
        return new Offset(Object.assign({ converter: 'f:1:Offset.fromDirection' }, data));
    }
}
export class BlurStyle extends ZacConverter {
    constructor(data) {
        super(data);
    }
    static inner() {
        return new BlurStyle({ converter: 'f:1:BlurSyle.inner' });
    }
    static normal() {
        return new BlurStyle({ converter: 'f:1:BlurSyle.normal' });
    }
    static outer() {
        return new BlurStyle({ converter: 'f:1:BlurSyle.outer' });
    }
    static solid() {
        return new BlurStyle({ converter: 'f:1:BlurSyle.solid' });
    }
}
export class Radius extends ZacConverter {
    constructor(data) {
        super(data);
    }
    static circular(data) {
        return new Radius(Object.assign({ converter: 'f:1:Radius.circular' }, data));
    }
    static elliptical(data) {
        return new Radius(Object.assign({ converter: 'f:1:Radius.elliptical' }, data));
    }
}
export class TextDirection extends ZacConverter {
    constructor(data) {
        super(data);
    }
    static rtl() {
        return new TextDirection({ converter: 'f:1:TextDirection.rtl' });
    }
    static ltr() {
        return new TextDirection({ converter: 'f:1:TextDirection.ltr' });
    }
}
export class Clip extends ZacConverter {
    constructor(data) {
        super(data);
    }
    static none() {
        return new Clip({ converter: 'f:1:Clip.none' });
    }
    static antiAlias() {
        return new Clip({ converter: 'f:1:Clip.antiAlias' });
    }
    static hardEdge() {
        return new Clip({ converter: 'f:1:Clip.hardEdge' });
    }
}
export class TextBaseline extends ZacConverter {
    constructor(data) {
        super(data);
    }
    static alphabetic() {
        return new TextBaseline({ converter: 'f:1:TextBaseline.alphabetic' });
    }
    static ideographic() {
        return new TextBaseline({ converter: 'f:1:TextBaseline.ideographic' });
    }
}
export class FontWeight extends ZacConverter {
    constructor(data) {
        super(data);
    }
    static bold() {
        return new FontWeight({ converter: 'f:1:FontWeight.bold' });
    }
    static normal() {
        return new FontWeight({ converter: 'f:1:FontWeight.normal' });
    }
    static w100() {
        return new FontWeight({ converter: 'f:1:FontWeight.w100' });
    }
    static w200() {
        return new FontWeight({ converter: 'f:1:FontWeight.w200' });
    }
    static w300() {
        return new FontWeight({ converter: 'f:1:FontWeight.w300' });
    }
    static w400() {
        return new FontWeight({ converter: 'f:1:FontWeight.w400' });
    }
    static w500() {
        return new FontWeight({ converter: 'f:1:FontWeight.w500' });
    }
    static w600() {
        return new FontWeight({ converter: 'f:1:FontWeight.w600' });
    }
    static w700() {
        return new FontWeight({ converter: 'f:1:FontWeight.w700' });
    }
    static w800() {
        return new FontWeight({ converter: 'f:1:FontWeight.w800' });
    }
    static w900() {
        return new FontWeight({ converter: 'f:1:FontWeight.w900' });
    }
}
export class FontStyle extends ZacConverter {
    constructor(data) {
        super(data);
    }
    static italic() {
        return new FontStyle({ converter: 'f:1:FontStyle.italic' });
    }
    static normal() {
        return new FontStyle({ converter: 'f:1:FontStyle.normal' });
    }
}
export class TextDecoration extends ZacConverter {
    constructor(data) {
        super(data);
    }
    static lineThrough() {
        return new TextDecoration({ converter: 'f:1:TextDecoration.lineThrough' });
    }
    static none() {
        return new TextDecoration({ converter: 'f:1:TextDecoration.none' });
    }
    static overline() {
        return new TextDecoration({ converter: 'f:1:TextDecoration.overline' });
    }
    static underline() {
        return new TextDecoration({ converter: 'f:1:TextDecoration.underline' });
    }
}
export class TextLeadingDistribution extends ZacConverter {
    constructor(data) {
        super(data);
    }
    static even() {
        return new TextLeadingDistribution({ converter: 'f:1:TextLeadingDistribution.even' });
    }
    static proportional() {
        return new TextLeadingDistribution({ converter: 'f:1:TextLeadingDistribution.proportional' });
    }
}
export class Locale extends ZacConverter {
    constructor(data) {
        super(data);
    }
    static new(data) {
        return new Locale(Object.assign({ converter: 'f:1:Locale' }, data));
    }
}
export class FontFeature extends ZacConverter {
    constructor(data) {
        super(data);
    }
    static new(data) {
        return new FontFeature(Object.assign({ converter: 'f:1:FontFeature' }, data));
    }
    static alternative(data) {
        return new FontFeature(Object.assign({ converter: 'f:1:FontFeature.alternative' }, data));
    }
    static alternativeFractions() {
        return new FontFeature({ converter: 'f:1:FontFeature.alternativeFractions' });
    }
    static caseSensitiveForms() {
        return new FontFeature({ converter: 'f:1:FontFeature.caseSensitiveForms' });
    }
    static characterVariant(data) {
        return new FontFeature(Object.assign({ converter: 'f:1:FontFeature.characterVariant' }, data));
    }
    static contextualAlternates() {
        return new FontFeature({ converter: 'f:1:FontFeature.contextualAlternates' });
    }
    static denominator() {
        return new FontFeature({ converter: 'f:1:FontFeature.denominator' });
    }
    static disable(data) {
        return new FontFeature(Object.assign({ converter: 'f:1:FontFeature.disable' }, data));
    }
    static enable(data) {
        return new FontFeature(Object.assign({ converter: 'f:1:FontFeature.enable' }, data));
    }
    static fractions() {
        return new FontFeature({ converter: 'f:1:FontFeature.fractions' });
    }
    static historicalForms() {
        return new FontFeature({ converter: 'f:1:FontFeature.historicalForms' });
    }
    static historicalLigatures() {
        return new FontFeature({ converter: 'f:1:FontFeature.historicalLigatures' });
    }
    static liningFigures() {
        return new FontFeature({ converter: 'f:1:FontFeature.liningFigures' });
    }
    static localeAware(data) {
        return new FontFeature(Object.assign({ converter: 'f:1:FontFeature.localeAware' }, data));
    }
    static notationalForms(data) {
        return new FontFeature(Object.assign({ converter: 'f:1:FontFeature.notationalForms' }, data));
    }
    static numerators() {
        return new FontFeature({ converter: 'f:1:FontFeature.numerators' });
    }
    static oldstyleFigures() {
        return new FontFeature({ converter: 'f:1:FontFeature.oldstyleFigures' });
    }
    static ordinalForms() {
        return new FontFeature({ converter: 'f:1:FontFeature.ordinalForms' });
    }
    static proportionalFigures() {
        return new FontFeature({ converter: 'f:1:FontFeature.proportionalFigures' });
    }
    static randomize() {
        return new FontFeature({ converter: 'f:1:FontFeature.randomize' });
    }
    static scientificInferiors() {
        return new FontFeature({ converter: 'f:1:FontFeature.scientificInferiors' });
    }
    static slashedZero() {
        return new FontFeature({ converter: 'f:1:FontFeature.slashedZero' });
    }
    static stylisticAlternates() {
        return new FontFeature({ converter: 'f:1:FontFeature.stylisticAlternates' });
    }
    static stylisticSet(data) {
        return new FontFeature(Object.assign({ converter: 'f:1:FontFeature.stylisticSet' }, data));
    }
    static subscripts() {
        return new FontFeature({ converter: 'f:1:FontFeature.subscripts' });
    }
    static superscripts() {
        return new FontFeature({ converter: 'f:1:FontFeature.superscripts' });
    }
    static swash() {
        return new FontFeature({ converter: 'f:1:FontFeature.swash' });
    }
    static tabularFigures() {
        return new FontFeature({ converter: 'f:1:FontFeature.tabularFigures' });
    }
}
export class TextDecorationStyle extends ZacConverter {
    constructor(data) {
        super(data);
    }
    static dashed() {
        return new TextDecorationStyle({ converter: 'f:1:TextDecorationStyle.dashed' });
    }
    static dotted() {
        return new TextDecorationStyle({ converter: 'f:1:TextDecorationStyle.dotted' });
    }
    static double() {
        return new TextDecorationStyle({ converter: 'f:1:TextDecorationStyle.double' });
    }
    static solid() {
        return new TextDecorationStyle({ converter: 'f:1:TextDecorationStyle.solid' });
    }
    static wavy() {
        return new TextDecorationStyle({ converter: 'f:1:TextDecorationStyle.wavy' });
    }
}
export class TextAlign extends ZacConverter {
    constructor(data) {
        super(data);
    }
    static center() {
        return new TextAlign({ converter: 'f:1:TextAlign.center' });
    }
    static end() {
        return new TextAlign({ converter: 'f:1:TextAlign.end' });
    }
    static justify() {
        return new TextAlign({ converter: 'f:1:TextAlign.justify' });
    }
    static left() {
        return new TextAlign({ converter: 'f:1:TextAlign.left' });
    }
    static right() {
        return new TextAlign({ converter: 'f:1:TextAlign.right' });
    }
    static start() {
        return new TextAlign({ converter: 'f:1:TextAlign.start' });
    }
}
export class TextHeightBehavior extends ZacConverter {
    constructor(data) {
        super(data);
    }
    static new(data) {
        return new TextHeightBehavior(Object.assign({ converter: 'f:1:TextHeightBehavior' }, data));
    }
}
export class BlendMode extends ZacConverter {
    constructor(data) {
        super(data);
    }
    static clear() {
        return new BlendMode({ converter: 'f:1:BlendMode.clear' });
    }
    static color() {
        return new BlendMode({ converter: 'f:1:BlendMode.color' });
    }
    static colorBurn() {
        return new BlendMode({ converter: 'f:1:BlendMode.colorBurn' });
    }
    static colorDodge() {
        return new BlendMode({ converter: 'f:1:BlendMode.colorDodge' });
    }
    static darken() {
        return new BlendMode({ converter: 'f:1:BlendMode.darken' });
    }
    static difference() {
        return new BlendMode({ converter: 'f:1:BlendMode.difference' });
    }
    static dst() {
        return new BlendMode({ converter: 'f:1:BlendMode.dst' });
    }
    static dstATop() {
        return new BlendMode({ converter: 'f:1:BlendMode.dstATop' });
    }
    static dstIn() {
        return new BlendMode({ converter: 'f:1:BlendMode.dstIn' });
    }
    static dstOut() {
        return new BlendMode({ converter: 'f:1:BlendMode.dstOut' });
    }
    static exclusion() {
        return new BlendMode({ converter: 'f:1:BlendMode.exclusion' });
    }
    static hardLight() {
        return new BlendMode({ converter: 'f:1:BlendMode.hardLight' });
    }
    static hue() {
        return new BlendMode({ converter: 'f:1:BlendMode.hue' });
    }
    static lighten() {
        return new BlendMode({ converter: 'f:1:BlendMode.lighten' });
    }
    static luminosity() {
        return new BlendMode({ converter: 'f:1:BlendMode.luminosity' });
    }
    static dstOver() {
        return new BlendMode({ converter: 'f:1:BlendMode.dstOver' });
    }
    static multiply() {
        return new BlendMode({ converter: 'f:1:BlendMode.multiply' });
    }
    static overlay() {
        return new BlendMode({ converter: 'f:1:BlendMode.overlay' });
    }
    static plus() {
        return new BlendMode({ converter: 'f:1:BlendMode.plus' });
    }
    static saturation() {
        return new BlendMode({ converter: 'f:1:BlendMode.saturation' });
    }
    static screen() {
        return new BlendMode({ converter: 'f:1:BlendMode.screen' });
    }
    static softLight() {
        return new BlendMode({ converter: 'f:1:BlendMode.softLight' });
    }
    static src() {
        return new BlendMode({ converter: 'f:1:BlendMode.src' });
    }
    static srcATop() {
        return new BlendMode({ converter: 'f:1:BlendMode.srcATop' });
    }
    static srcIn() {
        return new BlendMode({ converter: 'f:1:BlendMode.srcIn' });
    }
    static srcOut() {
        return new BlendMode({ converter: 'f:1:BlendMode.srcOut' });
    }
    static srcOver() {
        return new BlendMode({ converter: 'f:1:BlendMode.srcOver' });
    }
    static xor() {
        return new BlendMode({ converter: 'f:1:BlendMode.xor' });
    }
}
export class Rect extends ZacConverter {
    constructor(data) {
        super(data);
    }
    static fromCenter(data) {
        return new Rect(Object.assign({ converter: 'f:1:Rect.fromCenter' }, data));
    }
    static fromCircle(data) {
        return new Rect(Object.assign({ converter: 'f:1:Rect.fromCircle' }, data));
    }
    static fromLTRB(data) {
        return new Rect(Object.assign({ converter: 'f:1:Rect.fromLTRB' }, data));
    }
    static fromLTWH(data) {
        return new Rect(Object.assign({ converter: 'f:1:Rect.fromLTWH' }, data));
    }
    static fromPoints(data) {
        return new Rect(Object.assign({ converter: 'f:1:Rect.fromPoints' }, data));
    }
}
export class FilterQuality extends ZacConverter {
    constructor(data) {
        super(data);
    }
    static high() {
        return new FilterQuality({ converter: 'f:1:FilterQuality.high' });
    }
    static low() {
        return new FilterQuality({ converter: 'f:1:FilterQuality.low' });
    }
    static medium() {
        return new FilterQuality({ converter: 'f:1:FilterQuality.medium' });
    }
    static none() {
        return new FilterQuality({ converter: 'f:1:FilterQuality.none' });
    }
}
export class Brightness extends ZacConverter {
    constructor(data) {
        super(data);
    }
    static dark() {
        return new Brightness({ converter: 'f:1:Brightness.dark' });
    }
    static light() {
        return new Brightness({ converter: 'f:1:Brightness.light' });
    }
}
export class Size extends ZacConverter {
    constructor(data) {
        super(data);
    }
    static new(data) {
        return new Size(Object.assign({ converter: 'f:1:Size' }, data));
    }
}
export class BoxHeightStyle extends ZacConverter {
    constructor(data) {
        super(data);
    }
    static includeLineSpacingBottom() {
        return new BoxHeightStyle({ converter: 'f:1:BoxHeightStyle.includeLineSpacingBottom' });
    }
    static includeLineSpacingMiddle() {
        return new BoxHeightStyle({ converter: 'f:1:BoxHeightStyle.includeLineSpacingMiddle' });
    }
    static includeLineSpacingTop() {
        return new BoxHeightStyle({ converter: 'f:1:BoxHeightStyle.includeLineSpacingTop' });
    }
    static max() {
        return new BoxHeightStyle({ converter: 'f:1:BoxHeightStyle.max' });
    }
    static strut() {
        return new BoxHeightStyle({ converter: 'f:1:BoxHeightStyle.strut' });
    }
    static tight() {
        return new BoxHeightStyle({ converter: 'f:1:BoxHeightStyle.tight' });
    }
}
export class BoxWidthStyle extends ZacConverter {
    constructor(data) {
        super(data);
    }
    static max() {
        return new BoxWidthStyle({ converter: 'f:1:BoxWidthStyle.max' });
    }
    static tight() {
        return new BoxWidthStyle({ converter: 'f:1:BoxWidthStyle.tight' });
    }
}
export class FlutterDartUiShadow extends ZacConverter {
}
export class DartUiShadow extends FlutterDartUiShadow {
    constructor(data) {
        super(data);
    }
    static new(data) {
        return new DartUiShadow(Object.assign({ converter: 'f:1:Shadow' }, data));
    }
}
