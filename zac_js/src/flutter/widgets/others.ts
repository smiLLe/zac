class Builder extends FlutterWidget {
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
class ClipOval extends FlutterWidget {
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
class ClipRect extends FlutterWidget {
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
class DecoratedBox extends FlutterWidget {
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
class FractionalTranslation extends FlutterWidget {
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
class GestureDetector extends FlutterWidget {
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
class Icon extends FlutterWidget {
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
class IconData extends FlutterWidget {
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
class IgnorePointer extends FlutterWidget {
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
class FlutterImage extends FlutterWidget {
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
        // Animation<double>? opacity,
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
        // Animation<double>? opacity,
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
class InteractiveViewer extends FlutterWidget {
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
class Opacity extends FlutterWidget {
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
class RotatedBox extends FlutterWidget {
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
abstract class ScrollPhysics extends ZacConverter { }

class AlwaysScrollableScrollPhysics extends ScrollPhysics {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static new(data: {
        parent?: ScrollPhysics,
    }) {
        return new AlwaysScrollableScrollPhysics({ converter: 'f:1:AlwaysScrollableScrollPhysics', ...data })
    }
}
class BouncingScrollPhysics extends ScrollPhysics {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static new(data: {
        parent?: ScrollPhysics,
    }) {
        return new BouncingScrollPhysics({ converter: 'f:1:BouncingScrollPhysics', ...data })
    }
}
class ClampingScrollPhysics extends ScrollPhysics {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static new(data: {
        parent?: ScrollPhysics,
    }) {
        return new ClampingScrollPhysics({ converter: 'f:1:ClampingScrollPhysics', ...data })
    }
}
class FlutterText extends FlutterWidget {
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