import { DartDouble, DartInt, ZacConverter } from "../base";
import { ZacValue } from "../zac/zac_value";
export declare class Color extends ZacConverter {
    private constructor();
    static fromARGB(data: {
        a: DartInt;
        r: DartInt;
        g: DartInt;
        b: DartInt;
    }): Color;
    static fromRGBO(data: {
        r: DartInt;
        g: DartInt;
        b: DartInt;
        opacity: ZacValue<DartDouble>;
    }): Color;
}
export declare class Offset extends ZacConverter {
    private constructor();
    static new(data: {
        dx: ZacValue<DartDouble>;
        dy: ZacValue<DartDouble>;
    }): Offset;
    static fromDirection(data: {
        direction: ZacValue<DartDouble>;
        distance?: ZacValue<DartDouble>;
    }): Offset;
}
export declare class BlurStyle extends ZacConverter {
    private constructor();
    static inner(): BlurStyle;
    static normal(): BlurStyle;
    static outer(): BlurStyle;
    static solid(): BlurStyle;
}
export declare class Radius extends ZacConverter {
    private constructor();
    static circular(data: {
        radius: ZacValue<DartDouble>;
    }): Radius;
    static elliptical(data: {
        x: ZacValue<DartDouble>;
        y: ZacValue<DartDouble>;
    }): Radius;
}
export declare class TextDirection extends ZacConverter {
    private constructor();
    static rtl(): TextDirection;
    static ltr(): TextDirection;
}
export declare class Clip extends ZacConverter {
    private constructor();
    static none(): Clip;
    static antiAlias(): Clip;
    static hardEdge(): Clip;
}
export declare class TextBaseline extends ZacConverter {
    private constructor();
    static alphabetic(): TextBaseline;
    static ideographic(): TextBaseline;
}
export declare class FontWeight extends ZacConverter {
    private constructor();
    static bold(): FontWeight;
    static normal(): FontWeight;
    static w100(): FontWeight;
    static w200(): FontWeight;
    static w300(): FontWeight;
    static w400(): FontWeight;
    static w500(): FontWeight;
    static w600(): FontWeight;
    static w700(): FontWeight;
    static w800(): FontWeight;
    static w900(): FontWeight;
}
export declare class FontStyle extends ZacConverter {
    private constructor();
    static italic(): FontStyle;
    static normal(): FontStyle;
}
export declare class TextDecoration extends ZacConverter {
    private constructor();
    static lineThrough(): TextDecoration;
    static none(): TextDecoration;
    static overline(): TextDecoration;
    static underline(): TextDecoration;
}
export declare class TextLeadingDistribution extends ZacConverter {
    private constructor();
    static even(): TextLeadingDistribution;
    static proportional(): TextLeadingDistribution;
}
export declare class Locale extends ZacConverter {
    private constructor();
    static new(data: {
        languageCode: string;
        countryCode?: string;
    }): Locale;
}
export declare class FontFeature extends ZacConverter {
    private constructor();
    static new(data: {
        feature: string;
        value?: ZacValue<DartInt>;
    }): FontFeature;
    static alternative(data: {
        value: DartInt;
    }): FontFeature;
    static alternativeFractions(): FontFeature;
    static caseSensitiveForms(): FontFeature;
    static characterVariant(data: {
        value: DartInt;
    }): FontFeature;
    static contextualAlternates(): FontFeature;
    static denominator(): FontFeature;
    static disable(data: {
        feature: string;
    }): FontFeature;
    static enable(data: {
        feature: string;
    }): FontFeature;
    static fractions(): FontFeature;
    static historicalForms(): FontFeature;
    static historicalLigatures(): FontFeature;
    static liningFigures(): FontFeature;
    static localeAware(data: {
        enable?: ZacValue<boolean>;
    }): FontFeature;
    static notationalForms(data: {
        value?: ZacValue<DartInt>;
    }): FontFeature;
    static numerators(): FontFeature;
    static oldstyleFigures(): FontFeature;
    static ordinalForms(): FontFeature;
    static proportionalFigures(): FontFeature;
    static randomize(): FontFeature;
    static scientificInferiors(): FontFeature;
    static slashedZero(): FontFeature;
    static stylisticAlternates(): FontFeature;
    static stylisticSet(data: {
        value: DartInt;
    }): FontFeature;
    static subscripts(): FontFeature;
    static superscripts(): FontFeature;
    static swash(): FontFeature;
    static tabularFigures(): FontFeature;
}
export declare class TextDecorationStyle extends ZacConverter {
    private constructor();
    static dashed(): TextDecorationStyle;
    static dotted(): TextDecorationStyle;
    static double(): TextDecorationStyle;
    static solid(): TextDecorationStyle;
    static wavy(): TextDecorationStyle;
}
export declare class TextAlign extends ZacConverter {
    private constructor();
    static center(): TextAlign;
    static end(): TextAlign;
    static justify(): TextAlign;
    static left(): TextAlign;
    static right(): TextAlign;
    static start(): TextAlign;
}
export declare class TextHeightBehavior extends ZacConverter {
    private constructor();
    static new(data: {
        applyHeightToFirstAscent?: ZacValue<boolean>;
        applyHeightToLastDescent?: ZacValue<boolean>;
        leadingDistribution?: TextLeadingDistribution;
    }): TextHeightBehavior;
}
export declare class BlendMode extends ZacConverter {
    private constructor();
    static clear(): BlendMode;
    static color(): BlendMode;
    static colorBurn(): BlendMode;
    static colorDodge(): BlendMode;
    static darken(): BlendMode;
    static difference(): BlendMode;
    static dst(): BlendMode;
    static dstATop(): BlendMode;
    static dstIn(): BlendMode;
    static dstOut(): BlendMode;
    static exclusion(): BlendMode;
    static hardLight(): BlendMode;
    static hue(): BlendMode;
    static lighten(): BlendMode;
    static luminosity(): BlendMode;
    static dstOver(): BlendMode;
    static multiply(): BlendMode;
    static overlay(): BlendMode;
    static plus(): BlendMode;
    static saturation(): BlendMode;
    static screen(): BlendMode;
    static softLight(): BlendMode;
    static src(): BlendMode;
    static srcATop(): BlendMode;
    static srcIn(): BlendMode;
    static srcOut(): BlendMode;
    static srcOver(): BlendMode;
    static xor(): BlendMode;
}
export declare class Rect extends ZacConverter {
    private constructor();
    static fromCenter(data: {
        center: Offset;
        width: ZacValue<DartDouble>;
        height: ZacValue<DartDouble>;
    }): Rect;
    static fromCircle(data: {
        center: Offset;
        radius: ZacValue<DartDouble>;
    }): Rect;
    static fromLTRB(data: {
        left: ZacValue<DartDouble>;
        top: ZacValue<DartDouble>;
        right: ZacValue<DartDouble>;
        bottom: ZacValue<DartDouble>;
    }): Rect;
    static fromLTWH(data: {
        left: ZacValue<DartDouble>;
        top: ZacValue<DartDouble>;
        width: ZacValue<DartDouble>;
        height: ZacValue<DartDouble>;
    }): Rect;
    static fromPoints(data: {
        a: Offset;
        b: Offset;
    }): Rect;
}
export declare class FilterQuality extends ZacConverter {
    private constructor();
    static high(): FilterQuality;
    static low(): FilterQuality;
    static medium(): FilterQuality;
    static none(): FilterQuality;
}
export declare class Brightness extends ZacConverter {
    private constructor();
    static dark(): Brightness;
    static light(): Brightness;
}
export declare class Size extends ZacConverter {
    private constructor();
    static new(data: {
        width: ZacValue<DartDouble>;
        height: ZacValue<DartDouble>;
    }): Size;
}
export declare class BoxHeightStyle extends ZacConverter {
    private constructor();
    static includeLineSpacingBottom(): BoxHeightStyle;
    static includeLineSpacingMiddle(): BoxHeightStyle;
    static includeLineSpacingTop(): BoxHeightStyle;
    static max(): BoxHeightStyle;
    static strut(): BoxHeightStyle;
    static tight(): BoxHeightStyle;
}
export declare class BoxWidthStyle extends ZacConverter {
    private constructor();
    static max(): BoxWidthStyle;
    static tight(): BoxWidthStyle;
}
export declare abstract class FlutterDartUiShadow extends ZacConverter {
}
export declare class DartUiShadow extends FlutterDartUiShadow {
    private constructor();
    static new(data: {
        color?: Color;
        offset?: Offset;
        blurRadius?: ZacValue<DartDouble>;
    }): DartUiShadow;
}
