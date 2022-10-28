import { DartDouble, DartInt, FlutterWidget, ZacConverter, ZacConverterType, ZacValue } from "../../base";
import { ZacActions } from "../../zac/action";
import { BlendMode, Clip, Color, FilterQuality, Locale, Offset, Rect, TextAlign, TextDirection, TextHeightBehavior } from "../dart_ui";
import { Key } from "../foundation";
import { BoxFit, EdgeInsets, FlutterAlignmentGeometry, FlutterDecoration, ImageRepeat, StrutStyle, TextOverflow, TextStyle, TextWidthBasis } from "../painting";
import { DecorationPosition, HitTestBehavior } from "../rendering";

export class Builder extends FlutterWidget {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static new(data: {
        key?: Key,
        child: FlutterWidget,
    }) {
        return new Builder({ converter: 'f:1:Builder', ...data })
    }
}
export class ClipOval extends FlutterWidget {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static new(data: {
        key?: Key,
        clipBehavior?: Clip,
        child?: FlutterWidget,
    }) {
        return new ClipOval({ converter: 'f:1:ClipOval', ...data })
    }
}
export class ClipRect extends FlutterWidget {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static new(data: {
        key?: Key,
        clipBehavior?: Clip,
        child?: FlutterWidget,
    }) {
        return new ClipRect({ converter: 'f:1:ClipRect', ...data })
    }
}
export class DecoratedBox extends FlutterWidget {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static new(data: {
        key?: Key,
        decoration: FlutterDecoration,
        position?: DecorationPosition
        child?: FlutterWidget,
    }) {
        return new DecoratedBox({ converter: 'f:1:DecoratedBox', ...data })
    }
}
export class FractionalTranslation extends FlutterWidget {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static new(data: {
        key?: Key,
        translation: Offset,
        transformHitTests?: ZacValue<boolean>
        child?: FlutterWidget,
    }) {
        return new FractionalTranslation({ converter: 'f:1:FractionalTranslation', ...data })
    }
}
export class GestureDetector extends FlutterWidget {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static new(data: {
        key?: Key,
        onTap?: ZacActions,
        onSecondaryTap?: ZacActions,
        onDoubleTap?: ZacActions,
        onLongPress?: ZacActions,
        onSecondaryLongPress?: ZacActions,
        onTertiaryLongPress?: ZacActions,
        behavior?: HitTestBehavior,
        excludeFromSemantics?: ZacValue<boolean>,
        child?: FlutterWidget,
    }) {
        return new GestureDetector({ converter: 'f:1:GestureDetector', ...data })
    }
}
export class Icon extends FlutterWidget {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static new(data: {
        key?: Key,
        icon?: IconData,
        size?: ZacValue<DartDouble>,
        color?: Color,
        semanticLabel?: ZacValue<string>,
        textDirection?: TextDirection,
    }) {
        return new Icon({ converter: 'f:1:Icon', ...data })
    }
}
export class IconData extends FlutterWidget {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static new(data: {
        codePoint: ZacValue<DartInt>,
        fontFamily?: ZacValue<string>,
        fontPackage?: ZacValue<string>,
        matchTextDirection?: ZacValue<boolean>
    }) {
        return new IconData({ converter: 'f:1:IconData', ...data })
    }
}
export class IconThemeData extends FlutterWidget {
    static new(data: {
        color?: Color,
        opacity?: ZacValue<DartDouble>,
        size?: ZacValue<DartDouble>,
    }) {
        return new IconThemeData({ converter: 'f:1:IconThemeData', ...data })
    }
}
export class IgnorePointer extends FlutterWidget {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static new(data: {
        key?: Key,
        ignoring?: ZacValue<boolean>,
        ignoringSemantics?: ZacValue<boolean>
        child?: FlutterWidget,
    }) {
        return new IgnorePointer({ converter: 'f:1:IgnorePointer', ...data })
    }
}
export class FlutterImage extends FlutterWidget {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static network(data: {
        key?: Key,
        src: ZacValue<string>,
        scale?: ZacValue<DartDouble>,
        semanticLabel?: ZacValue<string>,
        excludeFromSemantics?: ZacValue<boolean>,
        width?: ZacValue<DartDouble>,
        height?: ZacValue<DartDouble>,
        color?: Color,
        colorBlendMode?: BlendMode,
        fit?: BoxFit,
        alignment?: FlutterAlignmentGeometry,
        repeat?: ImageRepeat,
        centerSlice?: Rect,
        matchTextDirection?: ZacValue<boolean>,
        gaplessPlayback?: ZacValue<boolean>,
        filterQuality?: FilterQuality,
        isAntiAlias?: ZacValue<boolean>,
        headers?: { [key: string]: string },
        cacheWidth?: ZacValue<DartInt>,
        cacheHeight?: ZacValue<DartInt>,
    }) {
        return new FlutterImage({ converter: 'f:1:Image.network', ...data })
    }

    static asset(data: {
        key?: Key,
        name: ZacValue<string>,
        scale?: ZacValue<DartDouble>,
        semanticLabel?: ZacValue<string>,
        excludeFromSemantics?: ZacValue<boolean>,
        width?: ZacValue<DartDouble>,
        height?: ZacValue<DartDouble>,
        color?: Color,
        colorBlendMode?: BlendMode,
        fit?: BoxFit,
        alignment?: FlutterAlignmentGeometry,
        repeat?: ImageRepeat,
        centerSlice?: Rect,
        matchTextDirection?: ZacValue<boolean>,
        gaplessPlayback?: ZacValue<boolean>,
        isAntiAlias?: ZacValue<boolean>,
        package?: ZacValue<string>,
        cacheWidth?: ZacValue<DartInt>,
        cacheHeight?: ZacValue<DartInt>,
    }) {
        return new FlutterImage({ converter: 'f:1:Image.asset', ...data })
    }
}
export class InteractiveViewer extends FlutterWidget {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static new(data: {
        key?: Key,
        clipBehavior?: Clip,
        alignPanAxis?: ZacValue<boolean>,
        boundaryMargin?: EdgeInsets,
        constrained?: ZacValue<boolean>,
        maxScale?: ZacValue<DartDouble>,
        minScale?: ZacValue<DartDouble>,
        onInteractionEnd?: ZacActions,
        onInteractionStart?: ZacActions,
        onInteractionUpdate?: ZacActions,
        panEnabled?: ZacValue<boolean>,
        scaleEnabled?: ZacValue<boolean>,
        child: FlutterWidget,
    }) {
        return new InteractiveViewer({ converter: 'f:1:InteractiveViewer', ...data })
    }
}
export class Opacity extends FlutterWidget {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static new(data: {
        key?: Key,
        opacity: ZacValue<DartDouble>,
        alwaysIncludeSemantics?: ZacValue<boolean>,
        child?: FlutterWidget,
    }) {
        return new Opacity({ converter: 'f:1:Opacity', ...data })
    }
}
export class RotatedBox extends FlutterWidget {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static new(data: {
        key?: Key,
        quarterTurns: DartInt,
        child?: FlutterWidget,
    }) {
        return new RotatedBox({ converter: 'f:1:RotatedBox', ...data })
    }
}
export abstract class ScrollPhysics extends ZacConverter { }

export class AlwaysScrollableScrollPhysics extends ScrollPhysics {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static new(data: {
        parent?: ScrollPhysics,
    }) {
        return new AlwaysScrollableScrollPhysics({ converter: 'f:1:AlwaysScrollableScrollPhysics', ...data })
    }
}
export class BouncingScrollPhysics extends ScrollPhysics {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static new(data: {
        parent?: ScrollPhysics,
    }) {
        return new BouncingScrollPhysics({ converter: 'f:1:BouncingScrollPhysics', ...data })
    }
}
export class ClampingScrollPhysics extends ScrollPhysics {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static new(data: {
        parent?: ScrollPhysics,
    }) {
        return new ClampingScrollPhysics({ converter: 'f:1:ClampingScrollPhysics', ...data })
    }
}
export class FlutterText extends FlutterWidget {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static new(data: {
        key?: Key,
        data: ZacValue<string>,
        style?: TextStyle,
        strutStyle?: StrutStyle,
        textAlign?: TextAlign,
        textDirection?: TextDirection,
        locale?: Locale,
        softWrap?: ZacValue<boolean>,
        overflow?: TextOverflow,
        textScaleFactor?: ZacValue<DartDouble>,
        maxLines?: ZacValue<DartInt>,
        semanticsLabel?: ZacValue<string>,
        textWidthBasis?: TextWidthBasis,
        textHeightBehavior?: TextHeightBehavior,
    }) {
        return new FlutterText({ converter: 'f:1:Text', ...data })
    }
}