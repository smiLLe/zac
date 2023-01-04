import { ZacConvertable, ZacBuilder, ZacListBuilder, ZacMapBuilder, ZacTransformer, ZacAction } from 'base';
import * as native from 'generated.nativetypes';
export declare class SharedValueConsumeType extends ZacConvertable {
    static watch(data: {
        select?: ZacBuilder<Array<ZacTransformer>>;
    }): SharedValueConsumeType;
    static read(): SharedValueConsumeType;
}
export declare class ZacStateConfig extends ZacConvertable {
    static new(data: {
        widget: ZacBuilder<native.Widget>;
        on: Array<ZacTransition>;
    }): ZacStateConfig;
}
export declare class ZacTransition extends ZacConvertable {
    static new(data: {
        event: string;
        target: string;
    }): ZacTransition;
}
export declare class FlutterAlign extends ZacBuilder<native.Align> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        alignment?: ZacBuilder<native.AlignmentGeometry>;
        widthFactor?: ZacBuilder<number>;
        heightFactor?: ZacBuilder<number>;
        child?: ZacBuilder<native.Widget>;
    }): FlutterAlign;
}
export declare class FlutterAlignment extends ZacBuilder<native.Alignment> {
    static new(data: {
        x: ZacBuilder<number>;
        y: ZacBuilder<number>;
    }): FlutterAlignment;
    static bottomCenter(): FlutterAlignment;
    static bottomLeft(): FlutterAlignment;
    static bottomRight(): FlutterAlignment;
    static center(): FlutterAlignment;
    static centerLeft(): FlutterAlignment;
    static centerRight(): FlutterAlignment;
    static topCenter(): FlutterAlignment;
    static topLeft(): FlutterAlignment;
    static topRight(): FlutterAlignment;
}
export declare class FlutterAlignmentDirectional extends ZacBuilder<native.AlignmentDirectional> {
    static new(data: {
        start: ZacBuilder<number>;
        y: ZacBuilder<number>;
    }): FlutterAlignmentDirectional;
    static bottomCenter(): FlutterAlignmentDirectional;
    static bottomStart(): FlutterAlignmentDirectional;
    static bottomEnd(): FlutterAlignmentDirectional;
    static center(): FlutterAlignmentDirectional;
    static centerStart(): FlutterAlignmentDirectional;
    static centerEnd(): FlutterAlignmentDirectional;
    static topCenter(): FlutterAlignmentDirectional;
    static topStart(): FlutterAlignmentDirectional;
    static topEnd(): FlutterAlignmentDirectional;
}
export declare class FlutterAppBar extends ZacBuilder<native.AppBar> {
    static new(data: {
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
    }): FlutterAppBar;
}
export declare class FlutterAspectRatio extends ZacBuilder<native.AspectRatio> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        aspectRatio: ZacBuilder<number>;
        child?: ZacBuilder<native.Widget>;
    }): FlutterAspectRatio;
}
export declare class FlutterAxis extends ZacBuilder<native.Axis> {
    static horizontal(): FlutterAxis;
    static vertical(): FlutterAxis;
}
export declare class FlutterBlendMode extends ZacBuilder<native.BlendMode> {
    static clear(): FlutterBlendMode;
    static color(): FlutterBlendMode;
    static colorBurn(): FlutterBlendMode;
    static colorDodge(): FlutterBlendMode;
    static darken(): FlutterBlendMode;
    static difference(): FlutterBlendMode;
    static dst(): FlutterBlendMode;
    static dstATop(): FlutterBlendMode;
    static dstIn(): FlutterBlendMode;
    static dstOut(): FlutterBlendMode;
    static dstOver(): FlutterBlendMode;
    static exclusion(): FlutterBlendMode;
    static hardLight(): FlutterBlendMode;
    static hue(): FlutterBlendMode;
    static lighten(): FlutterBlendMode;
    static luminosity(): FlutterBlendMode;
    static modulate(): FlutterBlendMode;
    static multiply(): FlutterBlendMode;
    static overlay(): FlutterBlendMode;
    static plus(): FlutterBlendMode;
    static saturation(): FlutterBlendMode;
    static screen(): FlutterBlendMode;
    static softLight(): FlutterBlendMode;
    static src(): FlutterBlendMode;
    static srcATop(): FlutterBlendMode;
    static srcIn(): FlutterBlendMode;
    static srcOut(): FlutterBlendMode;
    static srcOver(): FlutterBlendMode;
    static xor(): FlutterBlendMode;
}
export declare class FlutterBlurStyle extends ZacBuilder<native.BlurStyle> {
    static inner(): FlutterBlurStyle;
    static normal(): FlutterBlurStyle;
    static outer(): FlutterBlurStyle;
    static solid(): FlutterBlurStyle;
}
export declare class FlutterBorder extends ZacBuilder<native.Border> {
    static new(data: {
        top?: ZacBuilder<native.BorderSide>;
        right?: ZacBuilder<native.BorderSide>;
        bottom?: ZacBuilder<native.BorderSide>;
        left?: ZacBuilder<native.BorderSide>;
    }): FlutterBorder;
    static all(data: {
        color?: ZacBuilder<native.Color>;
        width?: ZacBuilder<number>;
        style?: ZacBuilder<native.BorderStyle>;
    }): FlutterBorder;
}
export declare class FlutterBorderDirectional extends ZacBuilder<native.BorderDirectional> {
    static new(data: {
        top?: ZacBuilder<native.BorderSide>;
        start?: ZacBuilder<native.BorderSide>;
        bottom?: ZacBuilder<native.BorderSide>;
        end?: ZacBuilder<native.BorderSide>;
    }): FlutterBorderDirectional;
}
export declare class FlutterBorderRadius extends ZacBuilder<native.BorderRadius> {
    static all(data: {
        radius: FlutterRadius;
    }): FlutterBorderRadius;
    static circular(data: {
        radius: ZacBuilder<number>;
    }): FlutterBorderRadius;
    static horizontal(data: {
        left?: ZacBuilder<native.Radius>;
        right?: ZacBuilder<native.Radius>;
    }): FlutterBorderRadius;
}
export declare class FlutterBorderSide extends ZacBuilder<native.BorderSide> {
    static new(data: {
        color?: ZacBuilder<native.Color>;
        width?: ZacBuilder<number>;
        style?: ZacBuilder<native.BorderStyle>;
    }): FlutterBorderSide;
}
export declare class FlutterBorderStyle extends ZacBuilder<native.BorderStyle> {
    static none(): FlutterBorderStyle;
    static solid(): FlutterBorderStyle;
}
export declare class FlutterBoxConstraints extends ZacBuilder<native.BoxConstraints> {
    static new(data: {
        minWidth?: ZacBuilder<number>;
        maxWidth?: ZacBuilder<number>;
        minHeight?: ZacBuilder<number>;
        maxHeight?: ZacBuilder<number>;
    }): FlutterBoxConstraints;
    static expand(data: {
        width?: ZacBuilder<number>;
        height?: ZacBuilder<number>;
    }): FlutterBoxConstraints;
    static loose(data: {
        size: ZacBuilder<native.Size>;
    }): FlutterBoxConstraints;
    static tight(data: {
        size: ZacBuilder<native.Size>;
    }): FlutterBoxConstraints;
    static tightFor(data: {
        width?: ZacBuilder<number>;
        height?: ZacBuilder<number>;
    }): FlutterBoxConstraints;
    static tightForFinite(data: {
        width?: ZacBuilder<number>;
        height?: ZacBuilder<number>;
    }): FlutterBoxConstraints;
}
export declare class FlutterBoxDecoration extends ZacBuilder<native.BoxDecoration> {
    static new(data: {
        color?: ZacBuilder<native.Color>;
        border?: ZacBuilder<native.BoxBorder>;
        borderRadius?: ZacBuilder<native.BorderRadiusGeometry>;
        boxShadow?: Array<FlutterBoxShadow>;
        shape?: ZacBuilder<native.BoxShape>;
        backgroundBlendMode?: ZacBuilder<native.BlendMode>;
    }): FlutterBoxDecoration;
}
export declare class FlutterBoxFit extends ZacBuilder<native.BoxFit> {
    static contain(): FlutterBoxFit;
    static cover(): FlutterBoxFit;
    static fill(): FlutterBoxFit;
    static fitHeight(): FlutterBoxFit;
    static fitWidth(): FlutterBoxFit;
    static none(): FlutterBoxFit;
    static scaleDown(): FlutterBoxFit;
}
export declare class FlutterBoxHeightStyle extends ZacBuilder<native.BoxHeightStyle> {
    static includeLineSpacingBottom(): FlutterBoxHeightStyle;
    static includeLineSpacingMiddle(): FlutterBoxHeightStyle;
    static includeLineSpacingTop(): FlutterBoxHeightStyle;
    static max(): FlutterBoxHeightStyle;
    static strut(): FlutterBoxHeightStyle;
    static tight(): FlutterBoxHeightStyle;
}
export declare class FlutterBoxShadow extends ZacBuilder<native.BoxShadow> {
    static new(data: {
        color?: ZacBuilder<native.Color>;
        offset?: ZacBuilder<native.Offset>;
        blurRadius?: ZacBuilder<number>;
        spreadRadius?: ZacBuilder<number>;
        blurStyle?: FlutterBlurStyle;
    }): FlutterBoxShadow;
}
export declare class FlutterBoxShape extends ZacBuilder<native.BoxShape> {
    static circle(): FlutterBoxShape;
    static rectangle(): FlutterBoxShape;
}
export declare class FlutterBoxWidthStyle extends ZacBuilder<native.BoxWidthStyle> {
    static max(): FlutterBoxWidthStyle;
    static tight(): FlutterBoxWidthStyle;
}
export declare class FlutterBrightness extends ZacBuilder<native.Brightness> {
    static dark(): FlutterBrightness;
    static light(): FlutterBrightness;
}
export declare class FlutterBuilder extends ZacBuilder<native.Builder> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        child: ZacBuilder<native.Widget>;
    }): FlutterBuilder;
}
export declare class FlutterButtonBar extends ZacBuilder<native.ButtonBar> {
    static new(data: {
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
    }): FlutterButtonBar;
}
export declare class FlutterCard extends ZacBuilder<native.Card> {
    static new(data: {
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
    }): FlutterCard;
}
export declare class FlutterCenter extends ZacBuilder<native.Center> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        widthFactor?: ZacBuilder<number>;
        heightFactor?: ZacBuilder<number>;
        child?: ZacBuilder<native.Widget>;
    }): FlutterCenter;
}
export declare class FlutterCircleBorder extends ZacBuilder<native.CircleBorder> {
    static new(data: {
        side?: ZacBuilder<native.BorderSide>;
    }): FlutterCircleBorder;
}
export declare class FlutterClip extends ZacBuilder<native.Clip> {
    static none(): FlutterClip;
    static antiAlias(): FlutterClip;
    static hardEdge(): FlutterClip;
}
export declare class FlutterClipOval extends ZacBuilder<native.ClipOval> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        child?: ZacBuilder<native.Widget>;
        clipBehavior?: ZacBuilder<native.Clip>;
    }): FlutterClipOval;
}
export declare class FlutterClipRect extends ZacBuilder<native.ClipRect> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        child?: ZacBuilder<native.Widget>;
        clipBehavior?: ZacBuilder<native.Clip>;
    }): FlutterClipRect;
}
export declare class FlutterColor extends ZacBuilder<native.Color> {
    static fromARGB(data: {
        a: number;
        r: number;
        g: number;
        b: number;
    }): FlutterColor;
    static fromRGBO(data: {
        r: number;
        g: number;
        b: number;
        opacity: ZacBuilder<number>;
    }): FlutterColor;
}
export declare class FlutterColumn extends ZacBuilder<native.Column> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        mainAxisAlignment?: ZacBuilder<native.MainAxisAlignment>;
        mainAxisSize?: ZacBuilder<native.MainAxisSize>;
        crossAxisAlignment?: ZacBuilder<native.CrossAxisAlignment>;
        textDirection?: ZacBuilder<native.TextDirection>;
        verticalDirection?: ZacBuilder<native.VerticalDirection>;
        textBaseline?: ZacBuilder<native.TextBaseline>;
        children?: ZacListBuilder<native.Widget>;
    }): FlutterColumn;
}
export declare class FlutterConstrainedBox extends ZacBuilder<native.ConstrainedBox> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        constraints: ZacBuilder<native.BoxConstraints>;
        child?: ZacBuilder<native.Widget>;
    }): FlutterConstrainedBox;
}
export declare class FlutterContainer extends ZacBuilder<native.Container> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        child?: ZacBuilder<native.Widget>;
        color?: ZacBuilder<native.Color>;
        margin?: ZacBuilder<native.EdgeInsetsGeometry>;
        padding?: ZacBuilder<native.EdgeInsetsGeometry>;
        alignment?: ZacBuilder<native.AlignmentGeometry>;
        decoration?: ZacBuilder<native.Decoration>;
    }): FlutterContainer;
}
export declare class FlutterCrossAxisAlignment extends ZacBuilder<native.CrossAxisAlignment> {
    static baseline(): FlutterCrossAxisAlignment;
    static center(): FlutterCrossAxisAlignment;
    static end(): FlutterCrossAxisAlignment;
    static start(): FlutterCrossAxisAlignment;
    static stretch(): FlutterCrossAxisAlignment;
}
export declare class FlutterCustomScrollView extends ZacBuilder<native.CustomScrollView> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        scrollDirection?: FlutterAxis;
        reverse?: ZacBuilder<boolean>;
        controller?: ZacBuilder<native.ScrollController>;
        primary?: ZacBuilder<boolean>;
        physics?: FlutterScrollPhysics;
        shrinkWrap?: ZacBuilder<boolean>;
        center?: ZacBuilder<native.Key>;
        anchor?: ZacBuilder<number>;
        cacheExtent?: ZacBuilder<number>;
        slivers?: ZacListBuilder<native.Widget>;
        semanticChildCount?: ZacBuilder<number>;
        keyboardDismissBehavior?: FlutterScrollViewKeyboardDismissBehavior;
        restorationId?: ZacBuilder<string>;
        clipBehavior?: ZacBuilder<native.Clip>;
    }): FlutterCustomScrollView;
}
export declare class FlutterDecoratedBox extends ZacBuilder<native.DecoratedBox> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        child?: ZacBuilder<native.Widget>;
        decoration: ZacBuilder<native.Decoration>;
        position?: ZacBuilder<native.DecorationPosition>;
    }): FlutterDecoratedBox;
}
export declare class FlutterDecorationPosition extends ZacBuilder<native.DecorationPosition> {
    static background(): FlutterDecorationPosition;
    static foreground(): FlutterDecorationPosition;
}
export declare class FlutterDialogs extends ZacBuilder<native.Widget> {
    static dialog(data: {
        key?: ZacBuilder<native.Key>;
        backgroundColor?: ZacBuilder<native.Color>;
        elevation?: ZacBuilder<number>;
        insetPadding?: ZacBuilder<native.EdgeInsets>;
        clipBehavior?: ZacBuilder<native.Clip>;
        shape?: ZacBuilder<native.ShapeBorder>;
        alignment?: ZacBuilder<native.AlignmentGeometry>;
        child?: ZacBuilder<native.Widget>;
    }): FlutterDialogs;
    static alertDialog(data: {
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
    }): FlutterDialogs;
    static simpleDialog(data: {
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
    }): FlutterDialogs;
    static simpleDialogOption(data: {
        key?: ZacBuilder<native.Key>;
        child?: ZacBuilder<native.Widget>;
        onPressed?: ZacBuilder<Array<ZacAction>>;
        padding?: ZacBuilder<native.EdgeInsets>;
    }): FlutterDialogs;
}
export declare class FlutterDivider extends ZacBuilder<native.Divider> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        height?: ZacBuilder<number>;
        thickness?: ZacBuilder<number>;
        indent?: ZacBuilder<number>;
        endIndent?: ZacBuilder<number>;
        color?: ZacBuilder<native.Color>;
    }): FlutterDivider;
}
export declare class FlutterDrawer extends ZacBuilder<native.Drawer> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        backgroundColor?: ZacBuilder<native.Color>;
        elevation?: ZacBuilder<number>;
        shape?: ZacBuilder<native.ShapeBorder>;
        child?: ZacBuilder<native.Widget>;
        semanticLabel?: ZacBuilder<string>;
    }): FlutterDrawer;
}
export declare class FlutterEdgeInsets extends ZacBuilder<native.EdgeInsets> {
    static all(data: {
        value: ZacBuilder<number>;
    }): FlutterEdgeInsets;
    static symmetric(data: {
        vertical?: ZacBuilder<number>;
        horizontal?: ZacBuilder<number>;
    }): FlutterEdgeInsets;
    static only(data: {
        left?: ZacBuilder<number>;
        top?: ZacBuilder<number>;
        right?: ZacBuilder<number>;
        bottom?: ZacBuilder<number>;
    }): FlutterEdgeInsets;
}
export declare class FlutterEdgeInsetsDirectional extends ZacBuilder<native.EdgeInsetsDirectional> {
    static all(data: {
        value: ZacBuilder<number>;
    }): FlutterEdgeInsetsDirectional;
    static only(data: {
        start?: ZacBuilder<number>;
        top?: ZacBuilder<number>;
        end?: ZacBuilder<number>;
        bottom?: ZacBuilder<number>;
    }): FlutterEdgeInsetsDirectional;
}
export declare class FlutterElevatedButton extends ZacBuilder<native.ElevatedButton> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        child: ZacBuilder<native.Widget> | null;
        onPressed?: ZacBuilder<Array<ZacAction>>;
        onLongPress?: ZacBuilder<Array<ZacAction>>;
        autofocus?: ZacBuilder<boolean>;
        clipBehavior?: ZacBuilder<native.Clip>;
    }): FlutterElevatedButton;
    static icon(data: {
        key?: ZacBuilder<native.Key>;
        icon: ZacBuilder<native.Widget>;
        label: ZacBuilder<native.Widget>;
        onPressed?: ZacBuilder<Array<ZacAction>>;
        onLongPress?: ZacBuilder<Array<ZacAction>>;
        autofocus?: ZacBuilder<boolean>;
        clipBehavior?: ZacBuilder<native.Clip>;
    }): FlutterElevatedButton;
}
export declare class FlutterExpanded extends ZacBuilder<native.Expanded> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        flex?: ZacBuilder<number>;
        child: ZacBuilder<native.Widget>;
    }): FlutterExpanded;
}
export declare class FlutterFilterQuality extends ZacBuilder<native.FilterQuality> {
    static high(): FlutterFilterQuality;
    static low(): FlutterFilterQuality;
    static medium(): FlutterFilterQuality;
    static none(): FlutterFilterQuality;
}
export declare class FlutterFittedBox extends ZacBuilder<native.FittedBox> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        fit?: ZacBuilder<native.BoxFit>;
        alignment?: ZacBuilder<native.AlignmentGeometry>;
        clipBehavior?: ZacBuilder<native.Clip>;
        child?: ZacBuilder<native.Widget>;
    }): FlutterFittedBox;
}
export declare class FlutterFlexFit extends ZacBuilder<native.FlexFit> {
    static tight(): FlutterFlexFit;
    static loose(): FlutterFlexFit;
}
export declare class FlutterFlexible extends ZacBuilder<native.Flexible> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        flex?: ZacBuilder<number>;
        fit?: ZacBuilder<native.FlexFit>;
        child: ZacBuilder<native.Widget>;
    }): FlutterFlexible;
}
export declare class FlutterFontFeature extends ZacBuilder<native.FontFeature> {
    static new(data: {
        feature: string;
        value?: ZacBuilder<number>;
    }): FlutterFontFeature;
    static alternative(data: {
        value: number;
    }): FlutterFontFeature;
    static alternativeFractions(): FlutterFontFeature;
    static caseSensitiveForms(): FlutterFontFeature;
    static characterVariant(data: {
        value: number;
    }): FlutterFontFeature;
    static contextualAlternates(): FlutterFontFeature;
    static denominator(): FlutterFontFeature;
    static disable(data: {
        feature: string;
    }): FlutterFontFeature;
    static enable(data: {
        feature: string;
    }): FlutterFontFeature;
    static fractions(): FlutterFontFeature;
    static historicalForms(): FlutterFontFeature;
    static historicalLigatures(): FlutterFontFeature;
    static liningFigures(): FlutterFontFeature;
    static localeAware(data: {
        enable?: ZacBuilder<boolean>;
    }): FlutterFontFeature;
    static notationalForms(data: {
        value?: ZacBuilder<number>;
    }): FlutterFontFeature;
    static numerators(): FlutterFontFeature;
    static oldstyleFigures(): FlutterFontFeature;
    static ordinalForms(): FlutterFontFeature;
    static proportionalFigures(): FlutterFontFeature;
    static randomize(): FlutterFontFeature;
    static scientificInferiors(): FlutterFontFeature;
    static slashedZero(): FlutterFontFeature;
    static stylisticAlternates(): FlutterFontFeature;
    static stylisticSet(data: {
        value: number;
    }): FlutterFontFeature;
    static subscripts(): FlutterFontFeature;
    static superscripts(): FlutterFontFeature;
    static swash(data: {
        value?: ZacBuilder<number>;
    }): FlutterFontFeature;
    static tabularFigures(): FlutterFontFeature;
}
export declare class FlutterFontStyle extends ZacBuilder<native.FontStyle> {
    static italic(): FlutterFontStyle;
    static normal(): FlutterFontStyle;
}
export declare class FlutterFontWeight extends ZacBuilder<native.FontWeight> {
    static bold(): FlutterFontWeight;
    static normal(): FlutterFontWeight;
    static w100(): FlutterFontWeight;
    static w200(): FlutterFontWeight;
    static w300(): FlutterFontWeight;
    static w400(): FlutterFontWeight;
    static w500(): FlutterFontWeight;
    static w600(): FlutterFontWeight;
    static w700(): FlutterFontWeight;
    static w800(): FlutterFontWeight;
    static w900(): FlutterFontWeight;
}
export declare class FlutterFractionalOffset extends ZacBuilder<native.FractionalOffset> {
    static new(data: {
        dx: ZacBuilder<number>;
        dy: ZacBuilder<number>;
    }): FlutterFractionalOffset;
}
export declare class FlutterFractionalTranslation extends ZacBuilder<native.FractionalTranslation> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        child?: ZacBuilder<native.Widget>;
        translation: FlutterOffset;
        transformHitTests?: ZacBuilder<boolean>;
    }): FlutterFractionalTranslation;
}
export declare class FlutterFractionallySizedBox extends ZacBuilder<native.FractionallySizedBox> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        child?: ZacBuilder<native.Widget>;
        alignment?: ZacBuilder<native.AlignmentGeometry>;
        widthFactor?: ZacBuilder<number>;
        heightFactor?: ZacBuilder<number>;
    }): FlutterFractionallySizedBox;
}
export declare class FlutterGestureDetector extends ZacBuilder<native.GestureDetector> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        child?: ZacBuilder<native.Widget>;
        onTap?: ZacBuilder<Array<ZacAction>>;
        onSecondaryTap?: ZacBuilder<Array<ZacAction>>;
        onDoubleTap?: ZacBuilder<Array<ZacAction>>;
        onLongPress?: ZacBuilder<Array<ZacAction>>;
        onSecondaryLongPress?: ZacBuilder<Array<ZacAction>>;
        onTertiaryLongPress?: ZacBuilder<Array<ZacAction>>;
        behavior?: FlutterHitTestBehavior;
        excludeFromSemantics?: ZacBuilder<boolean>;
    }): FlutterGestureDetector;
}
export declare class FlutterGlobalKeyNavigatorStateProvider extends ZacBuilder<native.Widget> {
    static new(data: {
        debugLabel?: ZacBuilder<string>;
        family: any;
        child: ZacBuilder<native.Widget>;
    }): FlutterGlobalKeyNavigatorStateProvider;
}
export declare class FlutterGlobalKeyScaffoldMessengerStateProvider extends ZacBuilder<native.Widget> {
    static new(data: {
        debugLabel?: ZacBuilder<string>;
        family: any;
        child: ZacBuilder<native.Widget>;
    }): FlutterGlobalKeyScaffoldMessengerStateProvider;
}
export declare class FlutterGridView extends ZacBuilder<native.GridView> {
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
    }): FlutterGridView;
}
export declare class FlutterHitTestBehavior extends ZacBuilder<native.HitTestBehavior> {
    static deferToChild(): FlutterHitTestBehavior;
    static opaque(): FlutterHitTestBehavior;
    static translucent(): FlutterHitTestBehavior;
}
export declare class FlutterIcon extends ZacBuilder<native.Icon> {
    static new(data: {
        icon: FlutterIconData | null;
        key?: ZacBuilder<native.Key>;
        size?: ZacBuilder<number>;
        color?: ZacBuilder<native.Color>;
        semanticLabel?: ZacBuilder<string>;
        textDirection?: ZacBuilder<native.TextDirection>;
    }): FlutterIcon;
}
export declare class FlutterIconData extends ZacBuilder<native.IconData> {
    static new(data: {
        codePoint: ZacBuilder<number>;
        fontFamily?: ZacBuilder<string>;
        fontPackage?: ZacBuilder<string>;
        matchTextDirection?: ZacBuilder<boolean>;
    }): FlutterIconData;
}
export declare class FlutterIconThemeData extends ZacBuilder<native.IconThemeData> {
    static new(data: {
        color?: ZacBuilder<native.Color>;
        opacity?: ZacBuilder<number>;
        size?: ZacBuilder<number>;
    }): FlutterIconThemeData;
}
export declare class FlutterIgnorePointer extends ZacBuilder<native.IgnorePointer> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        ignoring?: ZacBuilder<boolean>;
        ignoringSemantics?: ZacBuilder<boolean>;
        child?: ZacBuilder<native.Widget>;
    }): FlutterIgnorePointer;
}
export declare class FlutterImage extends ZacBuilder<native.Image> {
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
    }): FlutterImage;
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
    }): FlutterImage;
}
export declare class FlutterImageRepeat extends ZacBuilder<native.ImageRepeat> {
    static noRepeat(): FlutterImageRepeat;
    static repeat(): FlutterImageRepeat;
    static repeatX(): FlutterImageRepeat;
    static repeatY(): FlutterImageRepeat;
}
export declare class FlutterIndexedStack extends ZacBuilder<native.IndexedStack> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        alignment?: ZacBuilder<native.AlignmentGeometry>;
        textDirection?: ZacBuilder<native.TextDirection>;
        sizing?: ZacBuilder<native.StackFit>;
        index?: ZacBuilder<number>;
        children?: ZacListBuilder<native.Widget>;
    }): FlutterIndexedStack;
}
export declare class FlutterInputDecoration extends ZacBuilder<native.InputDecoration> {
    static new(data: {
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
    }): FlutterInputDecoration;
}
export declare class FlutterInteractiveViewer extends ZacBuilder<native.InteractiveViewer> {
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
    }): FlutterInteractiveViewer;
}
export declare class FlutterIntrinsicHeight extends ZacBuilder<native.IntrinsicHeight> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        child?: ZacBuilder<native.Widget>;
    }): FlutterIntrinsicHeight;
}
export declare class FlutterIntrinsicWidth extends ZacBuilder<native.IntrinsicWidth> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        child?: ZacBuilder<native.Widget>;
    }): FlutterIntrinsicWidth;
}
export declare class FlutterLimitedBox extends ZacBuilder<native.LimitedBox> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        maxWidth?: ZacBuilder<number>;
        maxHeight?: ZacBuilder<number>;
        child?: ZacBuilder<native.Widget>;
    }): FlutterLimitedBox;
}
export declare class FlutterListTile extends ZacBuilder<native.ListTile> {
    static new(data: {
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
    }): FlutterListTile;
}
export declare class FlutterListView extends ZacBuilder<native.ListView> {
    static new(data: {
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
    }): FlutterListView;
}
export declare class FlutterLocale extends ZacBuilder<native.Locale> {
    static new(data: {
        languageCode: string;
        countryCode?: string;
    }): FlutterLocale;
}
export declare class FlutterMainAxisAlignment extends ZacBuilder<native.MainAxisAlignment> {
    static start(): FlutterMainAxisAlignment;
    static end(): FlutterMainAxisAlignment;
    static center(): FlutterMainAxisAlignment;
    static spaceBetween(): FlutterMainAxisAlignment;
    static spaceAround(): FlutterMainAxisAlignment;
    static spaceEvenly(): FlutterMainAxisAlignment;
}
export declare class FlutterMainAxisSize extends ZacBuilder<native.MainAxisSize> {
    static min(): FlutterMainAxisSize;
    static max(): FlutterMainAxisSize;
}
export declare class FlutterMaterial extends ZacBuilder<native.Material> {
    static new(data: {
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
    }): FlutterMaterial;
}
export declare class FlutterMaterialApp extends ZacBuilder<native.MaterialApp> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        navigatorKey?: ZacBuilder<native.GlobalKey>;
        scaffoldMessengerKey?: ZacBuilder<native.GlobalKey>;
        home?: ZacBuilder<native.Widget>;
        initialRoute?: ZacBuilder<string>;
        onGenerateRoute?: FlutterRouteFactory;
        onUnknownRoute?: FlutterRouteFactory;
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
    }): FlutterMaterialApp;
}
export declare class FlutterMaterialBanner extends ZacBuilder<native.MaterialBanner> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        content: ZacBuilder<native.Widget>;
        contentTextStyle?: ZacBuilder<native.TextStyle>;
        actions: ZacListBuilder<native.Widget>;
        elevation?: ZacBuilder<number>;
        leading: ZacBuilder<native.Widget> | null;
        backgroundColor?: ZacBuilder<native.Color>;
        padding?: ZacBuilder<native.EdgeInsetsGeometry>;
        leadingPadding?: ZacBuilder<native.EdgeInsetsGeometry>;
        forceActionsBelow?: ZacBuilder<boolean>;
        onVisible?: ZacBuilder<Array<ZacAction>>;
    }): FlutterMaterialBanner;
}
export declare class FlutterMaterialPageRoute extends ZacBuilder<native.Route> {
    static new(data: {
        settings?: ZacBuilder<native.RouteSettings>;
        maintainState?: ZacBuilder<boolean>;
        fullscreenDialog?: ZacBuilder<boolean>;
        child: ZacBuilder<native.Widget>;
        nameOfSharedArguments?: ZacBuilder<string>;
    }): FlutterMaterialPageRoute;
}
export declare class FlutterNavigator extends ZacBuilder<native.Navigator> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        onGenerateRoute?: FlutterRouteFactory;
        onUnknownRoute?: FlutterRouteFactory;
        initialRoute?: ZacBuilder<string>;
        requestFocus?: ZacBuilder<boolean>;
    }): FlutterNavigator;
}
export declare class FlutterNavigatorState extends ZacBuilder<native.NavigatorState> {
    static closest(): FlutterNavigatorState;
    static root(): FlutterNavigatorState;
    static shared(data: {
        value: ZacBuilder<native.GlobalKey>;
    }): FlutterNavigatorState;
}
export declare class FlutterOffset extends ZacBuilder<native.Offset> {
    static new(data: {
        dx: ZacBuilder<number>;
        dy: ZacBuilder<number>;
    }): FlutterOffset;
    static fromDirection(data: {
        direction: ZacBuilder<number>;
        distance?: ZacBuilder<number>;
    }): FlutterOffset;
}
export declare class FlutterOffstage extends ZacBuilder<native.Offstage> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        offstage?: ZacBuilder<boolean>;
        child?: ZacBuilder<native.Widget>;
    }): FlutterOffstage;
}
export declare class FlutterOpacity extends ZacBuilder<native.Opacity> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        opacity: ZacBuilder<number>;
        alwaysIncludeSemantics?: ZacBuilder<boolean>;
        child?: ZacBuilder<native.Widget>;
    }): FlutterOpacity;
}
export declare class FlutterOutlineInputBorder extends ZacBuilder<native.OutlineInputBorder> {
    static new(data: {
        borderSide?: ZacBuilder<native.BorderSide>;
        borderRadius?: ZacBuilder<native.BorderRadius>;
        gapPadding?: ZacBuilder<number>;
    }): FlutterOutlineInputBorder;
}
export declare class FlutterOutlinedButton extends ZacBuilder<native.OutlinedButton> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        child: ZacBuilder<native.Widget>;
        onPressed?: ZacBuilder<Array<ZacAction>>;
        onLongPress?: ZacBuilder<Array<ZacAction>>;
        autofocus?: ZacBuilder<boolean>;
        clipBehavior?: ZacBuilder<native.Clip>;
    }): FlutterOutlinedButton;
    static icon(data: {
        key?: ZacBuilder<native.Key>;
        icon: ZacBuilder<native.Widget>;
        label: ZacBuilder<native.Widget>;
        onPressed?: ZacBuilder<Array<ZacAction>>;
        onLongPress?: ZacBuilder<Array<ZacAction>>;
        autofocus?: ZacBuilder<boolean>;
        clipBehavior?: ZacBuilder<native.Clip>;
    }): FlutterOutlinedButton;
}
export declare class FlutterOverflowBox extends ZacBuilder<native.OverflowBox> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        alignment?: ZacBuilder<native.AlignmentGeometry>;
        minWidth?: ZacBuilder<number>;
        maxWidth?: ZacBuilder<number>;
        minHeight?: ZacBuilder<number>;
        maxHeight?: ZacBuilder<number>;
        child?: ZacBuilder<native.Widget>;
    }): FlutterOverflowBox;
}
export declare class FlutterPadding extends ZacBuilder<native.Padding> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        padding: ZacBuilder<native.EdgeInsetsGeometry>;
        child?: ZacBuilder<native.Widget>;
    }): FlutterPadding;
}
export declare class FlutterPageRouteBuilder extends ZacBuilder<native.Route> {
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
    }): FlutterPageRouteBuilder;
}
export declare class FlutterPositioned extends ZacBuilder<native.Positioned> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        left?: ZacBuilder<number>;
        top?: ZacBuilder<number>;
        right?: ZacBuilder<number>;
        bottom?: ZacBuilder<number>;
        width?: ZacBuilder<number>;
        height?: ZacBuilder<number>;
        child: ZacBuilder<native.Widget>;
    }): FlutterPositioned;
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
    }): FlutterPositioned;
    static fill(data: {
        key?: ZacBuilder<native.Key>;
        left?: ZacBuilder<number>;
        top?: ZacBuilder<number>;
        right?: ZacBuilder<number>;
        bottom?: ZacBuilder<number>;
        child: ZacBuilder<native.Widget>;
    }): FlutterPositioned;
}
export declare class FlutterProgressIndicator extends ZacBuilder<native.ProgressIndicator> {
    static linear(data: {
        key?: ZacBuilder<native.Key>;
        value?: ZacBuilder<number>;
        backgroundColor?: ZacBuilder<native.Color>;
        color?: ZacBuilder<native.Color>;
        minHeight?: ZacBuilder<number>;
        semanticsLabel?: ZacBuilder<string>;
        semanticsValue?: ZacBuilder<string>;
    }): FlutterProgressIndicator;
    static circular(data: {
        key?: ZacBuilder<native.Key>;
        value?: ZacBuilder<number>;
        backgroundColor?: ZacBuilder<native.Color>;
        color?: ZacBuilder<native.Color>;
        strokeWidth?: ZacBuilder<number>;
        semanticsLabel?: ZacBuilder<string>;
        semanticsValue?: ZacBuilder<string>;
    }): FlutterProgressIndicator;
}
export declare class FlutterRadius extends ZacBuilder<native.Radius> {
    static circular(data: {
        radius: ZacBuilder<number>;
    }): FlutterRadius;
    static elliptical(data: {
        x: ZacBuilder<number>;
        y: ZacBuilder<number>;
    }): FlutterRadius;
}
export declare class FlutterRect extends ZacBuilder<native.Rect> {
    static fromCenter(data: {
        center: FlutterOffset;
        width: ZacBuilder<number>;
        height: ZacBuilder<number>;
    }): FlutterRect;
    static fromCircle(data: {
        center: FlutterOffset;
        radius: ZacBuilder<number>;
    }): FlutterRect;
    static fromLTRB(data: {
        left: ZacBuilder<number>;
        top: ZacBuilder<number>;
        right: ZacBuilder<number>;
        bottom: ZacBuilder<number>;
    }): FlutterRect;
    static fromLTWH(data: {
        left: ZacBuilder<number>;
        top: ZacBuilder<number>;
        width: ZacBuilder<number>;
        height: ZacBuilder<number>;
    }): FlutterRect;
    static fromPoints(data: {
        a: FlutterOffset;
        b: FlutterOffset;
    }): FlutterRect;
}
export declare class FlutterRefreshIndicator extends ZacBuilder<native.RefreshIndicator> {
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
    }): FlutterRefreshIndicator;
}
export declare class FlutterRefreshIndicatorTriggerMode extends ZacBuilder<native.RefreshIndicatorTriggerMode> {
    static onEdge(): FlutterRefreshIndicatorTriggerMode;
    static anywhere(): FlutterRefreshIndicatorTriggerMode;
}
export declare class FlutterRotatedBox extends ZacBuilder<native.RotatedBox> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        child?: ZacBuilder<native.Widget>;
        quarterTurns: number;
    }): FlutterRotatedBox;
}
export declare class FlutterRoundedRectangleBorder extends ZacBuilder<native.ShapeBorder> {
    static new(data: {
        side?: ZacBuilder<native.BorderSide>;
        borderRadius?: ZacBuilder<native.BorderRadiusGeometry>;
    }): FlutterRoundedRectangleBorder;
}
export declare class FlutterRouteFactory extends ZacBuilder<native.RouteFactory> {
    static new(data: {
        routes: Record<string, ZacBuilder<native.Route>>;
        familyNameOfArguments: Record<string, string> | null;
    }): FlutterRouteFactory;
}
export declare class FlutterRouteSettings extends ZacBuilder<native.RouteSettings> {
    static new(data: {
        name?: ZacBuilder<string>;
        arguments?: ZacBuilder<any>;
    }): FlutterRouteSettings;
}
export declare class FlutterRow extends ZacBuilder<native.Row> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        mainAxisAlignment?: ZacBuilder<native.MainAxisAlignment>;
        mainAxisSize?: ZacBuilder<native.MainAxisSize>;
        crossAxisAlignment?: ZacBuilder<native.CrossAxisAlignment>;
        textDirection?: ZacBuilder<native.TextDirection>;
        verticalDirection?: ZacBuilder<native.VerticalDirection>;
        textBaseline?: ZacBuilder<native.TextBaseline>;
        children?: ZacListBuilder<native.Widget>;
    }): FlutterRow;
}
export declare class FlutterSafeArea extends ZacBuilder<native.SafeArea> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        left?: ZacBuilder<boolean>;
        top?: ZacBuilder<boolean>;
        right?: ZacBuilder<boolean>;
        bottom?: ZacBuilder<boolean>;
        minimum?: ZacBuilder<native.EdgeInsets>;
        maintainBottomViewPadding?: ZacBuilder<boolean>;
        child: ZacBuilder<native.Widget>;
    }): FlutterSafeArea;
}
export declare class FlutterScaffold extends ZacBuilder<native.Scaffold> {
    static new(data: {
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
    }): FlutterScaffold;
}
export declare class FlutterScrollController extends ZacBuilder<native.Widget> {
    static new(data: {
        initialScrollOffset?: ZacBuilder<number>;
        keepScrollOffset?: ZacBuilder<boolean>;
        debugLabel?: ZacBuilder<string>;
        family?: any;
        child: ZacBuilder<native.Widget>;
    }): FlutterScrollController;
}
export declare class FlutterScrollPhysics extends ZacBuilder<native.ScrollPhysics> {
    static alwaysScrollable(data: {
        parent?: FlutterScrollPhysics;
    }): FlutterScrollPhysics;
    static bouncingScroll(data: {
        parent?: FlutterScrollPhysics;
    }): FlutterScrollPhysics;
    static clampingScrollPhysics(data: {
        parent?: FlutterScrollPhysics;
    }): FlutterScrollPhysics;
}
export declare class FlutterScrollViewKeyboardDismissBehavior extends ZacBuilder<native.ScrollViewKeyboardDismissBehavior> {
    static manual(): FlutterScrollViewKeyboardDismissBehavior;
    static onDrag(): FlutterScrollViewKeyboardDismissBehavior;
}
export declare class FlutterSelectableText extends ZacBuilder<native.SelectableText> {
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
    }): FlutterSelectableText;
}
export declare class FlutterShadow extends ZacBuilder<native.Shadow> {
    static new(data: {
        color?: ZacBuilder<native.Color>;
        offset?: ZacBuilder<native.Offset>;
        blurRadius?: ZacBuilder<number>;
    }): FlutterShadow;
}
export declare class FlutterShapeDecoration extends ZacBuilder<native.ShapeDecoration> {
    static new(data: {
        color?: ZacBuilder<native.Color>;
        image?: ZacBuilder<native.DecorationImage>;
        gradient?: ZacBuilder<native.Gradient>;
        shadows?: Array<FlutterBoxShadow>;
        shape: ZacBuilder<native.ShapeBorder>;
    }): FlutterShapeDecoration;
}
export declare class FlutterSingleChildScrollView extends ZacBuilder<native.SingleChildScrollView> {
    static new(data: {
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
    }): FlutterSingleChildScrollView;
}
export declare class FlutterSize extends ZacBuilder<native.Size> {
    static new(data: {
        width: ZacBuilder<number>;
        height: ZacBuilder<number>;
    }): FlutterSize;
}
export declare class FlutterSizedBox extends ZacBuilder<native.SizedBox> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        width?: ZacBuilder<number>;
        height?: ZacBuilder<number>;
        child?: ZacBuilder<native.Widget>;
    }): FlutterSizedBox;
    static expand(data: {
        key?: ZacBuilder<native.Key>;
        child?: ZacBuilder<native.Widget>;
    }): FlutterSizedBox;
    static fromSize(data: {
        key?: ZacBuilder<native.Key>;
        child?: ZacBuilder<native.Widget>;
        size?: ZacBuilder<native.Size>;
    }): FlutterSizedBox;
    static shrink(data: {
        key?: ZacBuilder<native.Key>;
        child?: ZacBuilder<native.Widget>;
    }): FlutterSizedBox;
    static square(data: {
        key?: ZacBuilder<native.Key>;
        child?: ZacBuilder<native.Widget>;
        dimension?: ZacBuilder<number>;
    }): FlutterSizedBox;
}
export declare class FlutterSizedOverflowBox extends ZacBuilder<native.SizedOverflowBox> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        size: ZacBuilder<native.Size>;
        alignment?: ZacBuilder<native.AlignmentGeometry>;
        child?: ZacBuilder<native.Widget>;
    }): FlutterSizedOverflowBox;
}
export declare class FlutterSliverChildDelegate extends ZacBuilder<native.SliverChildDelegate> {
    static list(data: {
        children: ZacListBuilder<native.Widget>;
        addAutomaticKeepAlives?: ZacBuilder<boolean>;
        addRepaintBoundaries?: ZacBuilder<boolean>;
        addSemanticIndexes?: ZacBuilder<boolean>;
        semanticIndexOffset?: ZacBuilder<number>;
    }): FlutterSliverChildDelegate;
    static listFixed(data: {
        children: ZacListBuilder<native.Widget>;
        addAutomaticKeepAlives?: ZacBuilder<boolean>;
        addRepaintBoundaries?: ZacBuilder<boolean>;
        addSemanticIndexes?: ZacBuilder<boolean>;
        semanticIndexOffset?: ZacBuilder<number>;
    }): FlutterSliverChildDelegate;
}
export declare class FlutterSliverGrid extends ZacBuilder<native.SliverGrid> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        delegate: FlutterSliverChildDelegate;
        gridDelegate: FlutterSliverGridDelegate;
    }): FlutterSliverGrid;
}
export declare class FlutterSliverGridDelegate extends ZacBuilder<native.SliverGridDelegate> {
    static withFixedCrossAxisCount(data: {
        crossAxisCount: number;
        mainAxisSpacing?: ZacBuilder<number>;
        crossAxisSpacing?: ZacBuilder<number>;
        childAspectRatio?: ZacBuilder<number>;
        mainAxisExtent?: ZacBuilder<number>;
    }): FlutterSliverGridDelegate;
    static withMaxCrossAxisExtent(data: {
        maxCrossAxisExtent: ZacBuilder<number>;
        mainAxisSpacing?: ZacBuilder<number>;
        crossAxisSpacing?: ZacBuilder<number>;
        childAspectRatio?: ZacBuilder<number>;
        mainAxisExtent?: ZacBuilder<number>;
    }): FlutterSliverGridDelegate;
}
export declare class FlutterSliverList extends ZacBuilder<native.SliverList> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        delegate: FlutterSliverChildDelegate;
    }): FlutterSliverList;
}
export declare class FlutterSliverPadding extends ZacBuilder<native.SliverPadding> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        sliver?: ZacBuilder<native.Widget>;
        padding: ZacBuilder<native.EdgeInsetsGeometry>;
    }): FlutterSliverPadding;
}
export declare class FlutterSliverToBoxAdapter extends ZacBuilder<native.SliverToBoxAdapter> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        child?: ZacBuilder<native.Widget>;
    }): FlutterSliverToBoxAdapter;
}
export declare class FlutterSmartDashesType extends ZacBuilder<native.SmartDashesType> {
    static disabled(): FlutterSmartDashesType;
    static enabled(): FlutterSmartDashesType;
}
export declare class FlutterSmartQuotesType extends ZacBuilder<native.SmartQuotesType> {
    static disabled(): FlutterSmartQuotesType;
    static enabled(): FlutterSmartQuotesType;
}
export declare class FlutterSnackBar extends ZacBuilder<native.SnackBar> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        content: ZacBuilder<native.Widget>;
        backgroundColor?: ZacBuilder<native.Color>;
        elevation?: ZacBuilder<number>;
        margin?: ZacBuilder<native.EdgeInsetsGeometry>;
        padding?: ZacBuilder<native.EdgeInsetsGeometry>;
        width?: ZacBuilder<number>;
        shape?: ZacBuilder<native.ShapeBorder>;
        behavior?: FlutterSnackBarBehavior;
        action?: FlutterSnackBarAction;
        onVisible?: ZacBuilder<Array<ZacAction>>;
    }): FlutterSnackBar;
}
export declare class FlutterSnackBarAction extends ZacBuilder<native.SnackBarAction> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        textColor?: ZacBuilder<native.Color>;
        disabledTextColor?: ZacBuilder<native.Color>;
        label: string;
        onPressed: ZacBuilder<Array<ZacAction>> | null;
    }): FlutterSnackBarAction;
}
export declare class FlutterSnackBarBehavior extends ZacBuilder<native.SnackBarBehavior> {
    static fixed(): FlutterSnackBarBehavior;
    static floating(): FlutterSnackBarBehavior;
}
export declare class FlutterSpacer extends ZacBuilder<native.Spacer> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        flex?: ZacBuilder<number>;
    }): FlutterSpacer;
}
export declare class FlutterStack extends ZacBuilder<native.Stack> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        alignment?: ZacBuilder<native.AlignmentGeometry>;
        textDirection?: ZacBuilder<native.TextDirection>;
        fit?: ZacBuilder<native.StackFit>;
        clipBehavior?: ZacBuilder<native.Clip>;
        children?: ZacListBuilder<native.Widget>;
    }): FlutterStack;
}
export declare class FlutterStackFit extends ZacBuilder<native.StackFit> {
    static expand(): FlutterStackFit;
    static loose(): FlutterStackFit;
    static passthrough(): FlutterStackFit;
}
export declare class FlutterStrutStyle extends ZacBuilder<native.StrutStyle> {
    static new(data: {
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
    }): FlutterStrutStyle;
    static fromTextStyle(data: {
        textStyle: FlutterTextStyle;
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
    }): FlutterStrutStyle;
}
export declare class FlutterSystemUiOverlayStyle extends ZacBuilder<native.SystemUiOverlayStyle> {
    static new(data: {
        systemNavigationBarColor?: ZacBuilder<native.Color>;
        systemNavigationBarDividerColor?: ZacBuilder<native.Color>;
        systemNavigationBarIconBrightness?: ZacBuilder<native.Brightness>;
        systemNavigationBarContrastEnforced?: ZacBuilder<boolean>;
        statusBarColor?: ZacBuilder<native.Color>;
        statusBarBrightness?: ZacBuilder<native.Brightness>;
        statusBarIconBrightness?: ZacBuilder<native.Brightness>;
        systemStatusBarContrastEnforced?: ZacBuilder<boolean>;
    }): FlutterSystemUiOverlayStyle;
}
export declare class FlutterText extends ZacBuilder<native.Text> {
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
    }): FlutterText;
}
export declare class FlutterTextAlign extends ZacBuilder<native.TextAlign> {
    static center(): FlutterTextAlign;
    static end(): FlutterTextAlign;
    static justify(): FlutterTextAlign;
    static left(): FlutterTextAlign;
    static right(): FlutterTextAlign;
    static start(): FlutterTextAlign;
}
export declare class FlutterTextAlignVertical extends ZacBuilder<native.TextAlignVertical> {
    static new(data: {
        y: ZacBuilder<number>;
    }): FlutterTextAlignVertical;
    static bottom(): FlutterTextAlignVertical;
    static center(): FlutterTextAlignVertical;
    static top(): FlutterTextAlignVertical;
}
export declare class FlutterTextBaseline extends ZacBuilder<native.TextBaseline> {
    static alphabetic(): FlutterTextBaseline;
    static ideographic(): FlutterTextBaseline;
}
export declare class FlutterTextButton extends ZacBuilder<native.TextButton> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        child: ZacBuilder<native.Widget>;
        onPressed?: ZacBuilder<Array<ZacAction>>;
        onLongPress?: ZacBuilder<Array<ZacAction>>;
        autofocus?: ZacBuilder<boolean>;
        clipBehavior?: ZacBuilder<native.Clip>;
    }): FlutterTextButton;
    static icon(data: {
        key?: ZacBuilder<native.Key>;
        icon: ZacBuilder<native.Widget>;
        label: ZacBuilder<native.Widget>;
        onPressed?: ZacBuilder<Array<ZacAction>>;
        onLongPress?: ZacBuilder<Array<ZacAction>>;
        autofocus?: ZacBuilder<boolean>;
        clipBehavior?: ZacBuilder<native.Clip>;
    }): FlutterTextButton;
}
export declare class FlutterTextCapitalization extends ZacBuilder<native.TextCapitalization> {
    static characters(): FlutterTextCapitalization;
    static none(): FlutterTextCapitalization;
    static sentences(): FlutterTextCapitalization;
    static words(): FlutterTextCapitalization;
}
export declare class FlutterTextDecoration extends ZacBuilder<native.TextDecoration> {
    static lineThrough(): FlutterTextDecoration;
    static none(): FlutterTextDecoration;
    static overline(): FlutterTextDecoration;
    static underline(): FlutterTextDecoration;
}
export declare class FlutterTextDecorationStyle extends ZacBuilder<native.TextDecorationStyle> {
    static dashed(): FlutterTextDecorationStyle;
    static dotted(): FlutterTextDecorationStyle;
    static double(): FlutterTextDecorationStyle;
    static solid(): FlutterTextDecorationStyle;
    static wavy(): FlutterTextDecorationStyle;
}
export declare class FlutterTextDirection extends ZacBuilder<native.TextDirection> {
    static rtl(): FlutterTextDirection;
    static ltr(): FlutterTextDirection;
}
export declare class FlutterTextField extends ZacBuilder<native.TextField> {
    static new(data: {
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
    }): FlutterTextField;
}
export declare class FlutterTextHeightBehavior extends ZacBuilder<native.TextHeightBehavior> {
    static new(data: {
        applyHeightToFirstAscent?: ZacBuilder<boolean>;
        applyHeightToLastDescent?: ZacBuilder<boolean>;
        leadingDistribution?: ZacBuilder<native.TextLeadingDistribution>;
    }): FlutterTextHeightBehavior;
}
export declare class FlutterTextInputAction extends ZacBuilder<native.TextInputAction> {
    static continueAction(): FlutterTextInputAction;
    static done(): FlutterTextInputAction;
    static emergencyCall(): FlutterTextInputAction;
    static go(): FlutterTextInputAction;
    static join(): FlutterTextInputAction;
    static newline(): FlutterTextInputAction;
    static next(): FlutterTextInputAction;
    static none(): FlutterTextInputAction;
    static previous(): FlutterTextInputAction;
    static route(): FlutterTextInputAction;
    static search(): FlutterTextInputAction;
    static send(): FlutterTextInputAction;
    static unspecified(): FlutterTextInputAction;
}
export declare class FlutterTextInputType extends ZacBuilder<native.TextInputType> {
    static datetime(): FlutterTextInputType;
    static emailAddress(): FlutterTextInputType;
    static multiline(): FlutterTextInputType;
    static name_(): FlutterTextInputType;
    static none(): FlutterTextInputType;
    static number(): FlutterTextInputType;
    static phone(): FlutterTextInputType;
    static streetAddress(): FlutterTextInputType;
    static text(): FlutterTextInputType;
    static url(): FlutterTextInputType;
    static visiblePassword(): FlutterTextInputType;
}
export declare class FlutterTextLeadingDistribution extends ZacBuilder<native.TextLeadingDistribution> {
    static even(): FlutterTextLeadingDistribution;
    static proportional(): FlutterTextLeadingDistribution;
}
export declare class FlutterTextOverflow extends ZacBuilder<native.TextOverflow> {
    static clip(): FlutterTextOverflow;
    static ellipsis(): FlutterTextOverflow;
    static fade(): FlutterTextOverflow;
    static visible(): FlutterTextOverflow;
}
export declare class FlutterTextStyle extends ZacBuilder<native.TextStyle> {
    static new(data: {
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
    }): FlutterTextStyle;
}
export declare class FlutterTextWidthBasis extends ZacBuilder<native.TextWidthBasis> {
    static longestLine(): FlutterTextWidthBasis;
    static parent(): FlutterTextWidthBasis;
}
export declare class FlutterUnconstrainedBox extends ZacBuilder<native.UnconstrainedBox> {
    static new(data: {
        key?: ZacBuilder<native.Key>;
        child?: ZacBuilder<native.Widget>;
        textDirection?: ZacBuilder<native.TextDirection>;
        alignment?: ZacBuilder<native.AlignmentGeometry>;
        constrainedAxis?: ZacBuilder<native.Axis>;
        clipBehavior?: ZacBuilder<native.Clip>;
    }): FlutterUnconstrainedBox;
}
export declare class FlutterUnderlineInputBorder extends ZacBuilder<native.UnderlineInputBorder> {
    static new(data: {
        borderSide?: ZacBuilder<native.BorderSide>;
        borderRadius?: ZacBuilder<native.BorderRadius>;
    }): FlutterUnderlineInputBorder;
}
export declare class FlutterValueKey extends ZacBuilder<native.ValueKey> {
    static new(data: {
        value: string;
    }): FlutterValueKey;
}
export declare class FlutterVerticalDirection extends ZacBuilder<native.VerticalDirection> {
    static up(): FlutterVerticalDirection;
    static down(): FlutterVerticalDirection;
}
export declare class FlutterWrap extends ZacBuilder<native.Wrap> {
    static new(data: {
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
    }): FlutterWrap;
}
export declare class FlutterWrapAlignment extends ZacBuilder<native.WrapAlignment> {
    static start(): FlutterWrapAlignment;
    static end(): FlutterWrapAlignment;
    static center(): FlutterWrapAlignment;
    static spaceBetween(): FlutterWrapAlignment;
    static spaceAround(): FlutterWrapAlignment;
    static spaceEvenly(): FlutterWrapAlignment;
}
export declare class FlutterWrapCrossAlignment extends ZacBuilder<native.WrapCrossAlignment> {
    static center(): FlutterWrapCrossAlignment;
    static end(): FlutterWrapCrossAlignment;
    static start(): FlutterWrapCrossAlignment;
}
export declare class SharedValueProviderBuilder extends ZacBuilder<native.Widget> {
    static provideInt(data: {
        key?: ZacBuilder<native.Key>;
        value: number;
        family: string;
        child: ZacBuilder<native.Widget>;
        autoCreate: boolean;
    }): SharedValueProviderBuilder;
    static provideDouble(data: {
        key?: ZacBuilder<native.Key>;
        value: number;
        family: string;
        child: ZacBuilder<native.Widget>;
        autoCreate: boolean;
    }): SharedValueProviderBuilder;
    static provideString(data: {
        key?: ZacBuilder<native.Key>;
        value: string;
        family: string;
        child: ZacBuilder<native.Widget>;
        autoCreate: boolean;
    }): SharedValueProviderBuilder;
    static provideBool(data: {
        key?: ZacBuilder<native.Key>;
        value: boolean;
        family: string;
        child: ZacBuilder<native.Widget>;
        autoCreate: boolean;
    }): SharedValueProviderBuilder;
    static provideObject(data: {
        key?: ZacBuilder<native.Key>;
        value: any;
        family: string;
        child: ZacBuilder<native.Widget>;
        transformer?: ZacBuilder<Array<ZacTransformer>>;
        autoCreate: boolean;
    }): SharedValueProviderBuilder;
    static provideNull(data: {
        key?: ZacBuilder<native.Key>;
        family: string;
        child: ZacBuilder<native.Widget>;
        autoCreate: boolean;
    }): SharedValueProviderBuilder;
    static provideWidget(data: {
        key?: ZacBuilder<native.Key>;
        value: ZacBuilder<native.Widget>;
        family: string;
        child: ZacBuilder<native.Widget>;
        autoCreate: boolean;
    }): SharedValueProviderBuilder;
    static provideWidgets(data: {
        key?: ZacBuilder<native.Key>;
        value: ZacListBuilder<native.Widget>;
        family: string;
        child: ZacBuilder<native.Widget>;
        autoCreate: boolean;
    }): SharedValueProviderBuilder;
    static provideWidgetsMap(data: {
        key?: ZacBuilder<native.Key>;
        value: ZacMapBuilder<native.Widget>;
        family: string;
        child: ZacBuilder<native.Widget>;
        autoCreate: boolean;
    }): SharedValueProviderBuilder;
    static provideAnyBuilder(data: {
        key?: ZacBuilder<native.Key>;
        value: ZacBuilder<any>;
        family: string;
        child: ZacBuilder<native.Widget>;
        autoCreate: boolean;
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
    static join(data: {
        separator?: string;
    }): IterableTransformer;
    static contains(data: {
        element: ZacBuilder<any> | null;
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
        key: ZacBuilder<any> | null;
    }): MapTransformer;
    static containsValue(data: {
        value: ZacBuilder<any> | null;
    }): MapTransformer;
    static mapper(data: {
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
        other: any | null;
    }): ObjectTransformer;
    static toString(): ObjectTransformer;
    static runtimeType(): ObjectTransformer;
    static hashCode(): ObjectTransformer;
    static equalsSharedValue(data: {
        value: ZacBuilder<any> | null;
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
export declare class FlutterDialogActions extends ZacAction {
    static showDialog(data: {
        child: ZacBuilder<native.Widget>;
        barrierDismissible?: ZacBuilder<boolean>;
        barrierColor?: ZacBuilder<native.Color>;
        barrierLabel?: ZacBuilder<string>;
        useSafeArea?: ZacBuilder<boolean>;
        useRootNavigator?: ZacBuilder<boolean>;
        routeSettings?: ZacBuilder<native.RouteSettings>;
    }): FlutterDialogActions;
}
export declare class FlutterNavigatorActions extends ZacAction {
    static push(data: {
        route: ZacBuilder<native.Route>;
        navigatorState?: ZacBuilder<native.NavigatorState>;
    }): FlutterNavigatorActions;
    static pushNamed(data: {
        routeName: ZacBuilder<string>;
        arguments?: any;
        navigatorState?: ZacBuilder<native.NavigatorState>;
    }): FlutterNavigatorActions;
    static pop(data: {
        actions?: ZacBuilder<Array<ZacAction>>;
        navigatorState?: ZacBuilder<native.NavigatorState>;
    }): FlutterNavigatorActions;
    static maybePop(data: {
        actions?: ZacBuilder<Array<ZacAction>>;
        navigatorState?: ZacBuilder<native.NavigatorState>;
    }): FlutterNavigatorActions;
    static pushReplacement(data: {
        route: ZacBuilder<native.Route>;
        result?: ZacBuilder<Array<ZacAction>>;
        navigatorState?: ZacBuilder<native.NavigatorState>;
    }): FlutterNavigatorActions;
    static pushReplacementNamed(data: {
        routeName: ZacBuilder<string>;
        arguments?: any;
        navigatorState?: ZacBuilder<native.NavigatorState>;
        result?: ZacBuilder<Array<ZacAction>>;
    }): FlutterNavigatorActions;
    static popUntilRouteName(data: {
        routeName: ZacBuilder<string>;
        navigatorState?: ZacBuilder<native.NavigatorState>;
    }): FlutterNavigatorActions;
}
export declare class FlutterScaffoldActions extends ZacAction {
    static openDrawer(): FlutterScaffoldActions;
    static openEndDrawer(): FlutterScaffoldActions;
    static showBodyScrim(data: {
        value: boolean;
        opacity: ZacBuilder<number>;
    }): FlutterScaffoldActions;
    static showBottomSheet(data: {
        child: ZacBuilder<native.Widget>;
        backgroundColor?: ZacBuilder<native.Color>;
        elevation?: ZacBuilder<number>;
        shape?: ZacBuilder<native.ShapeBorder>;
        clipBehavior?: ZacBuilder<native.Clip>;
        constraints?: FlutterBoxConstraints;
        enableDrag?: ZacBuilder<boolean>;
    }): FlutterScaffoldActions;
}
export declare class FlutterScaffoldMessenger extends ZacAction {
    static showSnackBar(data: {
        snackBar: FlutterSnackBar;
    }): FlutterScaffoldMessenger;
    static hideCurrentSnackBar(): FlutterScaffoldMessenger;
    static removeCurrentSnackBar(): FlutterScaffoldMessenger;
    static showMaterialBanner(data: {
        materialBanner: FlutterMaterialBanner;
    }): FlutterScaffoldMessenger;
    static hideCurrentMaterialBanner(): FlutterScaffoldMessenger;
    static removeCurrentMaterialBanner(): FlutterScaffoldMessenger;
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
