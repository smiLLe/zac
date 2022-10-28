import { DartDouble, ZacConverter, ZacConverterType, ZacValue } from "../base";
import { BlendMode, BlurStyle, Color, DartUiShadow, FlutterDartUiShadow, FontFeature, FontStyle, FontWeight, Locale, Offset, Radius, TextBaseline, TextDecoration, TextDecorationStyle, TextLeadingDistribution } from "./dart_ui";

export class BoxShape extends ZacConverter {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static circle() {
        return new BoxShape({ converter: 'f:1:BoxShape.circle' })
    }

    static rectangle() {
        return new BoxShape({ converter: 'f:1:BoxShape.rectangle' })
    }
}

export class Axis extends ZacConverter {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static horizontal() {
        return new Axis({ converter: 'f:1:Axis.horizontal' })
    }

    static vertical() {
        return new Axis({ converter: 'f:1:Axis.vertical' })
    }
}

export class VerticalDirection extends ZacConverter {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static up() {
        return new VerticalDirection({ converter: 'f:1:VerticalDirection.up' })
    }

    static down() {
        return new VerticalDirection({ converter: 'f:1:VerticalDirection.down' })
    }
}

export class TextOverflow extends ZacConverter {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static clip() {
        return new TextOverflow({ converter: 'f:1:TextOverflow.clip' })
    }

    static ellipsis() {
        return new TextOverflow({ converter: 'f:1:TextOverflow.ellipsis' })
    }

    static fade() {
        return new TextOverflow({ converter: 'f:1:TextOverflow.fade' })
    }

    static visible() {
        return new TextOverflow({ converter: 'f:1:TextOverflow.visible' })
    }
}

export class StrutStyle extends ZacConverter {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static new(data: {
        fontFamily?: ZacValue<string>,
        fontFamilyFallback?: Array<string>,
        fontSize?: ZacValue<DartDouble>,
        height?: ZacValue<DartDouble>,
        leadingDistribution?: TextLeadingDistribution,
        leading?: ZacValue<DartDouble>,
        fontWeight?: FontWeight,
        fontStyle?: FontStyle,
        forceStrutHeight?: ZacValue<boolean>,
        debugLabel?: ZacValue<string>,
        package?: ZacValue<string>,
    }) {
        return new StrutStyle({ converter: 'f:1:StrutStyle', ...data })
    }

    static fromTextStyle(data: {
        textStyle: TextStyle,
        fontFamily?: ZacValue<string>,
        fontFamilyFallback?: Array<string>,
        fontSize?: ZacValue<DartDouble>,
        height?: ZacValue<DartDouble>,
        leadingDistribution?: TextLeadingDistribution,
        leading?: ZacValue<DartDouble>,
        fontWeight?: FontWeight,
        fontStyle?: FontStyle,
        forceStrutHeight?: ZacValue<boolean>,
        debugLabel?: ZacValue<string>,
        package?: ZacValue<string>,
    }) {
        return new StrutStyle({ converter: 'f:1:StrutStyle.fromTextStyle', ...data })
    }
}

export class TextWidthBasis extends ZacConverter {
    private constructor(data: ZacConverterType) {
        super(data);
    }
    static longestLine() {
        return new TextWidthBasis({ converter: 'f:1:TextWidthBasis.longestLine' })
    }
    static parent() {
        return new TextWidthBasis({ converter: 'f:1:TextWidthBasis.parent' })
    }
}

export class BoxFit extends ZacConverter {
    private constructor(data: ZacConverterType) {
        super(data);
    }
    static contain() {
        return new BoxFit({ converter: 'f:1:BoxFit.contain' })
    }
    static cover() {
        return new BoxFit({ converter: 'f:1:BoxFit.cover' })
    }
    static fill() {
        return new BoxFit({ converter: 'f:1:BoxFit.fill' })
    }
    static fitHeight() {
        return new BoxFit({ converter: 'f:1:BoxFit.fitHeight' })
    }
    static fitWidth() {
        return new BoxFit({ converter: 'f:1:BoxFit.fitWidth' })
    }
    static none() {
        return new BoxFit({ converter: 'f:1:BoxFit.none' })
    }
    static scaleDown() {
        return new BoxFit({ converter: 'f:1:BoxFit.scaleDown' })
    }
}


export class ImageRepeat extends ZacConverter {
    private constructor(data: ZacConverterType) {
        super(data);
    }
    static noRepeat() {
        return new ImageRepeat({ converter: 'f:1:ImageRepeat.noRepeat' })
    }
    static repeat() {
        return new ImageRepeat({ converter: 'f:1:ImageRepeat.repeat' })
    }
    static repeatX() {
        return new ImageRepeat({ converter: 'f:1:ImageRepeat.repeatX' })
    }
    static repeatY() {
        return new ImageRepeat({ converter: 'f:1:ImageRepeat.repeatY' })
    }
}

export class TextStyle extends ZacConverter {
    private constructor(data: ZacConverterType) {
        super(data);
    }
    static new(data: {
        inherit?: ZacValue<boolean>,
        color?: Color,
        backgroundColor?: Color,
        fontSize?: ZacValue<DartDouble>,
        fontWeight?: FontWeight,
        fontStyle?: FontStyle,
        letterSpacing?: ZacValue<DartDouble>,
        wordSpacing?: ZacValue<DartDouble>,
        textBaseline?: TextBaseline,
        height?: ZacValue<DartDouble>,
        leadingDistribution?: TextLeadingDistribution,
        locale?: Locale,
        shadows?: Array<DartUiShadow>,
        fontFeatures?: Array<FontFeature>,
        decoration?: TextDecoration,
        decorationColor?: Color,
        decorationStyle?: TextDecorationStyle,
        decorationThickness?: ZacValue<DartDouble>,
        debugLabel?: ZacValue<string>,
        fontFamily?: ZacValue<string>,
        fontFamilyFallback?: Array<string>,
        package?: ZacValue<string>,
        overflow?: TextOverflow,
    }) {
        return new TextStyle({ converter: 'f:1:TextStyle', ...data })
    }
}

export class TextAlignVertical extends ZacConverter {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static new(data: {
        y: ZacValue<DartDouble>
    }) {
        return new TextAlignVertical({ converter: 'f:1:TextAlignVertical', ...data })
    }

    static bottom() {
        return new TextAlignVertical({ converter: 'f:1:TextAlignVertical.bottom' })
    }

    static center() {
        return new TextAlignVertical({ converter: 'f:1:TextAlignVertical.center' })
    }

    static top() {
        return new TextAlignVertical({ converter: 'f:1:TextAlignVertical.top' })
    }
}

export class BoxShadow extends FlutterDartUiShadow {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static new(data: {
        color?: Color,
        offset?: Offset,
        blurRadius?: ZacValue<DartDouble>,
        spreadRadius?: ZacValue<DartDouble>,
        blurStyle?: BlurStyle,
    }) {
        return new BoxShadow({ converter: 'f:1:BoxShadow', ...data })
    }
}

export abstract class FlutterAlignmentGeometry extends ZacConverter { }

export class Alignment extends FlutterAlignmentGeometry {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static new(data: {
        x: ZacValue<DartDouble>, y: ZacValue<DartDouble>
    }) {
        return new Alignment({ converter: 'f:1:Alignment', ...data })
    }

    static bottomCenter() {
        return new Alignment({ converter: 'f:1:Alignment.bottomCenter' })
    }

    static bottomLeft() {
        return new Alignment({ converter: 'f:1:Alignment.bottomLeft' })
    }

    static bottomRight() {
        return new Alignment({ converter: 'f:1:Alignment.bottomRight' })
    }

    static center() {
        return new Alignment({ converter: 'f:1:Alignment.center' })
    }

    static centerLeft() {
        return new Alignment({ converter: 'f:1:Alignment.centerLeft' })
    }

    static centerRight() {
        return new Alignment({ converter: 'f:1:Alignment.centerRight' })
    }

    static topCenter() {
        return new Alignment({ converter: 'f:1:Alignment.topCenter' })
    }

    static topLeft() {
        return new Alignment({ converter: 'f:1:Alignment.topLeft' })
    }

    static topRight() {
        return new Alignment({ converter: 'f:1:Alignment.topRight' })
    }
}

export class AlignmentDirectional extends FlutterAlignmentGeometry {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static new(data: {
        start: ZacValue<DartDouble>, y: ZacValue<DartDouble>
    }) {
        return new AlignmentDirectional({ converter: 'f:1:AlignmentDirectional', ...data })
    }

    static bottomCenter() {
        return new AlignmentDirectional({ converter: 'f:1:AlignmentDirectional.bottomCenter' })
    }

    static bottomEnd() {
        return new AlignmentDirectional({ converter: 'f:1:AlignmentDirectional.bottomEnd' })
    }

    static bottomStart() {
        return new AlignmentDirectional({ converter: 'f:1:AlignmentDirectional.bottomStart' })
    }

    static center() {
        return new AlignmentDirectional({ converter: 'f:1:AlignmentDirectional.center' })
    }

    static centerEnd() {
        return new AlignmentDirectional({ converter: 'f:1:AlignmentDirectional.centerEnd' })
    }

    static centerStart() {
        return new AlignmentDirectional({ converter: 'f:1:AlignmentDirectional.centerStart' })
    }

    static topCenter() {
        return new AlignmentDirectional({ converter: 'f:1:AlignmentDirectional.topCenter' })
    }

    static topEnd() {
        return new AlignmentDirectional({ converter: 'f:1:AlignmentDirectional.topEnd' })
    }

    static topStart() {
        return new AlignmentDirectional({ converter: 'f:1:AlignmentDirectional.topStart' })
    }
}

export class FractionalOffset extends FlutterAlignmentGeometry {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static new(data: {
        dx: ZacValue<DartDouble>, dy: ZacValue<DartDouble>
    }) {
        return new FractionalOffset({ converter: 'f:1:FractionalOffset', ...data })
    }
}


export abstract class FlutterShapeBorder extends ZacConverter { }
export abstract class FlutterBoxBorder extends FlutterShapeBorder { }

export class BorderDirectional extends FlutterBoxBorder {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static new(data: {
        top?: BorderSide,
        start?: BorderSide,
        bottom?: BorderSide,
        end?: BorderSide,
    }) {
        return new BorderDirectional({ converter: 'f:1:BorderDirectional', ...data })
    }
}

export class Border extends FlutterBoxBorder {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static new(data: {
        top?: BorderSide,
        right?: BorderSide,
        bottom?: BorderSide,
        left?: BorderSide,
    }) {
        return new Border({ converter: 'f:1:Border', ...data })
    }

    static all(data: {
        color?: Color,
        width?: ZacValue<DartDouble>,
        style?: BorderStyle,
    }) {
        return new Border({ converter: 'f:1:Border.all', ...data })
    }
}

export class BorderStyle extends FlutterBoxBorder {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static none() {
        return new BorderStyle({ converter: 'f:1:BorderStyle.none' })
    }

    static solid() {
        return new BorderStyle({ converter: 'f:1:BorderStyle.solid' })
    }
}

export abstract class FlutterBorderRadiusGeometry extends ZacConverter { }

export class BorderRadius extends FlutterBorderRadiusGeometry {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static all(data: {
        radius: Radius,
    }) {
        return new BorderRadius({ converter: 'f:1:BorderRadius.all', ...data })
    }

    static circular(data: {
        radius: ZacValue<DartDouble>
    }) {
        return new BorderRadius({ converter: 'f:1:BorderRadius.circular', ...data })
    }

    static horizontal(data: {
        left?: Radius,
        right?: Radius,
    }) {
        return new BorderRadius({ converter: 'f:1:BorderRadius.horizontal', ...data })
    }
}

export class BorderSide extends ZacConverter {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static new(data: {
        color?: Color,
        width?: ZacValue<DartDouble>,
        style?: BorderStyle,
    }) {
        return new BorderSide({ converter: 'f:1:BorderSide', ...data })
    }
}

export abstract class FlutterOutlinedBorder extends FlutterShapeBorder { }

export class CircleBorder extends FlutterOutlinedBorder {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static new(data: {
        side?: BorderSide,
    }) {
        return new CircleBorder({ converter: 'f:1:CircleBorder', ...data })
    }
}

export class RoundedRectangleBorder extends FlutterOutlinedBorder {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static new(data: {
        side?: BorderSide,
        borderRadius?: FlutterBorderRadiusGeometry,
    }) {
        return new RoundedRectangleBorder({ converter: 'f:1:RoundedRectangleBorder', ...data })
    }
}

export abstract class FlutterDecoration extends ZacConverter { }

export class BoxDecoration extends FlutterDecoration {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static new(data: {
        color?: Color,
        border?: FlutterBoxBorder,
        borderRadius?: FlutterBorderRadiusGeometry,
        boxShadow?: Array<BoxShadow>,
        shape?: BoxShape,
        backgroundBlendMode?: BlendMode,
    }) {
        return new BoxDecoration({ converter: 'f:1:BoxDecoration', ...data })
    }
}

export class ShapeDecoration extends FlutterDecoration {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static new(data: {
        color?: Color,
        shadows?: Array<BoxShadow>,
        shape: FlutterShapeBorder,
    }) {
        return new ShapeDecoration({ converter: 'f:1:ShapeDecoration', ...data })
    }
}

export abstract class FlutterEdgeInsetsGeometry extends ZacConverter { }

export class EdgeInsets extends FlutterEdgeInsetsGeometry {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static all(data: {
        value: ZacValue<DartDouble>
    }) {
        return new EdgeInsets({ converter: 'f:1:EdgeInsets.all', ...data })
    }

    static symmetric(data: {
        vertical?: ZacValue<DartDouble>,
        horizontal?: ZacValue<DartDouble>,
    }) {
        return new EdgeInsets({ converter: 'f:1:EdgeInsets.symmetric', ...data })
    }

    static only(data: {
        left?: ZacValue<DartDouble>
        top?: ZacValue<DartDouble>,
        right?: ZacValue<DartDouble>,
        bottom?: ZacValue<DartDouble>,
    }) {
        return new EdgeInsets({ converter: 'f:1:EdgeInsets.only', ...data })
    }
}

export class EdgeInsetsDirectional extends FlutterEdgeInsetsGeometry {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static all(data: {
        value: ZacValue<DartDouble>
    }) {
        return new EdgeInsetsDirectional({ converter: 'f:1:EdgeInsetsDirectional.all', ...data })
    }
    static only(data: {
        start?: ZacValue<DartDouble>
        top?: ZacValue<DartDouble>,
        end?: ZacValue<DartDouble>,
        bottom?: ZacValue<DartDouble>,
    }) {
        return new EdgeInsetsDirectional({ converter: 'f:1:EdgeInsetsDirectional.only', ...data })
    }
}