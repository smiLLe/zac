import { DartDouble, DartInt, ZacTypes, ZacConverter } from "./base";
import { ZacValue, ZacValueList, ZacValueConsumeOnly } from "./zac/zac_value";
export declare abstract class AlignmentGeometry extends ZacConverter {
}
export declare abstract class BorderRadiusGeometry extends ZacConverter {
}
export declare abstract class BoxBorder extends ZacConverter implements ShapeBorder {
}
export declare abstract class DartCompleterVoid extends ZacConverter {
}
export declare abstract class DartShadow extends ZacConverter {
}
export declare abstract class Decoration extends ZacConverter {
}
export declare abstract class EdgeInsetsGeometry extends ZacConverter {
}
export declare abstract class InputBorder extends ZacConverter implements ShapeBorder {
}
export declare abstract class Key extends ZacConverter {
}
export declare abstract class LocalKey extends ZacConverter implements Key {
}
export declare abstract class OutlinedBorder extends ZacConverter implements ShapeBorder {
}
export declare abstract class Route extends ZacConverter {
}
export declare abstract class RouteFactory extends ZacConverter {
}
export declare abstract class ScrollController extends ZacConverter {
}
export declare abstract class ShapeBorder extends ZacConverter {
}
export declare abstract class Widget extends ZacConverter {
}
export declare abstract class ZacAction extends ZacConverter {
}
export declare abstract class ZacTransformer extends ZacConverter {
}
export declare class Align extends ZacConverter implements Widget {
    static new(data: {
        key?: Key;
        alignment?: AlignmentGeometry;
        widthFactor?: ZacValue<DartDouble> | DartDouble;
        heightFactor?: ZacValue<DartDouble> | DartDouble;
        child?: Widget;
    }): Align;
}
export declare class Alignment extends ZacConverter implements AlignmentGeometry {
    static new(data: {
        x: ZacValue<DartDouble> | DartDouble;
        y: ZacValue<DartDouble> | DartDouble;
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
export declare class AlignmentDirectional extends ZacConverter implements AlignmentGeometry {
    static new(data: {
        start: ZacValue<DartDouble> | DartDouble;
        y: ZacValue<DartDouble> | DartDouble;
    }): AlignmentDirectional;
    static bottomCenter(): AlignmentDirectional;
    static bottomStart(): AlignmentDirectional;
    static bottomEnd(): AlignmentDirectional;
    static center(): AlignmentDirectional;
    static centerStart(): AlignmentDirectional;
    static centerEnd(): AlignmentDirectional;
    static topCenter(): AlignmentDirectional;
    static topStart(): AlignmentDirectional;
    static topEnd(): AlignmentDirectional;
}
export declare class AppBar extends ZacConverter implements Widget {
    static new(data: {
        key?: Key;
        leading?: Widget;
        automaticallyImplyLeading?: ZacValue<boolean> | boolean;
        title?: Widget;
        actions?: ZacValueList<Widget> | Array<Widget>;
        flexibleSpace?: Widget;
        bottom?: Widget;
        elevation?: ZacValue<DartDouble> | DartDouble;
        shadowColor?: Color;
        shape?: ShapeBorder;
        backgroundColor?: Color;
        foregroundColor?: Color;
        iconTheme?: IconThemeData;
        actionsIconTheme?: IconThemeData;
        primary?: ZacValue<boolean> | boolean;
        centerTitle?: ZacValue<boolean> | boolean;
        excludeHeaderSemantics?: ZacValue<boolean> | boolean;
        titleSpacing?: ZacValue<DartDouble> | DartDouble;
        toolbarOpacity?: ZacValue<DartDouble> | DartDouble;
        bottomOpacity?: ZacValue<DartDouble> | DartDouble;
        toolbarHeight?: ZacValue<DartDouble> | DartDouble;
        leadingWidth?: ZacValue<DartDouble> | DartDouble;
        toolbarTextStyle?: TextStyle;
        titleTextStyle?: TextStyle;
        systemOverlayStyle?: SystemUiOverlayStyle;
    }): AppBar;
}
export declare class AspectRatio extends ZacConverter implements Widget {
    static new(data: {
        key?: Key;
        aspectRatio: ZacValue<DartDouble> | DartDouble;
        child?: Widget;
    }): AspectRatio;
}
export declare class Axis extends ZacConverter {
    static horizontal(): Axis;
    static vertical(): Axis;
}
export declare class BlendMode extends ZacConverter {
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
    static dstOver(): BlendMode;
    static exclusion(): BlendMode;
    static hardLight(): BlendMode;
    static hue(): BlendMode;
    static lighten(): BlendMode;
    static luminosity(): BlendMode;
    static modulate(): BlendMode;
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
export declare class BlurStyle extends ZacConverter {
    static inner(): BlurStyle;
    static normal(): BlurStyle;
    static outer(): BlurStyle;
    static solid(): BlurStyle;
}
export declare class BoolTransformer extends ZacConverter implements ZacTransformer {
    static negate(): BoolTransformer;
}
export declare class Border extends ZacConverter implements BoxBorder {
    static new(data: {
        top?: BorderSide;
        right?: BorderSide;
        bottom?: BorderSide;
        left?: BorderSide;
    }): Border;
    static all(data: {
        color?: Color;
        width?: ZacValue<DartDouble> | DartDouble;
        style?: BorderStyle;
    }): Border;
}
export declare class BorderDirectional extends ZacConverter implements BoxBorder {
    static new(data: {
        top?: BorderSide;
        start?: BorderSide;
        bottom?: BorderSide;
        end?: BorderSide;
    }): BorderDirectional;
}
export declare class BorderRadius extends ZacConverter implements BorderRadiusGeometry {
    static all(data: {
        radius: Radius;
    }): BorderRadius;
    static circular(data: {
        radius: ZacValue<DartDouble> | DartDouble;
    }): BorderRadius;
    static horizontal(data: {
        left?: Radius;
        right?: Radius;
    }): BorderRadius;
}
export declare class BorderSide extends ZacConverter {
    static new(data: {
        color?: Color;
        width?: ZacValue<DartDouble> | DartDouble;
        style?: BorderStyle;
    }): BorderSide;
}
export declare class BorderStyle extends ZacConverter {
    static none(): BorderStyle;
    static solid(): BorderStyle;
}
export declare class BoxConstraints extends ZacConverter {
    static new(data: {
        minWidth?: ZacValue<DartDouble> | DartDouble;
        maxWidth?: ZacValue<DartDouble> | DartDouble;
        minHeight?: ZacValue<DartDouble> | DartDouble;
        maxHeight?: ZacValue<DartDouble> | DartDouble;
    }): BoxConstraints;
    static expand(data: {
        width?: ZacValue<DartDouble> | DartDouble;
        height?: ZacValue<DartDouble> | DartDouble;
    }): BoxConstraints;
    static loose(data: {
        size: Size;
    }): BoxConstraints;
    static tight(data: {
        size: Size;
    }): BoxConstraints;
    static tightFor(data: {
        width?: ZacValue<DartDouble> | DartDouble;
        height?: ZacValue<DartDouble> | DartDouble;
    }): BoxConstraints;
    static tightForFinite(data: {
        width?: ZacValue<DartDouble> | DartDouble;
        height?: ZacValue<DartDouble> | DartDouble;
    }): BoxConstraints;
}
export declare class BoxDecoration extends ZacConverter implements Decoration {
    static new(data: {
        color?: Color;
        border?: BoxBorder;
        borderRadius?: BorderRadiusGeometry;
        boxShadow?: Array<BoxShadow>;
        shape?: BoxShape;
        backgroundBlendMode?: BlendMode;
    }): BoxDecoration;
}
export declare class BoxFit extends ZacConverter {
    static contain(): BoxFit;
    static cover(): BoxFit;
    static fill(): BoxFit;
    static fitHeight(): BoxFit;
    static fitWidth(): BoxFit;
    static none(): BoxFit;
    static scaleDown(): BoxFit;
}
export declare class BoxHeightStyle extends ZacConverter {
    static includeLineSpacingBottom(): BoxHeightStyle;
    static includeLineSpacingMiddle(): BoxHeightStyle;
    static includeLineSpacingTop(): BoxHeightStyle;
    static max(): BoxHeightStyle;
    static strut(): BoxHeightStyle;
    static tight(): BoxHeightStyle;
}
export declare class BoxShadow extends ZacConverter implements DartShadow {
    static new(data: {
        color?: Color;
        offset?: Offset;
        blurRadius?: ZacValue<DartDouble> | DartDouble;
        spreadRadius?: ZacValue<DartDouble> | DartDouble;
        blurStyle?: BlurStyle;
    }): BoxShadow;
}
export declare class BoxShape extends ZacConverter {
    static circle(): BoxShape;
    static rectangle(): BoxShape;
}
export declare class BoxWidthStyle extends ZacConverter {
    static max(): BoxWidthStyle;
    static tight(): BoxWidthStyle;
}
export declare class Brightness extends ZacConverter {
    static dark(): Brightness;
    static light(): Brightness;
}
export declare class Builder extends ZacConverter implements Widget {
    static new(data: {
        key?: Key;
        child: Widget;
    }): Builder;
}
export declare class ButtonBar extends ZacConverter implements Widget {
    static new(data: {
        key?: Key;
        alignment?: MainAxisAlignment;
        mainAxisSize?: MainAxisSize;
        buttonMinWidth?: ZacValue<DartDouble> | DartDouble;
        buttonHeight?: ZacValue<DartDouble> | DartDouble;
        buttonPadding?: EdgeInsetsGeometry;
        buttonAlignedDropdown?: ZacValue<boolean> | boolean;
        overflowDirection?: VerticalDirection;
        overflowButtonSpacing?: ZacValue<DartDouble> | DartDouble;
        children?: ZacValueList<Widget> | Array<Widget>;
    }): ButtonBar;
}
export declare class Card extends ZacConverter implements Widget {
    static new(data: {
        key?: Key;
        color?: Color;
        shadowColor?: Color;
        elevation?: ZacValue<DartDouble> | DartDouble;
        shape?: ShapeBorder;
        borderOnForeground?: ZacValue<boolean> | boolean;
        margin?: EdgeInsetsGeometry;
        clipBehavior?: Clip;
        child?: Widget;
        semanticContainer?: ZacValue<boolean> | boolean;
    }): Card;
}
export declare class Center extends ZacConverter implements Widget {
    static new(data: {
        key?: Key;
        widthFactor?: ZacValue<DartDouble> | DartDouble;
        heightFactor?: ZacValue<DartDouble> | DartDouble;
        child?: Widget;
    }): Center;
}
export declare class CircleBorder extends ZacConverter implements OutlinedBorder {
    static new(data: {
        side?: BorderSide;
    }): CircleBorder;
}
export declare class Clip extends ZacConverter {
    static none(): Clip;
    static antiAlias(): Clip;
    static hardEdge(): Clip;
}
export declare class ClipOval extends ZacConverter implements Widget {
    static new(data: {
        key?: Key;
        child?: Widget;
        clipBehavior?: Clip;
    }): ClipOval;
}
export declare class ClipRect extends ZacConverter implements Widget {
    static new(data: {
        key?: Key;
        child?: Widget;
        clipBehavior?: Clip;
    }): ClipRect;
}
export declare class Color extends ZacConverter {
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
        opacity: ZacValue<DartDouble> | DartDouble;
    }): Color;
}
export declare class Column extends ZacConverter implements Widget {
    static new(data: {
        key?: Key;
        mainAxisAlignment?: MainAxisAlignment;
        mainAxisSize?: MainAxisSize;
        crossAxisAlignment?: CrossAxisAlignment;
        textDirection?: TextDirection;
        verticalDirection?: VerticalDirection;
        textBaseline?: TextBaseline;
        children?: ZacValueList<Widget> | Array<Widget>;
    }): Column;
}
export declare class ConstrainedBox extends ZacConverter implements Widget {
    static new(data: {
        key?: Key;
        constraints: BoxConstraints;
        child?: Widget;
    }): ConstrainedBox;
}
export declare class Container extends ZacConverter implements Widget {
    static new(data: {
        key?: Key;
        child?: Widget;
        color?: Color;
        margin?: EdgeInsetsGeometry;
        padding?: EdgeInsetsGeometry;
        alignment?: AlignmentGeometry;
        decoration?: Decoration;
    }): Container;
}
export declare class ConvertTransformer extends ZacConverter implements ZacTransformer {
    static new(): ConvertTransformer;
}
export declare class CrossAxisAlignment extends ZacConverter {
    static baseline(): CrossAxisAlignment;
    static center(): CrossAxisAlignment;
    static end(): CrossAxisAlignment;
    static start(): CrossAxisAlignment;
    static stretch(): CrossAxisAlignment;
}
export declare class CustomScrollView extends ZacConverter implements Widget {
    static new(data: {
        key?: Key;
        scrollDirection?: Axis;
        reverse?: ZacValue<boolean> | boolean;
        controller?: ZacValue<ScrollController> | ScrollController;
        primary?: ZacValue<boolean> | boolean;
        physics?: ScrollPhysics;
        shrinkWrap?: ZacValue<boolean> | boolean;
        center?: Key;
        anchor?: ZacValue<DartDouble> | DartDouble;
        cacheExtent?: ZacValue<DartDouble> | DartDouble;
        slivers?: ZacValueList<Widget> | Array<Widget>;
        semanticChildCount?: ZacValue<DartInt> | DartInt;
        keyboardDismissBehavior?: ScrollViewKeyboardDismissBehavior;
        restorationId?: ZacValue<string> | string;
        clipBehavior?: Clip;
    }): CustomScrollView;
}
export declare class DartCompleterVoidBuilder extends ZacConverter implements DartCompleterVoid {
    static new(): DartCompleterVoidBuilder;
}
export declare class DecoratedBox extends ZacConverter implements Widget {
    static new(data: {
        key?: Key;
        child?: Widget;
        decoration: Decoration;
        position?: DecorationPosition;
    }): DecoratedBox;
}
export declare class DecorationPosition extends ZacConverter {
    static background(): DecorationPosition;
    static foreground(): DecorationPosition;
}
export declare class DialogActions extends ZacConverter implements ZacAction {
    static showDialog(data: {
        child: Widget;
        barrierDismissible?: ZacValue<boolean> | boolean;
        barrierColor?: Color;
        barrierLabel?: ZacValue<string> | string;
        useSafeArea?: ZacValue<boolean> | boolean;
        useRootNavigator?: ZacValue<boolean> | boolean;
        routeSettings?: RouteSettings;
    }): DialogActions;
}
export declare class Dialogs extends ZacConverter implements Widget {
    static dialog(data: {
        key?: Key;
        backgroundColor?: Color;
        elevation?: ZacValue<DartDouble> | DartDouble;
        insetPadding?: EdgeInsets;
        clipBehavior?: Clip;
        shape?: ShapeBorder;
        alignment?: AlignmentGeometry;
        child?: Widget;
    }): Dialogs;
    static alertDialog(data: {
        key?: Key;
        title?: Widget;
        content?: Widget;
        actions?: ZacValueList<Widget> | Array<Widget>;
        titlePadding?: EdgeInsetsGeometry;
        titleTextStyle?: TextStyle;
        contentPadding?: EdgeInsetsGeometry;
        contentTextStyle?: TextStyle;
        actionsPadding?: EdgeInsetsGeometry;
        actionsAlignment?: MainAxisAlignment;
        actionsOverflowDirection?: VerticalDirection;
        actionsOverflowButtonSpacing?: ZacValue<DartDouble> | DartDouble;
        buttonPadding?: EdgeInsetsGeometry;
        backgroundColor?: Color;
        elevation?: ZacValue<DartDouble> | DartDouble;
        semanticLabel?: ZacValue<string> | string;
        insetPadding?: EdgeInsets;
        clipBehavior?: Clip;
        shape?: ShapeBorder;
        alignment?: AlignmentGeometry;
        scrollable?: ZacValue<boolean> | boolean;
    }): Dialogs;
    static simpleDialog(data: {
        key?: Key;
        title?: Widget;
        children?: ZacValueList<Widget> | Array<Widget>;
        titlePadding?: EdgeInsetsGeometry;
        titleTextStyle?: TextStyle;
        contentPadding?: EdgeInsetsGeometry;
        backgroundColor?: Color;
        elevation?: ZacValue<DartDouble> | DartDouble;
        semanticLabel?: ZacValue<string> | string;
        insetPadding?: EdgeInsets;
        clipBehavior?: Clip;
        shape?: ShapeBorder;
        alignment?: AlignmentGeometry;
    }): Dialogs;
    static simpleDialogOption(data: {
        key?: Key;
        child?: Widget;
        onPressed?: ZacActions;
        padding?: EdgeInsets;
    }): Dialogs;
}
export declare class Divider extends ZacConverter implements Widget {
    static new(data: {
        key?: Key;
        height?: ZacValue<DartDouble> | DartDouble;
        thickness?: ZacValue<DartDouble> | DartDouble;
        indent?: ZacValue<DartDouble> | DartDouble;
        endIndent?: ZacValue<DartDouble> | DartDouble;
        color?: Color;
    }): Divider;
}
export declare class Drawer extends ZacConverter implements Widget {
    static new(data: {
        key?: Key;
        backgroundColor?: Color;
        elevation?: ZacValue<DartDouble> | DartDouble;
        shape?: ShapeBorder;
        child?: Widget;
        semanticLabel?: ZacValue<string> | string;
    }): Drawer;
}
export declare class EdgeInsets extends ZacConverter implements EdgeInsetsGeometry {
    static all(data: {
        value: ZacValue<DartDouble> | DartDouble;
    }): EdgeInsets;
    static symmetric(data: {
        vertical?: ZacValue<DartDouble> | DartDouble;
        horizontal?: ZacValue<DartDouble> | DartDouble;
    }): EdgeInsets;
    static only(data: {
        left?: ZacValue<DartDouble> | DartDouble;
        top?: ZacValue<DartDouble> | DartDouble;
        right?: ZacValue<DartDouble> | DartDouble;
        bottom?: ZacValue<DartDouble> | DartDouble;
    }): EdgeInsets;
}
export declare class EdgeInsetsDirectional extends ZacConverter implements EdgeInsetsGeometry {
    static all(data: {
        value: ZacValue<DartDouble> | DartDouble;
    }): EdgeInsetsDirectional;
    static only(data: {
        start?: ZacValue<DartDouble> | DartDouble;
        top?: ZacValue<DartDouble> | DartDouble;
        end?: ZacValue<DartDouble> | DartDouble;
        bottom?: ZacValue<DartDouble> | DartDouble;
    }): EdgeInsetsDirectional;
}
export declare class ElevatedButton extends ZacConverter implements Widget {
    static new(data: {
        key?: Key;
        child: Widget | null;
        onPressed?: ZacActions;
        onLongPress?: ZacActions;
        autofocus?: ZacValue<boolean> | boolean;
        clipBehavior?: Clip;
    }): ElevatedButton;
    static icon(data: {
        key?: Key;
        icon: Widget;
        label: Widget;
        onPressed?: ZacActions;
        onLongPress?: ZacActions;
        autofocus?: ZacValue<boolean> | boolean;
        clipBehavior?: Clip;
    }): ElevatedButton;
}
export declare class Expanded extends ZacConverter implements Widget {
    static new(data: {
        key?: Key;
        flex?: ZacValue<DartInt> | DartInt;
        child: Widget;
    }): Expanded;
}
export declare class FilterQuality extends ZacConverter {
    static high(): FilterQuality;
    static low(): FilterQuality;
    static medium(): FilterQuality;
    static none(): FilterQuality;
}
export declare class FittedBox extends ZacConverter implements Widget {
    static new(data: {
        key?: Key;
        fit?: BoxFit;
        alignment?: AlignmentGeometry;
        clipBehavior?: Clip;
        child?: Widget;
    }): FittedBox;
}
export declare class FlexFit extends ZacConverter {
    static tight(): FlexFit;
    static loose(): FlexFit;
}
export declare class Flexible extends ZacConverter implements Widget {
    static new(data: {
        key?: Key;
        flex?: ZacValue<DartInt> | DartInt;
        fit?: FlexFit;
        child: Widget;
    }): Flexible;
}
export declare class FontFeature extends ZacConverter {
    static new(data: {
        feature: string;
        value?: ZacValue<DartInt> | DartInt;
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
        enable?: ZacValue<boolean> | boolean;
    }): FontFeature;
    static notationalForms(data: {
        value?: ZacValue<DartInt> | DartInt;
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
    static swash(data: {
        value?: ZacValue<DartInt> | DartInt;
    }): FontFeature;
    static tabularFigures(): FontFeature;
}
export declare class FontStyle extends ZacConverter {
    static italic(): FontStyle;
    static normal(): FontStyle;
}
export declare class FontWeight extends ZacConverter {
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
export declare class FractionalOffset extends ZacConverter implements AlignmentGeometry {
    static new(data: {
        dx: ZacValue<DartDouble> | DartDouble;
        dy: ZacValue<DartDouble> | DartDouble;
    }): FractionalOffset;
}
export declare class FractionalTranslation extends ZacConverter implements Widget {
    static new(data: {
        key?: Key;
        child?: Widget;
        translation: Offset;
        transformHitTests?: ZacValue<boolean> | boolean;
    }): FractionalTranslation;
}
export declare class FractionallySizedBox extends ZacConverter implements Widget {
    static new(data: {
        key?: Key;
        child?: Widget;
        alignment?: AlignmentGeometry;
        widthFactor?: ZacValue<DartDouble> | DartDouble;
        heightFactor?: ZacValue<DartDouble> | DartDouble;
    }): FractionallySizedBox;
}
export declare class GestureDetector extends ZacConverter implements Widget {
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
        excludeFromSemantics?: ZacValue<boolean> | boolean;
    }): GestureDetector;
}
export declare class GlobalKeyNavigatorState extends ZacConverter {
    static new(data: {
        debugLabel?: string;
    }): GlobalKeyNavigatorState;
}
export declare class GlobalKeyScaffoldMessengerState extends ZacConverter {
    static new(data: {
        debugLabel?: string;
    }): GlobalKeyScaffoldMessengerState;
}
export declare class GridView extends ZacConverter implements Widget {
    static new(data: {
        key?: Key;
        scrollDirection?: Axis;
        reverse?: ZacValue<boolean> | boolean;
        controller?: ZacValue<ScrollController> | ScrollController;
        primary?: ZacValue<boolean> | boolean;
        shrinkWrap?: ZacValue<boolean> | boolean;
        padding?: EdgeInsetsGeometry;
        gridDelegate: SliverGridDelegate;
        addAutomaticKeepAlives?: ZacValue<boolean> | boolean;
        addRepaintBoundaries?: ZacValue<boolean> | boolean;
        addSemanticIndexes?: ZacValue<boolean> | boolean;
        cacheExtent?: ZacValue<DartDouble> | DartDouble;
        children?: ZacValueList<Widget> | Array<Widget>;
        semanticChildCount?: ZacValue<DartInt> | DartInt;
        clipBehavior?: Clip;
        keyboardDismissBehavior?: ScrollViewKeyboardDismissBehavior;
        restorationId?: ZacValue<string> | string;
    }): GridView;
}
export declare class HitTestBehavior extends ZacConverter {
    static deferToChild(): HitTestBehavior;
    static opaque(): HitTestBehavior;
    static translucent(): HitTestBehavior;
}
export declare class Icon extends ZacConverter implements Widget {
    static new(data: {
        icon: IconData | null;
        key?: Key;
        size?: ZacValue<DartDouble> | DartDouble;
        color?: Color;
        semanticLabel?: ZacValue<string> | string;
        textDirection?: TextDirection;
    }): Icon;
}
export declare class IconData extends ZacConverter {
    static new(data: {
        codePoint: ZacValue<DartInt> | DartInt;
        fontFamily?: ZacValue<string> | string;
        fontPackage?: ZacValue<string> | string;
        matchTextDirection?: ZacValue<boolean> | boolean;
    }): IconData;
}
export declare class IconThemeData extends ZacConverter {
    static new(data: {
        color?: Color;
        opacity?: ZacValue<DartDouble> | DartDouble;
        size?: ZacValue<DartDouble> | DartDouble;
    }): IconThemeData;
}
export declare class IgnorePointer extends ZacConverter implements Widget {
    static new(data: {
        key?: Key;
        ignoring?: ZacValue<boolean> | boolean;
        ignoringSemantics?: ZacValue<boolean> | boolean;
        child?: Widget;
    }): IgnorePointer;
}
export declare class Image extends ZacConverter implements Widget {
    static network(data: {
        src: ZacValue<string> | string;
        key?: Key;
        scale?: ZacValue<DartDouble> | DartDouble;
        semanticLabel?: ZacValue<string> | string;
        excludeFromSemantics?: ZacValue<boolean> | boolean;
        width?: ZacValue<DartDouble> | DartDouble;
        height?: ZacValue<DartDouble> | DartDouble;
        color?: Color;
        colorBlendMode?: BlendMode;
        fit?: BoxFit;
        alignment?: AlignmentGeometry;
        repeat?: ImageRepeat;
        centerSlice?: Rect;
        matchTextDirection?: ZacValue<boolean> | boolean;
        gaplessPlayback?: ZacValue<boolean> | boolean;
        filterQuality?: FilterQuality;
        isAntiAlias?: ZacValue<boolean> | boolean;
        headers?: Record<string, string>;
        cacheWidth?: ZacValue<DartInt> | DartInt;
        cacheHeight?: ZacValue<DartInt> | DartInt;
    }): Image;
    static asset(data: {
        name: ZacValue<string> | string;
        key?: Key;
        semanticLabel?: ZacValue<string> | string;
        excludeFromSemantics?: ZacValue<boolean> | boolean;
        scale?: ZacValue<DartDouble> | DartDouble;
        width?: ZacValue<DartDouble> | DartDouble;
        height?: ZacValue<DartDouble> | DartDouble;
        color?: Color;
        colorBlendMode?: BlendMode;
        fit?: BoxFit;
        alignment?: AlignmentGeometry;
        repeat?: ImageRepeat;
        centerSlice?: Rect;
        matchTextDirection?: ZacValue<boolean> | boolean;
        gaplessPlayback?: ZacValue<boolean> | boolean;
        isAntiAlias?: ZacValue<boolean> | boolean;
        package?: ZacValue<string> | string;
        filterQuality?: FilterQuality;
        cacheWidth?: ZacValue<DartInt> | DartInt;
        cacheHeight?: ZacValue<DartInt> | DartInt;
    }): Image;
}
export declare class ImageRepeat extends ZacConverter {
    static noRepeat(): ImageRepeat;
    static repeat(): ImageRepeat;
    static repeatX(): ImageRepeat;
    static repeatY(): ImageRepeat;
}
export declare class IndexedStack extends ZacConverter implements Widget {
    static new(data: {
        key?: Key;
        alignment?: AlignmentGeometry;
        textDirection?: TextDirection;
        sizing?: StackFit;
        index?: ZacValue<DartInt> | DartInt;
        children?: ZacValueList<Widget> | Array<Widget>;
    }): IndexedStack;
}
export declare class InputDecoration extends ZacConverter {
    static new(data: {
        icon?: Widget;
        iconColor?: Color;
        label?: Widget;
        labelText?: ZacValue<string> | string;
        labelStyle?: TextStyle;
        floatingLabelStyle?: TextStyle;
        helperText?: ZacValue<string> | string;
        helperStyle?: TextStyle;
        helperMaxLines?: ZacValue<DartInt> | DartInt;
        hintText?: ZacValue<string> | string;
        hintStyle?: TextStyle;
        hintTextDirection?: TextDirection;
        hintMaxLines?: ZacValue<DartInt> | DartInt;
        errorText?: ZacValue<string> | string;
        errorStyle?: TextStyle;
        errorMaxLines?: ZacValue<DartInt> | DartInt;
        isCollapsed?: ZacValue<boolean> | boolean;
        isDense?: ZacValue<boolean> | boolean;
        contentPadding?: EdgeInsetsGeometry;
        prefixIcon?: Widget;
        prefixIconConstraints?: BoxConstraints;
        prefix?: Widget;
        prefixText?: ZacValue<string> | string;
        prefixStyle?: TextStyle;
        prefixIconColor?: Color;
        suffixIcon?: Widget;
        suffix?: Widget;
        suffixText?: ZacValue<string> | string;
        suffixStyle?: TextStyle;
        suffixIconColor?: Color;
        suffixIconConstraints?: BoxConstraints;
        counter?: Widget;
        counterText?: ZacValue<string> | string;
        counterStyle?: TextStyle;
        filled?: ZacValue<boolean> | boolean;
        fillColor?: Color;
        focusColor?: Color;
        hoverColor?: Color;
        errorBorder?: InputBorder;
        focusedBorder?: InputBorder;
        focusedErrorBorder?: InputBorder;
        disabledBorder?: InputBorder;
        enabledBorder?: InputBorder;
        border?: InputBorder;
        enabled?: ZacValue<boolean> | boolean;
        semanticCounterText?: ZacValue<string> | string;
        alignLabelWithHint?: ZacValue<boolean> | boolean;
        constraints?: BoxConstraints;
    }): InputDecoration;
}
export declare class IntTransformer extends ZacConverter implements ZacTransformer {
    static parse(): IntTransformer;
    static tryParse(): IntTransformer;
}
export declare class InteractiveViewer extends ZacConverter implements Widget {
    static new(data: {
        key?: Key;
        child: Widget;
        clipBehavior?: Clip;
        alignPanAxis?: ZacValue<boolean> | boolean;
        boundaryMargin?: EdgeInsets;
        constrained?: ZacValue<boolean> | boolean;
        maxScale?: ZacValue<DartDouble> | DartDouble;
        minScale?: ZacValue<DartDouble> | DartDouble;
        onInteractionEnd?: ZacActions;
        onInteractionStart?: ZacActions;
        onInteractionUpdate?: ZacActions;
        panEnabled?: ZacValue<boolean> | boolean;
        scaleEnabled?: ZacValue<boolean> | boolean;
    }): InteractiveViewer;
}
export declare class IntrinsicHeight extends ZacConverter implements Widget {
    static new(data: {
        key?: Key;
        child?: Widget;
    }): IntrinsicHeight;
}
export declare class IntrinsicWidth extends ZacConverter implements Widget {
    static new(data: {
        key?: Key;
        child?: Widget;
    }): IntrinsicWidth;
}
export declare class IterableTransformer extends ZacConverter implements ZacTransformer {
    static map(data: {
        transformer: ZacTransformers;
    }): IterableTransformer;
    static single(): IterableTransformer;
    static first(): IterableTransformer;
    static last(): IterableTransformer;
    static length_(): IterableTransformer;
    static isEmpty(): IterableTransformer;
    static isNotEmpty(): IterableTransformer;
    static toList(): IterableTransformer;
    static toSet(): IterableTransformer;
    static toString(): IterableTransformer;
    static join(data: {
        separator?: string;
    }): IterableTransformer;
    static contains(data: {
        element: ZacValue<ZacTypes> | ZacTypes | null;
    }): IterableTransformer;
    static elementAt(data: {
        index: DartInt;
    }): IterableTransformer;
    static skip(data: {
        count: DartInt;
    }): IterableTransformer;
    static take(data: {
        count: DartInt;
    }): IterableTransformer;
}
export declare class JsonTransformer extends ZacConverter implements ZacTransformer {
    static encode(): JsonTransformer;
    static decode(): JsonTransformer;
}
export declare class LimitedBox extends ZacConverter implements Widget {
    static new(data: {
        key?: Key;
        maxWidth?: ZacValue<DartDouble> | DartDouble;
        maxHeight?: ZacValue<DartDouble> | DartDouble;
        child?: Widget;
    }): LimitedBox;
}
export declare class ListTile extends ZacConverter implements Widget {
    static new(data: {
        key?: Key;
        leading?: Widget;
        title?: Widget;
        subtitle?: Widget;
        trailing?: Widget;
        isThreeLine?: ZacValue<boolean> | boolean;
        dense?: ZacValue<boolean> | boolean;
        shape?: ShapeBorder;
        selectedColor?: Color;
        iconColor?: Color;
        textColor?: Color;
        contentPadding?: EdgeInsetsGeometry;
        enabled?: ZacValue<boolean> | boolean;
        onTap?: ZacActions;
        onLongPress?: ZacActions;
        selected?: ZacValue<boolean> | boolean;
        focusColor?: Color;
        hoverColor?: Color;
        autofocus?: ZacValue<boolean> | boolean;
        tileColor?: Color;
        selectedTileColor?: Color;
        enableFeedback?: ZacValue<boolean> | boolean;
        horizontalTitleGap?: ZacValue<DartDouble> | DartDouble;
        minVerticalPadding?: ZacValue<DartDouble> | DartDouble;
        minLeadingWidth?: ZacValue<DartDouble> | DartDouble;
    }): ListTile;
}
export declare class ListTransformer extends ZacConverter implements ZacTransformer {
    static reversed(): ListTransformer;
    static fromFlutterWidget(): ListTransformer;
}
export declare class ListView extends ZacConverter implements Widget {
    static new(data: {
        key?: Key;
        scrollDirection?: Axis;
        reverse?: ZacValue<boolean> | boolean;
        controller?: ZacValue<ScrollController> | ScrollController;
        primary?: ZacValue<boolean> | boolean;
        physics?: ScrollPhysics;
        shrinkWrap?: ZacValue<boolean> | boolean;
        padding?: EdgeInsetsGeometry;
        itemExtent?: ZacValue<DartDouble> | DartDouble;
        prototypeItem?: Widget;
        addAutomaticKeepAlives?: ZacValue<boolean> | boolean;
        addRepaintBoundaries?: ZacValue<boolean> | boolean;
        addSemanticIndexes?: ZacValue<boolean> | boolean;
        cacheExtent?: ZacValue<DartDouble> | DartDouble;
        children?: ZacValueList<Widget> | Array<Widget>;
        semanticChildCount?: ZacValue<DartInt> | DartInt;
        keyboardDismissBehavior?: ScrollViewKeyboardDismissBehavior;
        restorationId?: ZacValue<string> | string;
        clipBehavior?: Clip;
    }): ListView;
}
export declare class Locale extends ZacConverter {
    static new(data: {
        languageCode: string;
        countryCode?: string;
    }): Locale;
}
export declare class MainAxisAlignment extends ZacConverter {
    static start(): MainAxisAlignment;
    static end(): MainAxisAlignment;
    static center(): MainAxisAlignment;
    static spaceBetween(): MainAxisAlignment;
    static spaceAround(): MainAxisAlignment;
    static spaceEvenly(): MainAxisAlignment;
}
export declare class MainAxisSize extends ZacConverter {
    static min(): MainAxisSize;
    static max(): MainAxisSize;
}
export declare class MapTransformer extends ZacConverter implements ZacTransformer {
    static values(): MapTransformer;
    static keys(): MapTransformer;
    static entries(): MapTransformer;
    static length_(): MapTransformer;
    static isEmpty(): MapTransformer;
    static isNotEmpty(): MapTransformer;
    static containsKey(data: {
        key: ZacValue<ZacTypes> | ZacTypes | null;
    }): MapTransformer;
    static containsValue(data: {
        value: ZacValue<ZacTypes> | ZacTypes | null;
    }): MapTransformer;
    static mapper(data: {
        keyTransformer?: ZacTransformers;
        valueTransformer?: ZacTransformers;
    }): MapTransformer;
    static fromObjectObject(): MapTransformer;
    static fromStringObject(): MapTransformer;
    static fromStringNullObject(): MapTransformer;
    static key(data: {
        key: ZacValue<string> | string;
    }): MapTransformer;
    static fromStringFlutterWidget(): MapTransformer;
}
export declare class Material extends ZacConverter implements Widget {
    static new(data: {
        key?: Key;
        child?: Widget;
        elevation?: ZacValue<DartDouble> | DartDouble;
        color?: Color;
        shadowColor?: Color;
        textStyle?: TextStyle;
        borderRadius?: BorderRadiusGeometry;
        shape?: ShapeBorder;
        borderOnForeground?: ZacValue<boolean> | boolean;
        clipBehavior?: Clip;
    }): Material;
}
export declare class MaterialApp extends ZacConverter implements Widget {
    static new(data: {
        key?: Key;
        navigatorKey?: ZacValueConsumeOnly<GlobalKeyNavigatorState>;
        scaffoldMessengerKey?: ZacValueConsumeOnly<GlobalKeyScaffoldMessengerState>;
        home?: Widget;
        initialRoute?: ZacValue<string> | string;
        onGenerateRoute?: RouteFactory;
        onUnknownRoute?: RouteFactory;
        title?: ZacValue<string> | string;
        color?: Color;
        locale?: Locale;
        debugShowMaterialGrid?: ZacValue<boolean> | boolean;
        showPerformanceOverlay?: ZacValue<boolean> | boolean;
        checkerboardRasterCacheImages?: ZacValue<boolean> | boolean;
        checkerboardOffscreenLayers?: ZacValue<boolean> | boolean;
        showSemanticsDebugger?: ZacValue<boolean> | boolean;
        debugShowCheckedModeBanner?: ZacValue<boolean> | boolean;
        restorationScopeId?: ZacValue<string> | string;
        useInheritedMediaQuery?: ZacValue<boolean> | boolean;
    }): MaterialApp;
}
export declare class MaterialBanner extends ZacConverter implements Widget {
    static new(data: {
        key?: Key;
        content: Widget;
        contentTextStyle?: TextStyle;
        actions: ZacValueList<Widget> | Array<Widget>;
        elevation?: ZacValue<DartDouble> | DartDouble;
        leading: Widget | null;
        backgroundColor?: Color;
        padding?: EdgeInsetsGeometry;
        leadingPadding?: EdgeInsetsGeometry;
        forceActionsBelow?: ZacValue<boolean> | boolean;
        onVisible?: ZacActions;
    }): MaterialBanner;
}
export declare class MaterialPageRoute extends ZacConverter implements Route {
    static new(data: {
        child: Widget;
        settings?: RouteSettings;
        maintainState?: ZacValue<boolean> | boolean;
        fullscreenDialog?: ZacValue<boolean> | boolean;
    }): MaterialPageRoute;
}
export declare class Navigator extends ZacConverter implements Widget {
    static new(data: {
        key?: Key;
        onGenerateRoute?: RouteFactory;
        onUnknownRoute?: RouteFactory;
        initialRoute?: ZacValue<string> | string;
        requestFocus?: ZacValue<boolean> | boolean;
    }): Navigator;
}
export declare class NavigatorActions extends ZacConverter implements ZacAction {
    static push(data: {
        route: Route;
        navigatorState?: NavigatorState;
    }): NavigatorActions;
    static pushNamed(data: {
        routeName: ZacValue<string> | string;
        arguments?: ZacTypes;
        navigatorState?: NavigatorState;
    }): NavigatorActions;
    static pop(data: {
        actions?: ZacActions;
        navigatorState?: NavigatorState;
    }): NavigatorActions;
    static maybePop(data: {
        actions?: ZacActions;
        navigatorState?: NavigatorState;
    }): NavigatorActions;
    static pushReplacement(data: {
        route: Route;
        result?: ZacActions;
        navigatorState?: NavigatorState;
    }): NavigatorActions;
    static pushReplacementNamed(data: {
        routeName: ZacValue<string> | string;
        arguments?: ZacTypes;
        navigatorState?: NavigatorState;
        result?: ZacActions;
    }): NavigatorActions;
}
export declare class NavigatorState extends ZacConverter {
    static closest(): NavigatorState;
    static root(): NavigatorState;
    static shared(data: {
        value: ZacValue<GlobalKeyNavigatorState> | GlobalKeyNavigatorState;
    }): NavigatorState;
}
export declare class NumTransformer extends ZacConverter implements ZacTransformer {
    static toDouble(): NumTransformer;
    static toInt(): NumTransformer;
    static abs(): NumTransformer;
    static ceil(): NumTransformer;
    static ceilToDouble(): NumTransformer;
    static floor(): NumTransformer;
    static floorToDouble(): NumTransformer;
    static round(): NumTransformer;
    static roundToDouble(): NumTransformer;
    static isFinite(): NumTransformer;
    static isInfinite(): NumTransformer;
    static isNan(): NumTransformer;
    static isNegative(): NumTransformer;
}
export declare class ObjectTransformer extends ZacConverter implements ZacTransformer {
    static isList(): ObjectTransformer;
    static isMap(): ObjectTransformer;
    static isBool(): ObjectTransformer;
    static isString(): ObjectTransformer;
    static isDouble(): ObjectTransformer;
    static isInt(): ObjectTransformer;
    static isFlutterWidget(): ObjectTransformer;
    static isNull(): ObjectTransformer;
    static equals(data: {
        other: ZacTypes | null;
    }): ObjectTransformer;
    static toString(): ObjectTransformer;
    static runtimeType(): ObjectTransformer;
    static hashCode(): ObjectTransformer;
    static equalsSharedValue(data: {
        value: ZacValue<ZacTypes | null> | ZacTypes | null;
    }): ObjectTransformer;
}
export declare class Offset extends ZacConverter {
    static new(data: {
        dx: ZacValue<DartDouble> | DartDouble;
        dy: ZacValue<DartDouble> | DartDouble;
    }): Offset;
    static fromDirection(data: {
        direction: ZacValue<DartDouble> | DartDouble;
        distance?: ZacValue<DartDouble> | DartDouble;
    }): Offset;
}
export declare class Offstage extends ZacConverter implements Widget {
    static new(data: {
        key?: Key;
        offstage?: ZacValue<boolean> | boolean;
        child?: Widget;
    }): Offstage;
}
export declare class Opacity extends ZacConverter implements Widget {
    static new(data: {
        key?: Key;
        opacity: ZacValue<DartDouble> | DartDouble;
        alwaysIncludeSemantics?: ZacValue<boolean> | boolean;
        child?: Widget;
    }): Opacity;
}
export declare class OutlineInputBorder extends ZacConverter implements InputBorder {
    static new(data: {
        borderSide?: BorderSide;
        borderRadius?: BorderRadius;
        gapPadding?: ZacValue<DartDouble> | DartDouble;
    }): OutlineInputBorder;
}
export declare class OutlinedButton extends ZacConverter implements Widget {
    static new(data: {
        key?: Key;
        child: Widget;
        onPressed?: ZacActions;
        onLongPress?: ZacActions;
        autofocus?: ZacValue<boolean> | boolean;
        clipBehavior?: Clip;
    }): OutlinedButton;
    static icon(data: {
        key?: Key;
        icon: Widget;
        label: Widget;
        onPressed?: ZacActions;
        onLongPress?: ZacActions;
        autofocus?: ZacValue<boolean> | boolean;
        clipBehavior?: Clip;
    }): OutlinedButton;
}
export declare class OverflowBox extends ZacConverter implements Widget {
    static new(data: {
        key?: Key;
        alignment?: AlignmentGeometry;
        minWidth?: ZacValue<DartDouble> | DartDouble;
        maxWidth?: ZacValue<DartDouble> | DartDouble;
        minHeight?: ZacValue<DartDouble> | DartDouble;
        maxHeight?: ZacValue<DartDouble> | DartDouble;
        child?: Widget;
    }): OverflowBox;
}
export declare class Padding extends ZacConverter implements Widget {
    static new(data: {
        key?: Key;
        padding: EdgeInsetsGeometry;
        child?: Widget;
    }): Padding;
}
export declare class PageRouteBuilder extends ZacConverter implements Route {
    static new(data: {
        child: Widget;
        settings?: RouteSettings;
        opaque?: ZacValue<boolean> | boolean;
        barrierDismissible?: ZacValue<boolean> | boolean;
        barrierColor?: Color;
        barrierLabel?: ZacValue<string> | string;
        maintainState?: ZacValue<boolean> | boolean;
        fullscreenDialog?: ZacValue<boolean> | boolean;
    }): PageRouteBuilder;
}
export declare class Positioned extends ZacConverter implements Widget {
    static new(data: {
        key?: Key;
        left?: ZacValue<DartDouble> | DartDouble;
        top?: ZacValue<DartDouble> | DartDouble;
        right?: ZacValue<DartDouble> | DartDouble;
        bottom?: ZacValue<DartDouble> | DartDouble;
        width?: ZacValue<DartDouble> | DartDouble;
        height?: ZacValue<DartDouble> | DartDouble;
        child: Widget;
    }): Positioned;
    static directional(data: {
        key?: Key;
        textDirection: TextDirection;
        start?: ZacValue<DartDouble> | DartDouble;
        top?: ZacValue<DartDouble> | DartDouble;
        end?: ZacValue<DartDouble> | DartDouble;
        bottom?: ZacValue<DartDouble> | DartDouble;
        width?: ZacValue<DartDouble> | DartDouble;
        height?: ZacValue<DartDouble> | DartDouble;
        child: Widget;
    }): Positioned;
    static fill(data: {
        key?: Key;
        left?: ZacValue<DartDouble> | DartDouble;
        top?: ZacValue<DartDouble> | DartDouble;
        right?: ZacValue<DartDouble> | DartDouble;
        bottom?: ZacValue<DartDouble> | DartDouble;
        child: Widget;
    }): Positioned;
}
export declare class ProgressIndicator extends ZacConverter implements Widget {
    static linear(data: {
        key?: Key;
        value?: ZacValue<DartDouble> | DartDouble;
        backgroundColor?: Color;
        color?: Color;
        minHeight?: ZacValue<DartDouble> | DartDouble;
        semanticsLabel?: ZacValue<string> | string;
        semanticsValue?: ZacValue<string> | string;
    }): ProgressIndicator;
    static circular(data: {
        key?: Key;
        value?: ZacValue<DartDouble> | DartDouble;
        backgroundColor?: Color;
        color?: Color;
        strokeWidth?: ZacValue<DartDouble> | DartDouble;
        semanticsLabel?: ZacValue<string> | string;
        semanticsValue?: ZacValue<string> | string;
    }): ProgressIndicator;
}
export declare class Radius extends ZacConverter {
    static circular(data: {
        radius: ZacValue<DartDouble> | DartDouble;
    }): Radius;
    static elliptical(data: {
        x: ZacValue<DartDouble> | DartDouble;
        y: ZacValue<DartDouble> | DartDouble;
    }): Radius;
}
export declare class Rect extends ZacConverter {
    static fromCenter(data: {
        center: Offset;
        width: ZacValue<DartDouble> | DartDouble;
        height: ZacValue<DartDouble> | DartDouble;
    }): Rect;
    static fromCircle(data: {
        center: Offset;
        radius: ZacValue<DartDouble> | DartDouble;
    }): Rect;
    static fromLTRB(data: {
        left: ZacValue<DartDouble> | DartDouble;
        top: ZacValue<DartDouble> | DartDouble;
        right: ZacValue<DartDouble> | DartDouble;
        bottom: ZacValue<DartDouble> | DartDouble;
    }): Rect;
    static fromLTWH(data: {
        left: ZacValue<DartDouble> | DartDouble;
        top: ZacValue<DartDouble> | DartDouble;
        width: ZacValue<DartDouble> | DartDouble;
        height: ZacValue<DartDouble> | DartDouble;
    }): Rect;
    static fromPoints(data: {
        a: Offset;
        b: Offset;
    }): Rect;
}
export declare class RefreshIndicator extends ZacConverter implements Widget {
    static new(data: {
        key?: Key;
        child: Widget;
        displacement?: ZacValue<DartDouble> | DartDouble;
        edgeOffset?: ZacValue<DartDouble> | DartDouble;
        onRefresh: ZacActions;
        color?: Color;
        backgroundColor?: Color;
        semanticsLabel?: ZacValue<string> | string;
        semanticsValue?: ZacValue<string> | string;
        strokeWidth?: ZacValue<DartDouble> | DartDouble;
        triggerMode?: RefreshIndicatorTriggerMode;
        onRefreshCompleter?: ZacValueConsumeOnly<DartCompleterVoid>;
    }): RefreshIndicator;
}
export declare class RefreshIndicatorTriggerMode extends ZacConverter {
    static onEdge(): RefreshIndicatorTriggerMode;
    static anywhere(): RefreshIndicatorTriggerMode;
}
export declare class RotatedBox extends ZacConverter implements Widget {
    static new(data: {
        key?: Key;
        child?: Widget;
        quarterTurns: DartInt;
    }): RotatedBox;
}
export declare class RoundedRectangleBorder extends ZacConverter implements OutlinedBorder {
    static new(data: {
        side?: BorderSide;
        borderRadius?: BorderRadiusGeometry;
    }): RoundedRectangleBorder;
}
export declare class RouteFactoryFromRoutes extends ZacConverter implements RouteFactory {
    static new(data: {
        routes: Record<string, RouteFactoryRouteConfig>;
        provideArgsNamePrefix?: string;
    }): RouteFactoryFromRoutes;
}
export declare class RouteFactoryRouteConfig extends ZacConverter {
    static new(data: {
        route: Route;
        provideArgsName?: ZacValue<string> | string;
        transform?: ZacTransformers;
    }): RouteFactoryRouteConfig;
}
export declare class RouteFactorySingleRoute extends ZacConverter implements RouteFactory {
    static new(data: {
        routeConfig: RouteFactoryRouteConfig;
        provideArgsNamePrefix?: string;
    }): RouteFactorySingleRoute;
}
export declare class RouteSettings extends ZacConverter {
    static new(data: {
        name?: ZacValue<string> | string;
        arguments?: ZacTypes;
    }): RouteSettings;
}
export declare class Row extends ZacConverter implements Widget {
    static new(data: {
        key?: Key;
        mainAxisAlignment?: MainAxisAlignment;
        mainAxisSize?: MainAxisSize;
        crossAxisAlignment?: CrossAxisAlignment;
        textDirection?: TextDirection;
        verticalDirection?: VerticalDirection;
        textBaseline?: TextBaseline;
        children?: ZacValueList<Widget> | Array<Widget>;
    }): Row;
}
export declare class SafeArea extends ZacConverter implements Widget {
    static new(data: {
        key?: Key;
        left?: ZacValue<boolean> | boolean;
        top?: ZacValue<boolean> | boolean;
        right?: ZacValue<boolean> | boolean;
        bottom?: ZacValue<boolean> | boolean;
        minimum?: EdgeInsets;
        maintainBottomViewPadding?: ZacValue<boolean> | boolean;
        child: Widget;
    }): SafeArea;
}
export declare class Scaffold extends ZacConverter implements Widget {
    static new(data: {
        key?: Key;
        appBar?: Widget;
        body?: Widget;
        floatingActionButton?: Widget;
        persistentFooterButtons?: ZacValueList<Widget> | Array<Widget>;
        drawer?: Widget;
        endDrawer?: Widget;
        bottomNavigationBar?: Widget;
        bottomSheet?: Widget;
        backgroundColor?: Color;
        resizeToAvoidBottomInset?: ZacValue<boolean> | boolean;
        primary?: ZacValue<boolean> | boolean;
        extendBody?: ZacValue<boolean> | boolean;
        extendBodyBehindAppBar?: ZacValue<boolean> | boolean;
        drawerScrimColor?: Color;
        drawerEdgeDragWidth?: ZacValue<DartDouble> | DartDouble;
        drawerEnableOpenDragGesture?: ZacValue<boolean> | boolean;
        endDrawerEnableOpenDragGesture?: ZacValue<boolean> | boolean;
        restorationId?: ZacValue<string> | string;
    }): Scaffold;
}
export declare class ScaffoldActions extends ZacConverter implements ZacAction {
    static openDrawer(): ScaffoldActions;
    static openEndDrawer(): ScaffoldActions;
    static showBodyScrim(data: {
        value: boolean;
        opacity: ZacValue<DartDouble> | DartDouble;
    }): ScaffoldActions;
    static showBottomSheet(data: {
        child: Widget;
        backgroundColor?: Color;
        elevation?: ZacValue<DartDouble> | DartDouble;
        shape?: ShapeBorder;
        clipBehavior?: Clip;
        constraints?: BoxConstraints;
        enableDrag?: ZacValue<boolean> | boolean;
    }): ScaffoldActions;
}
export declare class ScaffoldMessenger extends ZacConverter implements ZacAction {
    static showSnackBar(data: {
        snackBar: SnackBar;
    }): ScaffoldMessenger;
    static hideCurrentSnackBar(): ScaffoldMessenger;
    static removeCurrentSnackBar(): ScaffoldMessenger;
    static showMaterialBanner(data: {
        materialBanner: MaterialBanner;
    }): ScaffoldMessenger;
    static hideCurrentMaterialBanner(): ScaffoldMessenger;
    static removeCurrentMaterialBanner(): ScaffoldMessenger;
}
export declare class ScrollPhysics extends ZacConverter {
    static alwaysScrollable(data: {
        parent?: ScrollPhysics;
    }): ScrollPhysics;
    static bouncingScroll(data: {
        parent?: ScrollPhysics;
    }): ScrollPhysics;
    static clampingScrollPhysics(data: {
        parent?: ScrollPhysics;
    }): ScrollPhysics;
}
export declare class ScrollViewKeyboardDismissBehavior extends ZacConverter {
    static manual(): ScrollViewKeyboardDismissBehavior;
    static onDrag(): ScrollViewKeyboardDismissBehavior;
}
export declare class SelectableText extends ZacConverter implements Widget {
    static new(data: {
        data: string;
        key?: Key;
        style?: TextStyle;
        strutStyle?: StrutStyle;
        textAlign?: TextAlign;
        textDirection?: TextDirection;
        textScaleFactor?: ZacValue<DartDouble> | DartDouble;
        showCursor?: ZacValue<boolean> | boolean;
        autofocus?: ZacValue<boolean> | boolean;
        minLines?: ZacValue<DartInt> | DartInt;
        maxLines?: ZacValue<DartInt> | DartInt;
        cursorWidth?: ZacValue<DartDouble> | DartDouble;
        cursorHeight?: ZacValue<DartDouble> | DartDouble;
        cursorRadius?: Radius;
        cursorColor?: Color;
        enableInteractiveSelection?: ZacValue<boolean> | boolean;
        semanticsLabel?: ZacValue<string> | string;
        textHeightBehavior?: TextHeightBehavior;
        textWidthBasis?: TextWidthBasis;
    }): SelectableText;
}
export declare class Shadow extends ZacConverter implements DartShadow {
    static new(data: {
        color?: Color;
        offset?: Offset;
        blurRadius?: ZacValue<DartDouble> | DartDouble;
    }): Shadow;
}
export declare class ShapeDecoration extends ZacConverter implements Decoration {
    static new(data: {
        color?: Color;
        shadows?: Array<BoxShadow>;
        shape: ShapeBorder;
    }): ShapeDecoration;
}
export declare class SharedValueActions extends ZacConverter implements ZacAction {
    static update(data: {
        family: ZacTypes;
        transformer?: ZacTransformers;
        ifNoPayloadTakeCurrent?: boolean;
    }): SharedValueActions;
    static invalidate(data: {
        family: ZacTypes;
    }): SharedValueActions;
}
export declare class SharedValueConsumeType extends ZacConverter {
    static watch(): SharedValueConsumeType;
    static read(): SharedValueConsumeType;
}
export declare class SharedValueProviderBuilder extends ZacConverter implements Widget {
    static new(data: {
        key?: Key;
        value: ZacTypes | null;
        transformer?: ZacTransformers;
        family: ZacTypes;
        child: Widget;
        autoCreate: boolean;
    }): SharedValueProviderBuilder;
}
export declare class SingleChildScrollView extends ZacConverter implements Widget {
    static new(data: {
        key?: Key;
        scrollDirection?: Axis;
        reverse?: ZacValue<boolean> | boolean;
        padding?: EdgeInsetsGeometry;
        primary?: ZacValue<boolean> | boolean;
        controller?: ZacValue<ScrollController> | ScrollController;
        child?: Widget;
        clipBehavior?: Clip;
        restorationId?: ZacValue<string> | string;
        keyboardDismissBehavior?: ScrollViewKeyboardDismissBehavior;
    }): SingleChildScrollView;
}
export declare class Size extends ZacConverter {
    static new(data: {
        width: ZacValue<DartDouble> | DartDouble;
        height: ZacValue<DartDouble> | DartDouble;
    }): Size;
}
export declare class SizedBox extends ZacConverter implements Widget {
    static new(data: {
        key?: Key;
        width?: ZacValue<DartDouble> | DartDouble;
        height?: ZacValue<DartDouble> | DartDouble;
        child?: Widget;
    }): SizedBox;
    static expand(data: {
        key?: Key;
        child?: Widget;
    }): SizedBox;
    static fromSize(data: {
        key?: Key;
        child?: Widget;
        size?: Size;
    }): SizedBox;
    static shrink(data: {
        key?: Key;
        child?: Widget;
    }): SizedBox;
    static square(data: {
        key?: Key;
        child?: Widget;
        dimension?: ZacValue<DartDouble> | DartDouble;
    }): SizedBox;
}
export declare class SizedOverflowBox extends ZacConverter implements Widget {
    static new(data: {
        key?: Key;
        size: Size;
        alignment?: AlignmentGeometry;
        child?: Widget;
    }): SizedOverflowBox;
}
export declare class SliverChildDelegate extends ZacConverter {
    static list(data: {
        children: ZacValueList<Widget> | Array<Widget>;
        addAutomaticKeepAlives?: ZacValue<boolean> | boolean;
        addRepaintBoundaries?: ZacValue<boolean> | boolean;
        addSemanticIndexes?: ZacValue<boolean> | boolean;
        semanticIndexOffset?: ZacValue<DartInt> | DartInt;
    }): SliverChildDelegate;
    static listFixed(data: {
        children: ZacValueList<Widget> | Array<Widget>;
        addAutomaticKeepAlives?: ZacValue<boolean> | boolean;
        addRepaintBoundaries?: ZacValue<boolean> | boolean;
        addSemanticIndexes?: ZacValue<boolean> | boolean;
        semanticIndexOffset?: ZacValue<DartInt> | DartInt;
    }): SliverChildDelegate;
}
export declare class SliverGrid extends ZacConverter implements Widget {
    static new(data: {
        key?: Key;
        delegate: SliverChildDelegate;
        gridDelegate: SliverGridDelegate;
    }): SliverGrid;
}
export declare class SliverGridDelegate extends ZacConverter {
    static withFixedCrossAxisCount(data: {
        crossAxisCount: DartInt;
        mainAxisSpacing?: ZacValue<DartDouble> | DartDouble;
        crossAxisSpacing?: ZacValue<DartDouble> | DartDouble;
        childAspectRatio?: ZacValue<DartDouble> | DartDouble;
        mainAxisExtent?: ZacValue<DartDouble> | DartDouble;
    }): SliverGridDelegate;
    static withMaxCrossAxisExtent(data: {
        maxCrossAxisExtent: ZacValue<DartDouble> | DartDouble;
        mainAxisSpacing?: ZacValue<DartDouble> | DartDouble;
        crossAxisSpacing?: ZacValue<DartDouble> | DartDouble;
        childAspectRatio?: ZacValue<DartDouble> | DartDouble;
        mainAxisExtent?: ZacValue<DartDouble> | DartDouble;
    }): SliverGridDelegate;
}
export declare class SliverList extends ZacConverter implements Widget {
    static new(data: {
        key?: Key;
        delegate: SliverChildDelegate;
    }): SliverList;
}
export declare class SliverPadding extends ZacConverter implements Widget {
    static new(data: {
        key?: Key;
        sliver?: Widget;
        padding: EdgeInsetsGeometry;
    }): SliverPadding;
}
export declare class SliverToBoxAdapter extends ZacConverter implements Widget {
    static new(data: {
        key?: Key;
        child?: Widget;
    }): SliverToBoxAdapter;
}
export declare class SmartDashesType extends ZacConverter {
    static disabled(): SmartDashesType;
    static enabled(): SmartDashesType;
}
export declare class SmartQuotesType extends ZacConverter {
    static disabled(): SmartQuotesType;
    static enabled(): SmartQuotesType;
}
export declare class SnackBar extends ZacConverter implements Widget {
    static new(data: {
        key?: Key;
        content: Widget;
        backgroundColor?: Color;
        elevation?: ZacValue<DartDouble> | DartDouble;
        margin?: EdgeInsetsGeometry;
        padding?: EdgeInsetsGeometry;
        width?: ZacValue<DartDouble> | DartDouble;
        shape?: ShapeBorder;
        behavior?: SnackBarBehavior;
        action?: SnackBarAction;
        onVisible?: ZacActions;
    }): SnackBar;
}
export declare class SnackBarAction extends ZacConverter implements Widget {
    static new(data: {
        key?: Key;
        textColor?: Color;
        disabledTextColor?: Color;
        label: string;
        onPressed: ZacActions | null;
    }): SnackBarAction;
}
export declare class SnackBarBehavior extends ZacConverter {
    static fixed(): SnackBarBehavior;
    static floating(): SnackBarBehavior;
}
export declare class Spacer extends ZacConverter implements Widget {
    static new(data: {
        key?: Key;
        flex?: ZacValue<DartInt> | DartInt;
    }): Spacer;
}
export declare class Stack extends ZacConverter implements Widget {
    static new(data: {
        key?: Key;
        alignment?: AlignmentGeometry;
        textDirection?: TextDirection;
        fit?: StackFit;
        clipBehavior?: Clip;
        children?: ZacValueList<Widget> | Array<Widget>;
    }): Stack;
}
export declare class StackFit extends ZacConverter {
    static expand(): StackFit;
    static loose(): StackFit;
    static passthrough(): StackFit;
}
export declare class StringTransformer extends ZacConverter implements ZacTransformer {
    static length_(): StringTransformer;
    static split(data: {
        pattern: ZacValue<string> | string;
    }): StringTransformer;
    static isEmpty(): StringTransformer;
    static isNotEmpty(): StringTransformer;
    static replaceAll(data: {
        from: ZacValue<string> | string;
        replace: ZacValue<string> | string;
    }): StringTransformer;
}
export declare class StrutStyle extends ZacConverter {
    static new(data: {
        fontFamily?: ZacValue<string> | string;
        fontFamilyFallback?: Array<string>;
        fontSize?: ZacValue<DartDouble> | DartDouble;
        height?: ZacValue<DartDouble> | DartDouble;
        leadingDistribution?: TextLeadingDistribution;
        leading?: ZacValue<DartDouble> | DartDouble;
        fontWeight?: FontWeight;
        fontStyle?: FontStyle;
        forceStrutHeight?: ZacValue<boolean> | boolean;
        debugLabel?: ZacValue<string> | string;
        package?: ZacValue<string> | string;
    }): StrutStyle;
    static fromTextStyle(data: {
        textStyle: TextStyle;
        fontFamily?: ZacValue<string> | string;
        fontFamilyFallback?: Array<string>;
        fontSize?: ZacValue<DartDouble> | DartDouble;
        height?: ZacValue<DartDouble> | DartDouble;
        leadingDistribution?: TextLeadingDistribution;
        leading?: ZacValue<DartDouble> | DartDouble;
        fontWeight?: FontWeight;
        fontStyle?: FontStyle;
        forceStrutHeight?: ZacValue<boolean> | boolean;
        debugLabel?: ZacValue<string> | string;
        package?: ZacValue<string> | string;
    }): StrutStyle;
}
export declare class SystemUiOverlayStyle extends ZacConverter {
    static new(data: {
        systemNavigationBarColor?: Color;
        systemNavigationBarDividerColor?: Color;
        systemNavigationBarIconBrightness?: Brightness;
        systemNavigationBarContrastEnforced?: ZacValue<boolean> | boolean;
        statusBarColor?: Color;
        statusBarBrightness?: Brightness;
        statusBarIconBrightness?: Brightness;
        systemStatusBarContrastEnforced?: ZacValue<boolean> | boolean;
    }): SystemUiOverlayStyle;
}
export declare class Text extends ZacConverter implements Widget {
    static new(data: {
        data: ZacValue<string> | string;
        key?: Key;
        style?: TextStyle;
        strutStyle?: StrutStyle;
        textAlign?: TextAlign;
        textDirection?: TextDirection;
        locale?: Locale;
        softWrap?: ZacValue<boolean> | boolean;
        overflow?: TextOverflow;
        textScaleFactor?: ZacValue<DartDouble> | DartDouble;
        maxLines?: ZacValue<DartInt> | DartInt;
        semanticsLabel?: ZacValue<string> | string;
        textWidthBasis?: TextWidthBasis;
        textHeightBehavior?: TextHeightBehavior;
    }): Text;
}
export declare class TextAlign extends ZacConverter {
    static center(): TextAlign;
    static end(): TextAlign;
    static justify(): TextAlign;
    static left(): TextAlign;
    static right(): TextAlign;
    static start(): TextAlign;
}
export declare class TextAlignVertical extends ZacConverter {
    static new(data: {
        y: ZacValue<DartDouble> | DartDouble;
    }): TextAlignVertical;
    static bottom(): TextAlignVertical;
    static center(): TextAlignVertical;
    static top(): TextAlignVertical;
}
export declare class TextBaseline extends ZacConverter {
    static alphabetic(): TextBaseline;
    static ideographic(): TextBaseline;
}
export declare class TextButton extends ZacConverter implements Widget {
    static new(data: {
        key?: Key;
        child: Widget;
        onPressed?: ZacActions;
        onLongPress?: ZacActions;
        autofocus?: ZacValue<boolean> | boolean;
        clipBehavior?: Clip;
    }): TextButton;
    static icon(data: {
        key?: Key;
        icon: Widget;
        label: Widget;
        onPressed?: ZacActions;
        onLongPress?: ZacActions;
        autofocus?: ZacValue<boolean> | boolean;
        clipBehavior?: Clip;
    }): TextButton;
}
export declare class TextCapitalization extends ZacConverter {
    static characters(): TextCapitalization;
    static none(): TextCapitalization;
    static sentences(): TextCapitalization;
    static words(): TextCapitalization;
}
export declare class TextDecoration extends ZacConverter {
    static lineThrough(): TextDecoration;
    static none(): TextDecoration;
    static overline(): TextDecoration;
    static underline(): TextDecoration;
}
export declare class TextDecorationStyle extends ZacConverter {
    static dashed(): TextDecorationStyle;
    static dotted(): TextDecorationStyle;
    static double(): TextDecorationStyle;
    static solid(): TextDecorationStyle;
    static wavy(): TextDecorationStyle;
}
export declare class TextDirection extends ZacConverter {
    static rtl(): TextDirection;
    static ltr(): TextDirection;
}
export declare class TextField extends ZacConverter implements Widget {
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
        readOnly?: ZacValue<boolean> | boolean;
        showCursor?: ZacValue<boolean> | boolean;
        autofocus?: ZacValue<boolean> | boolean;
        obscuringCharacter?: ZacValue<string> | string;
        obscureText?: ZacValue<boolean> | boolean;
        autocorrect?: ZacValue<boolean> | boolean;
        smartDashesType?: SmartDashesType;
        smartQuotesType?: SmartQuotesType;
        enableSuggestions?: ZacValue<boolean> | boolean;
        maxLines?: ZacValue<DartInt> | DartInt;
        minLines?: ZacValue<DartInt> | DartInt;
        expands?: ZacValue<boolean> | boolean;
        maxLength?: ZacValue<DartInt> | DartInt;
        onChanged?: ZacActions;
        onEditingComplete?: ZacActions;
        onSubmitted?: ZacActions;
        enabled?: ZacValue<boolean> | boolean;
        cursorWidth?: ZacValue<DartDouble> | DartDouble;
        cursorHeight?: ZacValue<DartDouble> | DartDouble;
        cursorRadius?: Radius;
        cursorColor?: Color;
        selectionHeightStyle?: BoxHeightStyle;
        selectionWidthStyle?: BoxWidthStyle;
        keyboardAppearance?: Brightness;
        scrollPadding?: EdgeInsets;
        enableInteractiveSelection?: ZacValue<boolean> | boolean;
        onTap?: ZacActions;
        scrollController?: ZacValue<ScrollController> | ScrollController;
        clipBehavior?: Clip;
        restorationId?: ZacValue<string> | string;
        enableIMEPersonalizedLearning?: ZacValue<boolean> | boolean;
    }): TextField;
}
export declare class TextHeightBehavior extends ZacConverter {
    static new(data: {
        applyHeightToFirstAscent?: ZacValue<boolean> | boolean;
        applyHeightToLastDescent?: ZacValue<boolean> | boolean;
        leadingDistribution?: TextLeadingDistribution;
    }): TextHeightBehavior;
}
export declare class TextInputAction extends ZacConverter {
    static continueAction(): TextInputAction;
    static done(): TextInputAction;
    static emergencyCall(): TextInputAction;
    static go(): TextInputAction;
    static join(): TextInputAction;
    static newline(): TextInputAction;
    static next(): TextInputAction;
    static none(): TextInputAction;
    static previous(): TextInputAction;
    static route(): TextInputAction;
    static search(): TextInputAction;
    static send(): TextInputAction;
    static unspecified(): TextInputAction;
}
export declare class TextInputType extends ZacConverter {
    static datetime(): TextInputType;
    static emailAddress(): TextInputType;
    static multiline(): TextInputType;
    static name_(): TextInputType;
    static none(): TextInputType;
    static number(): TextInputType;
    static phone(): TextInputType;
    static streetAddress(): TextInputType;
    static text(): TextInputType;
    static url(): TextInputType;
    static visiblePassword(): TextInputType;
}
export declare class TextLeadingDistribution extends ZacConverter {
    static even(): TextLeadingDistribution;
    static proportional(): TextLeadingDistribution;
}
export declare class TextOverflow extends ZacConverter {
    static clip(): TextOverflow;
    static ellipsis(): TextOverflow;
    static fade(): TextOverflow;
    static visible(): TextOverflow;
}
export declare class TextStyle extends ZacConverter {
    static new(data: {
        inherit?: ZacValue<boolean> | boolean;
        color?: Color;
        backgroundColor?: Color;
        fontSize?: ZacValue<DartDouble> | DartDouble;
        fontWeight?: FontWeight;
        fontStyle?: FontStyle;
        letterSpacing?: ZacValue<DartDouble> | DartDouble;
        wordSpacing?: ZacValue<DartDouble> | DartDouble;
        textBaseline?: TextBaseline;
        height?: ZacValue<DartDouble> | DartDouble;
        leadingDistribution?: TextLeadingDistribution;
        locale?: Locale;
        shadows?: Array<DartShadow>;
        fontFeatures?: Array<FontFeature>;
        decoration?: TextDecoration;
        decorationColor?: Color;
        decorationStyle?: TextDecorationStyle;
        decorationThickness?: ZacValue<DartDouble> | DartDouble;
        debugLabel?: ZacValue<string> | string;
        fontFamily?: ZacValue<string> | string;
        fontFamilyFallback?: Array<string>;
        package?: ZacValue<string> | string;
        overflow?: TextOverflow;
    }): TextStyle;
}
export declare class TextWidthBasis extends ZacConverter {
    static longestLine(): TextWidthBasis;
    static parent(): TextWidthBasis;
}
export declare class UnconstrainedBox extends ZacConverter implements Widget {
    static new(data: {
        key?: Key;
        child?: Widget;
        textDirection?: TextDirection;
        alignment?: AlignmentGeometry;
        constrainedAxis?: Axis;
        clipBehavior?: Clip;
    }): UnconstrainedBox;
}
export declare class UnderlineInputBorder extends ZacConverter implements InputBorder {
    static new(data: {
        borderSide?: BorderSide;
        borderRadius?: BorderRadius;
    }): UnderlineInputBorder;
}
export declare class ValueKey extends ZacConverter implements LocalKey {
    static new(data: {
        value: string;
    }): ValueKey;
}
export declare class VerticalDirection extends ZacConverter {
    static up(): VerticalDirection;
    static down(): VerticalDirection;
}
export declare class Wrap extends ZacConverter implements Widget {
    static new(data: {
        key?: Key;
        direction?: Axis;
        alignment?: WrapAlignment;
        spacing?: ZacValue<DartDouble> | DartDouble;
        runSpacing?: ZacValue<DartDouble> | DartDouble;
        runAlignment?: WrapAlignment;
        crossAxisAlignment?: WrapCrossAlignment;
        textDirection?: TextDirection;
        verticalDirection?: VerticalDirection;
        clipBehavior?: Clip;
        children?: ZacValueList<Widget> | Array<Widget>;
    }): Wrap;
}
export declare class WrapAlignment extends ZacConverter {
    static start(): WrapAlignment;
    static end(): WrapAlignment;
    static center(): WrapAlignment;
    static spaceBetween(): WrapAlignment;
    static spaceAround(): WrapAlignment;
    static spaceEvenly(): WrapAlignment;
}
export declare class WrapCrossAlignment extends ZacConverter {
    static center(): WrapCrossAlignment;
    static end(): WrapCrossAlignment;
    static start(): WrapCrossAlignment;
}
export declare class ZacActions extends ZacConverter {
    static new(data: {
        actions: Array<ZacAction>;
    }): ZacActions;
}
export declare class ZacCompleterActions extends ZacConverter implements ZacAction {
    static completeVoid(data: {
        completer: ZacValueConsumeOnly<any>;
    }): ZacCompleterActions;
}
export declare class ZacCompleterProviderBuilder extends ZacConverter implements Widget {
    static asVoid(data: {
        child: ZacValue<Widget> | Widget;
        family: ZacTypes;
    }): ZacCompleterProviderBuilder;
}
export declare class ZacControlFlowAction extends ZacConverter implements ZacAction {
    static ifCond(data: {
        condition: Array<ZacTransformers>;
        ifTrue: ZacActions;
        ifFalse?: ZacActions;
    }): ZacControlFlowAction;
}
export declare class ZacExecuteActionsBuilder extends ZacConverter implements Widget {
    static once(data: {
        actions: ZacActions;
        child?: Widget;
    }): ZacExecuteActionsBuilder;
    static listen(data: {
        actions: ZacActions;
        family: ZacTypes;
        child?: Widget;
    }): ZacExecuteActionsBuilder;
}
export declare class ZacFlutterNavigatorActions extends ZacConverter implements ZacAction {
    static popUntilRouteName(data: {
        routeName: ZacValue<string> | string;
        navigatorState?: NavigatorState;
    }): ZacFlutterNavigatorActions;
}
export declare class ZacStateConfig extends ZacConverter {
    static new(data: {
        widget: ZacValue<Widget> | Widget;
        on: Array<ZacTransition>;
    }): ZacStateConfig;
}
export declare class ZacStateMachineActions extends ZacConverter implements ZacAction {
    static send(data: {
        family: ZacTypes;
        event: ZacValue<string> | string;
    }): ZacStateMachineActions;
    static trySend(data: {
        family: ZacTypes;
        event: ZacValue<string> | string;
    }): ZacStateMachineActions;
}
export declare class ZacStateMachineBuildStateBuilder extends ZacConverter implements Widget {
    static new(data: {
        key?: Key;
        family: ZacValue<string> | string;
        states: Array<string>;
        unmappedStateWidget?: Widget;
    }): ZacStateMachineBuildStateBuilder;
}
export declare class ZacStateMachineProviderBuilder extends ZacConverter implements Widget {
    static new(data: {
        key?: Key;
        family: ZacValue<string> | string;
        initialState: ZacValue<string> | string;
        states: Record<string, ZacStateConfig>;
        child: Widget;
        initialContext?: ZacValue<ZacTypes> | ZacTypes;
    }): ZacStateMachineProviderBuilder;
}
export declare class ZacStateMachineTransformer extends ZacConverter implements ZacTransformer {
    static pickState(): ZacStateMachineTransformer;
    static pickContext(): ZacStateMachineTransformer;
}
export declare class ZacTemplateExpressionsSyntax extends ZacConverter {
    static new(): ZacTemplateExpressionsSyntax;
}
export declare class ZacTemplateExpressionsTransformer extends ZacConverter implements ZacTransformer {
    static new(data: {
        expression: string;
        context?: Record<string, ZacValue<ZacTypes> | ZacTypes>;
        syntax: ZacTemplateExpressionsSyntax;
    }): ZacTemplateExpressionsTransformer;
}
export declare class ZacTransformers extends ZacConverter {
    static new(data: {
        transformers: Array<ZacTransformer>;
    }): ZacTransformers;
}
export declare class ZacTransition extends ZacConverter {
    static new(data: {
        event: string;
        target: string;
    }): ZacTransition;
}
export declare class ZacUpdateContextBuilder extends ZacConverter implements Widget {
    static new(data: {
        key?: Key;
        child: Widget;
    }): ZacUpdateContextBuilder;
}
export declare class ZacValueActions extends ZacConverter implements ZacAction {
    static asPayload(data: {
        value: ZacValue<ZacTypes | null> | ZacTypes | null;
        actions: ZacActions;
    }): ZacValueActions;
}
export declare class ZacWidgetBuilder extends ZacConverter implements Widget {
    static new(data: {
        key?: Key;
        data: ZacTypes;
    }): ZacWidgetBuilder;
    static isolate(data: {
        key?: Key;
        data: ZacTypes;
        errorChild?: Widget;
    }): ZacWidgetBuilder;
}
