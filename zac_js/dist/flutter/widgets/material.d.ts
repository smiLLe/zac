import { DartDouble, DartInt, FlutterWidget, SharedValueFamily, ZacConverter } from "../../base";
import { ZacAction, ZacActions } from "../../zac/action";
import { ZacValue, ZacValueList } from "../../zac/zac_value";
import { BoxHeightStyle, BoxWidthStyle, Brightness, Clip, Color, Locale, Radius, TextAlign, TextDirection, TextHeightBehavior } from "../dart_ui";
import { GlobalKeyNavigatorState, Key } from "../foundation";
import { InputDecoration } from "../material";
import { EdgeInsets, FlutterAlignmentGeometry, FlutterBorderRadiusGeometry, FlutterEdgeInsetsGeometry, FlutterShapeBorder, StrutStyle, TextAlignVertical, TextStyle, TextWidthBasis, VerticalDirection } from "../painting";
import { BoxConstraints, MainAxisAlignment, MainAxisSize } from "../rendering";
import { SmartDashesType, SmartQuotesType, SystemUiOverlayStyle, TextCapitalization, TextInputAction, TextInputType } from "../services";
import { FlutterRouteFactory, RouteSettings } from "./navigator";
import { IconThemeData } from "./others";
export declare class AppBar extends FlutterWidget {
    static new(data: {
        key?: Key;
        leading?: FlutterWidget;
        automaticallyImplyLeading?: ZacValue<boolean>;
        title?: FlutterWidget;
        actions?: ZacValueList<FlutterWidget>;
        flexibleSpace?: FlutterWidget;
        bottom?: FlutterWidget;
        elevation?: ZacValue<DartDouble>;
        shadowColor?: Color;
        shape?: FlutterShapeBorder;
        backgroundColor?: Color;
        foregroundColor?: Color;
        iconTheme?: IconThemeData;
        actionsIconTheme?: IconThemeData;
        primary?: ZacValue<boolean>;
        centerTitle?: ZacValue<boolean>;
        excludeHeaderSemantics?: ZacValue<boolean>;
        titleSpacing?: ZacValue<DartDouble>;
        toolbarOpacity?: ZacValue<DartDouble>;
        bottomOpacity?: ZacValue<DartDouble>;
        toolbarHeight?: ZacValue<DartDouble>;
        leadingWidth?: ZacValue<DartDouble>;
        toolbarTextStyle?: TextStyle;
        titleTextStyle?: TextStyle;
        systemOverlayStyle?: SystemUiOverlayStyle;
    }): AppBar;
}
export declare class ButtonBar extends FlutterWidget {
    static new(data: {
        key?: Key;
        alignment?: MainAxisAlignment;
        mainAxisSize?: MainAxisSize;
        buttonMinWidth?: ZacValue<DartDouble>;
        buttonHeight?: ZacValue<DartDouble>;
        buttonPadding?: FlutterEdgeInsetsGeometry;
        buttonAlignedDropdown?: ZacValue<boolean>;
        overflowDirection?: VerticalDirection;
        overflowButtonSpacing?: ZacValue<DartDouble>;
        children?: ZacValueList<FlutterWidget>;
    }): ButtonBar;
}
export declare class ElevatedButton extends FlutterWidget {
    static new(data: {
        key?: Key;
        child: FlutterWidget;
        onPressed?: ZacActions;
        onLongPress?: ZacActions;
        autofocus?: ZacValue<boolean>;
        clipBehavior?: Clip;
    }): ElevatedButton;
    static icon(data: {
        key?: Key;
        icon: FlutterWidget;
        label: FlutterWidget;
        onPressed?: ZacActions;
        onLongPress?: ZacActions;
        autofocus?: ZacValue<boolean>;
        clipBehavior?: Clip;
    }): ElevatedButton;
}
export declare class OutlinedButton extends FlutterWidget {
    static new(data: {
        key?: Key;
        child: FlutterWidget;
        onPressed?: ZacActions;
        onLongPress?: ZacActions;
        autofocus?: ZacValue<boolean>;
        clipBehavior?: Clip;
    }): OutlinedButton;
    static icon(data: {
        key?: Key;
        icon: FlutterWidget;
        label: FlutterWidget;
        onPressed?: ZacActions;
        onLongPress?: ZacActions;
        autofocus?: ZacValue<boolean>;
        clipBehavior?: Clip;
    }): OutlinedButton;
}
export declare class TextButton extends FlutterWidget {
    static new(data: {
        key?: Key;
        child: FlutterWidget;
        onPressed?: ZacActions;
        onLongPress?: ZacActions;
        autofocus?: ZacValue<boolean>;
        clipBehavior?: Clip;
    }): TextButton;
    static icon(data: {
        key?: Key;
        icon: FlutterWidget;
        label: FlutterWidget;
        onPressed?: ZacActions;
        onLongPress?: ZacActions;
        autofocus?: ZacValue<boolean>;
        clipBehavior?: Clip;
    }): TextButton;
}
export declare class Card extends FlutterWidget {
    static new(data: {
        key?: Key;
        color?: Color;
        shadowColor?: Color;
        elevation?: ZacValue<DartDouble>;
        shape?: FlutterShapeBorder;
        borderOnForeground?: ZacValue<boolean>;
        margin?: FlutterEdgeInsetsGeometry;
        clipBehavior?: Clip;
        child?: FlutterWidget;
        semanticContainer?: ZacValue<boolean>;
    }): Card;
}
export declare class Dialog extends FlutterWidget {
    static new(data: {
        key?: Key;
        backgroundColor?: Color;
        elevation?: ZacValue<DartDouble>;
        insetPadding?: EdgeInsets;
        clipBehavior?: Clip;
        shape?: FlutterShapeBorder;
        alignment?: FlutterAlignmentGeometry;
        child?: FlutterWidget;
    }): Dialog;
    static alert(data: {
        key?: Key;
        title?: FlutterWidget;
        content?: FlutterWidget;
        actions?: ZacValueList<FlutterWidget>;
        titlePadding?: FlutterEdgeInsetsGeometry;
        titleTextStyle?: TextStyle;
        contentPadding?: FlutterEdgeInsetsGeometry;
        contentTextStyle?: TextStyle;
        actionsPadding?: FlutterEdgeInsetsGeometry;
        actionsAlignment?: MainAxisAlignment;
        actionsOverflowDirection?: VerticalDirection;
        actionsOverflowButtonSpacing?: ZacValue<DartDouble>;
        buttonPadding?: FlutterEdgeInsetsGeometry;
        backgroundColor?: Color;
        elevation?: ZacValue<DartDouble>;
        semanticLabel?: ZacValue<string>;
        insetPadding?: EdgeInsets;
        clipBehavior?: Clip;
        shape?: FlutterShapeBorder;
        alignment?: FlutterAlignmentGeometry;
        scrollable?: ZacValue<boolean>;
    }): Dialog;
    static simple(data: {
        key?: Key;
        title?: FlutterWidget;
        children?: ZacValueList<FlutterWidget>;
        titlePadding?: FlutterEdgeInsetsGeometry;
        titleTextStyle?: TextStyle;
        contentPadding?: FlutterEdgeInsetsGeometry;
        backgroundColor?: Color;
        elevation?: ZacValue<DartDouble>;
        semanticLabel?: ZacValue<string>;
        insetPadding?: EdgeInsets;
        clipBehavior?: Clip;
        shape?: FlutterShapeBorder;
        alignment?: FlutterAlignmentGeometry;
    }): Dialog;
    static simpleOption(data: {
        key?: Key;
        child?: FlutterWidget;
        onPressed?: ZacActions;
        padding?: EdgeInsets;
    }): Dialog;
}
export declare class DialogActions extends ZacAction {
    static showDialog(data: {
        child: FlutterWidget;
        barrierDismissible?: ZacValue<boolean>;
        barrierColor?: Color;
        barrierLabel?: ZacValue<string>;
        useSafeArea?: ZacValue<boolean>;
        useRootNavigator?: ZacValue<boolean>;
        routeSettings?: RouteSettings;
    }): DialogActions;
}
export declare class Divider extends FlutterWidget {
    static new(data: {
        key?: Key;
        height?: ZacValue<DartDouble>;
        thickness?: ZacValue<DartDouble>;
        indent?: ZacValue<DartDouble>;
        endIndent?: ZacValue<DartDouble>;
        color?: Color;
    }): Divider;
}
export declare class Drawer extends FlutterWidget {
    static new(data: {
        key?: Key;
        backgroundColor?: Color;
        elevation?: ZacValue<DartDouble>;
        shape?: FlutterShapeBorder;
        child?: FlutterWidget;
        semanticLabel?: ZacValue<string>;
    }): Drawer;
}
export declare class ListTile extends FlutterWidget {
    static new(data: {
        key?: Key;
        leading?: FlutterWidget;
        title?: FlutterWidget;
        subtitle?: FlutterWidget;
        trailing?: FlutterWidget;
        isThreeLine?: ZacValue<boolean>;
        dense?: ZacValue<boolean>;
        shape?: FlutterShapeBorder;
        selectedColor?: Color;
        iconColor?: Color;
        textColor?: Color;
        contentPadding?: FlutterEdgeInsetsGeometry;
        enabled?: ZacValue<boolean>;
        onTap?: ZacActions;
        onLongPress?: ZacActions;
        selected?: ZacValue<boolean>;
        focusColor?: Color;
        hoverColor?: Color;
        autofocus?: ZacValue<boolean>;
        tileColor?: Color;
        selectedTileColor?: Color;
        enableFeedback?: ZacValue<boolean>;
        horizontalTitleGap?: ZacValue<DartDouble>;
        minVerticalPadding?: ZacValue<DartDouble>;
        minLeadingWidth?: ZacValue<DartDouble>;
    }): ListTile;
}
export declare class MaterialApp extends FlutterWidget {
    static new(data: {
        key?: Key;
        navigatorKey?: GlobalKeyNavigatorState;
        home?: FlutterWidget;
        initialRoute?: ZacValue<string>;
        onGenerateRoute?: FlutterRouteFactory;
        onUnknownRoute?: FlutterRouteFactory;
        title?: ZacValue<string>;
        color?: Color;
        locale?: Locale;
        debugShowMaterialGrid?: ZacValue<boolean>;
        showPerformanceOverlay?: ZacValue<boolean>;
        checkerboardRasterCacheImages?: ZacValue<boolean>;
        checkerboardOffscreenLayers?: ZacValue<boolean>;
        showSemanticsDebugger?: ZacValue<boolean>;
        debugShowCheckedModeBanner?: ZacValue<boolean>;
        restorationScopeId?: ZacValue<string>;
        useInheritedMediaQuery?: ZacValue<boolean>;
    }): MaterialApp;
}
export declare class Material extends FlutterWidget {
    static new(data: {
        key?: Key;
        child?: FlutterWidget;
        elevation?: ZacValue<DartDouble>;
        color?: Color;
        shadowColor?: Color;
        textStyle?: TextStyle;
        borderRadius?: FlutterBorderRadiusGeometry;
        shape?: FlutterShapeBorder;
        borderOnForeground?: ZacValue<boolean>;
        clipBehavior?: Clip;
    }): Material;
}
export declare class ProgressIndicator extends FlutterWidget {
    static linear(data: {
        key?: Key;
        value?: ZacValue<DartDouble>;
        backgroundColor?: Color;
        color?: Color;
        minHeight?: ZacValue<DartDouble>;
        semanticsLabel?: ZacValue<string>;
        semanticsValue?: ZacValue<string>;
    }): ProgressIndicator;
    static circular(data: {
        key?: Key;
        value?: ZacValue<DartDouble>;
        backgroundColor?: Color;
        color?: Color;
        strokeWidth?: ZacValue<DartDouble>;
        semanticsLabel?: ZacValue<string>;
        semanticsValue?: ZacValue<string>;
    }): ProgressIndicator;
}
export declare class RefreshIndicator extends FlutterWidget {
    static familyName: string;
    static new(data: {
        key?: Key;
        child: FlutterWidget;
        displacement?: ZacValue<DartDouble>;
        edgeOffset?: ZacValue<DartDouble>;
        onRefresh: ZacActions;
        color?: Color;
        backgroundColor?: Color;
        semanticsLabel?: ZacValue<string>;
        semanticsValue?: ZacValue<string>;
        strokeWidth?: ZacValue<DartDouble>;
        triggerMode?: RefreshIndicatorTriggerMode;
        family?: SharedValueFamily;
    }): RefreshIndicator;
}
export declare class RefreshIndicatorTriggerMode extends FlutterWidget {
    static onEdge(): RefreshIndicatorTriggerMode;
    static anywhere(): RefreshIndicatorTriggerMode;
}
export declare class Scaffold extends FlutterWidget {
    static new(data: {
        key?: Key;
        appBar?: FlutterWidget;
        body?: FlutterWidget;
        floatingActionButton?: FlutterWidget;
        persistentFooterButtons?: ZacValueList<FlutterWidget>;
        drawer?: FlutterWidget;
        endDrawer?: FlutterWidget;
        bottomNavigationBar?: FlutterWidget;
        bottomSheet?: FlutterWidget;
        backgroundColor?: Color;
        resizeToAvoidBottomInset?: ZacValue<boolean>;
        primary?: ZacValue<boolean>;
        extendBody?: ZacValue<boolean>;
        extendBodyBehindAppBar?: ZacValue<boolean>;
        drawerScrimColor?: Color;
        drawerEdgeDragWidth?: ZacValue<DartDouble>;
        drawerEnableOpenDragGesture?: ZacValue<boolean>;
        endDrawerEnableOpenDragGesture?: ZacValue<boolean>;
        restorationId?: ZacValue<string>;
    }): Scaffold;
}
export declare class ScaffoldActions extends ZacAction {
    static openDrawer(): ScaffoldActions;
    static openEndDrawer(): ScaffoldActions;
    static showBodyScrim(data: {
        value: boolean;
        opacity: ZacValue<DartDouble>;
    }): ScaffoldActions;
    static showBottomSheet(data: {
        child: FlutterWidget;
        backgroundColor?: Color;
        elevation?: ZacValue<DartDouble>;
        shape?: FlutterShapeBorder;
        clipBehavior?: Clip;
        constraints?: BoxConstraints;
        enableDrag?: ZacValue<boolean>;
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
export declare class SnackBar extends FlutterWidget {
    static new(data: {
        key?: Key;
        content: FlutterWidget;
        backgroundColor?: Color;
        elevation?: ZacValue<DartDouble>;
        margin?: FlutterEdgeInsetsGeometry;
        padding?: FlutterEdgeInsetsGeometry;
        width?: ZacValue<DartDouble>;
        shape?: FlutterShapeBorder;
        behavior?: SnackBarBehavior;
        action?: SnackBarAction;
        onVisible?: ZacActions;
    }): SnackBar;
}
export declare class SnackBarBehavior extends ZacConverter {
    static fixed(): SnackBarBehavior;
    static floating(): SnackBarBehavior;
}
export declare class SnackBarAction extends FlutterWidget {
    static new(data: {
        key?: Key;
        textColor?: Color;
        disabledTextColor?: Color;
        label: string;
        onPressed?: ZacActions;
    }): SnackBarAction;
}
export declare class MaterialBanner extends FlutterWidget {
    static new(data: {
        key?: Key;
        content: FlutterWidget;
        contentTextStyle?: TextStyle;
        actions: ZacValueList<FlutterWidget>;
        elevation?: ZacValue<DartDouble>;
        leading: FlutterWidget;
        backgroundColor?: Color;
        padding?: FlutterEdgeInsetsGeometry;
        leadingPadding?: FlutterEdgeInsetsGeometry;
        forceActionsBelow?: ZacValue<boolean>;
        onVisible?: ZacActions;
    }): MaterialBanner;
}
export declare class SelectableText extends FlutterWidget {
    static new(data: {
        data: string;
        key?: Key;
        style?: TextStyle;
        strutStyle?: StrutStyle;
        textAlign?: TextAlign;
        textDirection?: TextDirection;
        textScaleFactor?: ZacValue<DartDouble>;
        showCursor?: ZacValue<boolean>;
        autofocus?: ZacValue<boolean>;
        minLines?: ZacValue<DartInt>;
        maxLines?: ZacValue<DartInt>;
        cursorWidth?: ZacValue<DartDouble>;
        cursorHeight?: ZacValue<DartDouble>;
        cursorRadius?: Radius;
        cursorColor?: Color;
        enableInteractiveSelection?: ZacValue<boolean>;
        semanticsLabel?: ZacValue<string>;
        textHeightBehavior?: TextHeightBehavior;
        textWidthBasis?: TextWidthBasis;
    }): SelectableText;
}
export declare class TextField extends FlutterWidget {
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
        readOnly?: ZacValue<boolean>;
        showCursor?: ZacValue<boolean>;
        autofocus?: ZacValue<boolean>;
        obscuringCharacter?: ZacValue<string>;
        obscureText?: ZacValue<boolean>;
        autocorrect?: ZacValue<boolean>;
        smartDashesType?: SmartDashesType;
        smartQuotesType?: SmartQuotesType;
        enableSuggestions?: ZacValue<boolean>;
        maxLines?: ZacValue<DartInt>;
        minLines?: ZacValue<DartInt>;
        expands?: ZacValue<boolean>;
        maxLength?: ZacValue<DartInt>;
        onChanged?: ZacActions;
        onEditingComplete?: ZacActions;
        onSubmitted?: ZacActions;
        enabled?: ZacValue<boolean>;
        cursorWidth?: ZacValue<DartDouble>;
        cursorHeight?: ZacValue<DartDouble>;
        cursorRadius?: Radius;
        cursorColor?: Color;
        selectionHeightStyle?: BoxHeightStyle;
        selectionWidthStyle?: BoxWidthStyle;
        keyboardAppearance?: Brightness;
        scrollPadding?: EdgeInsets;
        enableInteractiveSelection?: ZacValue<boolean>;
        onTap?: ZacActions;
        clipBehavior?: Clip;
        restorationId?: ZacValue<string>;
        enableIMEPersonalizedLearning?: ZacValue<boolean>;
    }): TextField;
}
