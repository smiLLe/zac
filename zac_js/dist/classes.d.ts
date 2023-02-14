export declare type JSONValue = string | number | boolean | {
    [key: string]: JSONValue;
} | Array<JSONValue>;
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
export interface DartBlendMode {
    _DartBlendMode: unknown;
}
export interface DartBlurStyle {
    _DartBlurStyle: unknown;
}
export interface DartBoxHeightStyle {
    _DartBoxHeightStyle: unknown;
}
export interface DartBoxWidthStyle {
    _DartBoxWidthStyle: unknown;
}
export interface DartBrightness {
    _DartBrightness: unknown;
}
export interface DartClip {
    _DartClip: unknown;
}
export interface DartColor {
    _DartColor: unknown;
}
export interface DartFilterQuality {
    _DartFilterQuality: unknown;
}
export interface DartFontFeature {
    _DartFontFeature: unknown;
}
export interface DartFontStyle {
    _DartFontStyle: unknown;
}
export interface DartFontWeight {
    _DartFontWeight: unknown;
}
export interface DartLocale {
    _DartLocale: unknown;
}
export interface DartOffset extends DartOffsetBase {
    _DartOffset: unknown;
}
export interface DartOffsetBase {
    _DartOffsetBase: unknown;
}
export interface DartRadius {
    _DartRadius: unknown;
}
export interface DartRect {
    _DartRect: unknown;
}
export interface DartShadow {
    _DartShadow: unknown;
}
export interface DartSize extends DartOffsetBase {
    _DartSize: unknown;
}
export interface DartTextAlign {
    _DartTextAlign: unknown;
}
export interface DartTextBaseline {
    _DartTextBaseline: unknown;
}
export interface DartTextDecoration {
    _DartTextDecoration: unknown;
}
export interface DartTextDecorationStyle {
    _DartTextDecorationStyle: unknown;
}
export interface DartTextDirection {
    _DartTextDirection: unknown;
}
export interface DartTextHeightBehavior {
    _DartTextHeightBehavior: unknown;
}
export interface DartTextLeadingDistribution {
    _DartTextLeadingDistribution: unknown;
}
export interface FlutterAlign extends FlutterWidget {
    _FlutterAlign: unknown;
}
export interface FlutterAlignment extends FlutterAlignmentGeometry {
    _FlutterAlignment: unknown;
}
export interface FlutterAlignmentDirectional extends FlutterAlignmentGeometry {
    _FlutterAlignmentDirectional: unknown;
}
export interface FlutterAlignmentGeometry {
    _FlutterAlignmentGeometry: unknown;
}
export interface FlutterAppBar extends FlutterWidget {
    _FlutterAppBar: unknown;
}
export interface FlutterAspectRatio extends FlutterWidget {
    _FlutterAspectRatio: unknown;
}
export interface FlutterAxis {
    _FlutterAxis: unknown;
}
export interface FlutterBorder extends FlutterBoxBorder {
    _FlutterBorder: unknown;
}
export interface FlutterBorderDirectional extends FlutterBoxBorder {
    _FlutterBorderDirectional: unknown;
}
export interface FlutterBorderRadius extends FlutterBorderRadiusGeometry {
    _FlutterBorderRadius: unknown;
}
export interface FlutterBorderRadiusGeometry {
    _FlutterBorderRadiusGeometry: unknown;
}
export interface FlutterBorderSide {
    _FlutterBorderSide: unknown;
}
export interface FlutterBorderStyle {
    _FlutterBorderStyle: unknown;
}
export interface FlutterBoxBorder extends FlutterShapeBorder {
    _FlutterBoxBorder: unknown;
}
export interface FlutterBoxConstraints extends FlutterConstraints {
    _FlutterBoxConstraints: unknown;
}
export interface FlutterBoxDecoration extends FlutterDecoration {
    _FlutterBoxDecoration: unknown;
}
export interface FlutterBoxFit {
    _FlutterBoxFit: unknown;
}
export interface FlutterBoxShadow extends DartShadow {
    _FlutterBoxShadow: unknown;
}
export interface FlutterBoxShape {
    _FlutterBoxShape: unknown;
}
export interface FlutterButtonBar extends FlutterWidget {
    _FlutterButtonBar: unknown;
}
export interface FlutterCard extends FlutterWidget {
    _FlutterCard: unknown;
}
export interface FlutterCenter extends FlutterWidget {
    _FlutterCenter: unknown;
}
export interface FlutterChangeNotifier {
    _FlutterChangeNotifier: unknown;
}
export interface FlutterCircleBorder extends FlutterOutlinedBorder {
    _FlutterCircleBorder: unknown;
}
export interface FlutterClipOval extends FlutterWidget {
    _FlutterClipOval: unknown;
}
export interface FlutterClipRect extends FlutterWidget {
    _FlutterClipRect: unknown;
}
export interface FlutterColumn extends FlutterWidget {
    _FlutterColumn: unknown;
}
export interface FlutterConstrainedBox extends FlutterWidget {
    _FlutterConstrainedBox: unknown;
}
export interface FlutterConstraints {
    _FlutterConstraints: unknown;
}
export interface FlutterContainer extends FlutterWidget {
    _FlutterContainer: unknown;
}
export interface FlutterCrossAxisAlignment {
    _FlutterCrossAxisAlignment: unknown;
}
export interface FlutterCustomScrollView extends FlutterWidget {
    _FlutterCustomScrollView: unknown;
}
export interface FlutterDecoratedBox extends FlutterWidget {
    _FlutterDecoratedBox: unknown;
}
export interface FlutterDecoration {
    _FlutterDecoration: unknown;
}
export interface FlutterDecorationImage {
    _FlutterDecorationImage: unknown;
}
export interface FlutterDecorationPosition {
    _FlutterDecorationPosition: unknown;
}
export interface FlutterDiagnosticableTree {
    _FlutterDiagnosticableTree: unknown;
}
export interface FlutterDivider extends FlutterWidget {
    _FlutterDivider: unknown;
}
export interface FlutterDrawer extends FlutterWidget {
    _FlutterDrawer: unknown;
}
export interface FlutterEdgeInsets extends FlutterEdgeInsetsGeometry {
    _FlutterEdgeInsets: unknown;
}
export interface FlutterEdgeInsetsDirectional extends FlutterEdgeInsetsGeometry {
    _FlutterEdgeInsetsDirectional: unknown;
}
export interface FlutterEdgeInsetsGeometry {
    _FlutterEdgeInsetsGeometry: unknown;
}
export interface FlutterElevatedButton extends FlutterWidget {
    _FlutterElevatedButton: unknown;
}
export interface FlutterExpanded extends FlutterWidget {
    _FlutterExpanded: unknown;
}
export interface FlutterFittedBox extends FlutterWidget {
    _FlutterFittedBox: unknown;
}
export interface FlutterFlexFit {
    _FlutterFlexFit: unknown;
}
export interface FlutterFlexible extends FlutterWidget {
    _FlutterFlexible: unknown;
}
export interface FlutterFloatingActionButton extends FlutterWidget {
    _FlutterFloatingActionButton: unknown;
}
export interface FlutterFocusNode {
    _FlutterFocusNode: unknown;
}
export interface FlutterFractionalOffset extends FlutterAlignment {
    _FlutterFractionalOffset: unknown;
}
export interface FlutterFractionalTranslation extends FlutterWidget {
    _FlutterFractionalTranslation: unknown;
}
export interface FlutterFractionallySizedBox extends FlutterWidget {
    _FlutterFractionallySizedBox: unknown;
}
export interface FlutterGestureDetector extends FlutterWidget {
    _FlutterGestureDetector: unknown;
}
export interface FlutterGlobalKey<T> extends FlutterKey {
    _FlutterGlobalKey: unknown;
    _FlutterGlobalKeyT: T;
}
export interface FlutterGradient {
    _FlutterGradient: unknown;
}
export interface FlutterGridView extends FlutterWidget {
    _FlutterGridView: unknown;
}
export interface FlutterHitTestBehavior {
    _FlutterHitTestBehavior: unknown;
}
export interface FlutterIcon extends FlutterWidget {
    _FlutterIcon: unknown;
}
export interface FlutterIconData {
    _FlutterIconData: unknown;
}
export interface FlutterIconThemeData {
    _FlutterIconThemeData: unknown;
}
export interface FlutterIgnorePointer extends FlutterWidget {
    _FlutterIgnorePointer: unknown;
}
export interface FlutterImage extends FlutterWidget {
    _FlutterImage: unknown;
}
export interface FlutterImageRepeat {
    _FlutterImageRepeat: unknown;
}
export interface FlutterIndexedStack extends FlutterWidget {
    _FlutterIndexedStack: unknown;
}
export interface FlutterInputBorder extends FlutterShapeBorder {
    _FlutterInputBorder: unknown;
}
export interface FlutterInputDecoration {
    _FlutterInputDecoration: unknown;
}
export interface FlutterInteractiveViewer extends FlutterWidget {
    _FlutterInteractiveViewer: unknown;
}
export interface FlutterIntrinsicHeight extends FlutterWidget {
    _FlutterIntrinsicHeight: unknown;
}
export interface FlutterIntrinsicWidth extends FlutterWidget {
    _FlutterIntrinsicWidth: unknown;
}
export interface FlutterKey {
    _FlutterKey: unknown;
}
export interface FlutterLimitedBox extends FlutterWidget {
    _FlutterLimitedBox: unknown;
}
export interface FlutterListTile extends FlutterWidget {
    _FlutterListTile: unknown;
}
export interface FlutterListView extends FlutterWidget {
    _FlutterListView: unknown;
}
export interface FlutterLocalKey extends FlutterKey {
    _FlutterLocalKey: unknown;
}
export interface FlutterMainAxisAlignment {
    _FlutterMainAxisAlignment: unknown;
}
export interface FlutterMainAxisSize {
    _FlutterMainAxisSize: unknown;
}
export interface FlutterMaterial extends FlutterWidget {
    _FlutterMaterial: unknown;
}
export interface FlutterMaterialApp extends FlutterWidget {
    _FlutterMaterialApp: unknown;
}
export interface FlutterMaterialBanner extends FlutterWidget {
    _FlutterMaterialBanner: unknown;
}
export interface FlutterMaterialTapTargetSize {
    _FlutterMaterialTapTargetSize: unknown;
}
export interface FlutterMouseCursor {
    _FlutterMouseCursor: unknown;
}
export interface FlutterNavigator extends FlutterWidget {
    _FlutterNavigator: unknown;
}
export interface FlutterNavigatorState extends FlutterState<FlutterNavigator> {
    _FlutterNavigatorState: unknown;
}
export interface FlutterOffstage extends FlutterWidget {
    _FlutterOffstage: unknown;
}
export interface FlutterOpacity extends FlutterWidget {
    _FlutterOpacity: unknown;
}
export interface FlutterOutlineInputBorder extends FlutterInputBorder {
    _FlutterOutlineInputBorder: unknown;
}
export interface FlutterOutlinedBorder extends FlutterShapeBorder {
    _FlutterOutlinedBorder: unknown;
}
export interface FlutterOutlinedButton extends FlutterWidget {
    _FlutterOutlinedButton: unknown;
}
export interface FlutterOverflowBox extends FlutterWidget {
    _FlutterOverflowBox: unknown;
}
export interface FlutterPadding extends FlutterWidget {
    _FlutterPadding: unknown;
}
export interface FlutterPanAxis {
    _FlutterPanAxis: unknown;
}
export interface FlutterPositioned extends FlutterWidget {
    _FlutterPositioned: unknown;
}
export interface FlutterProgressIndicator extends FlutterWidget {
    _FlutterProgressIndicator: unknown;
}
export interface FlutterRefreshIndicator extends FlutterWidget {
    _FlutterRefreshIndicator: unknown;
}
export interface FlutterRefreshIndicatorTriggerMode {
    _FlutterRefreshIndicatorTriggerMode: unknown;
}
export interface FlutterRotatedBox extends FlutterWidget {
    _FlutterRotatedBox: unknown;
}
export interface FlutterRoundedRectangleBorder extends FlutterOutlinedBorder {
    _FlutterRoundedRectangleBorder: unknown;
}
export interface FlutterRoute<T> {
    _FlutterRoute: unknown;
    _FlutterRouteT: T;
}
export interface FlutterRouteFactory {
    _FlutterRouteFactory: unknown;
}
export interface FlutterRouteSettings {
    _FlutterRouteSettings: unknown;
}
export interface FlutterRow extends FlutterWidget {
    _FlutterRow: unknown;
}
export interface FlutterSafeArea extends FlutterWidget {
    _FlutterSafeArea: unknown;
}
export interface FlutterScaffold extends FlutterWidget {
    _FlutterScaffold: unknown;
}
export interface FlutterScaffoldMessenger extends FlutterWidget {
    _FlutterScaffoldMessenger: unknown;
}
export interface FlutterScaffoldMessengerState extends FlutterState<FlutterScaffoldMessenger> {
    _FlutterScaffoldMessengerState: unknown;
}
export interface FlutterScrollController extends FlutterChangeNotifier {
    _FlutterScrollController: unknown;
}
export interface FlutterScrollPhysics {
    _FlutterScrollPhysics: unknown;
}
export interface FlutterScrollViewKeyboardDismissBehavior {
    _FlutterScrollViewKeyboardDismissBehavior: unknown;
}
export interface FlutterSelectableText extends FlutterWidget {
    _FlutterSelectableText: unknown;
}
export interface FlutterShapeBorder {
    _FlutterShapeBorder: unknown;
}
export interface FlutterShapeDecoration extends FlutterDecoration {
    _FlutterShapeDecoration: unknown;
}
export interface FlutterSingleChildScrollView extends FlutterWidget {
    _FlutterSingleChildScrollView: unknown;
}
export interface FlutterSizedBox extends FlutterWidget {
    _FlutterSizedBox: unknown;
}
export interface FlutterSizedOverflowBox extends FlutterWidget {
    _FlutterSizedOverflowBox: unknown;
}
export interface FlutterSliverChildDelegate {
    _FlutterSliverChildDelegate: unknown;
}
export interface FlutterSliverGrid extends FlutterWidget {
    _FlutterSliverGrid: unknown;
}
export interface FlutterSliverGridDelegate {
    _FlutterSliverGridDelegate: unknown;
}
export interface FlutterSliverList extends FlutterWidget {
    _FlutterSliverList: unknown;
}
export interface FlutterSliverPadding extends FlutterWidget {
    _FlutterSliverPadding: unknown;
}
export interface FlutterSliverToBoxAdapter extends FlutterWidget {
    _FlutterSliverToBoxAdapter: unknown;
}
export interface FlutterSmartDashesType {
    _FlutterSmartDashesType: unknown;
}
export interface FlutterSmartQuotesType {
    _FlutterSmartQuotesType: unknown;
}
export interface FlutterSnackBar extends FlutterWidget {
    _FlutterSnackBar: unknown;
}
export interface FlutterSnackBarAction extends FlutterWidget {
    _FlutterSnackBarAction: unknown;
}
export interface FlutterSnackBarBehavior {
    _FlutterSnackBarBehavior: unknown;
}
export interface FlutterSpacer extends FlutterWidget {
    _FlutterSpacer: unknown;
}
export interface FlutterStack extends FlutterWidget {
    _FlutterStack: unknown;
}
export interface FlutterStackFit {
    _FlutterStackFit: unknown;
}
export interface FlutterState<T> {
    _FlutterState: unknown;
    _FlutterStateT: T;
}
export interface FlutterStrutStyle {
    _FlutterStrutStyle: unknown;
}
export interface FlutterSystemUiOverlayStyle {
    _FlutterSystemUiOverlayStyle: unknown;
}
export interface FlutterText extends FlutterWidget {
    _FlutterText: unknown;
}
export interface FlutterTextAlignVertical {
    _FlutterTextAlignVertical: unknown;
}
export interface FlutterTextButton extends FlutterWidget {
    _FlutterTextButton: unknown;
}
export interface FlutterTextCapitalization {
    _FlutterTextCapitalization: unknown;
}
export interface FlutterTextField extends FlutterWidget {
    _FlutterTextField: unknown;
}
export interface FlutterTextInputAction {
    _FlutterTextInputAction: unknown;
}
export interface FlutterTextInputType {
    _FlutterTextInputType: unknown;
}
export interface FlutterTextOverflow {
    _FlutterTextOverflow: unknown;
}
export interface FlutterTextStyle {
    _FlutterTextStyle: unknown;
}
export interface FlutterTextWidthBasis {
    _FlutterTextWidthBasis: unknown;
}
export interface FlutterUnconstrainedBox extends FlutterWidget {
    _FlutterUnconstrainedBox: unknown;
}
export interface FlutterUnderlineInputBorder extends FlutterInputBorder {
    _FlutterUnderlineInputBorder: unknown;
}
export interface FlutterValueKey<T> extends FlutterLocalKey {
    _FlutterValueKey: unknown;
    _FlutterValueKeyT: T;
}
export interface FlutterVerticalDirection {
    _FlutterVerticalDirection: unknown;
}
export interface FlutterWidget extends FlutterDiagnosticableTree {
    _FlutterWidget: unknown;
}
export interface FlutterWrap extends FlutterWidget {
    _FlutterWrap: unknown;
}
export interface FlutterWrapAlignment {
    _FlutterWrapAlignment: unknown;
}
export interface FlutterWrapCrossAlignment {
    _FlutterWrapCrossAlignment: unknown;
}
export interface ZacAction {
    _ZacAction: unknown;
}
export interface ZacState {
    _ZacState: unknown;
}
export interface ZacStateMachineBuildWidget extends FlutterWidget {
    _ZacStateMachineBuildWidget: unknown;
}
export interface ZacTransform {
    _ZacTransform: unknown;
}
export declare class ZacStateMachineConfig extends ZacConvertable {
    static new(data: {
        states: Record<string, ZacStateMachineStateConfig>;
        initialState: string;
        initialWidget?: ZacBuilder<FlutterWidget>;
    }): ZacStateMachineConfig;
}
export declare class ZacStateMachineStateConfig extends ZacConvertable {
    static new(data?: {
        on?: Array<ZacStateMachineTransition>;
        widget?: ZacBuilder<FlutterWidget>;
    }): ZacStateMachineStateConfig;
}
export declare class ZacStateMachineTransition extends ZacConvertable {
    static new(data: {
        event: string;
        target: string;
    }): ZacStateMachineTransition;
}
export declare class BoolTransformer extends ZacBuilder<ZacTransform> {
    static negate(data: {
        boolean: boolean | ZacBuilder<boolean>;
    }): BoolTransformer;
}
export declare class Align extends ZacBuilder<FlutterAlign> {
    static new(data?: {
        key?: ZacBuilder<FlutterKey>;
        alignment?: ZacBuilder<FlutterAlignmentGeometry>;
        widthFactor?: number | ZacBuilder<number>;
        heightFactor?: number | ZacBuilder<number>;
        child?: ZacBuilder<FlutterWidget>;
    }): Align;
}
export declare class Alignment extends ZacBuilder<FlutterAlignment> {
    static new(data: {
        x: number | ZacBuilder<number>;
        y: number | ZacBuilder<number>;
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
export declare class AlignmentDirectional extends ZacBuilder<FlutterAlignmentDirectional> {
    static new(data: {
        start: number | ZacBuilder<number>;
        y: number | ZacBuilder<number>;
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
export declare class AppBar extends ZacBuilder<FlutterAppBar> {
    static new(data?: {
        key?: ZacBuilder<FlutterKey>;
        leading?: ZacBuilder<FlutterWidget>;
        automaticallyImplyLeading?: boolean | ZacBuilder<boolean>;
        title?: ZacBuilder<FlutterWidget>;
        actions?: ZacBuilder<Array<FlutterWidget>>;
        flexibleSpace?: ZacBuilder<FlutterWidget>;
        bottom?: ZacBuilder<FlutterWidget>;
        elevation?: number | ZacBuilder<number>;
        shadowColor?: ZacBuilder<DartColor>;
        shape?: ZacBuilder<FlutterShapeBorder>;
        backgroundColor?: ZacBuilder<DartColor>;
        foregroundColor?: ZacBuilder<DartColor>;
        iconTheme?: ZacBuilder<FlutterIconThemeData>;
        actionsIconTheme?: ZacBuilder<FlutterIconThemeData>;
        primary?: boolean | ZacBuilder<boolean>;
        centerTitle?: boolean | ZacBuilder<boolean>;
        excludeHeaderSemantics?: boolean | ZacBuilder<boolean>;
        titleSpacing?: number | ZacBuilder<number>;
        toolbarOpacity?: number | ZacBuilder<number>;
        bottomOpacity?: number | ZacBuilder<number>;
        toolbarHeight?: number | ZacBuilder<number>;
        leadingWidth?: number | ZacBuilder<number>;
        toolbarTextStyle?: ZacBuilder<FlutterTextStyle>;
        titleTextStyle?: ZacBuilder<FlutterTextStyle>;
        systemOverlayStyle?: ZacBuilder<FlutterSystemUiOverlayStyle>;
    }): AppBar;
}
export declare class AspectRatio extends ZacBuilder<FlutterAspectRatio> {
    static new(data: {
        key?: ZacBuilder<FlutterKey>;
        aspectRatio: number | ZacBuilder<number>;
        child?: ZacBuilder<FlutterWidget>;
    }): AspectRatio;
}
export declare class Axis extends ZacBuilder<FlutterAxis> {
    static horizontal(): Axis;
    static vertical(): Axis;
}
export declare class BlendMode extends ZacBuilder<DartBlendMode> {
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
export declare class BlurStyle extends ZacBuilder<DartBlurStyle> {
    static inner(): BlurStyle;
    static normal(): BlurStyle;
    static outer(): BlurStyle;
    static solid(): BlurStyle;
}
export declare class Border extends ZacBuilder<FlutterBorder> {
    static new(data?: {
        top?: ZacBuilder<FlutterBorderSide>;
        right?: ZacBuilder<FlutterBorderSide>;
        bottom?: ZacBuilder<FlutterBorderSide>;
        left?: ZacBuilder<FlutterBorderSide>;
    }): Border;
    static all(data?: {
        color?: ZacBuilder<DartColor>;
        width?: number | ZacBuilder<number>;
        style?: ZacBuilder<FlutterBorderStyle>;
    }): Border;
}
export declare class BorderDirectional extends ZacBuilder<FlutterBorderDirectional> {
    static new(data?: {
        top?: ZacBuilder<FlutterBorderSide>;
        start?: ZacBuilder<FlutterBorderSide>;
        bottom?: ZacBuilder<FlutterBorderSide>;
        end?: ZacBuilder<FlutterBorderSide>;
    }): BorderDirectional;
}
export declare class BorderRadius extends ZacBuilder<FlutterBorderRadius> {
    static all(data: {
        radius: Radius;
    }): BorderRadius;
    static circular(data: {
        radius: number | ZacBuilder<number>;
    }): BorderRadius;
    static horizontal(data?: {
        left?: ZacBuilder<DartRadius>;
        right?: ZacBuilder<DartRadius>;
    }): BorderRadius;
}
export declare class BorderSide extends ZacBuilder<FlutterBorderSide> {
    static new(data?: {
        color?: ZacBuilder<DartColor>;
        width?: number | ZacBuilder<number>;
        style?: ZacBuilder<FlutterBorderStyle>;
    }): BorderSide;
}
export declare class BorderStyle extends ZacBuilder<FlutterBorderStyle> {
    static none(): BorderStyle;
    static solid(): BorderStyle;
}
export declare class BoxConstraints extends ZacBuilder<FlutterBoxConstraints> {
    static new(data?: {
        minWidth?: number | ZacBuilder<number>;
        maxWidth?: number | ZacBuilder<number>;
        minHeight?: number | ZacBuilder<number>;
        maxHeight?: number | ZacBuilder<number>;
    }): BoxConstraints;
    static expand(data?: {
        width?: number | ZacBuilder<number>;
        height?: number | ZacBuilder<number>;
    }): BoxConstraints;
    static loose(data: {
        size: ZacBuilder<DartSize>;
    }): BoxConstraints;
    static tight(data: {
        size: ZacBuilder<DartSize>;
    }): BoxConstraints;
    static tightFor(data?: {
        width?: number | ZacBuilder<number>;
        height?: number | ZacBuilder<number>;
    }): BoxConstraints;
    static tightForFinite(data?: {
        width?: number | ZacBuilder<number>;
        height?: number | ZacBuilder<number>;
    }): BoxConstraints;
}
export declare class BoxDecoration extends ZacBuilder<FlutterBoxDecoration> {
    static new(data?: {
        color?: ZacBuilder<DartColor>;
        border?: ZacBuilder<FlutterBoxBorder>;
        borderRadius?: ZacBuilder<FlutterBorderRadiusGeometry>;
        boxShadow?: Array<BoxShadow>;
        shape?: ZacBuilder<FlutterBoxShape>;
        backgroundBlendMode?: ZacBuilder<DartBlendMode>;
    }): BoxDecoration;
}
export declare class BoxFit extends ZacBuilder<FlutterBoxFit> {
    static contain(): BoxFit;
    static cover(): BoxFit;
    static fill(): BoxFit;
    static fitHeight(): BoxFit;
    static fitWidth(): BoxFit;
    static none(): BoxFit;
    static scaleDown(): BoxFit;
}
export declare class BoxHeightStyle extends ZacBuilder<DartBoxHeightStyle> {
    static includeLineSpacingBottom(): BoxHeightStyle;
    static includeLineSpacingMiddle(): BoxHeightStyle;
    static includeLineSpacingTop(): BoxHeightStyle;
    static max(): BoxHeightStyle;
    static strut(): BoxHeightStyle;
    static tight(): BoxHeightStyle;
}
export declare class BoxShadow extends ZacBuilder<FlutterBoxShadow> {
    static new(data?: {
        color?: ZacBuilder<DartColor>;
        offset?: ZacBuilder<DartOffset>;
        blurRadius?: number | ZacBuilder<number>;
        spreadRadius?: number | ZacBuilder<number>;
        blurStyle?: BlurStyle;
    }): BoxShadow;
}
export declare class BoxShape extends ZacBuilder<FlutterBoxShape> {
    static circle(): BoxShape;
    static rectangle(): BoxShape;
}
export declare class BoxWidthStyle extends ZacBuilder<DartBoxWidthStyle> {
    static max(): BoxWidthStyle;
    static tight(): BoxWidthStyle;
}
export declare class Brightness extends ZacBuilder<DartBrightness> {
    static dark(): Brightness;
    static light(): Brightness;
}
export declare class Builder extends ZacBuilder<FlutterWidget> {
    static new(data: {
        key?: ZacBuilder<FlutterKey>;
        child: ZacBuilder<FlutterWidget>;
    }): Builder;
}
export declare class ButtonBar extends ZacBuilder<FlutterButtonBar> {
    static new(data?: {
        key?: ZacBuilder<FlutterKey>;
        alignment?: ZacBuilder<FlutterMainAxisAlignment>;
        mainAxisSize?: ZacBuilder<FlutterMainAxisSize>;
        buttonMinWidth?: number | ZacBuilder<number>;
        buttonHeight?: number | ZacBuilder<number>;
        buttonPadding?: ZacBuilder<FlutterEdgeInsetsGeometry>;
        buttonAlignedDropdown?: boolean | ZacBuilder<boolean>;
        overflowDirection?: ZacBuilder<FlutterVerticalDirection>;
        overflowButtonSpacing?: number | ZacBuilder<number>;
        children?: ZacBuilder<Array<FlutterWidget>>;
    }): ButtonBar;
}
export declare class Card extends ZacBuilder<FlutterCard> {
    static new(data?: {
        key?: ZacBuilder<FlutterKey>;
        color?: ZacBuilder<DartColor>;
        shadowColor?: ZacBuilder<DartColor>;
        elevation?: number | ZacBuilder<number>;
        shape?: ZacBuilder<FlutterShapeBorder>;
        borderOnForeground?: boolean | ZacBuilder<boolean>;
        margin?: ZacBuilder<FlutterEdgeInsetsGeometry>;
        clipBehavior?: ZacBuilder<DartClip>;
        child?: ZacBuilder<FlutterWidget>;
        semanticContainer?: boolean | ZacBuilder<boolean>;
    }): Card;
}
export declare class Center extends ZacBuilder<FlutterCenter> {
    static new(data?: {
        key?: ZacBuilder<FlutterKey>;
        widthFactor?: number | ZacBuilder<number>;
        heightFactor?: number | ZacBuilder<number>;
        child?: ZacBuilder<FlutterWidget>;
    }): Center;
}
export declare class CircleBorder extends ZacBuilder<FlutterCircleBorder> {
    static new(data?: {
        side?: ZacBuilder<FlutterBorderSide>;
    }): CircleBorder;
}
export declare class Clip extends ZacBuilder<DartClip> {
    static none(): Clip;
    static antiAlias(): Clip;
    static hardEdge(): Clip;
}
export declare class ClipOval extends ZacBuilder<FlutterClipOval> {
    static new(data?: {
        key?: ZacBuilder<FlutterKey>;
        child?: ZacBuilder<FlutterWidget>;
        clipBehavior?: ZacBuilder<DartClip>;
    }): ClipOval;
}
export declare class ClipRect extends ZacBuilder<FlutterClipRect> {
    static new(data?: {
        key?: ZacBuilder<FlutterKey>;
        child?: ZacBuilder<FlutterWidget>;
        clipBehavior?: ZacBuilder<DartClip>;
    }): ClipRect;
}
export declare class Color extends ZacBuilder<DartColor> {
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
        opacity: number | ZacBuilder<number>;
    }): Color;
}
export declare class Column extends ZacBuilder<FlutterColumn> {
    static new(data?: {
        key?: ZacBuilder<FlutterKey>;
        mainAxisAlignment?: ZacBuilder<FlutterMainAxisAlignment>;
        mainAxisSize?: ZacBuilder<FlutterMainAxisSize>;
        crossAxisAlignment?: ZacBuilder<FlutterCrossAxisAlignment>;
        textDirection?: ZacBuilder<DartTextDirection>;
        verticalDirection?: ZacBuilder<FlutterVerticalDirection>;
        textBaseline?: ZacBuilder<DartTextBaseline>;
        children?: ZacBuilder<Array<FlutterWidget>>;
    }): Column;
}
export declare class ConstrainedBox extends ZacBuilder<FlutterConstrainedBox> {
    static new(data: {
        key?: ZacBuilder<FlutterKey>;
        constraints: ZacBuilder<FlutterBoxConstraints>;
        child?: ZacBuilder<FlutterWidget>;
    }): ConstrainedBox;
}
export declare class Container extends ZacBuilder<FlutterContainer> {
    static new(data?: {
        key?: ZacBuilder<FlutterKey>;
        child?: ZacBuilder<FlutterWidget>;
        color?: ZacBuilder<DartColor>;
        margin?: ZacBuilder<FlutterEdgeInsetsGeometry>;
        padding?: ZacBuilder<FlutterEdgeInsetsGeometry>;
        alignment?: ZacBuilder<FlutterAlignmentGeometry>;
        decoration?: ZacBuilder<FlutterDecoration>;
    }): Container;
}
export declare class CrossAxisAlignment extends ZacBuilder<FlutterCrossAxisAlignment> {
    static baseline(): CrossAxisAlignment;
    static center(): CrossAxisAlignment;
    static end(): CrossAxisAlignment;
    static start(): CrossAxisAlignment;
    static stretch(): CrossAxisAlignment;
}
export declare class CustomScrollView extends ZacBuilder<FlutterCustomScrollView> {
    static new(data?: {
        key?: ZacBuilder<FlutterKey>;
        scrollDirection?: Axis;
        reverse?: boolean | ZacBuilder<boolean>;
        controller?: ZacBuilder<FlutterScrollController>;
        primary?: boolean | ZacBuilder<boolean>;
        physics?: ScrollPhysics;
        shrinkWrap?: boolean | ZacBuilder<boolean>;
        center?: ZacBuilder<FlutterKey>;
        anchor?: number | ZacBuilder<number>;
        cacheExtent?: number | ZacBuilder<number>;
        slivers?: ZacBuilder<Array<FlutterWidget>>;
        semanticChildCount?: number | ZacBuilder<number>;
        keyboardDismissBehavior?: ScrollViewKeyboardDismissBehavior;
        restorationId?: string | ZacBuilder<string>;
        clipBehavior?: ZacBuilder<DartClip>;
    }): CustomScrollView;
}
export declare class DecoratedBox extends ZacBuilder<FlutterDecoratedBox> {
    static new(data: {
        key?: ZacBuilder<FlutterKey>;
        child?: ZacBuilder<FlutterWidget>;
        decoration: ZacBuilder<FlutterDecoration>;
        position?: ZacBuilder<FlutterDecorationPosition>;
    }): DecoratedBox;
}
export declare class DecorationPosition extends ZacBuilder<FlutterDecorationPosition> {
    static background(): DecorationPosition;
    static foreground(): DecorationPosition;
}
export declare class DialogActions extends ZacBuilder<ZacAction> {
    static showDialog(data: {
        child: ZacBuilder<FlutterWidget>;
        barrierDismissible?: boolean | ZacBuilder<boolean>;
        barrierColor?: ZacBuilder<DartColor>;
        barrierLabel?: string | ZacBuilder<string>;
        useSafeArea?: boolean | ZacBuilder<boolean>;
        useRootNavigator?: boolean | ZacBuilder<boolean>;
        routeSettings?: ZacBuilder<FlutterRouteSettings>;
    }): DialogActions;
}
export declare class Dialogs extends ZacBuilder<FlutterWidget> {
    static dialog(data?: {
        key?: ZacBuilder<FlutterKey>;
        backgroundColor?: ZacBuilder<DartColor>;
        elevation?: number | ZacBuilder<number>;
        insetPadding?: ZacBuilder<FlutterEdgeInsets>;
        clipBehavior?: ZacBuilder<DartClip>;
        shape?: ZacBuilder<FlutterShapeBorder>;
        alignment?: ZacBuilder<FlutterAlignmentGeometry>;
        child?: ZacBuilder<FlutterWidget>;
    }): Dialogs;
    static alertDialog(data?: {
        key?: ZacBuilder<FlutterKey>;
        title?: ZacBuilder<FlutterWidget>;
        content?: ZacBuilder<FlutterWidget>;
        actions?: ZacBuilder<Array<FlutterWidget>>;
        titlePadding?: ZacBuilder<FlutterEdgeInsetsGeometry>;
        titleTextStyle?: ZacBuilder<FlutterTextStyle>;
        contentPadding?: ZacBuilder<FlutterEdgeInsetsGeometry>;
        contentTextStyle?: ZacBuilder<FlutterTextStyle>;
        actionsPadding?: ZacBuilder<FlutterEdgeInsetsGeometry>;
        actionsAlignment?: ZacBuilder<FlutterMainAxisAlignment>;
        actionsOverflowDirection?: ZacBuilder<FlutterVerticalDirection>;
        actionsOverflowButtonSpacing?: number | ZacBuilder<number>;
        buttonPadding?: ZacBuilder<FlutterEdgeInsetsGeometry>;
        backgroundColor?: ZacBuilder<DartColor>;
        elevation?: number | ZacBuilder<number>;
        semanticLabel?: string | ZacBuilder<string>;
        insetPadding?: ZacBuilder<FlutterEdgeInsets>;
        clipBehavior?: ZacBuilder<DartClip>;
        shape?: ZacBuilder<FlutterShapeBorder>;
        alignment?: ZacBuilder<FlutterAlignmentGeometry>;
        scrollable?: boolean | ZacBuilder<boolean>;
    }): Dialogs;
    static simpleDialog(data?: {
        key?: ZacBuilder<FlutterKey>;
        title?: ZacBuilder<FlutterWidget>;
        children?: ZacBuilder<Array<FlutterWidget>>;
        titlePadding?: ZacBuilder<FlutterEdgeInsetsGeometry>;
        titleTextStyle?: ZacBuilder<FlutterTextStyle>;
        contentPadding?: ZacBuilder<FlutterEdgeInsetsGeometry>;
        backgroundColor?: ZacBuilder<DartColor>;
        elevation?: number | ZacBuilder<number>;
        semanticLabel?: string | ZacBuilder<string>;
        insetPadding?: ZacBuilder<FlutterEdgeInsets>;
        clipBehavior?: ZacBuilder<DartClip>;
        shape?: ZacBuilder<FlutterShapeBorder>;
        alignment?: ZacBuilder<FlutterAlignmentGeometry>;
    }): Dialogs;
    static simpleDialogOption(data?: {
        key?: ZacBuilder<FlutterKey>;
        child?: ZacBuilder<FlutterWidget>;
        onPressed?: ZacBuilder<Array<ZacAction>>;
        padding?: ZacBuilder<FlutterEdgeInsets>;
    }): Dialogs;
}
export declare class Divider extends ZacBuilder<FlutterDivider> {
    static new(data?: {
        key?: ZacBuilder<FlutterKey>;
        height?: number | ZacBuilder<number>;
        thickness?: number | ZacBuilder<number>;
        indent?: number | ZacBuilder<number>;
        endIndent?: number | ZacBuilder<number>;
        color?: ZacBuilder<DartColor>;
    }): Divider;
}
export declare class Drawer extends ZacBuilder<FlutterDrawer> {
    static new(data?: {
        key?: ZacBuilder<FlutterKey>;
        backgroundColor?: ZacBuilder<DartColor>;
        elevation?: number | ZacBuilder<number>;
        shape?: ZacBuilder<FlutterShapeBorder>;
        child?: ZacBuilder<FlutterWidget>;
        semanticLabel?: string | ZacBuilder<string>;
    }): Drawer;
}
export declare class EdgeInsets extends ZacBuilder<FlutterEdgeInsets> {
    static all(data: {
        value: number | ZacBuilder<number>;
    }): EdgeInsets;
    static symmetric(data?: {
        vertical?: number | ZacBuilder<number>;
        horizontal?: number | ZacBuilder<number>;
    }): EdgeInsets;
    static only(data?: {
        left?: number | ZacBuilder<number>;
        top?: number | ZacBuilder<number>;
        right?: number | ZacBuilder<number>;
        bottom?: number | ZacBuilder<number>;
    }): EdgeInsets;
}
export declare class EdgeInsetsDirectional extends ZacBuilder<FlutterEdgeInsetsDirectional> {
    static all(data: {
        value: number | ZacBuilder<number>;
    }): EdgeInsetsDirectional;
    static only(data?: {
        start?: number | ZacBuilder<number>;
        top?: number | ZacBuilder<number>;
        end?: number | ZacBuilder<number>;
        bottom?: number | ZacBuilder<number>;
    }): EdgeInsetsDirectional;
}
export declare class ElevatedButton extends ZacBuilder<FlutterElevatedButton> {
    static new(data?: {
        key?: ZacBuilder<FlutterKey>;
        child?: ZacBuilder<FlutterWidget>;
        onPressed?: ZacBuilder<Array<ZacAction>>;
        onLongPress?: ZacBuilder<Array<ZacAction>>;
        autofocus?: boolean | ZacBuilder<boolean>;
        clipBehavior?: ZacBuilder<DartClip>;
    }): ElevatedButton;
    static icon(data: {
        key?: ZacBuilder<FlutterKey>;
        icon: ZacBuilder<FlutterWidget>;
        label: ZacBuilder<FlutterWidget>;
        onPressed?: ZacBuilder<Array<ZacAction>>;
        onLongPress?: ZacBuilder<Array<ZacAction>>;
        autofocus?: boolean | ZacBuilder<boolean>;
        clipBehavior?: ZacBuilder<DartClip>;
    }): ElevatedButton;
}
export declare class Expanded extends ZacBuilder<FlutterExpanded> {
    static new(data: {
        key?: ZacBuilder<FlutterKey>;
        flex?: number | ZacBuilder<number>;
        child: ZacBuilder<FlutterWidget>;
    }): Expanded;
}
export declare class FilterQuality extends ZacBuilder<DartFilterQuality> {
    static high(): FilterQuality;
    static low(): FilterQuality;
    static medium(): FilterQuality;
    static none(): FilterQuality;
}
export declare class FittedBox extends ZacBuilder<FlutterFittedBox> {
    static new(data?: {
        key?: ZacBuilder<FlutterKey>;
        fit?: ZacBuilder<FlutterBoxFit>;
        alignment?: ZacBuilder<FlutterAlignmentGeometry>;
        clipBehavior?: ZacBuilder<DartClip>;
        child?: ZacBuilder<FlutterWidget>;
    }): FittedBox;
}
export declare class FlexFit extends ZacBuilder<FlutterFlexFit> {
    static tight(): FlexFit;
    static loose(): FlexFit;
}
export declare class Flexible extends ZacBuilder<FlutterFlexible> {
    static new(data: {
        key?: ZacBuilder<FlutterKey>;
        flex?: number | ZacBuilder<number>;
        fit?: ZacBuilder<FlutterFlexFit>;
        child: ZacBuilder<FlutterWidget>;
    }): Flexible;
}
export declare class FloatingActionButton extends ZacBuilder<FlutterFloatingActionButton> {
    static new(data?: {
        key?: ZacBuilder<FlutterKey>;
        child?: ZacBuilder<FlutterWidget>;
        tooltip?: string | ZacBuilder<string>;
        foregroundColor?: ZacBuilder<DartColor>;
        backgroundColor?: ZacBuilder<DartColor>;
        focusColor?: ZacBuilder<DartColor>;
        hoverColor?: ZacBuilder<DartColor>;
        splashColor?: ZacBuilder<DartColor>;
        heroTag?: ZacBuilder<unknown>;
        elevation?: number | ZacBuilder<number>;
        focusElevation?: number | ZacBuilder<number>;
        hoverElevation?: number | ZacBuilder<number>;
        highlightElevation?: number | ZacBuilder<number>;
        disabledElevation?: number | ZacBuilder<number>;
        onPressed?: ZacBuilder<Array<ZacAction>>;
        mouseCursor?: ZacBuilder<FlutterMouseCursor>;
        mini?: boolean | ZacBuilder<boolean>;
        shape?: ZacBuilder<FlutterShapeBorder>;
        clipBehavior?: ZacBuilder<DartClip>;
        focusNode?: ZacBuilder<FlutterFocusNode>;
        autofocus?: boolean | ZacBuilder<boolean>;
        materialTapTargetSize?: ZacBuilder<FlutterMaterialTapTargetSize>;
        isExtended?: boolean | ZacBuilder<boolean>;
        enableFeedback?: boolean | ZacBuilder<boolean>;
    }): FloatingActionButton;
    static extended(data: {
        key?: ZacBuilder<FlutterKey>;
        tooltip?: string | ZacBuilder<string>;
        foregroundColor?: ZacBuilder<DartColor>;
        backgroundColor?: ZacBuilder<DartColor>;
        focusColor?: ZacBuilder<DartColor>;
        hoverColor?: ZacBuilder<DartColor>;
        splashColor?: ZacBuilder<DartColor>;
        heroTag?: ZacBuilder<unknown>;
        elevation?: number | ZacBuilder<number>;
        focusElevation?: number | ZacBuilder<number>;
        hoverElevation?: number | ZacBuilder<number>;
        highlightElevation?: number | ZacBuilder<number>;
        disabledElevation?: number | ZacBuilder<number>;
        onPressed?: ZacBuilder<Array<ZacAction>>;
        mouseCursor?: ZacBuilder<FlutterMouseCursor>;
        shape?: ZacBuilder<FlutterShapeBorder>;
        clipBehavior?: ZacBuilder<DartClip>;
        focusNode?: ZacBuilder<FlutterFocusNode>;
        autofocus?: boolean | ZacBuilder<boolean>;
        materialTapTargetSize?: ZacBuilder<FlutterMaterialTapTargetSize>;
        isExtended?: boolean | ZacBuilder<boolean>;
        enableFeedback?: boolean | ZacBuilder<boolean>;
        extendedIconLabelSpacing?: number | ZacBuilder<number>;
        extendedPadding?: ZacBuilder<FlutterEdgeInsetsGeometry>;
        extendedTextStyle?: ZacBuilder<FlutterTextStyle>;
        icon?: ZacBuilder<FlutterWidget>;
        label: ZacBuilder<FlutterWidget>;
    }): FloatingActionButton;
    static large(data?: {
        key?: ZacBuilder<FlutterKey>;
        child?: ZacBuilder<FlutterWidget>;
        tooltip?: string | ZacBuilder<string>;
        foregroundColor?: ZacBuilder<DartColor>;
        backgroundColor?: ZacBuilder<DartColor>;
        focusColor?: ZacBuilder<DartColor>;
        hoverColor?: ZacBuilder<DartColor>;
        splashColor?: ZacBuilder<DartColor>;
        heroTag?: ZacBuilder<unknown>;
        elevation?: number | ZacBuilder<number>;
        focusElevation?: number | ZacBuilder<number>;
        hoverElevation?: number | ZacBuilder<number>;
        highlightElevation?: number | ZacBuilder<number>;
        disabledElevation?: number | ZacBuilder<number>;
        onPressed?: ZacBuilder<Array<ZacAction>>;
        mouseCursor?: ZacBuilder<FlutterMouseCursor>;
        shape?: ZacBuilder<FlutterShapeBorder>;
        clipBehavior?: ZacBuilder<DartClip>;
        focusNode?: ZacBuilder<FlutterFocusNode>;
        autofocus?: boolean | ZacBuilder<boolean>;
        materialTapTargetSize?: ZacBuilder<FlutterMaterialTapTargetSize>;
        enableFeedback?: boolean | ZacBuilder<boolean>;
    }): FloatingActionButton;
    static small(data?: {
        key?: ZacBuilder<FlutterKey>;
        child?: ZacBuilder<FlutterWidget>;
        tooltip?: string | ZacBuilder<string>;
        foregroundColor?: ZacBuilder<DartColor>;
        backgroundColor?: ZacBuilder<DartColor>;
        focusColor?: ZacBuilder<DartColor>;
        hoverColor?: ZacBuilder<DartColor>;
        splashColor?: ZacBuilder<DartColor>;
        heroTag?: ZacBuilder<unknown>;
        elevation?: number | ZacBuilder<number>;
        focusElevation?: number | ZacBuilder<number>;
        hoverElevation?: number | ZacBuilder<number>;
        highlightElevation?: number | ZacBuilder<number>;
        disabledElevation?: number | ZacBuilder<number>;
        onPressed?: ZacBuilder<Array<ZacAction>>;
        mouseCursor?: ZacBuilder<FlutterMouseCursor>;
        shape?: ZacBuilder<FlutterShapeBorder>;
        clipBehavior?: ZacBuilder<DartClip>;
        focusNode?: ZacBuilder<FlutterFocusNode>;
        autofocus?: boolean | ZacBuilder<boolean>;
        materialTapTargetSize?: ZacBuilder<FlutterMaterialTapTargetSize>;
        enableFeedback?: boolean | ZacBuilder<boolean>;
    }): FloatingActionButton;
}
export declare class FontFeature extends ZacBuilder<DartFontFeature> {
    static new(data: {
        feature: string;
        value?: number | ZacBuilder<number>;
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
        enable?: boolean | ZacBuilder<boolean>;
    }): FontFeature;
    static notationalForms(data?: {
        value?: number | ZacBuilder<number>;
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
        value?: number | ZacBuilder<number>;
    }): FontFeature;
    static tabularFigures(): FontFeature;
}
export declare class FontStyle extends ZacBuilder<DartFontStyle> {
    static italic(): FontStyle;
    static normal(): FontStyle;
}
export declare class FontWeight extends ZacBuilder<DartFontWeight> {
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
export declare class FractionalOffset extends ZacBuilder<FlutterFractionalOffset> {
    static new(data: {
        dx: number | ZacBuilder<number>;
        dy: number | ZacBuilder<number>;
    }): FractionalOffset;
}
export declare class FractionalTranslation extends ZacBuilder<FlutterFractionalTranslation> {
    static new(data: {
        key?: ZacBuilder<FlutterKey>;
        child?: ZacBuilder<FlutterWidget>;
        translation: Offset;
        transformHitTests?: boolean | ZacBuilder<boolean>;
    }): FractionalTranslation;
}
export declare class FractionallySizedBox extends ZacBuilder<FlutterFractionallySizedBox> {
    static new(data?: {
        key?: ZacBuilder<FlutterKey>;
        child?: ZacBuilder<FlutterWidget>;
        alignment?: ZacBuilder<FlutterAlignmentGeometry>;
        widthFactor?: number | ZacBuilder<number>;
        heightFactor?: number | ZacBuilder<number>;
    }): FractionallySizedBox;
}
export declare class GestureDetector extends ZacBuilder<FlutterGestureDetector> {
    static new(data?: {
        key?: ZacBuilder<FlutterKey>;
        child?: ZacBuilder<FlutterWidget>;
        onTap?: ZacBuilder<Array<ZacAction>>;
        onSecondaryTap?: ZacBuilder<Array<ZacAction>>;
        onDoubleTap?: ZacBuilder<Array<ZacAction>>;
        onLongPress?: ZacBuilder<Array<ZacAction>>;
        onSecondaryLongPress?: ZacBuilder<Array<ZacAction>>;
        onTertiaryLongPress?: ZacBuilder<Array<ZacAction>>;
        behavior?: HitTestBehavior;
        excludeFromSemantics?: boolean | ZacBuilder<boolean>;
    }): GestureDetector;
}
export declare class GlobalKeyNavigatorState extends ZacBuilder<FlutterGlobalKey<FlutterNavigatorState>> {
    static new(data?: {
        debugLabel?: string;
    }): GlobalKeyNavigatorState;
}
export declare class GlobalKeyScaffoldMessengerState extends ZacBuilder<FlutterGlobalKey<FlutterScaffoldMessengerState>> {
    static new(data?: {
        debugLabel?: string;
    }): GlobalKeyScaffoldMessengerState;
}
export declare class GridView extends ZacBuilder<FlutterGridView> {
    static new(data: {
        key?: ZacBuilder<FlutterKey>;
        scrollDirection?: ZacBuilder<FlutterAxis>;
        reverse?: boolean | ZacBuilder<boolean>;
        controller?: ZacBuilder<FlutterScrollController>;
        primary?: boolean | ZacBuilder<boolean>;
        shrinkWrap?: boolean | ZacBuilder<boolean>;
        padding?: ZacBuilder<FlutterEdgeInsetsGeometry>;
        gridDelegate: ZacBuilder<FlutterSliverGridDelegate>;
        addAutomaticKeepAlives?: boolean | ZacBuilder<boolean>;
        addRepaintBoundaries?: boolean | ZacBuilder<boolean>;
        addSemanticIndexes?: boolean | ZacBuilder<boolean>;
        cacheExtent?: number | ZacBuilder<number>;
        children?: ZacBuilder<Array<FlutterWidget>>;
        semanticChildCount?: number | ZacBuilder<number>;
        clipBehavior?: ZacBuilder<DartClip>;
        keyboardDismissBehavior?: ZacBuilder<FlutterScrollViewKeyboardDismissBehavior>;
        restorationId?: string | ZacBuilder<string>;
    }): GridView;
}
export declare class HitTestBehavior extends ZacBuilder<FlutterHitTestBehavior> {
    static deferToChild(): HitTestBehavior;
    static opaque(): HitTestBehavior;
    static translucent(): HitTestBehavior;
}
export declare class Icon extends ZacBuilder<FlutterIcon> {
    static new(data: {
        icon: IconData;
        key?: ZacBuilder<FlutterKey>;
        size?: number | ZacBuilder<number>;
        color?: ZacBuilder<DartColor>;
        semanticLabel?: string | ZacBuilder<string>;
        textDirection?: ZacBuilder<DartTextDirection>;
    }): Icon;
}
export declare class IconData extends ZacBuilder<FlutterIconData> {
    static new(data: {
        codePoint: number | ZacBuilder<number>;
        fontFamily?: string | ZacBuilder<string>;
        fontPackage?: string | ZacBuilder<string>;
        matchTextDirection?: boolean | ZacBuilder<boolean>;
    }): IconData;
}
export declare class IconThemeData extends ZacBuilder<FlutterIconThemeData> {
    static new(data?: {
        color?: ZacBuilder<DartColor>;
        opacity?: number | ZacBuilder<number>;
        size?: number | ZacBuilder<number>;
    }): IconThemeData;
}
export declare class IgnorePointer extends ZacBuilder<FlutterIgnorePointer> {
    static new(data?: {
        key?: ZacBuilder<FlutterKey>;
        ignoring?: boolean | ZacBuilder<boolean>;
        ignoringSemantics?: boolean | ZacBuilder<boolean>;
        child?: ZacBuilder<FlutterWidget>;
    }): IgnorePointer;
}
export declare class Image extends ZacBuilder<FlutterImage> {
    static network(data: {
        src: string | ZacBuilder<string>;
        key?: ZacBuilder<FlutterKey>;
        scale?: number | ZacBuilder<number>;
        semanticLabel?: string | ZacBuilder<string>;
        excludeFromSemantics?: boolean | ZacBuilder<boolean>;
        width?: number | ZacBuilder<number>;
        height?: number | ZacBuilder<number>;
        color?: ZacBuilder<DartColor>;
        colorBlendMode?: ZacBuilder<DartBlendMode>;
        fit?: ZacBuilder<FlutterBoxFit>;
        alignment?: ZacBuilder<FlutterAlignmentGeometry>;
        repeat?: ZacBuilder<FlutterImageRepeat>;
        centerSlice?: ZacBuilder<DartRect>;
        matchTextDirection?: boolean | ZacBuilder<boolean>;
        gaplessPlayback?: boolean | ZacBuilder<boolean>;
        filterQuality?: ZacBuilder<DartFilterQuality>;
        isAntiAlias?: boolean | ZacBuilder<boolean>;
        headers?: Record<string, string>;
        cacheWidth?: number | ZacBuilder<number>;
        cacheHeight?: number | ZacBuilder<number>;
    }): Image;
    static asset(data: {
        name: string | ZacBuilder<string>;
        key?: ZacBuilder<FlutterKey>;
        semanticLabel?: string | ZacBuilder<string>;
        excludeFromSemantics?: boolean | ZacBuilder<boolean>;
        scale?: number | ZacBuilder<number>;
        width?: number | ZacBuilder<number>;
        height?: number | ZacBuilder<number>;
        color?: ZacBuilder<DartColor>;
        colorBlendMode?: ZacBuilder<DartBlendMode>;
        fit?: ZacBuilder<FlutterBoxFit>;
        alignment?: ZacBuilder<FlutterAlignmentGeometry>;
        repeat?: ZacBuilder<FlutterImageRepeat>;
        centerSlice?: ZacBuilder<DartRect>;
        matchTextDirection?: boolean | ZacBuilder<boolean>;
        gaplessPlayback?: boolean | ZacBuilder<boolean>;
        isAntiAlias?: boolean | ZacBuilder<boolean>;
        package?: string | ZacBuilder<string>;
        filterQuality?: ZacBuilder<DartFilterQuality>;
        cacheWidth?: number | ZacBuilder<number>;
        cacheHeight?: number | ZacBuilder<number>;
    }): Image;
}
export declare class ImageRepeat extends ZacBuilder<FlutterImageRepeat> {
    static noRepeat(): ImageRepeat;
    static repeat(): ImageRepeat;
    static repeatX(): ImageRepeat;
    static repeatY(): ImageRepeat;
}
export declare class IndexedStack extends ZacBuilder<FlutterIndexedStack> {
    static new(data?: {
        key?: ZacBuilder<FlutterKey>;
        alignment?: ZacBuilder<FlutterAlignmentGeometry>;
        textDirection?: ZacBuilder<DartTextDirection>;
        sizing?: ZacBuilder<FlutterStackFit>;
        index?: number | ZacBuilder<number>;
        children?: ZacBuilder<Array<FlutterWidget>>;
    }): IndexedStack;
}
export declare class InputDecoration extends ZacBuilder<FlutterInputDecoration> {
    static new(data?: {
        icon?: ZacBuilder<FlutterWidget>;
        iconColor?: ZacBuilder<DartColor>;
        label?: ZacBuilder<FlutterWidget>;
        labelText?: string | ZacBuilder<string>;
        labelStyle?: ZacBuilder<FlutterTextStyle>;
        floatingLabelStyle?: ZacBuilder<FlutterTextStyle>;
        helperText?: string | ZacBuilder<string>;
        helperStyle?: ZacBuilder<FlutterTextStyle>;
        helperMaxLines?: number | ZacBuilder<number>;
        hintText?: string | ZacBuilder<string>;
        hintStyle?: ZacBuilder<FlutterTextStyle>;
        hintTextDirection?: ZacBuilder<DartTextDirection>;
        hintMaxLines?: number | ZacBuilder<number>;
        errorText?: string | ZacBuilder<string>;
        errorStyle?: ZacBuilder<FlutterTextStyle>;
        errorMaxLines?: number | ZacBuilder<number>;
        isCollapsed?: boolean | ZacBuilder<boolean>;
        isDense?: boolean | ZacBuilder<boolean>;
        contentPadding?: ZacBuilder<FlutterEdgeInsetsGeometry>;
        prefixIcon?: ZacBuilder<FlutterWidget>;
        prefixIconConstraints?: ZacBuilder<FlutterBoxConstraints>;
        prefix?: ZacBuilder<FlutterWidget>;
        prefixText?: string | ZacBuilder<string>;
        prefixStyle?: ZacBuilder<FlutterTextStyle>;
        prefixIconColor?: ZacBuilder<DartColor>;
        suffixIcon?: ZacBuilder<FlutterWidget>;
        suffix?: ZacBuilder<FlutterWidget>;
        suffixText?: string | ZacBuilder<string>;
        suffixStyle?: ZacBuilder<FlutterTextStyle>;
        suffixIconColor?: ZacBuilder<DartColor>;
        suffixIconConstraints?: ZacBuilder<FlutterBoxConstraints>;
        counter?: ZacBuilder<FlutterWidget>;
        counterText?: string | ZacBuilder<string>;
        counterStyle?: ZacBuilder<FlutterTextStyle>;
        filled?: boolean | ZacBuilder<boolean>;
        fillColor?: ZacBuilder<DartColor>;
        focusColor?: ZacBuilder<DartColor>;
        hoverColor?: ZacBuilder<DartColor>;
        errorBorder?: ZacBuilder<FlutterInputBorder>;
        focusedBorder?: ZacBuilder<FlutterInputBorder>;
        focusedErrorBorder?: ZacBuilder<FlutterInputBorder>;
        disabledBorder?: ZacBuilder<FlutterInputBorder>;
        enabledBorder?: ZacBuilder<FlutterInputBorder>;
        border?: ZacBuilder<FlutterInputBorder>;
        enabled?: boolean | ZacBuilder<boolean>;
        semanticCounterText?: string | ZacBuilder<string>;
        alignLabelWithHint?: boolean | ZacBuilder<boolean>;
        constraints?: ZacBuilder<FlutterBoxConstraints>;
    }): InputDecoration;
}
export declare class InteractiveViewer extends ZacBuilder<FlutterInteractiveViewer> {
    static new(data: {
        key?: ZacBuilder<FlutterKey>;
        child: ZacBuilder<FlutterWidget>;
        clipBehavior?: ZacBuilder<DartClip>;
        panAxis?: ZacBuilder<FlutterPanAxis>;
        boundaryMargin?: ZacBuilder<FlutterEdgeInsets>;
        constrained?: boolean | ZacBuilder<boolean>;
        maxScale?: number | ZacBuilder<number>;
        minScale?: number | ZacBuilder<number>;
        onInteractionEnd?: ZacBuilder<Array<ZacAction>>;
        onInteractionStart?: ZacBuilder<Array<ZacAction>>;
        onInteractionUpdate?: ZacBuilder<Array<ZacAction>>;
        panEnabled?: boolean | ZacBuilder<boolean>;
        scaleEnabled?: boolean | ZacBuilder<boolean>;
    }): InteractiveViewer;
}
export declare class IntrinsicHeight extends ZacBuilder<FlutterIntrinsicHeight> {
    static new(data?: {
        key?: ZacBuilder<FlutterKey>;
        child?: ZacBuilder<FlutterWidget>;
    }): IntrinsicHeight;
}
export declare class IntrinsicWidth extends ZacBuilder<FlutterIntrinsicWidth> {
    static new(data?: {
        key?: ZacBuilder<FlutterKey>;
        child?: ZacBuilder<FlutterWidget>;
    }): IntrinsicWidth;
}
export declare class LimitedBox extends ZacBuilder<FlutterLimitedBox> {
    static new(data?: {
        key?: ZacBuilder<FlutterKey>;
        maxWidth?: number | ZacBuilder<number>;
        maxHeight?: number | ZacBuilder<number>;
        child?: ZacBuilder<FlutterWidget>;
    }): LimitedBox;
}
export declare class ListTile extends ZacBuilder<FlutterListTile> {
    static new(data?: {
        key?: ZacBuilder<FlutterKey>;
        leading?: ZacBuilder<FlutterWidget>;
        title?: ZacBuilder<FlutterWidget>;
        subtitle?: ZacBuilder<FlutterWidget>;
        trailing?: ZacBuilder<FlutterWidget>;
        isThreeLine?: boolean | ZacBuilder<boolean>;
        dense?: boolean | ZacBuilder<boolean>;
        shape?: ZacBuilder<FlutterShapeBorder>;
        selectedColor?: ZacBuilder<DartColor>;
        iconColor?: ZacBuilder<DartColor>;
        textColor?: ZacBuilder<DartColor>;
        contentPadding?: ZacBuilder<FlutterEdgeInsetsGeometry>;
        enabled?: boolean | ZacBuilder<boolean>;
        onTap?: ZacBuilder<Array<ZacAction>>;
        onLongPress?: ZacBuilder<Array<ZacAction>>;
        selected?: boolean | ZacBuilder<boolean>;
        focusColor?: ZacBuilder<DartColor>;
        hoverColor?: ZacBuilder<DartColor>;
        autofocus?: boolean | ZacBuilder<boolean>;
        tileColor?: ZacBuilder<DartColor>;
        selectedTileColor?: ZacBuilder<DartColor>;
        enableFeedback?: boolean | ZacBuilder<boolean>;
        horizontalTitleGap?: number | ZacBuilder<number>;
        minVerticalPadding?: number | ZacBuilder<number>;
        minLeadingWidth?: number | ZacBuilder<number>;
    }): ListTile;
}
export declare class ListView extends ZacBuilder<FlutterListView> {
    static new(data?: {
        key?: ZacBuilder<FlutterKey>;
        scrollDirection?: ZacBuilder<FlutterAxis>;
        reverse?: boolean | ZacBuilder<boolean>;
        controller?: ZacBuilder<FlutterScrollController>;
        primary?: boolean | ZacBuilder<boolean>;
        physics?: ZacBuilder<FlutterScrollPhysics>;
        shrinkWrap?: boolean | ZacBuilder<boolean>;
        padding?: ZacBuilder<FlutterEdgeInsetsGeometry>;
        itemExtent?: number | ZacBuilder<number>;
        prototypeItem?: ZacBuilder<FlutterWidget>;
        addAutomaticKeepAlives?: boolean | ZacBuilder<boolean>;
        addRepaintBoundaries?: boolean | ZacBuilder<boolean>;
        addSemanticIndexes?: boolean | ZacBuilder<boolean>;
        cacheExtent?: number | ZacBuilder<number>;
        children?: ZacBuilder<Array<FlutterWidget>>;
        semanticChildCount?: number | ZacBuilder<number>;
        keyboardDismissBehavior?: ZacBuilder<FlutterScrollViewKeyboardDismissBehavior>;
        restorationId?: string | ZacBuilder<string>;
        clipBehavior?: ZacBuilder<DartClip>;
    }): ListView;
}
export declare class Locale extends ZacBuilder<DartLocale> {
    static new(data: {
        languageCode: string;
        countryCode?: string;
    }): Locale;
}
export declare class MainAxisAlignment extends ZacBuilder<FlutterMainAxisAlignment> {
    static start(): MainAxisAlignment;
    static end(): MainAxisAlignment;
    static center(): MainAxisAlignment;
    static spaceBetween(): MainAxisAlignment;
    static spaceAround(): MainAxisAlignment;
    static spaceEvenly(): MainAxisAlignment;
}
export declare class MainAxisSize extends ZacBuilder<FlutterMainAxisSize> {
    static min(): MainAxisSize;
    static max(): MainAxisSize;
}
export declare class Material extends ZacBuilder<FlutterMaterial> {
    static new(data?: {
        key?: ZacBuilder<FlutterKey>;
        child?: ZacBuilder<FlutterWidget>;
        elevation?: number | ZacBuilder<number>;
        color?: ZacBuilder<DartColor>;
        shadowColor?: ZacBuilder<DartColor>;
        textStyle?: ZacBuilder<FlutterTextStyle>;
        borderRadius?: ZacBuilder<FlutterBorderRadiusGeometry>;
        shape?: ZacBuilder<FlutterShapeBorder>;
        borderOnForeground?: boolean | ZacBuilder<boolean>;
        clipBehavior?: ZacBuilder<DartClip>;
    }): Material;
}
export declare class MaterialApp extends ZacBuilder<FlutterMaterialApp> {
    static new(data?: {
        key?: ZacBuilder<FlutterKey>;
        navigatorKey?: ZacBuilder<FlutterGlobalKey<FlutterNavigatorState>>;
        scaffoldMessengerKey?: ZacBuilder<FlutterGlobalKey<FlutterScaffoldMessengerState>>;
        home?: ZacBuilder<FlutterWidget>;
        initialRoute?: string | ZacBuilder<string>;
        onGenerateRoute?: RouteFactory;
        onUnknownRoute?: RouteFactory;
        title?: string | ZacBuilder<string>;
        color?: ZacBuilder<DartColor>;
        locale?: ZacBuilder<DartLocale>;
        debugShowMaterialGrid?: boolean | ZacBuilder<boolean>;
        showPerformanceOverlay?: boolean | ZacBuilder<boolean>;
        checkerboardRasterCacheImages?: boolean | ZacBuilder<boolean>;
        checkerboardOffscreenLayers?: boolean | ZacBuilder<boolean>;
        showSemanticsDebugger?: boolean | ZacBuilder<boolean>;
        debugShowCheckedModeBanner?: boolean | ZacBuilder<boolean>;
        restorationScopeId?: string | ZacBuilder<string>;
        useInheritedMediaQuery?: boolean | ZacBuilder<boolean>;
    }): MaterialApp;
}
export declare class MaterialBanner extends ZacBuilder<FlutterMaterialBanner> {
    static new(data: {
        key?: ZacBuilder<FlutterKey>;
        content: ZacBuilder<FlutterWidget>;
        contentTextStyle?: ZacBuilder<FlutterTextStyle>;
        actions: ZacBuilder<Array<FlutterWidget>>;
        elevation?: number | ZacBuilder<number>;
        leading?: ZacBuilder<FlutterWidget>;
        backgroundColor?: ZacBuilder<DartColor>;
        padding?: ZacBuilder<FlutterEdgeInsetsGeometry>;
        leadingPadding?: ZacBuilder<FlutterEdgeInsetsGeometry>;
        forceActionsBelow?: boolean | ZacBuilder<boolean>;
        onVisible?: ZacBuilder<Array<ZacAction>>;
    }): MaterialBanner;
}
export declare class MaterialPageRoute extends ZacBuilder<FlutterRoute<JSONValue>> {
    static new(data: {
        settings?: ZacBuilder<FlutterRouteSettings>;
        maintainState?: boolean | ZacBuilder<boolean>;
        fullscreenDialog?: boolean | ZacBuilder<boolean>;
        child: ZacBuilder<FlutterWidget>;
        nameOfSharedArguments?: string | ZacBuilder<string>;
    }): MaterialPageRoute;
}
export declare class Navigator extends ZacBuilder<FlutterNavigator> {
    static new(data?: {
        key?: ZacBuilder<FlutterKey>;
        onGenerateRoute?: RouteFactory;
        onUnknownRoute?: RouteFactory;
        initialRoute?: string | ZacBuilder<string>;
        requestFocus?: boolean | ZacBuilder<boolean>;
    }): Navigator;
}
export declare class NavigatorActions extends ZacBuilder<ZacAction> {
    static push(data: {
        route: ZacBuilder<FlutterRoute<JSONValue>>;
        navigatorState?: ZacBuilder<FlutterNavigatorState>;
    }): NavigatorActions;
    static pushNamed(data: {
        routeName: string | ZacBuilder<string>;
        arguments?: JSONValue;
        navigatorState?: ZacBuilder<FlutterNavigatorState>;
    }): NavigatorActions;
    static pop(data?: {
        actions?: ZacBuilder<Array<ZacAction>>;
        navigatorState?: ZacBuilder<FlutterNavigatorState>;
    }): NavigatorActions;
    static maybePop(data?: {
        actions?: ZacBuilder<Array<ZacAction>>;
        navigatorState?: ZacBuilder<FlutterNavigatorState>;
    }): NavigatorActions;
    static pushReplacement(data: {
        route: ZacBuilder<FlutterRoute<JSONValue>>;
        result?: ZacBuilder<Array<ZacAction>>;
        navigatorState?: ZacBuilder<FlutterNavigatorState>;
    }): NavigatorActions;
    static pushReplacementNamed(data: {
        routeName: string | ZacBuilder<string>;
        arguments?: JSONValue;
        navigatorState?: ZacBuilder<FlutterNavigatorState>;
        result?: ZacBuilder<Array<ZacAction>>;
    }): NavigatorActions;
    static popUntilRouteName(data: {
        routeName: string | ZacBuilder<string>;
        navigatorState?: ZacBuilder<FlutterNavigatorState>;
    }): NavigatorActions;
}
export declare class NavigatorState extends ZacBuilder<FlutterNavigatorState> {
    static closest(): NavigatorState;
    static root(): NavigatorState;
    static shared(data: {
        value: ZacBuilder<FlutterGlobalKey<FlutterNavigatorState>>;
    }): NavigatorState;
}
export declare class Offset extends ZacBuilder<DartOffset> {
    static new(data: {
        dx: number | ZacBuilder<number>;
        dy: number | ZacBuilder<number>;
    }): Offset;
    static fromDirection(data: {
        direction: number | ZacBuilder<number>;
        distance?: number | ZacBuilder<number>;
    }): Offset;
}
export declare class Offstage extends ZacBuilder<FlutterOffstage> {
    static new(data?: {
        key?: ZacBuilder<FlutterKey>;
        offstage?: boolean | ZacBuilder<boolean>;
        child?: ZacBuilder<FlutterWidget>;
    }): Offstage;
}
export declare class Opacity extends ZacBuilder<FlutterOpacity> {
    static new(data: {
        key?: ZacBuilder<FlutterKey>;
        opacity: number | ZacBuilder<number>;
        alwaysIncludeSemantics?: boolean | ZacBuilder<boolean>;
        child?: ZacBuilder<FlutterWidget>;
    }): Opacity;
}
export declare class OutlineInputBorder extends ZacBuilder<FlutterOutlineInputBorder> {
    static new(data?: {
        borderSide?: ZacBuilder<FlutterBorderSide>;
        borderRadius?: ZacBuilder<FlutterBorderRadius>;
        gapPadding?: number | ZacBuilder<number>;
    }): OutlineInputBorder;
}
export declare class OutlinedButton extends ZacBuilder<FlutterOutlinedButton> {
    static new(data: {
        key?: ZacBuilder<FlutterKey>;
        child: ZacBuilder<FlutterWidget>;
        onPressed?: ZacBuilder<Array<ZacAction>>;
        onLongPress?: ZacBuilder<Array<ZacAction>>;
        autofocus?: boolean | ZacBuilder<boolean>;
        clipBehavior?: ZacBuilder<DartClip>;
    }): OutlinedButton;
    static icon(data: {
        key?: ZacBuilder<FlutterKey>;
        icon: ZacBuilder<FlutterWidget>;
        label: ZacBuilder<FlutterWidget>;
        onPressed?: ZacBuilder<Array<ZacAction>>;
        onLongPress?: ZacBuilder<Array<ZacAction>>;
        autofocus?: boolean | ZacBuilder<boolean>;
        clipBehavior?: ZacBuilder<DartClip>;
    }): OutlinedButton;
}
export declare class OverflowBox extends ZacBuilder<FlutterOverflowBox> {
    static new(data?: {
        key?: ZacBuilder<FlutterKey>;
        alignment?: ZacBuilder<FlutterAlignmentGeometry>;
        minWidth?: number | ZacBuilder<number>;
        maxWidth?: number | ZacBuilder<number>;
        minHeight?: number | ZacBuilder<number>;
        maxHeight?: number | ZacBuilder<number>;
        child?: ZacBuilder<FlutterWidget>;
    }): OverflowBox;
}
export declare class Padding extends ZacBuilder<FlutterPadding> {
    static new(data: {
        key?: ZacBuilder<FlutterKey>;
        padding: ZacBuilder<FlutterEdgeInsetsGeometry>;
        child?: ZacBuilder<FlutterWidget>;
    }): Padding;
}
export declare class PageRouteBuilder extends ZacBuilder<FlutterRoute<JSONValue>> {
    static new(data: {
        settings?: ZacBuilder<FlutterRouteSettings>;
        opaque?: boolean | ZacBuilder<boolean>;
        barrierDismissible?: boolean | ZacBuilder<boolean>;
        barrierColor?: ZacBuilder<DartColor>;
        barrierLabel?: string | ZacBuilder<string>;
        maintainState?: boolean | ZacBuilder<boolean>;
        fullscreenDialog?: boolean | ZacBuilder<boolean>;
        child: ZacBuilder<FlutterWidget>;
        nameOfSharedArguments?: string | ZacBuilder<string>;
    }): PageRouteBuilder;
}
export declare class PanAxis extends ZacBuilder<FlutterPanAxis> {
    static horizontal(): PanAxis;
    static vertical(): PanAxis;
    static aligned(): PanAxis;
    static free(): PanAxis;
}
export declare class Positioned extends ZacBuilder<FlutterPositioned> {
    static new(data: {
        key?: ZacBuilder<FlutterKey>;
        left?: number | ZacBuilder<number>;
        top?: number | ZacBuilder<number>;
        right?: number | ZacBuilder<number>;
        bottom?: number | ZacBuilder<number>;
        width?: number | ZacBuilder<number>;
        height?: number | ZacBuilder<number>;
        child: ZacBuilder<FlutterWidget>;
    }): Positioned;
    static directional(data: {
        key?: ZacBuilder<FlutterKey>;
        textDirection: ZacBuilder<DartTextDirection>;
        start?: number | ZacBuilder<number>;
        top?: number | ZacBuilder<number>;
        end?: number | ZacBuilder<number>;
        bottom?: number | ZacBuilder<number>;
        width?: number | ZacBuilder<number>;
        height?: number | ZacBuilder<number>;
        child: ZacBuilder<FlutterWidget>;
    }): Positioned;
    static fill(data: {
        key?: ZacBuilder<FlutterKey>;
        left?: number | ZacBuilder<number>;
        top?: number | ZacBuilder<number>;
        right?: number | ZacBuilder<number>;
        bottom?: number | ZacBuilder<number>;
        child: ZacBuilder<FlutterWidget>;
    }): Positioned;
}
export declare class ProgressIndicator extends ZacBuilder<FlutterProgressIndicator> {
    static linear(data?: {
        key?: ZacBuilder<FlutterKey>;
        value?: number | ZacBuilder<number>;
        backgroundColor?: ZacBuilder<DartColor>;
        color?: ZacBuilder<DartColor>;
        minHeight?: number | ZacBuilder<number>;
        semanticsLabel?: string | ZacBuilder<string>;
        semanticsValue?: string | ZacBuilder<string>;
    }): ProgressIndicator;
    static circular(data?: {
        key?: ZacBuilder<FlutterKey>;
        value?: number | ZacBuilder<number>;
        backgroundColor?: ZacBuilder<DartColor>;
        color?: ZacBuilder<DartColor>;
        strokeWidth?: number | ZacBuilder<number>;
        semanticsLabel?: string | ZacBuilder<string>;
        semanticsValue?: string | ZacBuilder<string>;
    }): ProgressIndicator;
}
export declare class Radius extends ZacBuilder<DartRadius> {
    static circular(data: {
        radius: number | ZacBuilder<number>;
    }): Radius;
    static elliptical(data: {
        x: number | ZacBuilder<number>;
        y: number | ZacBuilder<number>;
    }): Radius;
}
export declare class Rect extends ZacBuilder<DartRect> {
    static fromCenter(data: {
        center: Offset;
        width: number | ZacBuilder<number>;
        height: number | ZacBuilder<number>;
    }): Rect;
    static fromCircle(data: {
        center: Offset;
        radius: number | ZacBuilder<number>;
    }): Rect;
    static fromLTRB(data: {
        left: number | ZacBuilder<number>;
        top: number | ZacBuilder<number>;
        right: number | ZacBuilder<number>;
        bottom: number | ZacBuilder<number>;
    }): Rect;
    static fromLTWH(data: {
        left: number | ZacBuilder<number>;
        top: number | ZacBuilder<number>;
        width: number | ZacBuilder<number>;
        height: number | ZacBuilder<number>;
    }): Rect;
    static fromPoints(data: {
        a: Offset;
        b: Offset;
    }): Rect;
}
export declare class RefreshIndicator extends ZacBuilder<FlutterRefreshIndicator> {
    static new(data: {
        key?: ZacBuilder<FlutterKey>;
        child: ZacBuilder<FlutterWidget>;
        displacement?: number | ZacBuilder<number>;
        edgeOffset?: number | ZacBuilder<number>;
        onRefresh: ZacBuilder<Array<ZacAction>>;
        color?: ZacBuilder<DartColor>;
        backgroundColor?: ZacBuilder<DartColor>;
        semanticsLabel?: string | ZacBuilder<string>;
        semanticsValue?: string | ZacBuilder<string>;
        strokeWidth?: number | ZacBuilder<number>;
        triggerMode?: ZacBuilder<FlutterRefreshIndicatorTriggerMode>;
    }): RefreshIndicator;
}
export declare class RefreshIndicatorTriggerMode extends ZacBuilder<FlutterRefreshIndicatorTriggerMode> {
    static onEdge(): RefreshIndicatorTriggerMode;
    static anywhere(): RefreshIndicatorTriggerMode;
}
export declare class RotatedBox extends ZacBuilder<FlutterRotatedBox> {
    static new(data: {
        key?: ZacBuilder<FlutterKey>;
        child?: ZacBuilder<FlutterWidget>;
        quarterTurns: number;
    }): RotatedBox;
}
export declare class RoundedRectangleBorder extends ZacBuilder<FlutterRoundedRectangleBorder> {
    static new(data?: {
        side?: ZacBuilder<FlutterBorderSide>;
        borderRadius?: ZacBuilder<FlutterBorderRadiusGeometry>;
    }): RoundedRectangleBorder;
}
export declare class RouteFactory extends ZacBuilder<FlutterRouteFactory> {
    static new(data: {
        routes: Record<string, ZacBuilder<FlutterRoute<JSONValue>>>;
        familyNameOfArguments: Record<string, string>;
    }): RouteFactory;
}
export declare class RouteSettings extends ZacBuilder<FlutterRouteSettings> {
    static new(data?: {
        name?: string | ZacBuilder<string>;
        arguments?: ZacBuilder<unknown>;
    }): RouteSettings;
}
export declare class Row extends ZacBuilder<FlutterRow> {
    static new(data?: {
        key?: ZacBuilder<FlutterKey>;
        mainAxisAlignment?: ZacBuilder<FlutterMainAxisAlignment>;
        mainAxisSize?: ZacBuilder<FlutterMainAxisSize>;
        crossAxisAlignment?: ZacBuilder<FlutterCrossAxisAlignment>;
        textDirection?: ZacBuilder<DartTextDirection>;
        verticalDirection?: ZacBuilder<FlutterVerticalDirection>;
        textBaseline?: ZacBuilder<DartTextBaseline>;
        children?: ZacBuilder<Array<FlutterWidget>>;
    }): Row;
}
export declare class SafeArea extends ZacBuilder<FlutterSafeArea> {
    static new(data: {
        key?: ZacBuilder<FlutterKey>;
        left?: boolean | ZacBuilder<boolean>;
        top?: boolean | ZacBuilder<boolean>;
        right?: boolean | ZacBuilder<boolean>;
        bottom?: boolean | ZacBuilder<boolean>;
        minimum?: ZacBuilder<FlutterEdgeInsets>;
        maintainBottomViewPadding?: boolean | ZacBuilder<boolean>;
        child: ZacBuilder<FlutterWidget>;
    }): SafeArea;
}
export declare class Scaffold extends ZacBuilder<FlutterScaffold> {
    static new(data?: {
        key?: ZacBuilder<FlutterKey>;
        appBar?: ZacBuilder<FlutterWidget>;
        body?: ZacBuilder<FlutterWidget>;
        floatingActionButton?: ZacBuilder<FlutterWidget>;
        persistentFooterButtons?: ZacBuilder<Array<FlutterWidget>>;
        drawer?: ZacBuilder<FlutterWidget>;
        endDrawer?: ZacBuilder<FlutterWidget>;
        bottomNavigationBar?: ZacBuilder<FlutterWidget>;
        bottomSheet?: ZacBuilder<FlutterWidget>;
        backgroundColor?: ZacBuilder<DartColor>;
        resizeToAvoidBottomInset?: boolean | ZacBuilder<boolean>;
        primary?: boolean | ZacBuilder<boolean>;
        extendBody?: boolean | ZacBuilder<boolean>;
        extendBodyBehindAppBar?: boolean | ZacBuilder<boolean>;
        drawerScrimColor?: ZacBuilder<DartColor>;
        drawerEdgeDragWidth?: number | ZacBuilder<number>;
        drawerEnableOpenDragGesture?: boolean | ZacBuilder<boolean>;
        endDrawerEnableOpenDragGesture?: boolean | ZacBuilder<boolean>;
        restorationId?: string | ZacBuilder<string>;
    }): Scaffold;
}
export declare class ScaffoldActions extends ZacBuilder<ZacAction> {
    static openDrawer(): ScaffoldActions;
    static openEndDrawer(): ScaffoldActions;
    static showBodyScrim(data: {
        value: boolean;
        opacity: number | ZacBuilder<number>;
    }): ScaffoldActions;
    static showBottomSheet(data: {
        child: ZacBuilder<FlutterWidget>;
        backgroundColor?: ZacBuilder<DartColor>;
        elevation?: number | ZacBuilder<number>;
        shape?: ZacBuilder<FlutterShapeBorder>;
        clipBehavior?: ZacBuilder<DartClip>;
        constraints?: BoxConstraints;
        enableDrag?: boolean | ZacBuilder<boolean>;
    }): ScaffoldActions;
}
export declare class ScaffoldMessenger extends ZacBuilder<ZacAction> {
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
export declare class ScrollController extends ZacBuilder<FlutterScrollController> {
    static new(data?: {
        initialScrollOffset?: number;
        keepScrollOffset?: boolean;
        debugLabel?: string;
    }): ScrollController;
}
export declare class ScrollPhysics extends ZacBuilder<FlutterScrollPhysics> {
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
export declare class ScrollViewKeyboardDismissBehavior extends ZacBuilder<FlutterScrollViewKeyboardDismissBehavior> {
    static manual(): ScrollViewKeyboardDismissBehavior;
    static onDrag(): ScrollViewKeyboardDismissBehavior;
}
export declare class SelectableText extends ZacBuilder<FlutterSelectableText> {
    static new(data: {
        data: string;
        key?: ZacBuilder<FlutterKey>;
        style?: ZacBuilder<FlutterTextStyle>;
        strutStyle?: ZacBuilder<FlutterStrutStyle>;
        textAlign?: ZacBuilder<DartTextAlign>;
        textDirection?: ZacBuilder<DartTextDirection>;
        textScaleFactor?: number | ZacBuilder<number>;
        showCursor?: boolean | ZacBuilder<boolean>;
        autofocus?: boolean | ZacBuilder<boolean>;
        minLines?: number | ZacBuilder<number>;
        maxLines?: number | ZacBuilder<number>;
        cursorWidth?: number | ZacBuilder<number>;
        cursorHeight?: number | ZacBuilder<number>;
        cursorRadius?: ZacBuilder<DartRadius>;
        cursorColor?: ZacBuilder<DartColor>;
        enableInteractiveSelection?: boolean | ZacBuilder<boolean>;
        semanticsLabel?: string | ZacBuilder<string>;
        textHeightBehavior?: ZacBuilder<DartTextHeightBehavior>;
        textWidthBasis?: ZacBuilder<FlutterTextWidthBasis>;
    }): SelectableText;
}
export declare class Shadow extends ZacBuilder<DartShadow> {
    static new(data?: {
        color?: ZacBuilder<DartColor>;
        offset?: ZacBuilder<DartOffset>;
        blurRadius?: number | ZacBuilder<number>;
    }): Shadow;
}
export declare class ShapeDecoration extends ZacBuilder<FlutterShapeDecoration> {
    static new(data: {
        color?: ZacBuilder<DartColor>;
        image?: ZacBuilder<FlutterDecorationImage>;
        gradient?: ZacBuilder<FlutterGradient>;
        shadows?: Array<BoxShadow>;
        shape: ZacBuilder<FlutterShapeBorder>;
    }): ShapeDecoration;
}
export declare class SingleChildScrollView extends ZacBuilder<FlutterSingleChildScrollView> {
    static new(data?: {
        key?: ZacBuilder<FlutterKey>;
        scrollDirection?: ZacBuilder<FlutterAxis>;
        reverse?: boolean | ZacBuilder<boolean>;
        padding?: ZacBuilder<FlutterEdgeInsetsGeometry>;
        primary?: boolean | ZacBuilder<boolean>;
        controller?: ZacBuilder<FlutterScrollController>;
        child?: ZacBuilder<FlutterWidget>;
        clipBehavior?: ZacBuilder<DartClip>;
        restorationId?: string | ZacBuilder<string>;
        keyboardDismissBehavior?: ZacBuilder<FlutterScrollViewKeyboardDismissBehavior>;
    }): SingleChildScrollView;
}
export declare class Size extends ZacBuilder<DartSize> {
    static new(data: {
        width: number | ZacBuilder<number>;
        height: number | ZacBuilder<number>;
    }): Size;
}
export declare class SizedBox extends ZacBuilder<FlutterSizedBox> {
    static new(data?: {
        key?: ZacBuilder<FlutterKey>;
        width?: number | ZacBuilder<number>;
        height?: number | ZacBuilder<number>;
        child?: ZacBuilder<FlutterWidget>;
    }): SizedBox;
    static expand(data?: {
        key?: ZacBuilder<FlutterKey>;
        child?: ZacBuilder<FlutterWidget>;
    }): SizedBox;
    static fromSize(data?: {
        key?: ZacBuilder<FlutterKey>;
        child?: ZacBuilder<FlutterWidget>;
        size?: ZacBuilder<DartSize>;
    }): SizedBox;
    static shrink(data?: {
        key?: ZacBuilder<FlutterKey>;
        child?: ZacBuilder<FlutterWidget>;
    }): SizedBox;
    static square(data?: {
        key?: ZacBuilder<FlutterKey>;
        child?: ZacBuilder<FlutterWidget>;
        dimension?: number | ZacBuilder<number>;
    }): SizedBox;
}
export declare class SizedOverflowBox extends ZacBuilder<FlutterSizedOverflowBox> {
    static new(data: {
        key?: ZacBuilder<FlutterKey>;
        size: ZacBuilder<DartSize>;
        alignment?: ZacBuilder<FlutterAlignmentGeometry>;
        child?: ZacBuilder<FlutterWidget>;
    }): SizedOverflowBox;
}
export declare class SliverChildDelegate extends ZacBuilder<FlutterSliverChildDelegate> {
    static list(data: {
        children: ZacBuilder<Array<FlutterWidget>>;
        addAutomaticKeepAlives?: boolean | ZacBuilder<boolean>;
        addRepaintBoundaries?: boolean | ZacBuilder<boolean>;
        addSemanticIndexes?: boolean | ZacBuilder<boolean>;
        semanticIndexOffset?: number | ZacBuilder<number>;
    }): SliverChildDelegate;
    static listFixed(data: {
        children: ZacBuilder<Array<FlutterWidget>>;
        addAutomaticKeepAlives?: boolean | ZacBuilder<boolean>;
        addRepaintBoundaries?: boolean | ZacBuilder<boolean>;
        addSemanticIndexes?: boolean | ZacBuilder<boolean>;
        semanticIndexOffset?: number | ZacBuilder<number>;
    }): SliverChildDelegate;
}
export declare class SliverGrid extends ZacBuilder<FlutterSliverGrid> {
    static new(data: {
        key?: ZacBuilder<FlutterKey>;
        delegate: SliverChildDelegate;
        gridDelegate: SliverGridDelegate;
    }): SliverGrid;
}
export declare class SliverGridDelegate extends ZacBuilder<FlutterSliverGridDelegate> {
    static withFixedCrossAxisCount(data: {
        crossAxisCount: number;
        mainAxisSpacing?: number | ZacBuilder<number>;
        crossAxisSpacing?: number | ZacBuilder<number>;
        childAspectRatio?: number | ZacBuilder<number>;
        mainAxisExtent?: number | ZacBuilder<number>;
    }): SliverGridDelegate;
    static withMaxCrossAxisExtent(data: {
        maxCrossAxisExtent: number | ZacBuilder<number>;
        mainAxisSpacing?: number | ZacBuilder<number>;
        crossAxisSpacing?: number | ZacBuilder<number>;
        childAspectRatio?: number | ZacBuilder<number>;
        mainAxisExtent?: number | ZacBuilder<number>;
    }): SliverGridDelegate;
}
export declare class SliverList extends ZacBuilder<FlutterSliverList> {
    static new(data: {
        key?: ZacBuilder<FlutterKey>;
        delegate: SliverChildDelegate;
    }): SliverList;
}
export declare class SliverPadding extends ZacBuilder<FlutterSliverPadding> {
    static new(data: {
        key?: ZacBuilder<FlutterKey>;
        sliver?: ZacBuilder<FlutterWidget>;
        padding: ZacBuilder<FlutterEdgeInsetsGeometry>;
    }): SliverPadding;
}
export declare class SliverToBoxAdapter extends ZacBuilder<FlutterSliverToBoxAdapter> {
    static new(data?: {
        key?: ZacBuilder<FlutterKey>;
        child?: ZacBuilder<FlutterWidget>;
    }): SliverToBoxAdapter;
}
export declare class SmartDashesType extends ZacBuilder<FlutterSmartDashesType> {
    static disabled(): SmartDashesType;
    static enabled(): SmartDashesType;
}
export declare class SmartQuotesType extends ZacBuilder<FlutterSmartQuotesType> {
    static disabled(): SmartQuotesType;
    static enabled(): SmartQuotesType;
}
export declare class SnackBar extends ZacBuilder<FlutterSnackBar> {
    static new(data: {
        key?: ZacBuilder<FlutterKey>;
        content: ZacBuilder<FlutterWidget>;
        backgroundColor?: ZacBuilder<DartColor>;
        elevation?: number | ZacBuilder<number>;
        margin?: ZacBuilder<FlutterEdgeInsetsGeometry>;
        padding?: ZacBuilder<FlutterEdgeInsetsGeometry>;
        width?: number | ZacBuilder<number>;
        shape?: ZacBuilder<FlutterShapeBorder>;
        behavior?: SnackBarBehavior;
        action?: SnackBarAction;
        onVisible?: ZacBuilder<Array<ZacAction>>;
    }): SnackBar;
}
export declare class SnackBarAction extends ZacBuilder<FlutterSnackBarAction> {
    static new(data: {
        key?: ZacBuilder<FlutterKey>;
        textColor?: ZacBuilder<DartColor>;
        disabledTextColor?: ZacBuilder<DartColor>;
        label: string | ZacBuilder<string>;
        onPressed: ZacBuilder<Array<ZacAction>>;
    }): SnackBarAction;
}
export declare class SnackBarBehavior extends ZacBuilder<FlutterSnackBarBehavior> {
    static fixed(): SnackBarBehavior;
    static floating(): SnackBarBehavior;
}
export declare class Spacer extends ZacBuilder<FlutterSpacer> {
    static new(data?: {
        key?: ZacBuilder<FlutterKey>;
        flex?: number | ZacBuilder<number>;
    }): Spacer;
}
export declare class Stack extends ZacBuilder<FlutterStack> {
    static new(data?: {
        key?: ZacBuilder<FlutterKey>;
        alignment?: ZacBuilder<FlutterAlignmentGeometry>;
        textDirection?: ZacBuilder<DartTextDirection>;
        fit?: ZacBuilder<FlutterStackFit>;
        clipBehavior?: ZacBuilder<DartClip>;
        children?: ZacBuilder<Array<FlutterWidget>>;
    }): Stack;
}
export declare class StackFit extends ZacBuilder<FlutterStackFit> {
    static expand(): StackFit;
    static loose(): StackFit;
    static passthrough(): StackFit;
}
export declare class StrutStyle extends ZacBuilder<FlutterStrutStyle> {
    static new(data?: {
        fontFamily?: string | ZacBuilder<string>;
        fontFamilyFallback?: Array<string>;
        fontSize?: number | ZacBuilder<number>;
        height?: number | ZacBuilder<number>;
        leadingDistribution?: ZacBuilder<DartTextLeadingDistribution>;
        leading?: number | ZacBuilder<number>;
        fontWeight?: ZacBuilder<DartFontWeight>;
        fontStyle?: ZacBuilder<DartFontStyle>;
        forceStrutHeight?: boolean | ZacBuilder<boolean>;
        debugLabel?: string | ZacBuilder<string>;
        package?: string | ZacBuilder<string>;
    }): StrutStyle;
    static fromTextStyle(data: {
        textStyle: TextStyle;
        fontFamily?: string | ZacBuilder<string>;
        fontFamilyFallback?: Array<string>;
        fontSize?: number | ZacBuilder<number>;
        height?: number | ZacBuilder<number>;
        leadingDistribution?: ZacBuilder<DartTextLeadingDistribution>;
        leading?: number | ZacBuilder<number>;
        fontWeight?: ZacBuilder<DartFontWeight>;
        fontStyle?: ZacBuilder<DartFontStyle>;
        forceStrutHeight?: boolean | ZacBuilder<boolean>;
        debugLabel?: string | ZacBuilder<string>;
        package?: string | ZacBuilder<string>;
    }): StrutStyle;
}
export declare class SystemUiOverlayStyle extends ZacBuilder<FlutterSystemUiOverlayStyle> {
    static new(data?: {
        systemNavigationBarColor?: ZacBuilder<DartColor>;
        systemNavigationBarDividerColor?: ZacBuilder<DartColor>;
        systemNavigationBarIconBrightness?: ZacBuilder<DartBrightness>;
        systemNavigationBarContrastEnforced?: boolean | ZacBuilder<boolean>;
        statusBarColor?: ZacBuilder<DartColor>;
        statusBarBrightness?: ZacBuilder<DartBrightness>;
        statusBarIconBrightness?: ZacBuilder<DartBrightness>;
        systemStatusBarContrastEnforced?: boolean | ZacBuilder<boolean>;
    }): SystemUiOverlayStyle;
}
export declare class Text extends ZacBuilder<FlutterText> {
    static new(data: {
        data: string | ZacBuilder<string>;
        key?: ZacBuilder<FlutterKey>;
        style?: ZacBuilder<FlutterTextStyle>;
        strutStyle?: ZacBuilder<FlutterStrutStyle>;
        textAlign?: ZacBuilder<DartTextAlign>;
        textDirection?: ZacBuilder<DartTextDirection>;
        locale?: ZacBuilder<DartLocale>;
        softWrap?: boolean | ZacBuilder<boolean>;
        overflow?: ZacBuilder<FlutterTextOverflow>;
        textScaleFactor?: number | ZacBuilder<number>;
        maxLines?: number | ZacBuilder<number>;
        semanticsLabel?: string | ZacBuilder<string>;
        textWidthBasis?: ZacBuilder<FlutterTextWidthBasis>;
        textHeightBehavior?: ZacBuilder<DartTextHeightBehavior>;
    }): Text;
}
export declare class TextAlign extends ZacBuilder<DartTextAlign> {
    static center(): TextAlign;
    static end(): TextAlign;
    static justify(): TextAlign;
    static left(): TextAlign;
    static right(): TextAlign;
    static start(): TextAlign;
}
export declare class TextAlignVertical extends ZacBuilder<FlutterTextAlignVertical> {
    static new(data: {
        y: number | ZacBuilder<number>;
    }): TextAlignVertical;
    static bottom(): TextAlignVertical;
    static center(): TextAlignVertical;
    static top(): TextAlignVertical;
}
export declare class TextBaseline extends ZacBuilder<DartTextBaseline> {
    static alphabetic(): TextBaseline;
    static ideographic(): TextBaseline;
}
export declare class TextButton extends ZacBuilder<FlutterTextButton> {
    static new(data: {
        key?: ZacBuilder<FlutterKey>;
        child: ZacBuilder<FlutterWidget>;
        onPressed?: ZacBuilder<Array<ZacAction>>;
        onLongPress?: ZacBuilder<Array<ZacAction>>;
        autofocus?: boolean | ZacBuilder<boolean>;
        clipBehavior?: ZacBuilder<DartClip>;
    }): TextButton;
    static icon(data: {
        key?: ZacBuilder<FlutterKey>;
        icon: ZacBuilder<FlutterWidget>;
        label: ZacBuilder<FlutterWidget>;
        onPressed?: ZacBuilder<Array<ZacAction>>;
        onLongPress?: ZacBuilder<Array<ZacAction>>;
        autofocus?: boolean | ZacBuilder<boolean>;
        clipBehavior?: ZacBuilder<DartClip>;
    }): TextButton;
}
export declare class TextCapitalization extends ZacBuilder<FlutterTextCapitalization> {
    static characters(): TextCapitalization;
    static none(): TextCapitalization;
    static sentences(): TextCapitalization;
    static words(): TextCapitalization;
}
export declare class TextDecoration extends ZacBuilder<DartTextDecoration> {
    static lineThrough(): TextDecoration;
    static none(): TextDecoration;
    static overline(): TextDecoration;
    static underline(): TextDecoration;
}
export declare class TextDecorationStyle extends ZacBuilder<DartTextDecorationStyle> {
    static dashed(): TextDecorationStyle;
    static dotted(): TextDecorationStyle;
    static double(): TextDecorationStyle;
    static solid(): TextDecorationStyle;
    static wavy(): TextDecorationStyle;
}
export declare class TextDirection extends ZacBuilder<DartTextDirection> {
    static rtl(): TextDirection;
    static ltr(): TextDirection;
}
export declare class TextField extends ZacBuilder<FlutterTextField> {
    static new(data?: {
        key?: ZacBuilder<FlutterKey>;
        decoration?: ZacBuilder<FlutterInputDecoration>;
        keyboardType?: ZacBuilder<FlutterTextInputType>;
        textInputAction?: ZacBuilder<FlutterTextInputAction>;
        textCapitalization?: ZacBuilder<FlutterTextCapitalization>;
        style?: ZacBuilder<FlutterTextStyle>;
        strutStyle?: ZacBuilder<FlutterStrutStyle>;
        textAlign?: ZacBuilder<DartTextAlign>;
        textAlignVertical?: ZacBuilder<FlutterTextAlignVertical>;
        textDirection?: ZacBuilder<DartTextDirection>;
        readOnly?: boolean | ZacBuilder<boolean>;
        showCursor?: boolean | ZacBuilder<boolean>;
        autofocus?: boolean | ZacBuilder<boolean>;
        obscuringCharacter?: string | ZacBuilder<string>;
        obscureText?: boolean | ZacBuilder<boolean>;
        autocorrect?: boolean | ZacBuilder<boolean>;
        smartDashesType?: ZacBuilder<FlutterSmartDashesType>;
        smartQuotesType?: ZacBuilder<FlutterSmartQuotesType>;
        enableSuggestions?: boolean | ZacBuilder<boolean>;
        maxLines?: number | ZacBuilder<number>;
        minLines?: number | ZacBuilder<number>;
        expands?: boolean | ZacBuilder<boolean>;
        maxLength?: number | ZacBuilder<number>;
        onChanged?: ZacBuilder<Array<ZacAction>>;
        onEditingComplete?: ZacBuilder<Array<ZacAction>>;
        onSubmitted?: ZacBuilder<Array<ZacAction>>;
        enabled?: boolean | ZacBuilder<boolean>;
        cursorWidth?: number | ZacBuilder<number>;
        cursorHeight?: number | ZacBuilder<number>;
        cursorRadius?: ZacBuilder<DartRadius>;
        cursorColor?: ZacBuilder<DartColor>;
        selectionHeightStyle?: ZacBuilder<DartBoxHeightStyle>;
        selectionWidthStyle?: ZacBuilder<DartBoxWidthStyle>;
        keyboardAppearance?: ZacBuilder<DartBrightness>;
        scrollPadding?: ZacBuilder<FlutterEdgeInsets>;
        enableInteractiveSelection?: boolean | ZacBuilder<boolean>;
        onTap?: ZacBuilder<Array<ZacAction>>;
        scrollController?: ZacBuilder<FlutterScrollController>;
        clipBehavior?: ZacBuilder<DartClip>;
        restorationId?: string | ZacBuilder<string>;
        enableIMEPersonalizedLearning?: boolean | ZacBuilder<boolean>;
    }): TextField;
}
export declare class TextHeightBehavior extends ZacBuilder<DartTextHeightBehavior> {
    static new(data?: {
        applyHeightToFirstAscent?: boolean | ZacBuilder<boolean>;
        applyHeightToLastDescent?: boolean | ZacBuilder<boolean>;
        leadingDistribution?: ZacBuilder<DartTextLeadingDistribution>;
    }): TextHeightBehavior;
}
export declare class TextInputAction extends ZacBuilder<FlutterTextInputAction> {
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
export declare class TextInputType extends ZacBuilder<FlutterTextInputType> {
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
export declare class TextLeadingDistribution extends ZacBuilder<DartTextLeadingDistribution> {
    static even(): TextLeadingDistribution;
    static proportional(): TextLeadingDistribution;
}
export declare class TextOverflow extends ZacBuilder<FlutterTextOverflow> {
    static clip(): TextOverflow;
    static ellipsis(): TextOverflow;
    static fade(): TextOverflow;
    static visible(): TextOverflow;
}
export declare class TextStyle extends ZacBuilder<FlutterTextStyle> {
    static new(data?: {
        inherit?: boolean | ZacBuilder<boolean>;
        color?: ZacBuilder<DartColor>;
        backgroundColor?: ZacBuilder<DartColor>;
        fontSize?: number | ZacBuilder<number>;
        fontWeight?: ZacBuilder<DartFontWeight>;
        fontStyle?: ZacBuilder<DartFontStyle>;
        letterSpacing?: number | ZacBuilder<number>;
        wordSpacing?: number | ZacBuilder<number>;
        textBaseline?: ZacBuilder<DartTextBaseline>;
        height?: number | ZacBuilder<number>;
        leadingDistribution?: ZacBuilder<DartTextLeadingDistribution>;
        locale?: ZacBuilder<DartLocale>;
        shadows?: Array<Shadow>;
        fontFeatures?: Array<FontFeature>;
        decoration?: ZacBuilder<DartTextDecoration>;
        decorationColor?: ZacBuilder<DartColor>;
        decorationStyle?: ZacBuilder<DartTextDecorationStyle>;
        decorationThickness?: number | ZacBuilder<number>;
        debugLabel?: string | ZacBuilder<string>;
        fontFamily?: string | ZacBuilder<string>;
        fontFamilyFallback?: Array<string>;
        package?: string | ZacBuilder<string>;
        overflow?: ZacBuilder<FlutterTextOverflow>;
    }): TextStyle;
}
export declare class TextWidthBasis extends ZacBuilder<FlutterTextWidthBasis> {
    static longestLine(): TextWidthBasis;
    static parent(): TextWidthBasis;
}
export declare class UnconstrainedBox extends ZacBuilder<FlutterUnconstrainedBox> {
    static new(data?: {
        key?: ZacBuilder<FlutterKey>;
        child?: ZacBuilder<FlutterWidget>;
        textDirection?: ZacBuilder<DartTextDirection>;
        alignment?: ZacBuilder<FlutterAlignmentGeometry>;
        constrainedAxis?: ZacBuilder<FlutterAxis>;
        clipBehavior?: ZacBuilder<DartClip>;
    }): UnconstrainedBox;
}
export declare class UnderlineInputBorder extends ZacBuilder<FlutterUnderlineInputBorder> {
    static new(data?: {
        borderSide?: ZacBuilder<FlutterBorderSide>;
        borderRadius?: ZacBuilder<FlutterBorderRadius>;
    }): UnderlineInputBorder;
}
export declare class ValueKey extends ZacBuilder<FlutterValueKey<string>> {
    static new(data: {
        value: string;
    }): ValueKey;
}
export declare class VerticalDirection extends ZacBuilder<FlutterVerticalDirection> {
    static up(): VerticalDirection;
    static down(): VerticalDirection;
}
export declare class Wrap extends ZacBuilder<FlutterWrap> {
    static new(data?: {
        key?: ZacBuilder<FlutterKey>;
        direction?: ZacBuilder<FlutterAxis>;
        alignment?: ZacBuilder<FlutterWrapAlignment>;
        spacing?: number | ZacBuilder<number>;
        runSpacing?: number | ZacBuilder<number>;
        runAlignment?: ZacBuilder<FlutterWrapAlignment>;
        crossAxisAlignment?: ZacBuilder<FlutterWrapCrossAlignment>;
        textDirection?: ZacBuilder<DartTextDirection>;
        verticalDirection?: ZacBuilder<FlutterVerticalDirection>;
        clipBehavior?: ZacBuilder<DartClip>;
        children?: ZacBuilder<Array<FlutterWidget>>;
    }): Wrap;
}
export declare class WrapAlignment extends ZacBuilder<FlutterWrapAlignment> {
    static start(): WrapAlignment;
    static end(): WrapAlignment;
    static center(): WrapAlignment;
    static spaceBetween(): WrapAlignment;
    static spaceAround(): WrapAlignment;
    static spaceEvenly(): WrapAlignment;
}
export declare class WrapCrossAlignment extends ZacBuilder<FlutterWrapCrossAlignment> {
    static center(): WrapCrossAlignment;
    static end(): WrapCrossAlignment;
    static start(): WrapCrossAlignment;
}
export declare class IntTransformer extends ZacBuilder<ZacTransform> {
    static parse(data: {
        number: string | ZacBuilder<string>;
    }): IntTransformer;
    static tryParse(data: {
        number: string | ZacBuilder<string>;
    }): IntTransformer;
    static incr(data: {
        number: number | ZacBuilder<number>;
        by: number | ZacBuilder<number>;
    }): IntTransformer;
    static decr(data: {
        number: number | ZacBuilder<number>;
        by: number | ZacBuilder<number>;
    }): IntTransformer;
}
export declare class IterableTransformer extends ZacBuilder<ZacTransform> {
    static map(data: {
        iterable: ZacBuilder<Array<JSONValue>>;
        transformer: ZacBuilder<Array<ZacTransform>>;
    }): IterableTransformer;
    static single(data: {
        iterable: ZacBuilder<Array<JSONValue>>;
    }): IterableTransformer;
    static first(data: {
        iterable: ZacBuilder<Array<JSONValue>>;
    }): IterableTransformer;
    static last(data: {
        iterable: ZacBuilder<Array<JSONValue>>;
    }): IterableTransformer;
    static length_(data: {
        iterable: ZacBuilder<Array<JSONValue>>;
    }): IterableTransformer;
    static isEmpty(data: {
        iterable: ZacBuilder<Array<JSONValue>>;
    }): IterableTransformer;
    static isNotEmpty(data: {
        iterable: ZacBuilder<Array<JSONValue>>;
    }): IterableTransformer;
    static toList(data: {
        iterable: ZacBuilder<Array<JSONValue>>;
    }): IterableTransformer;
    static toSet(data: {
        iterable: ZacBuilder<Array<JSONValue>>;
    }): IterableTransformer;
    static toString(data: {
        iterable: ZacBuilder<Array<JSONValue>>;
    }): IterableTransformer;
    static join(data: {
        iterable: ZacBuilder<Array<JSONValue>>;
        separator?: string;
    }): IterableTransformer;
    static contains(data: {
        iterable: ZacBuilder<Array<JSONValue>>;
        element: ZacBuilder<unknown>;
    }): IterableTransformer;
    static elementAt(data: {
        iterable: ZacBuilder<Array<JSONValue>>;
        index: number;
    }): IterableTransformer;
    static skip(data: {
        iterable: ZacBuilder<Array<JSONValue>>;
        count: number;
    }): IterableTransformer;
    static take(data: {
        iterable: ZacBuilder<Array<JSONValue>>;
        count: number;
    }): IterableTransformer;
}
export declare class JsonTransformer extends ZacBuilder<ZacTransform> {
    static encode(data: {
        object: ZacBuilder<unknown>;
    }): JsonTransformer;
    static decode(data: {
        jsonString: string | ZacBuilder<string>;
    }): JsonTransformer;
}
export declare class ListTransformer extends ZacBuilder<ZacTransform> {
    static reversed(data: {
        list: ZacBuilder<Array<JSONValue>>;
    }): ListTransformer;
    static add(data: {
        list: ZacBuilder<Array<JSONValue>>;
        value: ZacBuilder<unknown>;
    }): ListTransformer;
}
export declare class MapTransformer extends ZacBuilder<ZacTransform> {
    static values(data: {
        fromMap: ZacBuilder<Record<string, JSONValue>>;
    }): MapTransformer;
    static keys(data: {
        fromMap: ZacBuilder<Record<string, JSONValue>>;
    }): MapTransformer;
    static entries(data: {
        fromMap: ZacBuilder<Record<string, JSONValue>>;
    }): MapTransformer;
    static length_(data: {
        fromMap: ZacBuilder<Record<string, JSONValue>>;
    }): MapTransformer;
    static isEmpty(data: {
        fromMap: ZacBuilder<Record<string, JSONValue>>;
    }): MapTransformer;
    static isNotEmpty(data: {
        fromMap: ZacBuilder<Record<string, JSONValue>>;
    }): MapTransformer;
    static containsKey(data: {
        fromMap: ZacBuilder<Record<string, JSONValue>>;
        key: ZacBuilder<unknown>;
    }): MapTransformer;
    static containsValue(data: {
        fromMap: ZacBuilder<Record<string, JSONValue>>;
        value: ZacBuilder<unknown>;
    }): MapTransformer;
    static mapper(data: {
        fromMap: ZacBuilder<Record<string, JSONValue>>;
        keyTransformer?: ZacBuilder<Array<ZacTransform>>;
        valueTransformer?: ZacBuilder<Array<ZacTransform>>;
    }): MapTransformer;
    static fromObjectObject(data: {
        fromMap: ZacBuilder<Record<string, JSONValue>>;
    }): MapTransformer;
    static fromStringObject(data: {
        fromMap: ZacBuilder<Record<string, JSONValue>>;
    }): MapTransformer;
    static fromStringNullObject(data: {
        fromMap: ZacBuilder<Record<string, JSONValue>>;
    }): MapTransformer;
    static key(data: {
        fromMap: ZacBuilder<Record<string, JSONValue>>;
        key: string | ZacBuilder<string>;
    }): MapTransformer;
    static setValueForKey(data: {
        fromMap: ZacBuilder<Record<string, JSONValue>>;
        value: ZacBuilder<unknown>;
        key: string | ZacBuilder<string>;
    }): MapTransformer;
}
export declare class NumTransformer extends ZacBuilder<ZacTransform> {
    static toDouble(data: {
        number: number | ZacBuilder<number>;
    }): NumTransformer;
    static toInt(data: {
        number: number | ZacBuilder<number>;
    }): NumTransformer;
    static abs(data: {
        number: number | ZacBuilder<number>;
    }): NumTransformer;
    static ceil(data: {
        number: number | ZacBuilder<number>;
    }): NumTransformer;
    static ceilToDouble(data: {
        number: number | ZacBuilder<number>;
    }): NumTransformer;
    static floor(data: {
        number: number | ZacBuilder<number>;
    }): NumTransformer;
    static floorToDouble(data: {
        number: number | ZacBuilder<number>;
    }): NumTransformer;
    static round(data: {
        number: number | ZacBuilder<number>;
    }): NumTransformer;
    static roundToDouble(data: {
        number: number | ZacBuilder<number>;
    }): NumTransformer;
    static isFinite(data: {
        number: number | ZacBuilder<number>;
    }): NumTransformer;
    static isInfinite(data: {
        number: number | ZacBuilder<number>;
    }): NumTransformer;
    static isNan(data: {
        number: number | ZacBuilder<number>;
    }): NumTransformer;
    static isNegative(data: {
        number: number | ZacBuilder<number>;
    }): NumTransformer;
}
export declare class ObjectTransformer extends ZacBuilder<ZacTransform> {
    static isList(data: {
        object: ZacBuilder<unknown>;
    }): ObjectTransformer;
    static isMap(data: {
        object: ZacBuilder<unknown>;
    }): ObjectTransformer;
    static isBool(data: {
        object: ZacBuilder<unknown>;
    }): ObjectTransformer;
    static isString(data: {
        object: ZacBuilder<unknown>;
    }): ObjectTransformer;
    static isDouble(data: {
        object: ZacBuilder<unknown>;
    }): ObjectTransformer;
    static isInt(data: {
        object: ZacBuilder<unknown>;
    }): ObjectTransformer;
    static isNull(data: {
        object: ZacBuilder<unknown>;
    }): ObjectTransformer;
    static equals(data: {
        object: ZacBuilder<unknown>;
        other: ZacBuilder<unknown>;
    }): ObjectTransformer;
    static toString(data: {
        object: ZacBuilder<unknown>;
    }): ObjectTransformer;
    static runtimeType(data: {
        object: ZacBuilder<unknown>;
    }): ObjectTransformer;
    static hashCode(data: {
        object: ZacBuilder<unknown>;
    }): ObjectTransformer;
}
export declare class StringTransformer extends ZacBuilder<ZacTransform> {
    static length_(data: {
        string: string | ZacBuilder<string>;
    }): StringTransformer;
    static split(data: {
        string: string | ZacBuilder<string>;
        pattern: string | ZacBuilder<string>;
    }): StringTransformer;
    static isEmpty(data: {
        string: string | ZacBuilder<string>;
    }): StringTransformer;
    static isNotEmpty(data: {
        string: string | ZacBuilder<string>;
    }): StringTransformer;
    static replaceAll(data: {
        string: string | ZacBuilder<string>;
        from: string | ZacBuilder<string>;
        replace: string | ZacBuilder<string>;
    }): StringTransformer;
}
export declare class ZacBool extends ZacBuilder<boolean> {
    static new(data: {
        value: boolean;
    }): ZacBool;
}
export declare class ZacBuild extends ZacBuilder<FlutterWidget> {
    static fromJsonString(data: {
        key?: ZacBuilder<FlutterKey>;
        jsonString: string;
    }): ZacBuild;
    static fromBuilderMap(data: {
        key?: ZacBuilder<FlutterKey>;
        builderMap: Record<string, JSONValue>;
    }): ZacBuild;
    static fromBuilder(data: {
        key?: ZacBuilder<FlutterKey>;
        builderWidget: ZacBuilder<FlutterWidget>;
    }): ZacBuild;
    static isolateFromJsonString(data: {
        key?: ZacBuilder<FlutterKey>;
        jsonString: string;
        errorChild?: ZacBuilder<FlutterWidget>;
    }): ZacBuild;
    static isolateFromBuilderMap(data: {
        key?: ZacBuilder<FlutterKey>;
        builderMap: Record<string, JSONValue>;
        errorChild?: ZacBuilder<FlutterWidget>;
    }): ZacBuild;
}
export declare class ZacControlFlowAction extends ZacBuilder<ZacAction> {
    static ifCond(data: {
        conditionValue: ZacBuilder<unknown>;
        condition: ZacBuilder<Array<ZacTransform>>;
        ifTrue: ZacBuilder<Array<ZacAction>>;
        ifFalse?: ZacBuilder<Array<ZacAction>>;
    }): ZacControlFlowAction;
}
export declare class ZacDateTime extends ZacBuilder<string> {
    static new(data: {
        value: string;
    }): ZacDateTime;
}
export declare class ZacDouble extends ZacBuilder<number> {
    static new(data: {
        value: number;
    }): ZacDouble;
}
export declare class ZacExecuteActionsBuilder extends ZacBuilder<FlutterWidget> {
    static once(data: {
        actions: ZacBuilder<Array<ZacAction>>;
        child?: ZacBuilder<FlutterWidget>;
    }): ZacExecuteActionsBuilder;
}
export declare class ZacInt extends ZacBuilder<number> {
    static new(data: {
        value: number;
    }): ZacInt;
}
export declare class ZacListOfActions extends ZacBuilder<Array<ZacAction>> {
    static new(data: {
        value: Array<ZacBuilder<ZacAction>>;
    }): ZacListOfActions;
}
export declare class ZacListOfTransformers extends ZacBuilder<Array<ZacTransform>> {
    static new(data: {
        value: Array<ZacBuilder<ZacTransform>>;
    }): ZacListOfTransformers;
}
export declare class ZacListOfWidgets extends ZacBuilder<Array<FlutterWidget>> {
    static new(data: {
        value: Array<ZacBuilder<FlutterWidget>>;
    }): ZacListOfWidgets;
}
export declare class ZacMapOfWidgets extends ZacBuilder<Record<string, FlutterWidget>> {
    static new(data: {
        value: Record<string, ZacBuilder<FlutterWidget>>;
    }): ZacMapOfWidgets;
}
export declare class ZacNum extends ZacBuilder<number> {
    static new(data: {
        value: number;
    }): ZacNum;
}
export declare class ZacObject extends ZacBuilder<JSONValue> {
    static new(data: {
        value: JSONValue;
    }): ZacObject;
}
export declare class ZacOnStateChange extends ZacBuilder<FlutterWidget> {
    static executeActions(data: {
        actions: ZacBuilder<Array<ZacAction>>;
        family: string;
        child?: ZacBuilder<FlutterWidget>;
    }): ZacOnStateChange;
}
export declare class ZacStateActions extends ZacBuilder<ZacAction> {
    static update(data: {
        family: string;
        withValue: ZacBuilder<unknown>;
    }): ZacStateActions;
}
export declare class ZacStateConsume<T> extends ZacBuilder<T> {
    static new<T>(data: {
        family: string;
        mayBuildBuilder?: boolean;
        transformer?: ZacBuilder<Array<ZacTransform>>;
    }): ZacStateConsume<T>;
}
export declare class ZacStateMachineActions extends ZacBuilder<ZacAction> {
    static send(data: {
        widget?: ZacBuilder<FlutterWidget>;
        family: string;
        event: string;
    }): ZacStateMachineActions;
    static trySend(data: {
        widget?: ZacBuilder<FlutterWidget>;
        family: string;
        event: string;
    }): ZacStateMachineActions;
}
export declare class ZacStateMachineBuild extends ZacBuilder<ZacStateMachineBuildWidget> {
    static new(data: {
        family: string;
    }): ZacStateMachineBuild;
}
export declare class ZacStateMachineProvider extends ZacBuilder<FlutterWidget> {
    static new(data: {
        machines: Record<string, ZacStateMachineConfig>;
        child: ZacBuilder<FlutterWidget>;
    }): ZacStateMachineProvider;
}
export declare class ZacStateProvide extends ZacBuilder<ZacState> {
    static new(data: {
        family: string;
        value?: JSONValue;
        mayConvertToBuilder?: boolean;
        mayBuildBuilder?: boolean;
    }): ZacStateProvide;
}
export declare class ZacStatesProvider extends ZacBuilder<FlutterWidget> {
    static new(data: {
        states: Array<ZacBuilder<ZacState>>;
        child: ZacBuilder<FlutterWidget>;
    }): ZacStatesProvider;
}
export declare class ZacString extends ZacBuilder<string> {
    static new(data: {
        value: string;
    }): ZacString;
}
export declare class ZacTransformValue<T> extends ZacBuilder<T> {
    static current<T>(): ZacTransformValue<T>;
    static initial<T>(): ZacTransformValue<T>;
}
