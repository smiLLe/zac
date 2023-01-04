import * as native from './nativetypes';
export declare type ZacBuilderData = {
    builder: string;
    [key: string]: unknown;
};
export declare abstract class ZacConvertable {
    protected data: ZacBuilderData;
    protected constructor(data: ZacBuilderData);
    toJSON(): ZacBuilderData;
}
export declare abstract class ZacBuilder<T> extends ZacConvertable {
    private _doNotUse;
    get doNotUse(): T;
}
export declare abstract class ZacListBuilder<T> extends ZacBuilder<Array<T>> {
}
export declare abstract class ZacMapBuilder<T> extends ZacBuilder<{
    [key: string]: T;
}> {
}
export declare abstract class ZacTransformer extends ZacConvertable {
}
export declare abstract class ZacAction extends ZacConvertable {
}
export declare type ZacValueTypes = boolean | string | number;
export declare class ZacValue<T extends ZacValueTypes> extends ZacBuilder<T> {
    static new<T extends ZacValueTypes>(data: T): ZacValue<T>;
}
export declare class ZacValueList<T> extends ZacListBuilder<T> {
    static new<T>(data: Array<T | ZacBuilder<T>>): ZacValueList<T>;
}
export declare class ZacValueMap<T> extends ZacMapBuilder<T> {
    static new<T>(data: {
        [key: string]: T | ZacBuilder<T>;
    }): ZacValueMap<T>;
}
export declare class ConsumeSharedValue<T> extends ZacBuilder<T> {
    static new<T>(data: {
        family: string;
        transformer?: ZacBuilder<Array<ZacTransformer>>;
    }): ConsumeSharedValue<T>;
}
export declare class SharedValueConsumeType extends ZacConvertable {
    static watch(data?: {
        select?: ZacBuilder<Array<ZacTransformer>>;
    }): SharedValueConsumeType;
    static read(): SharedValueConsumeType;
}
export declare class ZacStateConfig extends ZacConvertable {
    static new(data: {
        widget: ZacBuilder<native.Widget>;
        on?: Array<ZacTransition>;
    }): ZacStateConfig;
}
export declare class ZacTransition extends ZacConvertable {
    static new(data: {
        event: string;
        target: string;
    }): ZacTransition;
}
export declare class Align extends ZacBuilder<native.Align> {
    static new(data?: {
        key?: ZacBuilder<native.Key>;
        alignment?: ZacBuilder<native.AlignmentGeometry>;
        widthFactor?: ZacBuilder<number>;
        heightFactor?: ZacBuilder<number>;
        child?: ZacBuilder<native.Widget>;
    }): Align;
}
export declare class Alignment extends ZacBuilder<native.Alignment> {
    static new(data: {
        x: ZacBuilder<number>;
        y: ZacBuilder<number>;
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
export declare class AlignmentDirectional extends ZacBuilder<native.AlignmentDirectional> {
    static new(data: {
        start: ZacBuilder<number>;
        y: ZacBuilder<number>;
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
export declare class AppBar extends ZacBuilder<native.AppBar> {
    static new(data?: {
        key?: ZacBuilder<native.Key>;
        leading?: ZacBuilder<native.Widget>;
        automaticallyImplyLeading?: ZacBuilder<boolean>;
        title?: ZacBuilder<native.Widget>;
        actions?: ZacListBuilder<native.Widget>;
        flexibleSpace?: ZacBuilder<native.Widget>;
        bottom?: ZacBuilder<native.Widget>;
        elevation?: ZacBuilder<number>;
        shadowColor?: ZacBuilder<native.Color>;
        shape?: ZacBuilder<native.ShapeBorder>;
        backgroundColor?: ZacBuilder<native.Color>;
        foregroundColor?: ZacBuilder<native.Color>;
        iconTheme?: ZacBuilder<native.IconThemeData>;
        actionsIconTheme?: ZacBuilder<native.IconThemeData>;
        primary?: ZacBuilder<boolean>;
        centerTitle?: ZacBuilder<boolean>;
        excludeHeaderSemantics?: ZacBuilder<boolean>;
        titleSpacing?: ZacBuilder<number>;
        toolbarOpacity?: ZacBuilder<number>;
        bottomOpacity?: ZacBuilder<number>;
        toolbarHeight?: ZacBuilder<number>;
        leadingWidth?: ZacBuilder<number>;
        toolbarTextStyle?: ZacBuilder<native.TextStyle>;
        titleTextStyle?: ZacBuilder<native.TextStyle>;
        systemOverlayStyle?: ZacBuilder<native.SystemUiOverlayStyle>;
    }): AppBar;
}
export declare class AspectRatio extends ZacBuilder<native.AspectRatio> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        aspectRatio: ZacBuilder<number>;
        child?: ZacBuilder<native.Widget>;
    }): AspectRatio;
}
export declare class Axis extends ZacBuilder<native.Axis> {
    static horizontal(): Axis;
    static vertical(): Axis;
}
export declare class BlendMode extends ZacBuilder<native.BlendMode> {
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
export declare class BlurStyle extends ZacBuilder<native.BlurStyle> {
    static inner(): BlurStyle;
    static normal(): BlurStyle;
    static outer(): BlurStyle;
    static solid(): BlurStyle;
}
export declare class Border extends ZacBuilder<native.Border> {
    static new(data?: {
        top?: ZacBuilder<native.BorderSide>;
        right?: ZacBuilder<native.BorderSide>;
        bottom?: ZacBuilder<native.BorderSide>;
        left?: ZacBuilder<native.BorderSide>;
    }): Border;
    static all(data?: {
        color?: ZacBuilder<native.Color>;
        width?: ZacBuilder<number>;
        style?: ZacBuilder<native.BorderStyle>;
    }): Border;
}
export declare class BorderDirectional extends ZacBuilder<native.BorderDirectional> {
    static new(data?: {
        top?: ZacBuilder<native.BorderSide>;
        start?: ZacBuilder<native.BorderSide>;
        bottom?: ZacBuilder<native.BorderSide>;
        end?: ZacBuilder<native.BorderSide>;
    }): BorderDirectional;
}
export declare class BorderRadius extends ZacBuilder<native.BorderRadius> {
    static all(data: {
        radius: Radius;
    }): BorderRadius;
    static circular(data: {
        radius: ZacBuilder<number>;
    }): BorderRadius;
    static horizontal(data?: {
        left?: ZacBuilder<native.Radius>;
        right?: ZacBuilder<native.Radius>;
    }): BorderRadius;
}
export declare class BorderSide extends ZacBuilder<native.BorderSide> {
    static new(data?: {
        color?: ZacBuilder<native.Color>;
        width?: ZacBuilder<number>;
        style?: ZacBuilder<native.BorderStyle>;
    }): BorderSide;
}
export declare class BorderStyle extends ZacBuilder<native.BorderStyle> {
    static none(): BorderStyle;
    static solid(): BorderStyle;
}
export declare class BoxConstraints extends ZacBuilder<native.BoxConstraints> {
    static new(data?: {
        minWidth?: ZacBuilder<number>;
        maxWidth?: ZacBuilder<number>;
        minHeight?: ZacBuilder<number>;
        maxHeight?: ZacBuilder<number>;
    }): BoxConstraints;
    static expand(data?: {
        width?: ZacBuilder<number>;
        height?: ZacBuilder<number>;
    }): BoxConstraints;
    static loose(data: {
        size: ZacBuilder<native.Size>;
    }): BoxConstraints;
    static tight(data: {
        size: ZacBuilder<native.Size>;
    }): BoxConstraints;
    static tightFor(data?: {
        width?: ZacBuilder<number>;
        height?: ZacBuilder<number>;
    }): BoxConstraints;
    static tightForFinite(data?: {
        width?: ZacBuilder<number>;
        height?: ZacBuilder<number>;
    }): BoxConstraints;
}
export declare class BoxDecoration extends ZacBuilder<native.BoxDecoration> {
    static new(data?: {
        color?: ZacBuilder<native.Color>;
        border?: ZacBuilder<native.BoxBorder>;
        borderRadius?: ZacBuilder<native.BorderRadiusGeometry>;
        boxShadow?: Array<BoxShadow>;
        shape?: ZacBuilder<native.BoxShape>;
        backgroundBlendMode?: ZacBuilder<native.BlendMode>;
    }): BoxDecoration;
}
export declare class BoxFit extends ZacBuilder<native.BoxFit> {
    static contain(): BoxFit;
    static cover(): BoxFit;
    static fill(): BoxFit;
    static fitHeight(): BoxFit;
    static fitWidth(): BoxFit;
    static none(): BoxFit;
    static scaleDown(): BoxFit;
}
export declare class BoxHeightStyle extends ZacBuilder<native.BoxHeightStyle> {
    static includeLineSpacingBottom(): BoxHeightStyle;
    static includeLineSpacingMiddle(): BoxHeightStyle;
    static includeLineSpacingTop(): BoxHeightStyle;
    static max(): BoxHeightStyle;
    static strut(): BoxHeightStyle;
    static tight(): BoxHeightStyle;
}
export declare class BoxShadow extends ZacBuilder<native.BoxShadow> {
    static new(data?: {
        color?: ZacBuilder<native.Color>;
        offset?: ZacBuilder<native.Offset>;
        blurRadius?: ZacBuilder<number>;
        spreadRadius?: ZacBuilder<number>;
        blurStyle?: BlurStyle;
    }): BoxShadow;
}
export declare class BoxShape extends ZacBuilder<native.BoxShape> {
    static circle(): BoxShape;
    static rectangle(): BoxShape;
}
export declare class BoxWidthStyle extends ZacBuilder<native.BoxWidthStyle> {
    static max(): BoxWidthStyle;
    static tight(): BoxWidthStyle;
}
export declare class Brightness extends ZacBuilder<native.Brightness> {
    static dark(): Brightness;
    static light(): Brightness;
}
export declare class Builder extends ZacBuilder<native.Builder> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        child: ZacBuilder<native.Widget>;
    }): Builder;
}
export declare class ButtonBar extends ZacBuilder<native.ButtonBar> {
    static new(data?: {
        key?: ZacBuilder<native.Key>;
        alignment?: ZacBuilder<native.MainAxisAlignment>;
        mainAxisSize?: ZacBuilder<native.MainAxisSize>;
        buttonMinWidth?: ZacBuilder<number>;
        buttonHeight?: ZacBuilder<number>;
        buttonPadding?: ZacBuilder<native.EdgeInsetsGeometry>;
        buttonAlignedDropdown?: ZacBuilder<boolean>;
        overflowDirection?: ZacBuilder<native.VerticalDirection>;
        overflowButtonSpacing?: ZacBuilder<number>;
        children?: ZacListBuilder<native.Widget>;
    }): ButtonBar;
}
export declare class Card extends ZacBuilder<native.Card> {
    static new(data?: {
        key?: ZacBuilder<native.Key>;
        color?: ZacBuilder<native.Color>;
        shadowColor?: ZacBuilder<native.Color>;
        elevation?: ZacBuilder<number>;
        shape?: ZacBuilder<native.ShapeBorder>;
        borderOnForeground?: ZacBuilder<boolean>;
        margin?: ZacBuilder<native.EdgeInsetsGeometry>;
        clipBehavior?: ZacBuilder<native.Clip>;
        child?: ZacBuilder<native.Widget>;
        semanticContainer?: ZacBuilder<boolean>;
    }): Card;
}
export declare class Center extends ZacBuilder<native.Center> {
    static new(data?: {
        key?: ZacBuilder<native.Key>;
        widthFactor?: ZacBuilder<number>;
        heightFactor?: ZacBuilder<number>;
        child?: ZacBuilder<native.Widget>;
    }): Center;
}
export declare class CircleBorder extends ZacBuilder<native.CircleBorder> {
    static new(data?: {
        side?: ZacBuilder<native.BorderSide>;
    }): CircleBorder;
}
export declare class Clip extends ZacBuilder<native.Clip> {
    static none(): Clip;
    static antiAlias(): Clip;
    static hardEdge(): Clip;
}
export declare class ClipOval extends ZacBuilder<native.ClipOval> {
    static new(data?: {
        key?: ZacBuilder<native.Key>;
        child?: ZacBuilder<native.Widget>;
        clipBehavior?: ZacBuilder<native.Clip>;
    }): ClipOval;
}
export declare class ClipRect extends ZacBuilder<native.ClipRect> {
    static new(data?: {
        key?: ZacBuilder<native.Key>;
        child?: ZacBuilder<native.Widget>;
        clipBehavior?: ZacBuilder<native.Clip>;
    }): ClipRect;
}
export declare class Color extends ZacBuilder<native.Color> {
    static fromARGB(data: {
        a: number;
        r: number;
        g: number;
        b: number;
    }): Color;
    static fromRGBO(data: {
        r: number;
        g: number;
        b: number;
        opacity: ZacBuilder<number>;
    }): Color;
}
export declare class Column extends ZacBuilder<native.Column> {
    static new(data?: {
        key?: ZacBuilder<native.Key>;
        mainAxisAlignment?: ZacBuilder<native.MainAxisAlignment>;
        mainAxisSize?: ZacBuilder<native.MainAxisSize>;
        crossAxisAlignment?: ZacBuilder<native.CrossAxisAlignment>;
        textDirection?: ZacBuilder<native.TextDirection>;
        verticalDirection?: ZacBuilder<native.VerticalDirection>;
        textBaseline?: ZacBuilder<native.TextBaseline>;
        children?: ZacListBuilder<native.Widget>;
    }): Column;
}
export declare class ConstrainedBox extends ZacBuilder<native.ConstrainedBox> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        constraints: ZacBuilder<native.BoxConstraints>;
        child?: ZacBuilder<native.Widget>;
    }): ConstrainedBox;
}
export declare class Container extends ZacBuilder<native.Container> {
    static new(data?: {
        key?: ZacBuilder<native.Key>;
        child?: ZacBuilder<native.Widget>;
        color?: ZacBuilder<native.Color>;
        margin?: ZacBuilder<native.EdgeInsetsGeometry>;
        padding?: ZacBuilder<native.EdgeInsetsGeometry>;
        alignment?: ZacBuilder<native.AlignmentGeometry>;
        decoration?: ZacBuilder<native.Decoration>;
    }): Container;
}
export declare class CrossAxisAlignment extends ZacBuilder<native.CrossAxisAlignment> {
    static baseline(): CrossAxisAlignment;
    static center(): CrossAxisAlignment;
    static end(): CrossAxisAlignment;
    static start(): CrossAxisAlignment;
    static stretch(): CrossAxisAlignment;
}
export declare class CustomScrollView extends ZacBuilder<native.CustomScrollView> {
    static new(data?: {
        key?: ZacBuilder<native.Key>;
        scrollDirection?: Axis;
        reverse?: ZacBuilder<boolean>;
        controller?: ZacBuilder<native.ScrollController>;
        primary?: ZacBuilder<boolean>;
        physics?: ScrollPhysics;
        shrinkWrap?: ZacBuilder<boolean>;
        center?: ZacBuilder<native.Key>;
        anchor?: ZacBuilder<number>;
        cacheExtent?: ZacBuilder<number>;
        slivers?: ZacListBuilder<native.Widget>;
        semanticChildCount?: ZacBuilder<number>;
        keyboardDismissBehavior?: ScrollViewKeyboardDismissBehavior;
        restorationId?: ZacBuilder<string>;
        clipBehavior?: ZacBuilder<native.Clip>;
    }): CustomScrollView;
}
export declare class DecoratedBox extends ZacBuilder<native.DecoratedBox> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        child?: ZacBuilder<native.Widget>;
        decoration: ZacBuilder<native.Decoration>;
        position?: ZacBuilder<native.DecorationPosition>;
    }): DecoratedBox;
}
export declare class DecorationPosition extends ZacBuilder<native.DecorationPosition> {
    static background(): DecorationPosition;
    static foreground(): DecorationPosition;
}
export declare class Dialogs extends ZacBuilder<native.Widget> {
    static dialog(data?: {
        key?: ZacBuilder<native.Key>;
        backgroundColor?: ZacBuilder<native.Color>;
        elevation?: ZacBuilder<number>;
        insetPadding?: ZacBuilder<native.EdgeInsets>;
        clipBehavior?: ZacBuilder<native.Clip>;
        shape?: ZacBuilder<native.ShapeBorder>;
        alignment?: ZacBuilder<native.AlignmentGeometry>;
        child?: ZacBuilder<native.Widget>;
    }): Dialogs;
    static alertDialog(data?: {
        key?: ZacBuilder<native.Key>;
        title?: ZacBuilder<native.Widget>;
        content?: ZacBuilder<native.Widget>;
        actions?: ZacListBuilder<native.Widget>;
        titlePadding?: ZacBuilder<native.EdgeInsetsGeometry>;
        titleTextStyle?: ZacBuilder<native.TextStyle>;
        contentPadding?: ZacBuilder<native.EdgeInsetsGeometry>;
        contentTextStyle?: ZacBuilder<native.TextStyle>;
        actionsPadding?: ZacBuilder<native.EdgeInsetsGeometry>;
        actionsAlignment?: ZacBuilder<native.MainAxisAlignment>;
        actionsOverflowDirection?: ZacBuilder<native.VerticalDirection>;
        actionsOverflowButtonSpacing?: ZacBuilder<number>;
        buttonPadding?: ZacBuilder<native.EdgeInsetsGeometry>;
        backgroundColor?: ZacBuilder<native.Color>;
        elevation?: ZacBuilder<number>;
        semanticLabel?: ZacBuilder<string>;
        insetPadding?: ZacBuilder<native.EdgeInsets>;
        clipBehavior?: ZacBuilder<native.Clip>;
        shape?: ZacBuilder<native.ShapeBorder>;
        alignment?: ZacBuilder<native.AlignmentGeometry>;
        scrollable?: ZacBuilder<boolean>;
    }): Dialogs;
    static simpleDialog(data?: {
        key?: ZacBuilder<native.Key>;
        title?: ZacBuilder<native.Widget>;
        children?: ZacListBuilder<native.Widget>;
        titlePadding?: ZacBuilder<native.EdgeInsetsGeometry>;
        titleTextStyle?: ZacBuilder<native.TextStyle>;
        contentPadding?: ZacBuilder<native.EdgeInsetsGeometry>;
        backgroundColor?: ZacBuilder<native.Color>;
        elevation?: ZacBuilder<number>;
        semanticLabel?: ZacBuilder<string>;
        insetPadding?: ZacBuilder<native.EdgeInsets>;
        clipBehavior?: ZacBuilder<native.Clip>;
        shape?: ZacBuilder<native.ShapeBorder>;
        alignment?: ZacBuilder<native.AlignmentGeometry>;
    }): Dialogs;
    static simpleDialogOption(data?: {
        key?: ZacBuilder<native.Key>;
        child?: ZacBuilder<native.Widget>;
        onPressed?: ZacBuilder<Array<ZacAction>>;
        padding?: ZacBuilder<native.EdgeInsets>;
    }): Dialogs;
}
export declare class Divider extends ZacBuilder<native.Divider> {
    static new(data?: {
        key?: ZacBuilder<native.Key>;
        height?: ZacBuilder<number>;
        thickness?: ZacBuilder<number>;
        indent?: ZacBuilder<number>;
        endIndent?: ZacBuilder<number>;
        color?: ZacBuilder<native.Color>;
    }): Divider;
}
export declare class Drawer extends ZacBuilder<native.Drawer> {
    static new(data?: {
        key?: ZacBuilder<native.Key>;
        backgroundColor?: ZacBuilder<native.Color>;
        elevation?: ZacBuilder<number>;
        shape?: ZacBuilder<native.ShapeBorder>;
        child?: ZacBuilder<native.Widget>;
        semanticLabel?: ZacBuilder<string>;
    }): Drawer;
}
export declare class EdgeInsets extends ZacBuilder<native.EdgeInsets> {
    static all(data: {
        value: ZacBuilder<number>;
    }): EdgeInsets;
    static symmetric(data?: {
        vertical?: ZacBuilder<number>;
        horizontal?: ZacBuilder<number>;
    }): EdgeInsets;
    static only(data?: {
        left?: ZacBuilder<number>;
        top?: ZacBuilder<number>;
        right?: ZacBuilder<number>;
        bottom?: ZacBuilder<number>;
    }): EdgeInsets;
}
export declare class EdgeInsetsDirectional extends ZacBuilder<native.EdgeInsetsDirectional> {
    static all(data: {
        value: ZacBuilder<number>;
    }): EdgeInsetsDirectional;
    static only(data?: {
        start?: ZacBuilder<number>;
        top?: ZacBuilder<number>;
        end?: ZacBuilder<number>;
        bottom?: ZacBuilder<number>;
    }): EdgeInsetsDirectional;
}
export declare class ElevatedButton extends ZacBuilder<native.ElevatedButton> {
    static new(data?: {
        key?: ZacBuilder<native.Key>;
        child?: ZacBuilder<native.Widget>;
        onPressed?: ZacBuilder<Array<ZacAction>>;
        onLongPress?: ZacBuilder<Array<ZacAction>>;
        autofocus?: ZacBuilder<boolean>;
        clipBehavior?: ZacBuilder<native.Clip>;
    }): ElevatedButton;
    static icon(data: {
        key?: ZacBuilder<native.Key>;
        icon: ZacBuilder<native.Widget>;
        label: ZacBuilder<native.Widget>;
        onPressed?: ZacBuilder<Array<ZacAction>>;
        onLongPress?: ZacBuilder<Array<ZacAction>>;
        autofocus?: ZacBuilder<boolean>;
        clipBehavior?: ZacBuilder<native.Clip>;
    }): ElevatedButton;
}
export declare class Expanded extends ZacBuilder<native.Expanded> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        flex?: ZacBuilder<number>;
        child: ZacBuilder<native.Widget>;
    }): Expanded;
}
export declare class FilterQuality extends ZacBuilder<native.FilterQuality> {
    static high(): FilterQuality;
    static low(): FilterQuality;
    static medium(): FilterQuality;
    static none(): FilterQuality;
}
export declare class FittedBox extends ZacBuilder<native.FittedBox> {
    static new(data?: {
        key?: ZacBuilder<native.Key>;
        fit?: ZacBuilder<native.BoxFit>;
        alignment?: ZacBuilder<native.AlignmentGeometry>;
        clipBehavior?: ZacBuilder<native.Clip>;
        child?: ZacBuilder<native.Widget>;
    }): FittedBox;
}
export declare class FlexFit extends ZacBuilder<native.FlexFit> {
    static tight(): FlexFit;
    static loose(): FlexFit;
}
export declare class Flexible extends ZacBuilder<native.Flexible> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        flex?: ZacBuilder<number>;
        fit?: ZacBuilder<native.FlexFit>;
        child: ZacBuilder<native.Widget>;
    }): Flexible;
}
export declare class FontFeature extends ZacBuilder<native.FontFeature> {
    static new(data: {
        feature: string;
        value?: ZacBuilder<number>;
    }): FontFeature;
    static alternative(data: {
        value: number;
    }): FontFeature;
    static alternativeFractions(): FontFeature;
    static caseSensitiveForms(): FontFeature;
    static characterVariant(data: {
        value: number;
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
    static localeAware(data?: {
        enable?: ZacBuilder<boolean>;
    }): FontFeature;
    static notationalForms(data?: {
        value?: ZacBuilder<number>;
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
        value: number;
    }): FontFeature;
    static subscripts(): FontFeature;
    static superscripts(): FontFeature;
    static swash(data?: {
        value?: ZacBuilder<number>;
    }): FontFeature;
    static tabularFigures(): FontFeature;
}
export declare class FontStyle extends ZacBuilder<native.FontStyle> {
    static italic(): FontStyle;
    static normal(): FontStyle;
}
export declare class FontWeight extends ZacBuilder<native.FontWeight> {
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
export declare class FractionalOffset extends ZacBuilder<native.FractionalOffset> {
    static new(data: {
        dx: ZacBuilder<number>;
        dy: ZacBuilder<number>;
    }): FractionalOffset;
}
export declare class FractionalTranslation extends ZacBuilder<native.FractionalTranslation> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        child?: ZacBuilder<native.Widget>;
        translation: Offset;
        transformHitTests?: ZacBuilder<boolean>;
    }): FractionalTranslation;
}
export declare class FractionallySizedBox extends ZacBuilder<native.FractionallySizedBox> {
    static new(data?: {
        key?: ZacBuilder<native.Key>;
        child?: ZacBuilder<native.Widget>;
        alignment?: ZacBuilder<native.AlignmentGeometry>;
        widthFactor?: ZacBuilder<number>;
        heightFactor?: ZacBuilder<number>;
    }): FractionallySizedBox;
}
export declare class GestureDetector extends ZacBuilder<native.GestureDetector> {
    static new(data?: {
        key?: ZacBuilder<native.Key>;
        child?: ZacBuilder<native.Widget>;
        onTap?: ZacBuilder<Array<ZacAction>>;
        onSecondaryTap?: ZacBuilder<Array<ZacAction>>;
        onDoubleTap?: ZacBuilder<Array<ZacAction>>;
        onLongPress?: ZacBuilder<Array<ZacAction>>;
        onSecondaryLongPress?: ZacBuilder<Array<ZacAction>>;
        onTertiaryLongPress?: ZacBuilder<Array<ZacAction>>;
        behavior?: HitTestBehavior;
        excludeFromSemantics?: ZacBuilder<boolean>;
    }): GestureDetector;
}
export declare class GlobalKeyNavigatorStateProvider extends ZacBuilder<native.Widget> {
    static new(data: {
        debugLabel?: ZacBuilder<string>;
        family: any;
        child: ZacBuilder<native.Widget>;
    }): GlobalKeyNavigatorStateProvider;
}
export declare class GlobalKeyScaffoldMessengerStateProvider extends ZacBuilder<native.Widget> {
    static new(data: {
        debugLabel?: ZacBuilder<string>;
        family: any;
        child: ZacBuilder<native.Widget>;
    }): GlobalKeyScaffoldMessengerStateProvider;
}
export declare class GridView extends ZacBuilder<native.GridView> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        scrollDirection?: ZacBuilder<native.Axis>;
        reverse?: ZacBuilder<boolean>;
        controller?: ZacBuilder<native.ScrollController>;
        primary?: ZacBuilder<boolean>;
        shrinkWrap?: ZacBuilder<boolean>;
        padding?: ZacBuilder<native.EdgeInsetsGeometry>;
        gridDelegate: ZacBuilder<native.SliverGridDelegate>;
        addAutomaticKeepAlives?: ZacBuilder<boolean>;
        addRepaintBoundaries?: ZacBuilder<boolean>;
        addSemanticIndexes?: ZacBuilder<boolean>;
        cacheExtent?: ZacBuilder<number>;
        children?: ZacListBuilder<native.Widget>;
        semanticChildCount?: ZacBuilder<number>;
        clipBehavior?: ZacBuilder<native.Clip>;
        keyboardDismissBehavior?: ZacBuilder<native.ScrollViewKeyboardDismissBehavior>;
        restorationId?: ZacBuilder<string>;
    }): GridView;
}
export declare class HitTestBehavior extends ZacBuilder<native.HitTestBehavior> {
    static deferToChild(): HitTestBehavior;
    static opaque(): HitTestBehavior;
    static translucent(): HitTestBehavior;
}
export declare class Icon extends ZacBuilder<native.Icon> {
    static new(data: {
        icon: IconData;
        key?: ZacBuilder<native.Key>;
        size?: ZacBuilder<number>;
        color?: ZacBuilder<native.Color>;
        semanticLabel?: ZacBuilder<string>;
        textDirection?: ZacBuilder<native.TextDirection>;
    }): Icon;
}
export declare class IconData extends ZacBuilder<native.IconData> {
    static new(data: {
        codePoint: ZacBuilder<number>;
        fontFamily?: ZacBuilder<string>;
        fontPackage?: ZacBuilder<string>;
        matchTextDirection?: ZacBuilder<boolean>;
    }): IconData;
}
export declare class IconThemeData extends ZacBuilder<native.IconThemeData> {
    static new(data?: {
        color?: ZacBuilder<native.Color>;
        opacity?: ZacBuilder<number>;
        size?: ZacBuilder<number>;
    }): IconThemeData;
}
export declare class IgnorePointer extends ZacBuilder<native.IgnorePointer> {
    static new(data?: {
        key?: ZacBuilder<native.Key>;
        ignoring?: ZacBuilder<boolean>;
        ignoringSemantics?: ZacBuilder<boolean>;
        child?: ZacBuilder<native.Widget>;
    }): IgnorePointer;
}
export declare class Image extends ZacBuilder<native.Image> {
    static network(data: {
        src: ZacBuilder<string>;
        key?: ZacBuilder<native.Key>;
        scale?: ZacBuilder<number>;
        semanticLabel?: ZacBuilder<string>;
        excludeFromSemantics?: ZacBuilder<boolean>;
        width?: ZacBuilder<number>;
        height?: ZacBuilder<number>;
        color?: ZacBuilder<native.Color>;
        colorBlendMode?: ZacBuilder<native.BlendMode>;
        fit?: ZacBuilder<native.BoxFit>;
        alignment?: ZacBuilder<native.AlignmentGeometry>;
        repeat?: ZacBuilder<native.ImageRepeat>;
        centerSlice?: ZacBuilder<native.Rect>;
        matchTextDirection?: ZacBuilder<boolean>;
        gaplessPlayback?: ZacBuilder<boolean>;
        filterQuality?: ZacBuilder<native.FilterQuality>;
        isAntiAlias?: ZacBuilder<boolean>;
        headers?: Record<string, string>;
        cacheWidth?: ZacBuilder<number>;
        cacheHeight?: ZacBuilder<number>;
    }): Image;
    static asset(data: {
        name: ZacBuilder<string>;
        key?: ZacBuilder<native.Key>;
        semanticLabel?: ZacBuilder<string>;
        excludeFromSemantics?: ZacBuilder<boolean>;
        scale?: ZacBuilder<number>;
        width?: ZacBuilder<number>;
        height?: ZacBuilder<number>;
        color?: ZacBuilder<native.Color>;
        colorBlendMode?: ZacBuilder<native.BlendMode>;
        fit?: ZacBuilder<native.BoxFit>;
        alignment?: ZacBuilder<native.AlignmentGeometry>;
        repeat?: ZacBuilder<native.ImageRepeat>;
        centerSlice?: ZacBuilder<native.Rect>;
        matchTextDirection?: ZacBuilder<boolean>;
        gaplessPlayback?: ZacBuilder<boolean>;
        isAntiAlias?: ZacBuilder<boolean>;
        package?: ZacBuilder<string>;
        filterQuality?: ZacBuilder<native.FilterQuality>;
        cacheWidth?: ZacBuilder<number>;
        cacheHeight?: ZacBuilder<number>;
    }): Image;
}
export declare class ImageRepeat extends ZacBuilder<native.ImageRepeat> {
    static noRepeat(): ImageRepeat;
    static repeat(): ImageRepeat;
    static repeatX(): ImageRepeat;
    static repeatY(): ImageRepeat;
}
export declare class IndexedStack extends ZacBuilder<native.IndexedStack> {
    static new(data?: {
        key?: ZacBuilder<native.Key>;
        alignment?: ZacBuilder<native.AlignmentGeometry>;
        textDirection?: ZacBuilder<native.TextDirection>;
        sizing?: ZacBuilder<native.StackFit>;
        index?: ZacBuilder<number>;
        children?: ZacListBuilder<native.Widget>;
    }): IndexedStack;
}
export declare class InputDecoration extends ZacBuilder<native.InputDecoration> {
    static new(data?: {
        icon?: ZacBuilder<native.Widget>;
        iconColor?: ZacBuilder<native.Color>;
        label?: ZacBuilder<native.Widget>;
        labelText?: ZacBuilder<string>;
        labelStyle?: ZacBuilder<native.TextStyle>;
        floatingLabelStyle?: ZacBuilder<native.TextStyle>;
        helperText?: ZacBuilder<string>;
        helperStyle?: ZacBuilder<native.TextStyle>;
        helperMaxLines?: ZacBuilder<number>;
        hintText?: ZacBuilder<string>;
        hintStyle?: ZacBuilder<native.TextStyle>;
        hintTextDirection?: ZacBuilder<native.TextDirection>;
        hintMaxLines?: ZacBuilder<number>;
        errorText?: ZacBuilder<string>;
        errorStyle?: ZacBuilder<native.TextStyle>;
        errorMaxLines?: ZacBuilder<number>;
        isCollapsed?: ZacBuilder<boolean>;
        isDense?: ZacBuilder<boolean>;
        contentPadding?: ZacBuilder<native.EdgeInsetsGeometry>;
        prefixIcon?: ZacBuilder<native.Widget>;
        prefixIconConstraints?: ZacBuilder<native.BoxConstraints>;
        prefix?: ZacBuilder<native.Widget>;
        prefixText?: ZacBuilder<string>;
        prefixStyle?: ZacBuilder<native.TextStyle>;
        prefixIconColor?: ZacBuilder<native.Color>;
        suffixIcon?: ZacBuilder<native.Widget>;
        suffix?: ZacBuilder<native.Widget>;
        suffixText?: ZacBuilder<string>;
        suffixStyle?: ZacBuilder<native.TextStyle>;
        suffixIconColor?: ZacBuilder<native.Color>;
        suffixIconConstraints?: ZacBuilder<native.BoxConstraints>;
        counter?: ZacBuilder<native.Widget>;
        counterText?: ZacBuilder<string>;
        counterStyle?: ZacBuilder<native.TextStyle>;
        filled?: ZacBuilder<boolean>;
        fillColor?: ZacBuilder<native.Color>;
        focusColor?: ZacBuilder<native.Color>;
        hoverColor?: ZacBuilder<native.Color>;
        errorBorder?: ZacBuilder<native.InputBorder>;
        focusedBorder?: ZacBuilder<native.InputBorder>;
        focusedErrorBorder?: ZacBuilder<native.InputBorder>;
        disabledBorder?: ZacBuilder<native.InputBorder>;
        enabledBorder?: ZacBuilder<native.InputBorder>;
        border?: ZacBuilder<native.InputBorder>;
        enabled?: ZacBuilder<boolean>;
        semanticCounterText?: ZacBuilder<string>;
        alignLabelWithHint?: ZacBuilder<boolean>;
        constraints?: ZacBuilder<native.BoxConstraints>;
    }): InputDecoration;
}
export declare class InteractiveViewer extends ZacBuilder<native.InteractiveViewer> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        child: ZacBuilder<native.Widget>;
        clipBehavior?: ZacBuilder<native.Clip>;
        alignPanAxis?: ZacBuilder<boolean>;
        boundaryMargin?: ZacBuilder<native.EdgeInsets>;
        constrained?: ZacBuilder<boolean>;
        maxScale?: ZacBuilder<number>;
        minScale?: ZacBuilder<number>;
        onInteractionEnd?: ZacBuilder<Array<ZacAction>>;
        onInteractionStart?: ZacBuilder<Array<ZacAction>>;
        onInteractionUpdate?: ZacBuilder<Array<ZacAction>>;
        panEnabled?: ZacBuilder<boolean>;
        scaleEnabled?: ZacBuilder<boolean>;
    }): InteractiveViewer;
}
export declare class IntrinsicHeight extends ZacBuilder<native.IntrinsicHeight> {
    static new(data?: {
        key?: ZacBuilder<native.Key>;
        child?: ZacBuilder<native.Widget>;
    }): IntrinsicHeight;
}
export declare class IntrinsicWidth extends ZacBuilder<native.IntrinsicWidth> {
    static new(data?: {
        key?: ZacBuilder<native.Key>;
        child?: ZacBuilder<native.Widget>;
    }): IntrinsicWidth;
}
export declare class LimitedBox extends ZacBuilder<native.LimitedBox> {
    static new(data?: {
        key?: ZacBuilder<native.Key>;
        maxWidth?: ZacBuilder<number>;
        maxHeight?: ZacBuilder<number>;
        child?: ZacBuilder<native.Widget>;
    }): LimitedBox;
}
export declare class ListTile extends ZacBuilder<native.ListTile> {
    static new(data?: {
        key?: ZacBuilder<native.Key>;
        leading?: ZacBuilder<native.Widget>;
        title?: ZacBuilder<native.Widget>;
        subtitle?: ZacBuilder<native.Widget>;
        trailing?: ZacBuilder<native.Widget>;
        isThreeLine?: ZacBuilder<boolean>;
        dense?: ZacBuilder<boolean>;
        shape?: ZacBuilder<native.ShapeBorder>;
        selectedColor?: ZacBuilder<native.Color>;
        iconColor?: ZacBuilder<native.Color>;
        textColor?: ZacBuilder<native.Color>;
        contentPadding?: ZacBuilder<native.EdgeInsetsGeometry>;
        enabled?: ZacBuilder<boolean>;
        onTap?: ZacBuilder<Array<ZacAction>>;
        onLongPress?: ZacBuilder<Array<ZacAction>>;
        selected?: ZacBuilder<boolean>;
        focusColor?: ZacBuilder<native.Color>;
        hoverColor?: ZacBuilder<native.Color>;
        autofocus?: ZacBuilder<boolean>;
        tileColor?: ZacBuilder<native.Color>;
        selectedTileColor?: ZacBuilder<native.Color>;
        enableFeedback?: ZacBuilder<boolean>;
        horizontalTitleGap?: ZacBuilder<number>;
        minVerticalPadding?: ZacBuilder<number>;
        minLeadingWidth?: ZacBuilder<number>;
    }): ListTile;
}
export declare class ListView extends ZacBuilder<native.ListView> {
    static new(data?: {
        key?: ZacBuilder<native.Key>;
        scrollDirection?: ZacBuilder<native.Axis>;
        reverse?: ZacBuilder<boolean>;
        controller?: ZacBuilder<native.ScrollController>;
        primary?: ZacBuilder<boolean>;
        physics?: ZacBuilder<native.ScrollPhysics>;
        shrinkWrap?: ZacBuilder<boolean>;
        padding?: ZacBuilder<native.EdgeInsetsGeometry>;
        itemExtent?: ZacBuilder<number>;
        prototypeItem?: ZacBuilder<native.Widget>;
        addAutomaticKeepAlives?: ZacBuilder<boolean>;
        addRepaintBoundaries?: ZacBuilder<boolean>;
        addSemanticIndexes?: ZacBuilder<boolean>;
        cacheExtent?: ZacBuilder<number>;
        children?: ZacListBuilder<native.Widget>;
        semanticChildCount?: ZacBuilder<number>;
        keyboardDismissBehavior?: ZacBuilder<native.ScrollViewKeyboardDismissBehavior>;
        restorationId?: ZacBuilder<string>;
        clipBehavior?: ZacBuilder<native.Clip>;
    }): ListView;
}
export declare class Locale extends ZacBuilder<native.Locale> {
    static new(data: {
        languageCode: string;
        countryCode?: string;
    }): Locale;
}
export declare class MainAxisAlignment extends ZacBuilder<native.MainAxisAlignment> {
    static start(): MainAxisAlignment;
    static end(): MainAxisAlignment;
    static center(): MainAxisAlignment;
    static spaceBetween(): MainAxisAlignment;
    static spaceAround(): MainAxisAlignment;
    static spaceEvenly(): MainAxisAlignment;
}
export declare class MainAxisSize extends ZacBuilder<native.MainAxisSize> {
    static min(): MainAxisSize;
    static max(): MainAxisSize;
}
export declare class Material extends ZacBuilder<native.Material> {
    static new(data?: {
        key?: ZacBuilder<native.Key>;
        child?: ZacBuilder<native.Widget>;
        elevation?: ZacBuilder<number>;
        color?: ZacBuilder<native.Color>;
        shadowColor?: ZacBuilder<native.Color>;
        textStyle?: ZacBuilder<native.TextStyle>;
        borderRadius?: ZacBuilder<native.BorderRadiusGeometry>;
        shape?: ZacBuilder<native.ShapeBorder>;
        borderOnForeground?: ZacBuilder<boolean>;
        clipBehavior?: ZacBuilder<native.Clip>;
    }): Material;
}
export declare class MaterialApp extends ZacBuilder<native.MaterialApp> {
    static new(data?: {
        key?: ZacBuilder<native.Key>;
        navigatorKey?: ZacBuilder<native.GlobalKey>;
        scaffoldMessengerKey?: ZacBuilder<native.GlobalKey>;
        home?: ZacBuilder<native.Widget>;
        initialRoute?: ZacBuilder<string>;
        onGenerateRoute?: RouteFactory;
        onUnknownRoute?: RouteFactory;
        title?: ZacBuilder<string>;
        color?: ZacBuilder<native.Color>;
        locale?: ZacBuilder<native.Locale>;
        debugShowMaterialGrid?: ZacBuilder<boolean>;
        showPerformanceOverlay?: ZacBuilder<boolean>;
        checkerboardRasterCacheImages?: ZacBuilder<boolean>;
        checkerboardOffscreenLayers?: ZacBuilder<boolean>;
        showSemanticsDebugger?: ZacBuilder<boolean>;
        debugShowCheckedModeBanner?: ZacBuilder<boolean>;
        restorationScopeId?: ZacBuilder<string>;
        useInheritedMediaQuery?: ZacBuilder<boolean>;
    }): MaterialApp;
}
export declare class MaterialBanner extends ZacBuilder<native.MaterialBanner> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        content: ZacBuilder<native.Widget>;
        contentTextStyle?: ZacBuilder<native.TextStyle>;
        actions: ZacListBuilder<native.Widget>;
        elevation?: ZacBuilder<number>;
        leading: ZacBuilder<native.Widget>;
        backgroundColor?: ZacBuilder<native.Color>;
        padding?: ZacBuilder<native.EdgeInsetsGeometry>;
        leadingPadding?: ZacBuilder<native.EdgeInsetsGeometry>;
        forceActionsBelow?: ZacBuilder<boolean>;
        onVisible?: ZacBuilder<Array<ZacAction>>;
    }): MaterialBanner;
}
export declare class MaterialPageRoute extends ZacBuilder<native.Route> {
    static new(data: {
        settings?: ZacBuilder<native.RouteSettings>;
        maintainState?: ZacBuilder<boolean>;
        fullscreenDialog?: ZacBuilder<boolean>;
        child: ZacBuilder<native.Widget>;
        nameOfSharedArguments?: ZacBuilder<string>;
    }): MaterialPageRoute;
}
export declare class Navigator extends ZacBuilder<native.Navigator> {
    static new(data?: {
        key?: ZacBuilder<native.Key>;
        onGenerateRoute?: RouteFactory;
        onUnknownRoute?: RouteFactory;
        initialRoute?: ZacBuilder<string>;
        requestFocus?: ZacBuilder<boolean>;
    }): Navigator;
}
export declare class NavigatorState extends ZacBuilder<native.NavigatorState> {
    static closest(): NavigatorState;
    static root(): NavigatorState;
    static shared(data: {
        value: ZacBuilder<native.GlobalKey>;
    }): NavigatorState;
}
export declare class Offset extends ZacBuilder<native.Offset> {
    static new(data: {
        dx: ZacBuilder<number>;
        dy: ZacBuilder<number>;
    }): Offset;
    static fromDirection(data: {
        direction: ZacBuilder<number>;
        distance?: ZacBuilder<number>;
    }): Offset;
}
export declare class Offstage extends ZacBuilder<native.Offstage> {
    static new(data?: {
        key?: ZacBuilder<native.Key>;
        offstage?: ZacBuilder<boolean>;
        child?: ZacBuilder<native.Widget>;
    }): Offstage;
}
export declare class Opacity extends ZacBuilder<native.Opacity> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        opacity: ZacBuilder<number>;
        alwaysIncludeSemantics?: ZacBuilder<boolean>;
        child?: ZacBuilder<native.Widget>;
    }): Opacity;
}
export declare class OutlineInputBorder extends ZacBuilder<native.OutlineInputBorder> {
    static new(data?: {
        borderSide?: ZacBuilder<native.BorderSide>;
        borderRadius?: ZacBuilder<native.BorderRadius>;
        gapPadding?: ZacBuilder<number>;
    }): OutlineInputBorder;
}
export declare class OutlinedButton extends ZacBuilder<native.OutlinedButton> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        child: ZacBuilder<native.Widget>;
        onPressed?: ZacBuilder<Array<ZacAction>>;
        onLongPress?: ZacBuilder<Array<ZacAction>>;
        autofocus?: ZacBuilder<boolean>;
        clipBehavior?: ZacBuilder<native.Clip>;
    }): OutlinedButton;
    static icon(data: {
        key?: ZacBuilder<native.Key>;
        icon: ZacBuilder<native.Widget>;
        label: ZacBuilder<native.Widget>;
        onPressed?: ZacBuilder<Array<ZacAction>>;
        onLongPress?: ZacBuilder<Array<ZacAction>>;
        autofocus?: ZacBuilder<boolean>;
        clipBehavior?: ZacBuilder<native.Clip>;
    }): OutlinedButton;
}
export declare class OverflowBox extends ZacBuilder<native.OverflowBox> {
    static new(data?: {
        key?: ZacBuilder<native.Key>;
        alignment?: ZacBuilder<native.AlignmentGeometry>;
        minWidth?: ZacBuilder<number>;
        maxWidth?: ZacBuilder<number>;
        minHeight?: ZacBuilder<number>;
        maxHeight?: ZacBuilder<number>;
        child?: ZacBuilder<native.Widget>;
    }): OverflowBox;
}
export declare class Padding extends ZacBuilder<native.Padding> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        padding: ZacBuilder<native.EdgeInsetsGeometry>;
        child?: ZacBuilder<native.Widget>;
    }): Padding;
}
export declare class PageRouteBuilder extends ZacBuilder<native.Route> {
    static new(data: {
        settings?: ZacBuilder<native.RouteSettings>;
        opaque?: ZacBuilder<boolean>;
        barrierDismissible?: ZacBuilder<boolean>;
        barrierColor?: ZacBuilder<native.Color>;
        barrierLabel?: ZacBuilder<string>;
        maintainState?: ZacBuilder<boolean>;
        fullscreenDialog?: ZacBuilder<boolean>;
        child: ZacBuilder<native.Widget>;
        nameOfSharedArguments?: ZacBuilder<string>;
    }): PageRouteBuilder;
}
export declare class Positioned extends ZacBuilder<native.Positioned> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        left?: ZacBuilder<number>;
        top?: ZacBuilder<number>;
        right?: ZacBuilder<number>;
        bottom?: ZacBuilder<number>;
        width?: ZacBuilder<number>;
        height?: ZacBuilder<number>;
        child: ZacBuilder<native.Widget>;
    }): Positioned;
    static directional(data: {
        key?: ZacBuilder<native.Key>;
        textDirection: ZacBuilder<native.TextDirection>;
        start?: ZacBuilder<number>;
        top?: ZacBuilder<number>;
        end?: ZacBuilder<number>;
        bottom?: ZacBuilder<number>;
        width?: ZacBuilder<number>;
        height?: ZacBuilder<number>;
        child: ZacBuilder<native.Widget>;
    }): Positioned;
    static fill(data: {
        key?: ZacBuilder<native.Key>;
        left?: ZacBuilder<number>;
        top?: ZacBuilder<number>;
        right?: ZacBuilder<number>;
        bottom?: ZacBuilder<number>;
        child: ZacBuilder<native.Widget>;
    }): Positioned;
}
export declare class ProgressIndicator extends ZacBuilder<native.ProgressIndicator> {
    static linear(data?: {
        key?: ZacBuilder<native.Key>;
        value?: ZacBuilder<number>;
        backgroundColor?: ZacBuilder<native.Color>;
        color?: ZacBuilder<native.Color>;
        minHeight?: ZacBuilder<number>;
        semanticsLabel?: ZacBuilder<string>;
        semanticsValue?: ZacBuilder<string>;
    }): ProgressIndicator;
    static circular(data?: {
        key?: ZacBuilder<native.Key>;
        value?: ZacBuilder<number>;
        backgroundColor?: ZacBuilder<native.Color>;
        color?: ZacBuilder<native.Color>;
        strokeWidth?: ZacBuilder<number>;
        semanticsLabel?: ZacBuilder<string>;
        semanticsValue?: ZacBuilder<string>;
    }): ProgressIndicator;
}
export declare class Radius extends ZacBuilder<native.Radius> {
    static circular(data: {
        radius: ZacBuilder<number>;
    }): Radius;
    static elliptical(data: {
        x: ZacBuilder<number>;
        y: ZacBuilder<number>;
    }): Radius;
}
export declare class Rect extends ZacBuilder<native.Rect> {
    static fromCenter(data: {
        center: Offset;
        width: ZacBuilder<number>;
        height: ZacBuilder<number>;
    }): Rect;
    static fromCircle(data: {
        center: Offset;
        radius: ZacBuilder<number>;
    }): Rect;
    static fromLTRB(data: {
        left: ZacBuilder<number>;
        top: ZacBuilder<number>;
        right: ZacBuilder<number>;
        bottom: ZacBuilder<number>;
    }): Rect;
    static fromLTWH(data: {
        left: ZacBuilder<number>;
        top: ZacBuilder<number>;
        width: ZacBuilder<number>;
        height: ZacBuilder<number>;
    }): Rect;
    static fromPoints(data: {
        a: Offset;
        b: Offset;
    }): Rect;
}
export declare class RefreshIndicator extends ZacBuilder<native.RefreshIndicator> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        child: ZacBuilder<native.Widget>;
        displacement?: ZacBuilder<number>;
        edgeOffset?: ZacBuilder<number>;
        onRefresh: ZacBuilder<Array<ZacAction>>;
        color?: ZacBuilder<native.Color>;
        backgroundColor?: ZacBuilder<native.Color>;
        semanticsLabel?: ZacBuilder<string>;
        semanticsValue?: ZacBuilder<string>;
        strokeWidth?: ZacBuilder<number>;
        triggerMode?: ZacBuilder<native.RefreshIndicatorTriggerMode>;
    }): RefreshIndicator;
}
export declare class RefreshIndicatorTriggerMode extends ZacBuilder<native.RefreshIndicatorTriggerMode> {
    static onEdge(): RefreshIndicatorTriggerMode;
    static anywhere(): RefreshIndicatorTriggerMode;
}
export declare class RotatedBox extends ZacBuilder<native.RotatedBox> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        child?: ZacBuilder<native.Widget>;
        quarterTurns: number;
    }): RotatedBox;
}
export declare class RoundedRectangleBorder extends ZacBuilder<native.ShapeBorder> {
    static new(data?: {
        side?: ZacBuilder<native.BorderSide>;
        borderRadius?: ZacBuilder<native.BorderRadiusGeometry>;
    }): RoundedRectangleBorder;
}
export declare class RouteFactory extends ZacBuilder<native.RouteFactory> {
    static new(data: {
        routes: Record<string, ZacBuilder<native.Route>>;
        familyNameOfArguments: Record<string, string>;
    }): RouteFactory;
}
export declare class RouteSettings extends ZacBuilder<native.RouteSettings> {
    static new(data?: {
        name?: ZacBuilder<string>;
        arguments?: ZacBuilder<any>;
    }): RouteSettings;
}
export declare class Row extends ZacBuilder<native.Row> {
    static new(data?: {
        key?: ZacBuilder<native.Key>;
        mainAxisAlignment?: ZacBuilder<native.MainAxisAlignment>;
        mainAxisSize?: ZacBuilder<native.MainAxisSize>;
        crossAxisAlignment?: ZacBuilder<native.CrossAxisAlignment>;
        textDirection?: ZacBuilder<native.TextDirection>;
        verticalDirection?: ZacBuilder<native.VerticalDirection>;
        textBaseline?: ZacBuilder<native.TextBaseline>;
        children?: ZacListBuilder<native.Widget>;
    }): Row;
}
export declare class SafeArea extends ZacBuilder<native.SafeArea> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        left?: ZacBuilder<boolean>;
        top?: ZacBuilder<boolean>;
        right?: ZacBuilder<boolean>;
        bottom?: ZacBuilder<boolean>;
        minimum?: ZacBuilder<native.EdgeInsets>;
        maintainBottomViewPadding?: ZacBuilder<boolean>;
        child: ZacBuilder<native.Widget>;
    }): SafeArea;
}
export declare class Scaffold extends ZacBuilder<native.Scaffold> {
    static new(data?: {
        key?: ZacBuilder<native.Key>;
        appBar?: ZacBuilder<native.Widget>;
        body?: ZacBuilder<native.Widget>;
        floatingActionButton?: ZacBuilder<native.Widget>;
        persistentFooterButtons?: ZacListBuilder<native.Widget>;
        drawer?: ZacBuilder<native.Widget>;
        endDrawer?: ZacBuilder<native.Widget>;
        bottomNavigationBar?: ZacBuilder<native.Widget>;
        bottomSheet?: ZacBuilder<native.Widget>;
        backgroundColor?: ZacBuilder<native.Color>;
        resizeToAvoidBottomInset?: ZacBuilder<boolean>;
        primary?: ZacBuilder<boolean>;
        extendBody?: ZacBuilder<boolean>;
        extendBodyBehindAppBar?: ZacBuilder<boolean>;
        drawerScrimColor?: ZacBuilder<native.Color>;
        drawerEdgeDragWidth?: ZacBuilder<number>;
        drawerEnableOpenDragGesture?: ZacBuilder<boolean>;
        endDrawerEnableOpenDragGesture?: ZacBuilder<boolean>;
        restorationId?: ZacBuilder<string>;
    }): Scaffold;
}
export declare class ScrollController extends ZacBuilder<native.Widget> {
    static new(data: {
        initialScrollOffset?: ZacBuilder<number>;
        keepScrollOffset?: ZacBuilder<boolean>;
        debugLabel?: ZacBuilder<string>;
        family?: any;
        child: ZacBuilder<native.Widget>;
    }): ScrollController;
}
export declare class ScrollPhysics extends ZacBuilder<native.ScrollPhysics> {
    static alwaysScrollable(data?: {
        parent?: ScrollPhysics;
    }): ScrollPhysics;
    static bouncingScroll(data?: {
        parent?: ScrollPhysics;
    }): ScrollPhysics;
    static clampingScrollPhysics(data?: {
        parent?: ScrollPhysics;
    }): ScrollPhysics;
}
export declare class ScrollViewKeyboardDismissBehavior extends ZacBuilder<native.ScrollViewKeyboardDismissBehavior> {
    static manual(): ScrollViewKeyboardDismissBehavior;
    static onDrag(): ScrollViewKeyboardDismissBehavior;
}
export declare class SelectableText extends ZacBuilder<native.SelectableText> {
    static new(data: {
        data: string;
        key?: ZacBuilder<native.Key>;
        style?: ZacBuilder<native.TextStyle>;
        strutStyle?: ZacBuilder<native.StrutStyle>;
        textAlign?: ZacBuilder<native.TextAlign>;
        textDirection?: ZacBuilder<native.TextDirection>;
        textScaleFactor?: ZacBuilder<number>;
        showCursor?: ZacBuilder<boolean>;
        autofocus?: ZacBuilder<boolean>;
        minLines?: ZacBuilder<number>;
        maxLines?: ZacBuilder<number>;
        cursorWidth?: ZacBuilder<number>;
        cursorHeight?: ZacBuilder<number>;
        cursorRadius?: ZacBuilder<native.Radius>;
        cursorColor?: ZacBuilder<native.Color>;
        enableInteractiveSelection?: ZacBuilder<boolean>;
        semanticsLabel?: ZacBuilder<string>;
        textHeightBehavior?: ZacBuilder<native.TextHeightBehavior>;
        textWidthBasis?: ZacBuilder<native.TextWidthBasis>;
    }): SelectableText;
}
export declare class Shadow extends ZacBuilder<native.Shadow> {
    static new(data?: {
        color?: ZacBuilder<native.Color>;
        offset?: ZacBuilder<native.Offset>;
        blurRadius?: ZacBuilder<number>;
    }): Shadow;
}
export declare class ShapeDecoration extends ZacBuilder<native.ShapeDecoration> {
    static new(data: {
        color?: ZacBuilder<native.Color>;
        image?: ZacBuilder<native.DecorationImage>;
        gradient?: ZacBuilder<native.Gradient>;
        shadows?: Array<BoxShadow>;
        shape: ZacBuilder<native.ShapeBorder>;
    }): ShapeDecoration;
}
export declare class SingleChildScrollView extends ZacBuilder<native.SingleChildScrollView> {
    static new(data?: {
        key?: ZacBuilder<native.Key>;
        scrollDirection?: ZacBuilder<native.Axis>;
        reverse?: ZacBuilder<boolean>;
        padding?: ZacBuilder<native.EdgeInsetsGeometry>;
        primary?: ZacBuilder<boolean>;
        controller?: ZacBuilder<native.ScrollController>;
        child?: ZacBuilder<native.Widget>;
        clipBehavior?: ZacBuilder<native.Clip>;
        restorationId?: ZacBuilder<string>;
        keyboardDismissBehavior?: ZacBuilder<native.ScrollViewKeyboardDismissBehavior>;
    }): SingleChildScrollView;
}
export declare class Size extends ZacBuilder<native.Size> {
    static new(data: {
        width: ZacBuilder<number>;
        height: ZacBuilder<number>;
    }): Size;
}
export declare class SizedBox extends ZacBuilder<native.SizedBox> {
    static new(data?: {
        key?: ZacBuilder<native.Key>;
        width?: ZacBuilder<number>;
        height?: ZacBuilder<number>;
        child?: ZacBuilder<native.Widget>;
    }): SizedBox;
    static expand(data?: {
        key?: ZacBuilder<native.Key>;
        child?: ZacBuilder<native.Widget>;
    }): SizedBox;
    static fromSize(data?: {
        key?: ZacBuilder<native.Key>;
        child?: ZacBuilder<native.Widget>;
        size?: ZacBuilder<native.Size>;
    }): SizedBox;
    static shrink(data?: {
        key?: ZacBuilder<native.Key>;
        child?: ZacBuilder<native.Widget>;
    }): SizedBox;
    static square(data?: {
        key?: ZacBuilder<native.Key>;
        child?: ZacBuilder<native.Widget>;
        dimension?: ZacBuilder<number>;
    }): SizedBox;
}
export declare class SizedOverflowBox extends ZacBuilder<native.SizedOverflowBox> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        size: ZacBuilder<native.Size>;
        alignment?: ZacBuilder<native.AlignmentGeometry>;
        child?: ZacBuilder<native.Widget>;
    }): SizedOverflowBox;
}
export declare class SliverChildDelegate extends ZacBuilder<native.SliverChildDelegate> {
    static list(data: {
        children: ZacListBuilder<native.Widget>;
        addAutomaticKeepAlives?: ZacBuilder<boolean>;
        addRepaintBoundaries?: ZacBuilder<boolean>;
        addSemanticIndexes?: ZacBuilder<boolean>;
        semanticIndexOffset?: ZacBuilder<number>;
    }): SliverChildDelegate;
    static listFixed(data: {
        children: ZacListBuilder<native.Widget>;
        addAutomaticKeepAlives?: ZacBuilder<boolean>;
        addRepaintBoundaries?: ZacBuilder<boolean>;
        addSemanticIndexes?: ZacBuilder<boolean>;
        semanticIndexOffset?: ZacBuilder<number>;
    }): SliverChildDelegate;
}
export declare class SliverGrid extends ZacBuilder<native.SliverGrid> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        delegate: SliverChildDelegate;
        gridDelegate: SliverGridDelegate;
    }): SliverGrid;
}
export declare class SliverGridDelegate extends ZacBuilder<native.SliverGridDelegate> {
    static withFixedCrossAxisCount(data: {
        crossAxisCount: number;
        mainAxisSpacing?: ZacBuilder<number>;
        crossAxisSpacing?: ZacBuilder<number>;
        childAspectRatio?: ZacBuilder<number>;
        mainAxisExtent?: ZacBuilder<number>;
    }): SliverGridDelegate;
    static withMaxCrossAxisExtent(data: {
        maxCrossAxisExtent: ZacBuilder<number>;
        mainAxisSpacing?: ZacBuilder<number>;
        crossAxisSpacing?: ZacBuilder<number>;
        childAspectRatio?: ZacBuilder<number>;
        mainAxisExtent?: ZacBuilder<number>;
    }): SliverGridDelegate;
}
export declare class SliverList extends ZacBuilder<native.SliverList> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        delegate: SliverChildDelegate;
    }): SliverList;
}
export declare class SliverPadding extends ZacBuilder<native.SliverPadding> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        sliver?: ZacBuilder<native.Widget>;
        padding: ZacBuilder<native.EdgeInsetsGeometry>;
    }): SliverPadding;
}
export declare class SliverToBoxAdapter extends ZacBuilder<native.SliverToBoxAdapter> {
    static new(data?: {
        key?: ZacBuilder<native.Key>;
        child?: ZacBuilder<native.Widget>;
    }): SliverToBoxAdapter;
}
export declare class SmartDashesType extends ZacBuilder<native.SmartDashesType> {
    static disabled(): SmartDashesType;
    static enabled(): SmartDashesType;
}
export declare class SmartQuotesType extends ZacBuilder<native.SmartQuotesType> {
    static disabled(): SmartQuotesType;
    static enabled(): SmartQuotesType;
}
export declare class SnackBar extends ZacBuilder<native.SnackBar> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        content: ZacBuilder<native.Widget>;
        backgroundColor?: ZacBuilder<native.Color>;
        elevation?: ZacBuilder<number>;
        margin?: ZacBuilder<native.EdgeInsetsGeometry>;
        padding?: ZacBuilder<native.EdgeInsetsGeometry>;
        width?: ZacBuilder<number>;
        shape?: ZacBuilder<native.ShapeBorder>;
        behavior?: SnackBarBehavior;
        action?: SnackBarAction;
        onVisible?: ZacBuilder<Array<ZacAction>>;
    }): SnackBar;
}
export declare class SnackBarAction extends ZacBuilder<native.SnackBarAction> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        textColor?: ZacBuilder<native.Color>;
        disabledTextColor?: ZacBuilder<native.Color>;
        label: string;
        onPressed: ZacBuilder<Array<ZacAction>>;
    }): SnackBarAction;
}
export declare class SnackBarBehavior extends ZacBuilder<native.SnackBarBehavior> {
    static fixed(): SnackBarBehavior;
    static floating(): SnackBarBehavior;
}
export declare class Spacer extends ZacBuilder<native.Spacer> {
    static new(data?: {
        key?: ZacBuilder<native.Key>;
        flex?: ZacBuilder<number>;
    }): Spacer;
}
export declare class Stack extends ZacBuilder<native.Stack> {
    static new(data?: {
        key?: ZacBuilder<native.Key>;
        alignment?: ZacBuilder<native.AlignmentGeometry>;
        textDirection?: ZacBuilder<native.TextDirection>;
        fit?: ZacBuilder<native.StackFit>;
        clipBehavior?: ZacBuilder<native.Clip>;
        children?: ZacListBuilder<native.Widget>;
    }): Stack;
}
export declare class StackFit extends ZacBuilder<native.StackFit> {
    static expand(): StackFit;
    static loose(): StackFit;
    static passthrough(): StackFit;
}
export declare class StrutStyle extends ZacBuilder<native.StrutStyle> {
    static new(data?: {
        fontFamily?: ZacBuilder<string>;
        fontFamilyFallback?: Array<string>;
        fontSize?: ZacBuilder<number>;
        height?: ZacBuilder<number>;
        leadingDistribution?: ZacBuilder<native.TextLeadingDistribution>;
        leading?: ZacBuilder<number>;
        fontWeight?: ZacBuilder<native.FontWeight>;
        fontStyle?: ZacBuilder<native.FontStyle>;
        forceStrutHeight?: ZacBuilder<boolean>;
        debugLabel?: ZacBuilder<string>;
        package?: ZacBuilder<string>;
    }): StrutStyle;
    static fromTextStyle(data: {
        textStyle: TextStyle;
        fontFamily?: ZacBuilder<string>;
        fontFamilyFallback?: Array<string>;
        fontSize?: ZacBuilder<number>;
        height?: ZacBuilder<number>;
        leadingDistribution?: ZacBuilder<native.TextLeadingDistribution>;
        leading?: ZacBuilder<number>;
        fontWeight?: ZacBuilder<native.FontWeight>;
        fontStyle?: ZacBuilder<native.FontStyle>;
        forceStrutHeight?: ZacBuilder<boolean>;
        debugLabel?: ZacBuilder<string>;
        package?: ZacBuilder<string>;
    }): StrutStyle;
}
export declare class SystemUiOverlayStyle extends ZacBuilder<native.SystemUiOverlayStyle> {
    static new(data?: {
        systemNavigationBarColor?: ZacBuilder<native.Color>;
        systemNavigationBarDividerColor?: ZacBuilder<native.Color>;
        systemNavigationBarIconBrightness?: ZacBuilder<native.Brightness>;
        systemNavigationBarContrastEnforced?: ZacBuilder<boolean>;
        statusBarColor?: ZacBuilder<native.Color>;
        statusBarBrightness?: ZacBuilder<native.Brightness>;
        statusBarIconBrightness?: ZacBuilder<native.Brightness>;
        systemStatusBarContrastEnforced?: ZacBuilder<boolean>;
    }): SystemUiOverlayStyle;
}
export declare class Text extends ZacBuilder<native.Text> {
    static new(data: {
        data: ZacBuilder<string>;
        key?: ZacBuilder<native.Key>;
        style?: ZacBuilder<native.TextStyle>;
        strutStyle?: ZacBuilder<native.StrutStyle>;
        textAlign?: ZacBuilder<native.TextAlign>;
        textDirection?: ZacBuilder<native.TextDirection>;
        locale?: ZacBuilder<native.Locale>;
        softWrap?: ZacBuilder<boolean>;
        overflow?: ZacBuilder<native.TextOverflow>;
        textScaleFactor?: ZacBuilder<number>;
        maxLines?: ZacBuilder<number>;
        semanticsLabel?: ZacBuilder<string>;
        textWidthBasis?: ZacBuilder<native.TextWidthBasis>;
        textHeightBehavior?: ZacBuilder<native.TextHeightBehavior>;
    }): Text;
}
export declare class TextAlign extends ZacBuilder<native.TextAlign> {
    static center(): TextAlign;
    static end(): TextAlign;
    static justify(): TextAlign;
    static left(): TextAlign;
    static right(): TextAlign;
    static start(): TextAlign;
}
export declare class TextAlignVertical extends ZacBuilder<native.TextAlignVertical> {
    static new(data: {
        y: ZacBuilder<number>;
    }): TextAlignVertical;
    static bottom(): TextAlignVertical;
    static center(): TextAlignVertical;
    static top(): TextAlignVertical;
}
export declare class TextBaseline extends ZacBuilder<native.TextBaseline> {
    static alphabetic(): TextBaseline;
    static ideographic(): TextBaseline;
}
export declare class TextButton extends ZacBuilder<native.TextButton> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        child: ZacBuilder<native.Widget>;
        onPressed?: ZacBuilder<Array<ZacAction>>;
        onLongPress?: ZacBuilder<Array<ZacAction>>;
        autofocus?: ZacBuilder<boolean>;
        clipBehavior?: ZacBuilder<native.Clip>;
    }): TextButton;
    static icon(data: {
        key?: ZacBuilder<native.Key>;
        icon: ZacBuilder<native.Widget>;
        label: ZacBuilder<native.Widget>;
        onPressed?: ZacBuilder<Array<ZacAction>>;
        onLongPress?: ZacBuilder<Array<ZacAction>>;
        autofocus?: ZacBuilder<boolean>;
        clipBehavior?: ZacBuilder<native.Clip>;
    }): TextButton;
}
export declare class TextCapitalization extends ZacBuilder<native.TextCapitalization> {
    static characters(): TextCapitalization;
    static none(): TextCapitalization;
    static sentences(): TextCapitalization;
    static words(): TextCapitalization;
}
export declare class TextDecoration extends ZacBuilder<native.TextDecoration> {
    static lineThrough(): TextDecoration;
    static none(): TextDecoration;
    static overline(): TextDecoration;
    static underline(): TextDecoration;
}
export declare class TextDecorationStyle extends ZacBuilder<native.TextDecorationStyle> {
    static dashed(): TextDecorationStyle;
    static dotted(): TextDecorationStyle;
    static double(): TextDecorationStyle;
    static solid(): TextDecorationStyle;
    static wavy(): TextDecorationStyle;
}
export declare class TextDirection extends ZacBuilder<native.TextDirection> {
    static rtl(): TextDirection;
    static ltr(): TextDirection;
}
export declare class TextField extends ZacBuilder<native.TextField> {
    static new(data?: {
        key?: ZacBuilder<native.Key>;
        decoration?: ZacBuilder<native.InputDecoration>;
        keyboardType?: ZacBuilder<native.TextInputType>;
        textInputAction?: ZacBuilder<native.TextInputAction>;
        textCapitalization?: ZacBuilder<native.TextCapitalization>;
        style?: ZacBuilder<native.TextStyle>;
        strutStyle?: ZacBuilder<native.StrutStyle>;
        textAlign?: ZacBuilder<native.TextAlign>;
        textAlignVertical?: ZacBuilder<native.TextAlignVertical>;
        textDirection?: ZacBuilder<native.TextDirection>;
        readOnly?: ZacBuilder<boolean>;
        showCursor?: ZacBuilder<boolean>;
        autofocus?: ZacBuilder<boolean>;
        obscuringCharacter?: ZacBuilder<string>;
        obscureText?: ZacBuilder<boolean>;
        autocorrect?: ZacBuilder<boolean>;
        smartDashesType?: ZacBuilder<native.SmartDashesType>;
        smartQuotesType?: ZacBuilder<native.SmartQuotesType>;
        enableSuggestions?: ZacBuilder<boolean>;
        maxLines?: ZacBuilder<number>;
        minLines?: ZacBuilder<number>;
        expands?: ZacBuilder<boolean>;
        maxLength?: ZacBuilder<number>;
        onChanged?: ZacBuilder<Array<ZacAction>>;
        onEditingComplete?: ZacBuilder<Array<ZacAction>>;
        onSubmitted?: ZacBuilder<Array<ZacAction>>;
        enabled?: ZacBuilder<boolean>;
        cursorWidth?: ZacBuilder<number>;
        cursorHeight?: ZacBuilder<number>;
        cursorRadius?: ZacBuilder<native.Radius>;
        cursorColor?: ZacBuilder<native.Color>;
        selectionHeightStyle?: ZacBuilder<native.BoxHeightStyle>;
        selectionWidthStyle?: ZacBuilder<native.BoxWidthStyle>;
        keyboardAppearance?: ZacBuilder<native.Brightness>;
        scrollPadding?: ZacBuilder<native.EdgeInsets>;
        enableInteractiveSelection?: ZacBuilder<boolean>;
        onTap?: ZacBuilder<Array<ZacAction>>;
        scrollController?: ZacBuilder<native.ScrollController>;
        clipBehavior?: ZacBuilder<native.Clip>;
        restorationId?: ZacBuilder<string>;
        enableIMEPersonalizedLearning?: ZacBuilder<boolean>;
    }): TextField;
}
export declare class TextHeightBehavior extends ZacBuilder<native.TextHeightBehavior> {
    static new(data?: {
        applyHeightToFirstAscent?: ZacBuilder<boolean>;
        applyHeightToLastDescent?: ZacBuilder<boolean>;
        leadingDistribution?: ZacBuilder<native.TextLeadingDistribution>;
    }): TextHeightBehavior;
}
export declare class TextInputAction extends ZacBuilder<native.TextInputAction> {
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
export declare class TextInputType extends ZacBuilder<native.TextInputType> {
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
export declare class TextLeadingDistribution extends ZacBuilder<native.TextLeadingDistribution> {
    static even(): TextLeadingDistribution;
    static proportional(): TextLeadingDistribution;
}
export declare class TextOverflow extends ZacBuilder<native.TextOverflow> {
    static clip(): TextOverflow;
    static ellipsis(): TextOverflow;
    static fade(): TextOverflow;
    static visible(): TextOverflow;
}
export declare class TextStyle extends ZacBuilder<native.TextStyle> {
    static new(data?: {
        inherit?: ZacBuilder<boolean>;
        color?: ZacBuilder<native.Color>;
        backgroundColor?: ZacBuilder<native.Color>;
        fontSize?: ZacBuilder<number>;
        fontWeight?: ZacBuilder<native.FontWeight>;
        fontStyle?: ZacBuilder<native.FontStyle>;
        letterSpacing?: ZacBuilder<number>;
        wordSpacing?: ZacBuilder<number>;
        textBaseline?: ZacBuilder<native.TextBaseline>;
        height?: ZacBuilder<number>;
        leadingDistribution?: ZacBuilder<native.TextLeadingDistribution>;
        locale?: ZacBuilder<native.Locale>;
        shadows?: ZacListBuilder<native.Shadow>;
        fontFeatures?: ZacListBuilder<native.FontFeature>;
        decoration?: ZacBuilder<native.TextDecoration>;
        decorationColor?: ZacBuilder<native.Color>;
        decorationStyle?: ZacBuilder<native.TextDecorationStyle>;
        decorationThickness?: ZacBuilder<number>;
        debugLabel?: ZacBuilder<string>;
        fontFamily?: ZacBuilder<string>;
        fontFamilyFallback?: ZacListBuilder<string>;
        package?: ZacBuilder<string>;
        overflow?: ZacBuilder<native.TextOverflow>;
    }): TextStyle;
}
export declare class TextWidthBasis extends ZacBuilder<native.TextWidthBasis> {
    static longestLine(): TextWidthBasis;
    static parent(): TextWidthBasis;
}
export declare class UnconstrainedBox extends ZacBuilder<native.UnconstrainedBox> {
    static new(data?: {
        key?: ZacBuilder<native.Key>;
        child?: ZacBuilder<native.Widget>;
        textDirection?: ZacBuilder<native.TextDirection>;
        alignment?: ZacBuilder<native.AlignmentGeometry>;
        constrainedAxis?: ZacBuilder<native.Axis>;
        clipBehavior?: ZacBuilder<native.Clip>;
    }): UnconstrainedBox;
}
export declare class UnderlineInputBorder extends ZacBuilder<native.UnderlineInputBorder> {
    static new(data?: {
        borderSide?: ZacBuilder<native.BorderSide>;
        borderRadius?: ZacBuilder<native.BorderRadius>;
    }): UnderlineInputBorder;
}
export declare class ValueKey extends ZacBuilder<native.ValueKey> {
    static new(data: {
        value: string;
    }): ValueKey;
}
export declare class VerticalDirection extends ZacBuilder<native.VerticalDirection> {
    static up(): VerticalDirection;
    static down(): VerticalDirection;
}
export declare class Wrap extends ZacBuilder<native.Wrap> {
    static new(data?: {
        key?: ZacBuilder<native.Key>;
        direction?: ZacBuilder<native.Axis>;
        alignment?: ZacBuilder<native.WrapAlignment>;
        spacing?: ZacBuilder<number>;
        runSpacing?: ZacBuilder<number>;
        runAlignment?: ZacBuilder<native.WrapAlignment>;
        crossAxisAlignment?: ZacBuilder<native.WrapCrossAlignment>;
        textDirection?: ZacBuilder<native.TextDirection>;
        verticalDirection?: ZacBuilder<native.VerticalDirection>;
        clipBehavior?: ZacBuilder<native.Clip>;
        children?: ZacListBuilder<native.Widget>;
    }): Wrap;
}
export declare class WrapAlignment extends ZacBuilder<native.WrapAlignment> {
    static start(): WrapAlignment;
    static end(): WrapAlignment;
    static center(): WrapAlignment;
    static spaceBetween(): WrapAlignment;
    static spaceAround(): WrapAlignment;
    static spaceEvenly(): WrapAlignment;
}
export declare class WrapCrossAlignment extends ZacBuilder<native.WrapCrossAlignment> {
    static center(): WrapCrossAlignment;
    static end(): WrapCrossAlignment;
    static start(): WrapCrossAlignment;
}
export declare class SharedValueProviderBuilder extends ZacBuilder<native.Widget> {
    static provideInt(data: {
        key?: ZacBuilder<native.Key>;
        value: number;
        family: string;
        child: ZacBuilder<native.Widget>;
        autoCreate?: boolean;
    }): SharedValueProviderBuilder;
    static provideDouble(data: {
        key?: ZacBuilder<native.Key>;
        value: number;
        family: string;
        child: ZacBuilder<native.Widget>;
        autoCreate?: boolean;
    }): SharedValueProviderBuilder;
    static provideString(data: {
        key?: ZacBuilder<native.Key>;
        value: string;
        family: string;
        child: ZacBuilder<native.Widget>;
        autoCreate?: boolean;
    }): SharedValueProviderBuilder;
    static provideBool(data: {
        key?: ZacBuilder<native.Key>;
        value: boolean;
        family: string;
        child: ZacBuilder<native.Widget>;
        autoCreate?: boolean;
    }): SharedValueProviderBuilder;
    static provideObject(data: {
        key?: ZacBuilder<native.Key>;
        value: any;
        family: string;
        child: ZacBuilder<native.Widget>;
        transformer?: ZacBuilder<Array<ZacTransformer>>;
        autoCreate?: boolean;
    }): SharedValueProviderBuilder;
    static provideNull(data: {
        key?: ZacBuilder<native.Key>;
        family: string;
        child: ZacBuilder<native.Widget>;
        autoCreate?: boolean;
    }): SharedValueProviderBuilder;
    static provideWidget(data: {
        key?: ZacBuilder<native.Key>;
        value: ZacBuilder<native.Widget>;
        family: string;
        child: ZacBuilder<native.Widget>;
        autoCreate?: boolean;
    }): SharedValueProviderBuilder;
    static provideWidgets(data: {
        key?: ZacBuilder<native.Key>;
        value: ZacListBuilder<native.Widget>;
        family: string;
        child: ZacBuilder<native.Widget>;
        autoCreate?: boolean;
    }): SharedValueProviderBuilder;
    static provideWidgetsMap(data: {
        key?: ZacBuilder<native.Key>;
        value: ZacMapBuilder<native.Widget>;
        family: string;
        child: ZacBuilder<native.Widget>;
        autoCreate?: boolean;
    }): SharedValueProviderBuilder;
    static provideAnyBuilder(data: {
        key?: ZacBuilder<native.Key>;
        value: ZacBuilder<any>;
        family: string;
        child: ZacBuilder<native.Widget>;
        autoCreate?: boolean;
    }): SharedValueProviderBuilder;
}
export declare class ZacActions extends ZacBuilder<Array<ZacAction>> {
    static new(data: {
        actions: Array<ZacAction>;
    }): ZacActions;
}
export declare class ZacCompleterVoidProvider extends ZacBuilder<native.Widget> {
    static new(data: {
        family: any;
        child: ZacBuilder<native.Widget>;
    }): ZacCompleterVoidProvider;
}
export declare class ZacExecuteActionsBuilder extends ZacBuilder<native.Widget> {
    static once(data: {
        actions: ZacBuilder<Array<ZacAction>>;
        child?: ZacBuilder<native.Widget>;
    }): ZacExecuteActionsBuilder;
    static listen(data: {
        actions: ZacBuilder<Array<ZacAction>>;
        family: any;
        child?: ZacBuilder<native.Widget>;
    }): ZacExecuteActionsBuilder;
}
export declare class ZacStateMachineBuildStateBuilder extends ZacBuilder<native.Widget> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        family: ZacBuilder<string>;
        states: Array<string>;
        unmappedStateWidget?: ZacBuilder<native.Widget>;
    }): ZacStateMachineBuildStateBuilder;
}
export declare class ZacStateMachineProviderBuilder extends ZacBuilder<native.Widget> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        family: ZacBuilder<string>;
        initialState: ZacBuilder<string>;
        states: Record<string, ZacStateConfig>;
        child: ZacBuilder<native.Widget>;
        initialContext?: ZacBuilder<any>;
    }): ZacStateMachineProviderBuilder;
}
export declare class ZacTransformers extends ZacBuilder<Array<ZacTransformer>> {
    static new(data: {
        transformers: Array<ZacTransformer>;
    }): ZacTransformers;
}
export declare class ZacUpdateContextBuilder extends ZacBuilder<native.Widget> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        child: ZacBuilder<native.Widget>;
    }): ZacUpdateContextBuilder;
}
export declare class ZacWidgetBuilder extends ZacBuilder<native.Widget> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        data: any;
    }): ZacWidgetBuilder;
    static isolate(data: {
        key?: ZacBuilder<native.Key>;
        data: any;
        errorChild?: ZacBuilder<native.Widget>;
    }): ZacWidgetBuilder;
}
export declare class BoolTransformer extends ZacTransformer {
    static negate(): BoolTransformer;
}
export declare class ConvertTransformer extends ZacTransformer {
    static new(): ConvertTransformer;
}
export declare class IntTransformer extends ZacTransformer {
    static parse(): IntTransformer;
    static tryParse(): IntTransformer;
}
export declare class IterableTransformer extends ZacTransformer {
    static map(data: {
        transformer: ZacBuilder<Array<ZacTransformer>>;
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
    static join(data?: {
        separator?: string;
    }): IterableTransformer;
    static contains(data: {
        element: ZacBuilder<any>;
    }): IterableTransformer;
    static elementAt(data: {
        index: number;
    }): IterableTransformer;
    static skip(data: {
        count: number;
    }): IterableTransformer;
    static take(data: {
        count: number;
    }): IterableTransformer;
}
export declare class JsonTransformer extends ZacTransformer {
    static encode(): JsonTransformer;
    static decode(): JsonTransformer;
}
export declare class ListTransformer extends ZacTransformer {
    static reversed(): ListTransformer;
    static add(data: {
        value: ZacBuilder<any>;
    }): ListTransformer;
}
export declare class MapTransformer extends ZacTransformer {
    static values(): MapTransformer;
    static keys(): MapTransformer;
    static entries(): MapTransformer;
    static length_(): MapTransformer;
    static isEmpty(): MapTransformer;
    static isNotEmpty(): MapTransformer;
    static containsKey(data: {
        key: ZacBuilder<any>;
    }): MapTransformer;
    static containsValue(data: {
        value: ZacBuilder<any>;
    }): MapTransformer;
    static mapper(data?: {
        keyTransformer?: ZacBuilder<Array<ZacTransformer>>;
        valueTransformer?: ZacBuilder<Array<ZacTransformer>>;
    }): MapTransformer;
    static fromObjectObject(): MapTransformer;
    static fromStringObject(): MapTransformer;
    static fromStringNullObject(): MapTransformer;
    static key(data: {
        key: ZacBuilder<string>;
    }): MapTransformer;
    static setValueForKey(data: {
        value: ZacBuilder<any>;
        key: ZacBuilder<string>;
    }): MapTransformer;
}
export declare class NumTransformer extends ZacTransformer {
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
export declare class ObjectTransformer extends ZacTransformer {
    static isList(): ObjectTransformer;
    static isMap(): ObjectTransformer;
    static isBool(): ObjectTransformer;
    static isString(): ObjectTransformer;
    static isDouble(): ObjectTransformer;
    static isInt(): ObjectTransformer;
    static isNull(): ObjectTransformer;
    static equals(data: {
        other: any;
    }): ObjectTransformer;
    static toString(): ObjectTransformer;
    static runtimeType(): ObjectTransformer;
    static hashCode(): ObjectTransformer;
    static equalsSharedValue(data: {
        value: ZacBuilder<any>;
    }): ObjectTransformer;
}
export declare class StringTransformer extends ZacTransformer {
    static length_(): StringTransformer;
    static split(data: {
        pattern: ZacBuilder<string>;
    }): StringTransformer;
    static isEmpty(): StringTransformer;
    static isNotEmpty(): StringTransformer;
    static replaceAll(data: {
        from: ZacBuilder<string>;
        replace: ZacBuilder<string>;
    }): StringTransformer;
}
export declare class ZacStateMachineTransformer extends ZacTransformer {
    static pickState(): ZacStateMachineTransformer;
    static pickContext(): ZacStateMachineTransformer;
}
export declare class DialogActions extends ZacAction {
    static showDialog(data: {
        child: ZacBuilder<native.Widget>;
        barrierDismissible?: ZacBuilder<boolean>;
        barrierColor?: ZacBuilder<native.Color>;
        barrierLabel?: ZacBuilder<string>;
        useSafeArea?: ZacBuilder<boolean>;
        useRootNavigator?: ZacBuilder<boolean>;
        routeSettings?: ZacBuilder<native.RouteSettings>;
    }): DialogActions;
}
export declare class NavigatorActions extends ZacAction {
    static push(data: {
        route: ZacBuilder<native.Route>;
        navigatorState?: ZacBuilder<native.NavigatorState>;
    }): NavigatorActions;
    static pushNamed(data: {
        routeName: ZacBuilder<string>;
        arguments?: any;
        navigatorState?: ZacBuilder<native.NavigatorState>;
    }): NavigatorActions;
    static pop(data?: {
        actions?: ZacBuilder<Array<ZacAction>>;
        navigatorState?: ZacBuilder<native.NavigatorState>;
    }): NavigatorActions;
    static maybePop(data?: {
        actions?: ZacBuilder<Array<ZacAction>>;
        navigatorState?: ZacBuilder<native.NavigatorState>;
    }): NavigatorActions;
    static pushReplacement(data: {
        route: ZacBuilder<native.Route>;
        result?: ZacBuilder<Array<ZacAction>>;
        navigatorState?: ZacBuilder<native.NavigatorState>;
    }): NavigatorActions;
    static pushReplacementNamed(data: {
        routeName: ZacBuilder<string>;
        arguments?: any;
        navigatorState?: ZacBuilder<native.NavigatorState>;
        result?: ZacBuilder<Array<ZacAction>>;
    }): NavigatorActions;
    static popUntilRouteName(data: {
        routeName: ZacBuilder<string>;
        navigatorState?: ZacBuilder<native.NavigatorState>;
    }): NavigatorActions;
}
export declare class ScaffoldActions extends ZacAction {
    static openDrawer(): ScaffoldActions;
    static openEndDrawer(): ScaffoldActions;
    static showBodyScrim(data: {
        value: boolean;
        opacity: ZacBuilder<number>;
    }): ScaffoldActions;
    static showBottomSheet(data: {
        child: ZacBuilder<native.Widget>;
        backgroundColor?: ZacBuilder<native.Color>;
        elevation?: ZacBuilder<number>;
        shape?: ZacBuilder<native.ShapeBorder>;
        clipBehavior?: ZacBuilder<native.Clip>;
        constraints?: BoxConstraints;
        enableDrag?: ZacBuilder<boolean>;
    }): ScaffoldActions;
}
export declare class ScaffoldMessenger extends ZacAction {
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
export declare class SharedValueActions extends ZacAction {
    static update(data: {
        family: any;
        transformer?: ZacBuilder<Array<ZacTransformer>>;
        ifNoPayloadTakeCurrent?: boolean;
    }): SharedValueActions;
    static invalidate(data: {
        family: any;
    }): SharedValueActions;
}
export declare class ZacCompleterActions extends ZacAction {
    static completeVoid(data: {
        completer: ZacBuilder<native.Completer>;
    }): ZacCompleterActions;
}
export declare class ZacControlFlowAction extends ZacAction {
    static ifCond(data: {
        condition: ZacBuilder<Array<ZacTransformer>>;
        ifTrue: ZacBuilder<Array<ZacAction>>;
        ifFalse?: ZacBuilder<Array<ZacAction>>;
    }): ZacControlFlowAction;
}
export declare class ZacStateMachineActions extends ZacAction {
    static send(data: {
        family: any;
        event: ZacBuilder<string>;
    }): ZacStateMachineActions;
    static trySend(data: {
        family: any;
        event: ZacBuilder<string>;
    }): ZacStateMachineActions;
}
export declare class ZacValueActions extends ZacAction {
    static asPayload(data: {
        value: ZacBuilder<any>;
        actions: ZacActions;
    }): ZacValueActions;
}
