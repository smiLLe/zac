import { DartDouble, ZacConverter } from "../base";
import { ZacValue } from "../zac/zac_value";
import { BlendMode, BlurStyle, Color, DartUiShadow, FlutterDartUiShadow, FontFeature, FontStyle, FontWeight, Locale, Offset, Radius, TextBaseline, TextDecoration, TextDecorationStyle, TextLeadingDistribution } from "./dart_ui";
export declare class BoxShape extends ZacConverter {
    private constructor();
    static circle(): BoxShape;
    static rectangle(): BoxShape;
}
export declare class Axis extends ZacConverter {
    private constructor();
    static horizontal(): Axis;
    static vertical(): Axis;
}
export declare class VerticalDirection extends ZacConverter {
    private constructor();
    static up(): VerticalDirection;
    static down(): VerticalDirection;
}
export declare class TextOverflow extends ZacConverter {
    private constructor();
    static clip(): TextOverflow;
    static ellipsis(): TextOverflow;
    static fade(): TextOverflow;
    static visible(): TextOverflow;
}
export declare class StrutStyle extends ZacConverter {
    private constructor();
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
    }): StrutStyle;
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
    }): StrutStyle;
}
export declare class TextWidthBasis extends ZacConverter {
    private constructor();
    static longestLine(): TextWidthBasis;
    static parent(): TextWidthBasis;
}
export declare class BoxFit extends ZacConverter {
    private constructor();
    static contain(): BoxFit;
    static cover(): BoxFit;
    static fill(): BoxFit;
    static fitHeight(): BoxFit;
    static fitWidth(): BoxFit;
    static none(): BoxFit;
    static scaleDown(): BoxFit;
}
export declare class ImageRepeat extends ZacConverter {
    private constructor();
    static noRepeat(): ImageRepeat;
    static repeat(): ImageRepeat;
    static repeatX(): ImageRepeat;
    static repeatY(): ImageRepeat;
}
export declare class TextStyle extends ZacConverter {
    private constructor();
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
        shadows?: Array<DartUiShadow>;
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
    }): TextStyle;
}
export declare class TextAlignVertical extends ZacConverter {
    private constructor();
    static new(data: {
        y: ZacValue<DartDouble>;
    }): TextAlignVertical;
    static bottom(): TextAlignVertical;
    static center(): TextAlignVertical;
    static top(): TextAlignVertical;
}
export declare class BoxShadow extends FlutterDartUiShadow {
    private constructor();
    static new(data: {
        color?: Color;
        offset?: Offset;
        blurRadius?: ZacValue<DartDouble>;
        spreadRadius?: ZacValue<DartDouble>;
        blurStyle?: BlurStyle;
    }): BoxShadow;
}
export declare abstract class FlutterAlignmentGeometry extends ZacConverter {
}
export declare class Alignment extends FlutterAlignmentGeometry {
    private constructor();
    static new(data: {
        x: ZacValue<DartDouble>;
        y: ZacValue<DartDouble>;
    }): Alignment;
    static bottomCenter(): Alignment;
    static bottomLeft(): Alignment;
    static bottomRight(): Alignment;
    static center(): Alignment;
    static centerLeft(): Alignment;
    static centerRight(): Alignment;
    static topCenter(): Alignment;
    static topLeft(): Alignment;
    static topRight(): Alignment;
}
export declare class AlignmentDirectional extends FlutterAlignmentGeometry {
    private constructor();
    static new(data: {
        start: ZacValue<DartDouble>;
        y: ZacValue<DartDouble>;
    }): AlignmentDirectional;
    static bottomCenter(): AlignmentDirectional;
    static bottomEnd(): AlignmentDirectional;
    static bottomStart(): AlignmentDirectional;
    static center(): AlignmentDirectional;
    static centerEnd(): AlignmentDirectional;
    static centerStart(): AlignmentDirectional;
    static topCenter(): AlignmentDirectional;
    static topEnd(): AlignmentDirectional;
    static topStart(): AlignmentDirectional;
}
export declare class FractionalOffset extends FlutterAlignmentGeometry {
    private constructor();
    static new(data: {
        dx: ZacValue<DartDouble>;
        dy: ZacValue<DartDouble>;
    }): FractionalOffset;
}
export declare abstract class FlutterShapeBorder extends ZacConverter {
}
export declare abstract class FlutterBoxBorder extends FlutterShapeBorder {
}
export declare class BorderDirectional extends FlutterBoxBorder {
    private constructor();
    static new(data: {
        top?: BorderSide;
        start?: BorderSide;
        bottom?: BorderSide;
        end?: BorderSide;
    }): BorderDirectional;
}
export declare class Border extends FlutterBoxBorder {
    private constructor();
    static new(data: {
        top?: BorderSide;
        right?: BorderSide;
        bottom?: BorderSide;
        left?: BorderSide;
    }): Border;
    static all(data: {
        color?: Color;
        width?: ZacValue<DartDouble>;
        style?: BorderStyle;
    }): Border;
}
export declare class BorderStyle extends FlutterBoxBorder {
    private constructor();
    static none(): BorderStyle;
    static solid(): BorderStyle;
}
export declare abstract class FlutterBorderRadiusGeometry extends ZacConverter {
}
export declare class BorderRadius extends FlutterBorderRadiusGeometry {
    private constructor();
    static all(data: {
        radius: Radius;
    }): BorderRadius;
    static circular(data: {
        radius: ZacValue<DartDouble>;
    }): BorderRadius;
    static horizontal(data: {
        left?: Radius;
        right?: Radius;
    }): BorderRadius;
}
export declare class BorderSide extends ZacConverter {
    private constructor();
    static new(data: {
        color?: Color;
        width?: ZacValue<DartDouble>;
        style?: BorderStyle;
    }): BorderSide;
}
export declare abstract class FlutterOutlinedBorder extends FlutterShapeBorder {
}
export declare class CircleBorder extends FlutterOutlinedBorder {
    private constructor();
    static new(data: {
        side?: BorderSide;
    }): CircleBorder;
}
export declare class RoundedRectangleBorder extends FlutterOutlinedBorder {
    private constructor();
    static new(data: {
        side?: BorderSide;
        borderRadius?: FlutterBorderRadiusGeometry;
    }): RoundedRectangleBorder;
}
export declare abstract class FlutterDecoration extends ZacConverter {
}
export declare class BoxDecoration extends FlutterDecoration {
    private constructor();
    static new(data: {
        color?: Color;
        border?: FlutterBoxBorder;
        borderRadius?: FlutterBorderRadiusGeometry;
        boxShadow?: Array<BoxShadow>;
        shape?: BoxShape;
        backgroundBlendMode?: BlendMode;
    }): BoxDecoration;
}
export declare class ShapeDecoration extends FlutterDecoration {
    private constructor();
    static new(data: {
        color?: Color;
        shadows?: Array<BoxShadow>;
        shape: FlutterShapeBorder;
    }): ShapeDecoration;
}
export declare abstract class FlutterEdgeInsetsGeometry extends ZacConverter {
}
export declare class EdgeInsets extends FlutterEdgeInsetsGeometry {
    private constructor();
    static all(data: {
        value: ZacValue<DartDouble>;
    }): EdgeInsets;
    static symmetric(data: {
        vertical?: ZacValue<DartDouble>;
        horizontal?: ZacValue<DartDouble>;
    }): EdgeInsets;
    static only(data: {
        left?: ZacValue<DartDouble>;
        top?: ZacValue<DartDouble>;
        right?: ZacValue<DartDouble>;
        bottom?: ZacValue<DartDouble>;
    }): EdgeInsets;
}
export declare class EdgeInsetsDirectional extends FlutterEdgeInsetsGeometry {
    private constructor();
    static all(data: {
        value: ZacValue<DartDouble>;
    }): EdgeInsetsDirectional;
    static only(data: {
        start?: ZacValue<DartDouble>;
        top?: ZacValue<DartDouble>;
        end?: ZacValue<DartDouble>;
        bottom?: ZacValue<DartDouble>;
    }): EdgeInsetsDirectional;
}
