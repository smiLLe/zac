import { DartDouble, DartInt, FlutterWidget, ZacConverter } from "../../base";
import { ZacActions } from "../../zac/action";
import { ZacValue } from "../../zac/zac_value";
import { BlendMode, Clip, Color, FilterQuality, Locale, Offset, Rect, TextAlign, TextDirection, TextHeightBehavior } from "../dart_ui";
import { Key } from "../foundation";
import { BoxFit, EdgeInsets, FlutterAlignmentGeometry, FlutterDecoration, ImageRepeat, StrutStyle, TextOverflow, TextStyle, TextWidthBasis } from "../painting";
import { DecorationPosition, HitTestBehavior } from "../rendering";
export declare class Builder extends FlutterWidget {
    private constructor();
    static new(data: {
        key?: Key;
        child: FlutterWidget;
    }): Builder;
}
export declare class ClipOval extends FlutterWidget {
    private constructor();
    static new(data: {
        key?: Key;
        clipBehavior?: Clip;
        child?: FlutterWidget;
    }): ClipOval;
}
export declare class ClipRect extends FlutterWidget {
    private constructor();
    static new(data: {
        key?: Key;
        clipBehavior?: Clip;
        child?: FlutterWidget;
    }): ClipRect;
}
export declare class DecoratedBox extends FlutterWidget {
    private constructor();
    static new(data: {
        key?: Key;
        decoration: FlutterDecoration;
        position?: DecorationPosition;
        child?: FlutterWidget;
    }): DecoratedBox;
}
export declare class FractionalTranslation extends FlutterWidget {
    private constructor();
    static new(data: {
        key?: Key;
        translation: Offset;
        transformHitTests?: ZacValue<boolean>;
        child?: FlutterWidget;
    }): FractionalTranslation;
}
export declare class GestureDetector extends FlutterWidget {
    private constructor();
    static new(data: {
        key?: Key;
        onTap?: ZacActions;
        onSecondaryTap?: ZacActions;
        onDoubleTap?: ZacActions;
        onLongPress?: ZacActions;
        onSecondaryLongPress?: ZacActions;
        onTertiaryLongPress?: ZacActions;
        behavior?: HitTestBehavior;
        excludeFromSemantics?: ZacValue<boolean>;
        child?: FlutterWidget;
    }): GestureDetector;
}
export declare class Icon extends FlutterWidget {
    private constructor();
    static new(data: {
        key?: Key;
        icon?: IconData;
        size?: ZacValue<DartDouble>;
        color?: Color;
        semanticLabel?: ZacValue<string>;
        textDirection?: TextDirection;
    }): Icon;
}
export declare class IconData extends FlutterWidget {
    private constructor();
    static new(data: {
        codePoint: ZacValue<DartInt>;
        fontFamily?: ZacValue<string>;
        fontPackage?: ZacValue<string>;
        matchTextDirection?: ZacValue<boolean>;
    }): IconData;
}
export declare class IconThemeData extends FlutterWidget {
    static new(data: {
        color?: Color;
        opacity?: ZacValue<DartDouble>;
        size?: ZacValue<DartDouble>;
    }): IconThemeData;
}
export declare class IgnorePointer extends FlutterWidget {
    private constructor();
    static new(data: {
        key?: Key;
        ignoring?: ZacValue<boolean>;
        ignoringSemantics?: ZacValue<boolean>;
        child?: FlutterWidget;
    }): IgnorePointer;
}
export declare class FlutterImage extends FlutterWidget {
    private constructor();
    static network(data: {
        key?: Key;
        src: ZacValue<string>;
        scale?: ZacValue<DartDouble>;
        semanticLabel?: ZacValue<string>;
        excludeFromSemantics?: ZacValue<boolean>;
        width?: ZacValue<DartDouble>;
        height?: ZacValue<DartDouble>;
        color?: Color;
        colorBlendMode?: BlendMode;
        fit?: BoxFit;
        alignment?: FlutterAlignmentGeometry;
        repeat?: ImageRepeat;
        centerSlice?: Rect;
        matchTextDirection?: ZacValue<boolean>;
        gaplessPlayback?: ZacValue<boolean>;
        filterQuality?: FilterQuality;
        isAntiAlias?: ZacValue<boolean>;
        headers?: {
            [key: string]: string;
        };
        cacheWidth?: ZacValue<DartInt>;
        cacheHeight?: ZacValue<DartInt>;
    }): FlutterImage;
    static asset(data: {
        key?: Key;
        name: ZacValue<string>;
        scale?: ZacValue<DartDouble>;
        semanticLabel?: ZacValue<string>;
        excludeFromSemantics?: ZacValue<boolean>;
        width?: ZacValue<DartDouble>;
        height?: ZacValue<DartDouble>;
        color?: Color;
        colorBlendMode?: BlendMode;
        fit?: BoxFit;
        alignment?: FlutterAlignmentGeometry;
        repeat?: ImageRepeat;
        centerSlice?: Rect;
        matchTextDirection?: ZacValue<boolean>;
        gaplessPlayback?: ZacValue<boolean>;
        isAntiAlias?: ZacValue<boolean>;
        package?: ZacValue<string>;
        cacheWidth?: ZacValue<DartInt>;
        cacheHeight?: ZacValue<DartInt>;
    }): FlutterImage;
}
export declare class InteractiveViewer extends FlutterWidget {
    private constructor();
    static new(data: {
        key?: Key;
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
        child: FlutterWidget;
    }): InteractiveViewer;
}
export declare class Opacity extends FlutterWidget {
    private constructor();
    static new(data: {
        key?: Key;
        opacity: ZacValue<DartDouble>;
        alwaysIncludeSemantics?: ZacValue<boolean>;
        child?: FlutterWidget;
    }): Opacity;
}
export declare class RotatedBox extends FlutterWidget {
    private constructor();
    static new(data: {
        key?: Key;
        quarterTurns: DartInt;
        child?: FlutterWidget;
    }): RotatedBox;
}
export declare abstract class ScrollPhysics extends ZacConverter {
}
export declare class AlwaysScrollableScrollPhysics extends ScrollPhysics {
    private constructor();
    static new(data: {
        parent?: ScrollPhysics;
    }): AlwaysScrollableScrollPhysics;
}
export declare class BouncingScrollPhysics extends ScrollPhysics {
    private constructor();
    static new(data: {
        parent?: ScrollPhysics;
    }): BouncingScrollPhysics;
}
export declare class ClampingScrollPhysics extends ScrollPhysics {
    private constructor();
    static new(data: {
        parent?: ScrollPhysics;
    }): ClampingScrollPhysics;
}
export declare class FlutterText extends FlutterWidget {
    private constructor();
    static new(data: {
        key?: Key;
        data: ZacValue<string>;
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
    }): FlutterText;
}
