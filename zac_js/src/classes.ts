/* eslint-disable @typescript-eslint/no-explicit-any */

export type JSONValue =
  | string
  | number
  | boolean
  | { [key: string]: JSONValue }
  | Array<JSONValue>;

export type ZacBuilderData = {
  builder: string;
  [key: string]: unknown;
};

export abstract class ZacConvertable {
  protected data: ZacBuilderData;
  protected constructor(data: ZacBuilderData) {
    this.data = data;
  }

  toJSON() {
    return this.data;
  }
}

export abstract class ZacBuilder<T> extends ZacConvertable {
  // Type T must be used in this class so that TypeScript will make
  // checks to types during assignments.
  //
  // This would be a valid assignment if T was not used
  // const b: ZacBuilder<Container> = SizedBox.new();
  private _doNotUse!: T;

  // Create the public getter or otherwise d.ts files will just omit T
  public get doNotUse(): T {
    return this._doNotUse;
  }
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
export interface FlutterEdgeInsetsDirectional
  extends FlutterEdgeInsetsGeometry {
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
export interface FlutterScaffoldMessengerState
  extends FlutterState<FlutterScaffoldMessenger> {
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
export interface ZacStateCreate {
  _ZacStateCreate: unknown;
}
export interface ZacStateMachineBuildWidget extends FlutterWidget {
  _ZacStateMachineBuildWidget: unknown;
}
export interface ZacTransform {
  _ZacTransform: unknown;
}
export class ZacStateMachineProvide extends ZacConvertable {
  static new(data: {
    states: Record<string, ZacStateMachineStateConfig>;
    initialState: string;
    initialWidget?: ZacBuilder<FlutterWidget>;
  }) {
    return new ZacStateMachineProvide({
      builder: "z:1:StateMachine.provide",
      ...data,
    });
  }
}
export class ZacStateMachineStateConfig extends ZacConvertable {
  static new(data?: {
    on?: Array<ZacStateMachineTransition>;
    widget?: ZacBuilder<FlutterWidget>;
  }) {
    return new ZacStateMachineStateConfig({
      builder: "z:1:StateMachine:StateConfig",
      ...data,
    });
  }
}
export class ZacStateMachineTransition extends ZacConvertable {
  static new(data: { event: string; target: string }) {
    return new ZacStateMachineTransition({
      builder: "z:1:StateMachine:Transition",
      ...data,
    });
  }
}
export class BoolTransformer extends ZacBuilder<ZacTransform> {
  static negate(data: { boolean: boolean | ZacBuilder<boolean> }) {
    return new BoolTransformer({
      builder: "z:1:Transformer:Bool.negate",
      ...data,
    });
  }
}
export class Align extends ZacBuilder<FlutterAlign> {
  static new(data?: {
    key?: ZacBuilder<FlutterKey>;
    alignment?: ZacBuilder<FlutterAlignmentGeometry>;
    widthFactor?: number | ZacBuilder<number>;
    heightFactor?: number | ZacBuilder<number>;
    child?: ZacBuilder<FlutterWidget>;
  }) {
    return new Align({
      builder: "f:1:Align",
      ...data,
    });
  }
}
export class Alignment extends ZacBuilder<FlutterAlignment> {
  static new(data: {
    x: number | ZacBuilder<number>;
    y: number | ZacBuilder<number>;
  }) {
    return new Alignment({
      builder: "f:1:Alignment",
      ...data,
    });
  }
  static bottomCenter() {
    return new Alignment({
      builder: "f:1:Alignment.bottomCenter",
    });
  }
  static bottomLeft() {
    return new Alignment({
      builder: "f:1:Alignment.bottomLeft",
    });
  }
  static bottomRight() {
    return new Alignment({
      builder: "f:1:Alignment.bottomRight",
    });
  }
  static center() {
    return new Alignment({
      builder: "f:1:Alignment.center",
    });
  }
  static centerLeft() {
    return new Alignment({
      builder: "f:1:Alignment.centerLeft",
    });
  }
  static centerRight() {
    return new Alignment({
      builder: "f:1:Alignment.centerRight",
    });
  }
  static topCenter() {
    return new Alignment({
      builder: "f:1:Alignment.topCenter",
    });
  }
  static topLeft() {
    return new Alignment({
      builder: "f:1:Alignment.topLeft",
    });
  }
  static topRight() {
    return new Alignment({
      builder: "f:1:Alignment.topRight",
    });
  }
}
export class AlignmentDirectional extends ZacBuilder<FlutterAlignmentDirectional> {
  static new(data: {
    start: number | ZacBuilder<number>;
    y: number | ZacBuilder<number>;
  }) {
    return new AlignmentDirectional({
      builder: "f:1:AlignmentDirectional",
      ...data,
    });
  }
  static bottomCenter() {
    return new AlignmentDirectional({
      builder: "f:1:AlignmentDirectional.bottomCenter",
    });
  }
  static bottomStart() {
    return new AlignmentDirectional({
      builder: "f:1:AlignmentDirectional.bottomStart",
    });
  }
  static bottomEnd() {
    return new AlignmentDirectional({
      builder: "f:1:AlignmentDirectional.bottomEnd",
    });
  }
  static center() {
    return new AlignmentDirectional({
      builder: "f:1:AlignmentDirectional.center",
    });
  }
  static centerStart() {
    return new AlignmentDirectional({
      builder: "f:1:AlignmentDirectional.centerStart",
    });
  }
  static centerEnd() {
    return new AlignmentDirectional({
      builder: "f:1:AlignmentDirectional.centerEnd",
    });
  }
  static topCenter() {
    return new AlignmentDirectional({
      builder: "f:1:AlignmentDirectional.topCenter",
    });
  }
  static topStart() {
    return new AlignmentDirectional({
      builder: "f:1:AlignmentDirectional.topStart",
    });
  }
  static topEnd() {
    return new AlignmentDirectional({
      builder: "f:1:AlignmentDirectional.topEnd",
    });
  }
}
export class AppBar extends ZacBuilder<FlutterAppBar> {
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
  }) {
    return new AppBar({
      builder: "f:1:AppBar",
      ...data,
    });
  }
}
export class AspectRatio extends ZacBuilder<FlutterAspectRatio> {
  static new(data: {
    key?: ZacBuilder<FlutterKey>;
    aspectRatio: number | ZacBuilder<number>;
    child?: ZacBuilder<FlutterWidget>;
  }) {
    return new AspectRatio({
      builder: "f:1:AspectRatio",
      ...data,
    });
  }
}
export class Axis extends ZacBuilder<FlutterAxis> {
  static horizontal() {
    return new Axis({
      builder: "f:1:Axis.horizontal",
    });
  }
  static vertical() {
    return new Axis({
      builder: "f:1:Axis.vertical",
    });
  }
}
export class BlendMode extends ZacBuilder<DartBlendMode> {
  static clear() {
    return new BlendMode({
      builder: "f:1:BlendMode.clear",
    });
  }
  static color() {
    return new BlendMode({
      builder: "f:1:BlendMode.color",
    });
  }
  static colorBurn() {
    return new BlendMode({
      builder: "f:1:BlendMode.colorBurn",
    });
  }
  static colorDodge() {
    return new BlendMode({
      builder: "f:1:BlendMode.colorDodge",
    });
  }
  static darken() {
    return new BlendMode({
      builder: "f:1:BlendMode.darken",
    });
  }
  static difference() {
    return new BlendMode({
      builder: "f:1:BlendMode.difference",
    });
  }
  static dst() {
    return new BlendMode({
      builder: "f:1:BlendMode.dst",
    });
  }
  static dstATop() {
    return new BlendMode({
      builder: "f:1:BlendMode.dstATop",
    });
  }
  static dstIn() {
    return new BlendMode({
      builder: "f:1:BlendMode.dstIn",
    });
  }
  static dstOut() {
    return new BlendMode({
      builder: "f:1:BlendMode.dstOut",
    });
  }
  static dstOver() {
    return new BlendMode({
      builder: "f:1:BlendMode.dstOver",
    });
  }
  static exclusion() {
    return new BlendMode({
      builder: "f:1:BlendMode.exclusion",
    });
  }
  static hardLight() {
    return new BlendMode({
      builder: "f:1:BlendMode.hardLight",
    });
  }
  static hue() {
    return new BlendMode({
      builder: "f:1:BlendMode.hue",
    });
  }
  static lighten() {
    return new BlendMode({
      builder: "f:1:BlendMode.lighten",
    });
  }
  static luminosity() {
    return new BlendMode({
      builder: "f:1:BlendMode.luminosity",
    });
  }
  static modulate() {
    return new BlendMode({
      builder: "f:1:BlendMode.modulate",
    });
  }
  static multiply() {
    return new BlendMode({
      builder: "f:1:BlendMode.multiply",
    });
  }
  static overlay() {
    return new BlendMode({
      builder: "f:1:BlendMode.overlay",
    });
  }
  static plus() {
    return new BlendMode({
      builder: "f:1:BlendMode.plus",
    });
  }
  static saturation() {
    return new BlendMode({
      builder: "f:1:BlendMode.saturation",
    });
  }
  static screen() {
    return new BlendMode({
      builder: "f:1:BlendMode.screen",
    });
  }
  static softLight() {
    return new BlendMode({
      builder: "f:1:BlendMode.softLight",
    });
  }
  static src() {
    return new BlendMode({
      builder: "f:1:BlendMode.src",
    });
  }
  static srcATop() {
    return new BlendMode({
      builder: "f:1:BlendMode.srcATop",
    });
  }
  static srcIn() {
    return new BlendMode({
      builder: "f:1:BlendMode.srcIn",
    });
  }
  static srcOut() {
    return new BlendMode({
      builder: "f:1:BlendMode.srcOut",
    });
  }
  static srcOver() {
    return new BlendMode({
      builder: "f:1:BlendMode.srcOver",
    });
  }
  static xor() {
    return new BlendMode({
      builder: "f:1:BlendMode.xor",
    });
  }
}
export class BlurStyle extends ZacBuilder<DartBlurStyle> {
  static inner() {
    return new BlurStyle({
      builder: "f:1:BlurStyle.inner",
    });
  }
  static normal() {
    return new BlurStyle({
      builder: "f:1:BlurStyle.normal",
    });
  }
  static outer() {
    return new BlurStyle({
      builder: "f:1:BlurStyle.outer",
    });
  }
  static solid() {
    return new BlurStyle({
      builder: "f:1:BlurStyle.solid",
    });
  }
}
export class Border extends ZacBuilder<FlutterBorder> {
  static new(data?: {
    top?: ZacBuilder<FlutterBorderSide>;
    right?: ZacBuilder<FlutterBorderSide>;
    bottom?: ZacBuilder<FlutterBorderSide>;
    left?: ZacBuilder<FlutterBorderSide>;
  }) {
    return new Border({
      builder: "f:1:Border",
      ...data,
    });
  }
  static all(data?: {
    color?: ZacBuilder<DartColor>;
    width?: number | ZacBuilder<number>;
    style?: ZacBuilder<FlutterBorderStyle>;
  }) {
    return new Border({
      builder: "f:1:Border.all",
      ...data,
    });
  }
}
export class BorderDirectional extends ZacBuilder<FlutterBorderDirectional> {
  static new(data?: {
    top?: ZacBuilder<FlutterBorderSide>;
    start?: ZacBuilder<FlutterBorderSide>;
    bottom?: ZacBuilder<FlutterBorderSide>;
    end?: ZacBuilder<FlutterBorderSide>;
  }) {
    return new BorderDirectional({
      builder: "f:1:BorderDirectional",
      ...data,
    });
  }
}
export class BorderRadius extends ZacBuilder<FlutterBorderRadius> {
  static all(data: { radius: Radius }) {
    return new BorderRadius({
      builder: "f:1:BorderRadius.all",
      ...data,
    });
  }
  static circular(data: { radius: number | ZacBuilder<number> }) {
    return new BorderRadius({
      builder: "f:1:BorderRadius.circular",
      ...data,
    });
  }
  static horizontal(data?: {
    left?: ZacBuilder<DartRadius>;
    right?: ZacBuilder<DartRadius>;
  }) {
    return new BorderRadius({
      builder: "f:1:BorderRadius.horizontal",
      ...data,
    });
  }
}
export class BorderSide extends ZacBuilder<FlutterBorderSide> {
  static new(data?: {
    color?: ZacBuilder<DartColor>;
    width?: number | ZacBuilder<number>;
    style?: ZacBuilder<FlutterBorderStyle>;
  }) {
    return new BorderSide({
      builder: "f:1:BorderSide",
      ...data,
    });
  }
}
export class BorderStyle extends ZacBuilder<FlutterBorderStyle> {
  static none() {
    return new BorderStyle({
      builder: "f:1:BorderStyle.none",
    });
  }
  static solid() {
    return new BorderStyle({
      builder: "f:1:BorderStyle.solid",
    });
  }
}
export class BoxConstraints extends ZacBuilder<FlutterBoxConstraints> {
  static new(data?: {
    minWidth?: number | ZacBuilder<number>;
    maxWidth?: number | ZacBuilder<number>;
    minHeight?: number | ZacBuilder<number>;
    maxHeight?: number | ZacBuilder<number>;
  }) {
    return new BoxConstraints({
      builder: "f:1:BoxConstraints",
      ...data,
    });
  }
  static expand(data?: {
    width?: number | ZacBuilder<number>;
    height?: number | ZacBuilder<number>;
  }) {
    return new BoxConstraints({
      builder: "f:1:BoxConstraints.expand",
      ...data,
    });
  }
  static loose(data: { size: ZacBuilder<DartSize> }) {
    return new BoxConstraints({
      builder: "f:1:BoxConstraints.loose",
      ...data,
    });
  }
  static tight(data: { size: ZacBuilder<DartSize> }) {
    return new BoxConstraints({
      builder: "f:1:BoxConstraints.tight",
      ...data,
    });
  }
  static tightFor(data?: {
    width?: number | ZacBuilder<number>;
    height?: number | ZacBuilder<number>;
  }) {
    return new BoxConstraints({
      builder: "f:1:BoxConstraints.tightFor",
      ...data,
    });
  }
  static tightForFinite(data?: {
    width?: number | ZacBuilder<number>;
    height?: number | ZacBuilder<number>;
  }) {
    return new BoxConstraints({
      builder: "f:1:BoxConstraints.tightForFinite",
      ...data,
    });
  }
}
export class BoxDecoration extends ZacBuilder<FlutterBoxDecoration> {
  static new(data?: {
    color?: ZacBuilder<DartColor>;
    border?: ZacBuilder<FlutterBoxBorder>;
    borderRadius?: ZacBuilder<FlutterBorderRadiusGeometry>;
    boxShadow?: Array<BoxShadow>;
    shape?: ZacBuilder<FlutterBoxShape>;
    backgroundBlendMode?: ZacBuilder<DartBlendMode>;
  }) {
    return new BoxDecoration({
      builder: "f:1:BoxDecoration",
      ...data,
    });
  }
}
export class BoxFit extends ZacBuilder<FlutterBoxFit> {
  static contain() {
    return new BoxFit({
      builder: "f:1:BoxFit.contain",
    });
  }
  static cover() {
    return new BoxFit({
      builder: "f:1:BoxFit.cover",
    });
  }
  static fill() {
    return new BoxFit({
      builder: "f:1:BoxFit.fill",
    });
  }
  static fitHeight() {
    return new BoxFit({
      builder: "f:1:BoxFit.fitHeight",
    });
  }
  static fitWidth() {
    return new BoxFit({
      builder: "f:1:BoxFit.fitWidth",
    });
  }
  static none() {
    return new BoxFit({
      builder: "f:1:BoxFit.none",
    });
  }
  static scaleDown() {
    return new BoxFit({
      builder: "f:1:BoxFit.scaleDown",
    });
  }
}
export class BoxHeightStyle extends ZacBuilder<DartBoxHeightStyle> {
  static includeLineSpacingBottom() {
    return new BoxHeightStyle({
      builder: "f:1:BoxHeightStyle.includeLineSpacingBottom",
    });
  }
  static includeLineSpacingMiddle() {
    return new BoxHeightStyle({
      builder: "f:1:BoxHeightStyle.includeLineSpacingMiddle",
    });
  }
  static includeLineSpacingTop() {
    return new BoxHeightStyle({
      builder: "f:1:BoxHeightStyle.includeLineSpacingTop",
    });
  }
  static max() {
    return new BoxHeightStyle({
      builder: "f:1:BoxHeightStyle.max",
    });
  }
  static strut() {
    return new BoxHeightStyle({
      builder: "f:1:BoxHeightStyle.strut",
    });
  }
  static tight() {
    return new BoxHeightStyle({
      builder: "f:1:BoxHeightStyle.tight",
    });
  }
}
export class BoxShadow extends ZacBuilder<FlutterBoxShadow> {
  static new(data?: {
    color?: ZacBuilder<DartColor>;
    offset?: ZacBuilder<DartOffset>;
    blurRadius?: number | ZacBuilder<number>;
    spreadRadius?: number | ZacBuilder<number>;
    blurStyle?: BlurStyle;
  }) {
    return new BoxShadow({
      builder: "f:1:BoxShadow",
      ...data,
    });
  }
}
export class BoxShape extends ZacBuilder<FlutterBoxShape> {
  static circle() {
    return new BoxShape({
      builder: "f:1:BoxShape.circle",
    });
  }
  static rectangle() {
    return new BoxShape({
      builder: "f:1:BoxShape.rectangle",
    });
  }
}
export class BoxWidthStyle extends ZacBuilder<DartBoxWidthStyle> {
  static max() {
    return new BoxWidthStyle({
      builder: "f:1:BoxWidthStyle.max",
    });
  }
  static tight() {
    return new BoxWidthStyle({
      builder: "f:1:BoxWidthStyle.tight",
    });
  }
}
export class Brightness extends ZacBuilder<DartBrightness> {
  static dark() {
    return new Brightness({
      builder: "f:1:Brightness.dark",
    });
  }
  static light() {
    return new Brightness({
      builder: "f:1:Brightness.light",
    });
  }
}
export class Builder extends ZacBuilder<FlutterWidget> {
  static new(data: {
    key?: ZacBuilder<FlutterKey>;
    child: ZacBuilder<FlutterWidget>;
  }) {
    return new Builder({
      builder: "f:1:Builder",
      ...data,
    });
  }
}
export class ButtonBar extends ZacBuilder<FlutterButtonBar> {
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
  }) {
    return new ButtonBar({
      builder: "f:1:ButtonBar",
      ...data,
    });
  }
}
export class Card extends ZacBuilder<FlutterCard> {
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
  }) {
    return new Card({
      builder: "f:1:Card",
      ...data,
    });
  }
}
export class Center extends ZacBuilder<FlutterCenter> {
  static new(data?: {
    key?: ZacBuilder<FlutterKey>;
    widthFactor?: number | ZacBuilder<number>;
    heightFactor?: number | ZacBuilder<number>;
    child?: ZacBuilder<FlutterWidget>;
  }) {
    return new Center({
      builder: "f:1:Center",
      ...data,
    });
  }
}
export class CircleBorder extends ZacBuilder<FlutterCircleBorder> {
  static new(data?: { side?: ZacBuilder<FlutterBorderSide> }) {
    return new CircleBorder({
      builder: "f:1:CircleBorder",
      ...data,
    });
  }
}
export class Clip extends ZacBuilder<DartClip> {
  static none() {
    return new Clip({
      builder: "f:1:Clip.none",
    });
  }
  static antiAlias() {
    return new Clip({
      builder: "f:1:Clip.antiAlias",
    });
  }
  static hardEdge() {
    return new Clip({
      builder: "f:1:Clip.hardEdge",
    });
  }
}
export class ClipOval extends ZacBuilder<FlutterClipOval> {
  static new(data?: {
    key?: ZacBuilder<FlutterKey>;
    child?: ZacBuilder<FlutterWidget>;
    clipBehavior?: ZacBuilder<DartClip>;
  }) {
    return new ClipOval({
      builder: "f:1:ClipOval",
      ...data,
    });
  }
}
export class ClipRect extends ZacBuilder<FlutterClipRect> {
  static new(data?: {
    key?: ZacBuilder<FlutterKey>;
    child?: ZacBuilder<FlutterWidget>;
    clipBehavior?: ZacBuilder<DartClip>;
  }) {
    return new ClipRect({
      builder: "f:1:ClipRect",
      ...data,
    });
  }
}
export class Color extends ZacBuilder<DartColor> {
  static fromARGB(data: { a: number; r: number; g: number; b: number }) {
    return new Color({
      builder: "f:1:Color.fromARGB",
      ...data,
    });
  }
  static fromRGBO(data: {
    r: number;
    g: number;
    b: number;
    opacity: number | ZacBuilder<number>;
  }) {
    return new Color({
      builder: "f:1:Color.fromRGBO",
      ...data,
    });
  }
}
export class Column extends ZacBuilder<FlutterColumn> {
  static new(data?: {
    key?: ZacBuilder<FlutterKey>;
    mainAxisAlignment?: ZacBuilder<FlutterMainAxisAlignment>;
    mainAxisSize?: ZacBuilder<FlutterMainAxisSize>;
    crossAxisAlignment?: ZacBuilder<FlutterCrossAxisAlignment>;
    textDirection?: ZacBuilder<DartTextDirection>;
    verticalDirection?: ZacBuilder<FlutterVerticalDirection>;
    textBaseline?: ZacBuilder<DartTextBaseline>;
    children?: ZacBuilder<Array<FlutterWidget>>;
  }) {
    return new Column({
      builder: "f:1:Column",
      ...data,
    });
  }
}
export class ConstrainedBox extends ZacBuilder<FlutterConstrainedBox> {
  static new(data: {
    key?: ZacBuilder<FlutterKey>;
    constraints: ZacBuilder<FlutterBoxConstraints>;
    child?: ZacBuilder<FlutterWidget>;
  }) {
    return new ConstrainedBox({
      builder: "f:1:ConstrainedBox",
      ...data,
    });
  }
}
export class Container extends ZacBuilder<FlutterContainer> {
  static new(data?: {
    key?: ZacBuilder<FlutterKey>;
    child?: ZacBuilder<FlutterWidget>;
    color?: ZacBuilder<DartColor>;
    margin?: ZacBuilder<FlutterEdgeInsetsGeometry>;
    padding?: ZacBuilder<FlutterEdgeInsetsGeometry>;
    alignment?: ZacBuilder<FlutterAlignmentGeometry>;
    decoration?: ZacBuilder<FlutterDecoration>;
  }) {
    return new Container({
      builder: "f:1:Container",
      ...data,
    });
  }
}
export class CrossAxisAlignment extends ZacBuilder<FlutterCrossAxisAlignment> {
  static baseline() {
    return new CrossAxisAlignment({
      builder: "f:1:CrossAxisAlignment.baseline",
    });
  }
  static center() {
    return new CrossAxisAlignment({
      builder: "f:1:CrossAxisAlignment.center",
    });
  }
  static end() {
    return new CrossAxisAlignment({
      builder: "f:1:CrossAxisAlignment.end",
    });
  }
  static start() {
    return new CrossAxisAlignment({
      builder: "f:1:CrossAxisAlignment.start",
    });
  }
  static stretch() {
    return new CrossAxisAlignment({
      builder: "f:1:CrossAxisAlignment.stretch",
    });
  }
}
export class CustomScrollView extends ZacBuilder<FlutterCustomScrollView> {
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
  }) {
    return new CustomScrollView({
      builder: "f:1:CustomScrollView",
      ...data,
    });
  }
}
export class DecoratedBox extends ZacBuilder<FlutterDecoratedBox> {
  static new(data: {
    key?: ZacBuilder<FlutterKey>;
    child?: ZacBuilder<FlutterWidget>;
    decoration: ZacBuilder<FlutterDecoration>;
    position?: ZacBuilder<FlutterDecorationPosition>;
  }) {
    return new DecoratedBox({
      builder: "f:1:DecoratedBox",
      ...data,
    });
  }
}
export class DecorationPosition extends ZacBuilder<FlutterDecorationPosition> {
  static background() {
    return new DecorationPosition({
      builder: "f:1:DecorationPosition.background",
    });
  }
  static foreground() {
    return new DecorationPosition({
      builder: "f:1:DecorationPosition.foreground",
    });
  }
}
export class DialogActions extends ZacBuilder<ZacAction> {
  static showDialog(data: {
    child: ZacBuilder<FlutterWidget>;
    barrierDismissible?: boolean | ZacBuilder<boolean>;
    barrierColor?: ZacBuilder<DartColor>;
    barrierLabel?: string | ZacBuilder<string>;
    useSafeArea?: boolean | ZacBuilder<boolean>;
    useRootNavigator?: boolean | ZacBuilder<boolean>;
    routeSettings?: ZacBuilder<FlutterRouteSettings>;
  }) {
    return new DialogActions({
      builder: "f:1:showDialog",
      ...data,
    });
  }
}
export class Dialogs extends ZacBuilder<FlutterWidget> {
  static dialog(data?: {
    key?: ZacBuilder<FlutterKey>;
    backgroundColor?: ZacBuilder<DartColor>;
    elevation?: number | ZacBuilder<number>;
    insetPadding?: ZacBuilder<FlutterEdgeInsets>;
    clipBehavior?: ZacBuilder<DartClip>;
    shape?: ZacBuilder<FlutterShapeBorder>;
    alignment?: ZacBuilder<FlutterAlignmentGeometry>;
    child?: ZacBuilder<FlutterWidget>;
  }) {
    return new Dialogs({
      builder: "f:1:Dialog",
      ...data,
    });
  }
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
  }) {
    return new Dialogs({
      builder: "f:1:AlertDialog",
      ...data,
    });
  }
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
  }) {
    return new Dialogs({
      builder: "f:1:SimpleDialog",
      ...data,
    });
  }
  static simpleDialogOption(data?: {
    key?: ZacBuilder<FlutterKey>;
    child?: ZacBuilder<FlutterWidget>;
    onPressed?: ZacBuilder<Array<ZacAction>>;
    padding?: ZacBuilder<FlutterEdgeInsets>;
  }) {
    return new Dialogs({
      builder: "f:1:SimpleDialogOption",
      ...data,
    });
  }
}
export class Divider extends ZacBuilder<FlutterDivider> {
  static new(data?: {
    key?: ZacBuilder<FlutterKey>;
    height?: number | ZacBuilder<number>;
    thickness?: number | ZacBuilder<number>;
    indent?: number | ZacBuilder<number>;
    endIndent?: number | ZacBuilder<number>;
    color?: ZacBuilder<DartColor>;
  }) {
    return new Divider({
      builder: "f:1:Divider",
      ...data,
    });
  }
}
export class Drawer extends ZacBuilder<FlutterDrawer> {
  static new(data?: {
    key?: ZacBuilder<FlutterKey>;
    backgroundColor?: ZacBuilder<DartColor>;
    elevation?: number | ZacBuilder<number>;
    shape?: ZacBuilder<FlutterShapeBorder>;
    child?: ZacBuilder<FlutterWidget>;
    semanticLabel?: string | ZacBuilder<string>;
  }) {
    return new Drawer({
      builder: "f:1:Drawer",
      ...data,
    });
  }
}
export class EdgeInsets extends ZacBuilder<FlutterEdgeInsets> {
  static all(data: { value: number | ZacBuilder<number> }) {
    return new EdgeInsets({
      builder: "f:1:EdgeInsets.all",
      ...data,
    });
  }
  static symmetric(data?: {
    vertical?: number | ZacBuilder<number>;
    horizontal?: number | ZacBuilder<number>;
  }) {
    return new EdgeInsets({
      builder: "f:1:EdgeInsets.symmetric",
      ...data,
    });
  }
  static only(data?: {
    left?: number | ZacBuilder<number>;
    top?: number | ZacBuilder<number>;
    right?: number | ZacBuilder<number>;
    bottom?: number | ZacBuilder<number>;
  }) {
    return new EdgeInsets({
      builder: "f:1:EdgeInsets.only",
      ...data,
    });
  }
}
export class EdgeInsetsDirectional extends ZacBuilder<FlutterEdgeInsetsDirectional> {
  static all(data: { value: number | ZacBuilder<number> }) {
    return new EdgeInsetsDirectional({
      builder: "f:1:EdgeInsetsDirectional.all",
      ...data,
    });
  }
  static only(data?: {
    start?: number | ZacBuilder<number>;
    top?: number | ZacBuilder<number>;
    end?: number | ZacBuilder<number>;
    bottom?: number | ZacBuilder<number>;
  }) {
    return new EdgeInsetsDirectional({
      builder: "f:1:EdgeInsetsDirectional.only",
      ...data,
    });
  }
}
export class ElevatedButton extends ZacBuilder<FlutterElevatedButton> {
  static new(data?: {
    key?: ZacBuilder<FlutterKey>;
    child?: ZacBuilder<FlutterWidget>;
    onPressed?: ZacBuilder<Array<ZacAction>>;
    onLongPress?: ZacBuilder<Array<ZacAction>>;
    autofocus?: boolean | ZacBuilder<boolean>;
    clipBehavior?: ZacBuilder<DartClip>;
  }) {
    return new ElevatedButton({
      builder: "f:1:ElevatedButton",
      ...data,
    });
  }
  static icon(data: {
    key?: ZacBuilder<FlutterKey>;
    icon: ZacBuilder<FlutterWidget>;
    label: ZacBuilder<FlutterWidget>;
    onPressed?: ZacBuilder<Array<ZacAction>>;
    onLongPress?: ZacBuilder<Array<ZacAction>>;
    autofocus?: boolean | ZacBuilder<boolean>;
    clipBehavior?: ZacBuilder<DartClip>;
  }) {
    return new ElevatedButton({
      builder: "f:1:ElevatedButton.icon",
      ...data,
    });
  }
}
export class Expanded extends ZacBuilder<FlutterExpanded> {
  static new(data: {
    key?: ZacBuilder<FlutterKey>;
    flex?: number | ZacBuilder<number>;
    child: ZacBuilder<FlutterWidget>;
  }) {
    return new Expanded({
      builder: "f:1:Expanded",
      ...data,
    });
  }
}
export class FilterQuality extends ZacBuilder<DartFilterQuality> {
  static high() {
    return new FilterQuality({
      builder: "f:1:FilterQuality.high",
    });
  }
  static low() {
    return new FilterQuality({
      builder: "f:1:FilterQuality.low",
    });
  }
  static medium() {
    return new FilterQuality({
      builder: "f:1:FilterQuality.medium",
    });
  }
  static none() {
    return new FilterQuality({
      builder: "f:1:FilterQuality.none",
    });
  }
}
export class FittedBox extends ZacBuilder<FlutterFittedBox> {
  static new(data?: {
    key?: ZacBuilder<FlutterKey>;
    fit?: ZacBuilder<FlutterBoxFit>;
    alignment?: ZacBuilder<FlutterAlignmentGeometry>;
    clipBehavior?: ZacBuilder<DartClip>;
    child?: ZacBuilder<FlutterWidget>;
  }) {
    return new FittedBox({
      builder: "f:1:FittedBox",
      ...data,
    });
  }
}
export class FlexFit extends ZacBuilder<FlutterFlexFit> {
  static tight() {
    return new FlexFit({
      builder: "f:1:FlexFit.tight",
    });
  }
  static loose() {
    return new FlexFit({
      builder: "f:1:FlexFit.loose",
    });
  }
}
export class Flexible extends ZacBuilder<FlutterFlexible> {
  static new(data: {
    key?: ZacBuilder<FlutterKey>;
    flex?: number | ZacBuilder<number>;
    fit?: ZacBuilder<FlutterFlexFit>;
    child: ZacBuilder<FlutterWidget>;
  }) {
    return new Flexible({
      builder: "f:1:Flexible",
      ...data,
    });
  }
}
export class FloatingActionButton extends ZacBuilder<FlutterFloatingActionButton> {
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
  }) {
    return new FloatingActionButton({
      builder: "f:1:FloatingActionButton",
      ...data,
    });
  }
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
  }) {
    return new FloatingActionButton({
      builder: "f:1:FloatingActionButton.extended",
      ...data,
    });
  }
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
  }) {
    return new FloatingActionButton({
      builder: "f:1:FloatingActionButton.large",
      ...data,
    });
  }
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
  }) {
    return new FloatingActionButton({
      builder: "f:1:FloatingActionButton.small",
      ...data,
    });
  }
}
export class FontFeature extends ZacBuilder<DartFontFeature> {
  static new(data: { feature: string; value?: number | ZacBuilder<number> }) {
    return new FontFeature({
      builder: "f:1:FontFeature",
      ...data,
    });
  }
  static alternative(data: { value: number }) {
    return new FontFeature({
      builder: "f:1:FontFeature.alternative",
      ...data,
    });
  }
  static alternativeFractions() {
    return new FontFeature({
      builder: "f:1:FontFeature.alternativeFractions",
    });
  }
  static caseSensitiveForms() {
    return new FontFeature({
      builder: "f:1:FontFeature.caseSensitiveForms",
    });
  }
  static characterVariant(data: { value: number }) {
    return new FontFeature({
      builder: "f:1:FontFeature.characterVariant",
      ...data,
    });
  }
  static contextualAlternates() {
    return new FontFeature({
      builder: "f:1:FontFeature.contextualAlternates",
    });
  }
  static denominator() {
    return new FontFeature({
      builder: "f:1:FontFeature.denominator",
    });
  }
  static disable(data: { feature: string }) {
    return new FontFeature({
      builder: "f:1:FontFeature.disable",
      ...data,
    });
  }
  static enable(data: { feature: string }) {
    return new FontFeature({
      builder: "f:1:FontFeature.enable",
      ...data,
    });
  }
  static fractions() {
    return new FontFeature({
      builder: "f:1:FontFeature.fractions",
    });
  }
  static historicalForms() {
    return new FontFeature({
      builder: "f:1:FontFeature.historicalForms",
    });
  }
  static historicalLigatures() {
    return new FontFeature({
      builder: "f:1:FontFeature.historicalLigatures",
    });
  }
  static liningFigures() {
    return new FontFeature({
      builder: "f:1:FontFeature.liningFigures",
    });
  }
  static localeAware(data?: { enable?: boolean | ZacBuilder<boolean> }) {
    return new FontFeature({
      builder: "f:1:FontFeature.localeAware",
      ...data,
    });
  }
  static notationalForms(data?: { value?: number | ZacBuilder<number> }) {
    return new FontFeature({
      builder: "f:1:FontFeature.notationalForms",
      ...data,
    });
  }
  static numerators() {
    return new FontFeature({
      builder: "f:1:FontFeature.numerators",
    });
  }
  static oldstyleFigures() {
    return new FontFeature({
      builder: "f:1:FontFeature.oldstyleFigures",
    });
  }
  static ordinalForms() {
    return new FontFeature({
      builder: "f:1:FontFeature.ordinalForms",
    });
  }
  static proportionalFigures() {
    return new FontFeature({
      builder: "f:1:FontFeature.proportionalFigures",
    });
  }
  static randomize() {
    return new FontFeature({
      builder: "f:1:FontFeature.randomize",
    });
  }
  static scientificInferiors() {
    return new FontFeature({
      builder: "f:1:FontFeature.scientificInferiors",
    });
  }
  static slashedZero() {
    return new FontFeature({
      builder: "f:1:FontFeature.slashedZero",
    });
  }
  static stylisticAlternates() {
    return new FontFeature({
      builder: "f:1:FontFeature.stylisticAlternates",
    });
  }
  static stylisticSet(data: { value: number }) {
    return new FontFeature({
      builder: "f:1:FontFeature.stylisticSet",
      ...data,
    });
  }
  static subscripts() {
    return new FontFeature({
      builder: "f:1:FontFeature.subscripts",
    });
  }
  static superscripts() {
    return new FontFeature({
      builder: "f:1:FontFeature.superscripts",
    });
  }
  static swash(data?: { value?: number | ZacBuilder<number> }) {
    return new FontFeature({
      builder: "f:1:FontFeature.swash",
      ...data,
    });
  }
  static tabularFigures() {
    return new FontFeature({
      builder: "f:1:FontFeature.tabularFigures",
    });
  }
}
export class FontStyle extends ZacBuilder<DartFontStyle> {
  static italic() {
    return new FontStyle({
      builder: "f:1:FontStyle.italic",
    });
  }
  static normal() {
    return new FontStyle({
      builder: "f:1:FontStyle.normal",
    });
  }
}
export class FontWeight extends ZacBuilder<DartFontWeight> {
  static bold() {
    return new FontWeight({
      builder: "f:1:FontWeight.bold",
    });
  }
  static normal() {
    return new FontWeight({
      builder: "f:1:FontWeight.normal",
    });
  }
  static w100() {
    return new FontWeight({
      builder: "f:1:FontWeight.w100",
    });
  }
  static w200() {
    return new FontWeight({
      builder: "f:1:FontWeight.w200",
    });
  }
  static w300() {
    return new FontWeight({
      builder: "f:1:FontWeight.w300",
    });
  }
  static w400() {
    return new FontWeight({
      builder: "f:1:FontWeight.w400",
    });
  }
  static w500() {
    return new FontWeight({
      builder: "f:1:FontWeight.w500",
    });
  }
  static w600() {
    return new FontWeight({
      builder: "f:1:FontWeight.w600",
    });
  }
  static w700() {
    return new FontWeight({
      builder: "f:1:FontWeight.w700",
    });
  }
  static w800() {
    return new FontWeight({
      builder: "f:1:FontWeight.w800",
    });
  }
  static w900() {
    return new FontWeight({
      builder: "f:1:FontWeight.w900",
    });
  }
}
export class FractionalOffset extends ZacBuilder<FlutterFractionalOffset> {
  static new(data: {
    dx: number | ZacBuilder<number>;
    dy: number | ZacBuilder<number>;
  }) {
    return new FractionalOffset({
      builder: "f:1:FractionalOffset",
      ...data,
    });
  }
}
export class FractionalTranslation extends ZacBuilder<FlutterFractionalTranslation> {
  static new(data: {
    key?: ZacBuilder<FlutterKey>;
    child?: ZacBuilder<FlutterWidget>;
    translation: Offset;
    transformHitTests?: boolean | ZacBuilder<boolean>;
  }) {
    return new FractionalTranslation({
      builder: "f:1:FractionalTranslation",
      ...data,
    });
  }
}
export class FractionallySizedBox extends ZacBuilder<FlutterFractionallySizedBox> {
  static new(data?: {
    key?: ZacBuilder<FlutterKey>;
    child?: ZacBuilder<FlutterWidget>;
    alignment?: ZacBuilder<FlutterAlignmentGeometry>;
    widthFactor?: number | ZacBuilder<number>;
    heightFactor?: number | ZacBuilder<number>;
  }) {
    return new FractionallySizedBox({
      builder: "f:1:FractionallySizedBox",
      ...data,
    });
  }
}
export class GestureDetector extends ZacBuilder<FlutterGestureDetector> {
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
  }) {
    return new GestureDetector({
      builder: "f:1:GestureDetector",
      ...data,
    });
  }
}
export class GlobalKeyNavigatorState extends ZacBuilder<
  FlutterGlobalKey<FlutterNavigatorState>
> {
  static new(data?: { debugLabel?: string }) {
    return new GlobalKeyNavigatorState({
      builder: "f:1:GlobalKey<NavigatorState>",
      ...data,
    });
  }
}
export class GlobalKeyScaffoldMessengerState extends ZacBuilder<
  FlutterGlobalKey<FlutterScaffoldMessengerState>
> {
  static new(data?: { debugLabel?: string }) {
    return new GlobalKeyScaffoldMessengerState({
      builder: "f:1:GlobalKey<ScaffoldMessengerState>",
      ...data,
    });
  }
}
export class GridView extends ZacBuilder<FlutterGridView> {
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
  }) {
    return new GridView({
      builder: "f:1:GridView",
      ...data,
    });
  }
}
export class HitTestBehavior extends ZacBuilder<FlutterHitTestBehavior> {
  static deferToChild() {
    return new HitTestBehavior({
      builder: "f:1:HitTestBehavior.deferToChild",
    });
  }
  static opaque() {
    return new HitTestBehavior({
      builder: "f:1:HitTestBehavior.opaque",
    });
  }
  static translucent() {
    return new HitTestBehavior({
      builder: "f:1:HitTestBehavior.translucent",
    });
  }
}
export class Icon extends ZacBuilder<FlutterIcon> {
  static new(data: {
    icon: IconData;
    key?: ZacBuilder<FlutterKey>;
    size?: number | ZacBuilder<number>;
    color?: ZacBuilder<DartColor>;
    semanticLabel?: string | ZacBuilder<string>;
    textDirection?: ZacBuilder<DartTextDirection>;
  }) {
    return new Icon({
      builder: "f:1:Icon",
      ...data,
    });
  }
}
export class IconData extends ZacBuilder<FlutterIconData> {
  static new(data: {
    codePoint: number | ZacBuilder<number>;
    fontFamily?: string | ZacBuilder<string>;
    fontPackage?: string | ZacBuilder<string>;
    matchTextDirection?: boolean | ZacBuilder<boolean>;
  }) {
    return new IconData({
      builder: "f:1:IconData",
      ...data,
    });
  }
}
export class IconThemeData extends ZacBuilder<FlutterIconThemeData> {
  static new(data?: {
    color?: ZacBuilder<DartColor>;
    opacity?: number | ZacBuilder<number>;
    size?: number | ZacBuilder<number>;
  }) {
    return new IconThemeData({
      builder: "f:1:IconThemeData",
      ...data,
    });
  }
}
export class IgnorePointer extends ZacBuilder<FlutterIgnorePointer> {
  static new(data?: {
    key?: ZacBuilder<FlutterKey>;
    ignoring?: boolean | ZacBuilder<boolean>;
    ignoringSemantics?: boolean | ZacBuilder<boolean>;
    child?: ZacBuilder<FlutterWidget>;
  }) {
    return new IgnorePointer({
      builder: "f:1:IgnorePointer",
      ...data,
    });
  }
}
export class Image extends ZacBuilder<FlutterImage> {
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
  }) {
    return new Image({
      builder: "f:1:Image.network",
      ...data,
    });
  }
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
  }) {
    return new Image({
      builder: "f:1:Image.asset",
      ...data,
    });
  }
}
export class ImageRepeat extends ZacBuilder<FlutterImageRepeat> {
  static noRepeat() {
    return new ImageRepeat({
      builder: "f:1:ImageRepeat.noRepeat",
    });
  }
  static repeat() {
    return new ImageRepeat({
      builder: "f:1:ImageRepeat.repeat",
    });
  }
  static repeatX() {
    return new ImageRepeat({
      builder: "f:1:ImageRepeat.repeatX",
    });
  }
  static repeatY() {
    return new ImageRepeat({
      builder: "f:1:ImageRepeat.repeatY",
    });
  }
}
export class IndexedStack extends ZacBuilder<FlutterIndexedStack> {
  static new(data?: {
    key?: ZacBuilder<FlutterKey>;
    alignment?: ZacBuilder<FlutterAlignmentGeometry>;
    textDirection?: ZacBuilder<DartTextDirection>;
    sizing?: ZacBuilder<FlutterStackFit>;
    index?: number | ZacBuilder<number>;
    children?: ZacBuilder<Array<FlutterWidget>>;
  }) {
    return new IndexedStack({
      builder: "f:1:IndexedStack",
      ...data,
    });
  }
}
export class InputDecoration extends ZacBuilder<FlutterInputDecoration> {
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
  }) {
    return new InputDecoration({
      builder: "f:1:InputDecoration",
      ...data,
    });
  }
}
export class InteractiveViewer extends ZacBuilder<FlutterInteractiveViewer> {
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
  }) {
    return new InteractiveViewer({
      builder: "f:1:InteractiveViewer",
      ...data,
    });
  }
}
export class IntrinsicHeight extends ZacBuilder<FlutterIntrinsicHeight> {
  static new(data?: {
    key?: ZacBuilder<FlutterKey>;
    child?: ZacBuilder<FlutterWidget>;
  }) {
    return new IntrinsicHeight({
      builder: "f:1:IntrinsicHeight",
      ...data,
    });
  }
}
export class IntrinsicWidth extends ZacBuilder<FlutterIntrinsicWidth> {
  static new(data?: {
    key?: ZacBuilder<FlutterKey>;
    child?: ZacBuilder<FlutterWidget>;
  }) {
    return new IntrinsicWidth({
      builder: "f:1:IntrinsicWidth",
      ...data,
    });
  }
}
export class LimitedBox extends ZacBuilder<FlutterLimitedBox> {
  static new(data?: {
    key?: ZacBuilder<FlutterKey>;
    maxWidth?: number | ZacBuilder<number>;
    maxHeight?: number | ZacBuilder<number>;
    child?: ZacBuilder<FlutterWidget>;
  }) {
    return new LimitedBox({
      builder: "f:1:LimitedBox",
      ...data,
    });
  }
}
export class ListTile extends ZacBuilder<FlutterListTile> {
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
  }) {
    return new ListTile({
      builder: "f:1:ListTile",
      ...data,
    });
  }
}
export class ListView extends ZacBuilder<FlutterListView> {
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
  }) {
    return new ListView({
      builder: "f:1:ListView",
      ...data,
    });
  }
}
export class Locale extends ZacBuilder<DartLocale> {
  static new(data: { languageCode: string; countryCode?: string }) {
    return new Locale({
      builder: "f:1:Locale",
      ...data,
    });
  }
}
export class MainAxisAlignment extends ZacBuilder<FlutterMainAxisAlignment> {
  static start() {
    return new MainAxisAlignment({
      builder: "f:1:MainAxisAlignment.start",
    });
  }
  static end() {
    return new MainAxisAlignment({
      builder: "f:1:MainAxisAlignment.end",
    });
  }
  static center() {
    return new MainAxisAlignment({
      builder: "f:1:MainAxisAlignment.center",
    });
  }
  static spaceBetween() {
    return new MainAxisAlignment({
      builder: "f:1:MainAxisAlignment.spaceBetween",
    });
  }
  static spaceAround() {
    return new MainAxisAlignment({
      builder: "f:1:MainAxisAlignment.spaceAround",
    });
  }
  static spaceEvenly() {
    return new MainAxisAlignment({
      builder: "f:1:MainAxisAlignment.spaceEvenly",
    });
  }
}
export class MainAxisSize extends ZacBuilder<FlutterMainAxisSize> {
  static min() {
    return new MainAxisSize({
      builder: "f:1:MainAxisSize.min",
    });
  }
  static max() {
    return new MainAxisSize({
      builder: "f:1:MainAxisSize.max",
    });
  }
}
export class Material extends ZacBuilder<FlutterMaterial> {
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
  }) {
    return new Material({
      builder: "f:1:Material",
      ...data,
    });
  }
}
export class MaterialApp extends ZacBuilder<FlutterMaterialApp> {
  static new(data?: {
    key?: ZacBuilder<FlutterKey>;
    navigatorKey?: ZacBuilder<FlutterGlobalKey<FlutterNavigatorState>>;
    scaffoldMessengerKey?: ZacBuilder<
      FlutterGlobalKey<FlutterScaffoldMessengerState>
    >;
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
  }) {
    return new MaterialApp({
      builder: "f:1:MaterialApp",
      ...data,
    });
  }
}
export class MaterialBanner extends ZacBuilder<FlutterMaterialBanner> {
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
  }) {
    return new MaterialBanner({
      builder: "f:1:MaterialBanner",
      ...data,
    });
  }
}
export class MaterialPageRoute extends ZacBuilder<FlutterRoute<JSONValue>> {
  static new(data: {
    settings?: ZacBuilder<FlutterRouteSettings>;
    maintainState?: boolean | ZacBuilder<boolean>;
    fullscreenDialog?: boolean | ZacBuilder<boolean>;
    child: ZacBuilder<FlutterWidget>;
    nameOfSharedArguments?: string | ZacBuilder<string>;
  }) {
    return new MaterialPageRoute({
      builder: "f:1:MaterialPageRoute",
      ...data,
    });
  }
}
export class Navigator extends ZacBuilder<FlutterNavigator> {
  static new(data?: {
    key?: ZacBuilder<FlutterKey>;
    onGenerateRoute?: RouteFactory;
    onUnknownRoute?: RouteFactory;
    initialRoute?: string | ZacBuilder<string>;
    requestFocus?: boolean | ZacBuilder<boolean>;
  }) {
    return new Navigator({
      builder: "f:1:Navigator",
      ...data,
    });
  }
}
export class NavigatorActions extends ZacBuilder<ZacAction> {
  static push(data: {
    route: ZacBuilder<FlutterRoute<JSONValue>>;
    navigatorState?: ZacBuilder<FlutterNavigatorState>;
  }) {
    return new NavigatorActions({
      builder: "f:1:Navigator.push",
      ...data,
    });
  }
  static pushNamed(data: {
    routeName: string | ZacBuilder<string>;
    arguments?: JSONValue;
    navigatorState?: ZacBuilder<FlutterNavigatorState>;
  }) {
    return new NavigatorActions({
      builder: "f:1:Navigator.pushNamed",
      ...data,
    });
  }
  static pop(data?: {
    actions?: ZacBuilder<Array<ZacAction>>;
    navigatorState?: ZacBuilder<FlutterNavigatorState>;
  }) {
    return new NavigatorActions({
      builder: "f:1:Navigator.pop",
      ...data,
    });
  }
  static maybePop(data?: {
    actions?: ZacBuilder<Array<ZacAction>>;
    navigatorState?: ZacBuilder<FlutterNavigatorState>;
  }) {
    return new NavigatorActions({
      builder: "f:1:Navigator.maybePop",
      ...data,
    });
  }
  static pushReplacement(data: {
    route: ZacBuilder<FlutterRoute<JSONValue>>;
    result?: ZacBuilder<Array<ZacAction>>;
    navigatorState?: ZacBuilder<FlutterNavigatorState>;
  }) {
    return new NavigatorActions({
      builder: "f:1:Navigator.pushReplacement",
      ...data,
    });
  }
  static pushReplacementNamed(data: {
    routeName: string | ZacBuilder<string>;
    arguments?: JSONValue;
    navigatorState?: ZacBuilder<FlutterNavigatorState>;
    result?: ZacBuilder<Array<ZacAction>>;
  }) {
    return new NavigatorActions({
      builder: "f:1:Navigator.pushReplacementNamed",
      ...data,
    });
  }
  static popUntilRouteName(data: {
    routeName: string | ZacBuilder<string>;
    navigatorState?: ZacBuilder<FlutterNavigatorState>;
  }) {
    return new NavigatorActions({
      builder: "z:1:Navigator.popUntilRouteName",
      ...data,
    });
  }
}
export class NavigatorState extends ZacBuilder<FlutterNavigatorState> {
  static closest() {
    return new NavigatorState({
      builder: "f:1:NavigatorState.closest",
    });
  }
  static root() {
    return new NavigatorState({
      builder: "f:1:NavigatorState.root",
    });
  }
  static shared(data: {
    value: ZacBuilder<FlutterGlobalKey<FlutterNavigatorState>>;
  }) {
    return new NavigatorState({
      builder: "z:1:NavigatorState.shared",
      ...data,
    });
  }
}
export class Offset extends ZacBuilder<DartOffset> {
  static new(data: {
    dx: number | ZacBuilder<number>;
    dy: number | ZacBuilder<number>;
  }) {
    return new Offset({
      builder: "f:1:Offset",
      ...data,
    });
  }
  static fromDirection(data: {
    direction: number | ZacBuilder<number>;
    distance?: number | ZacBuilder<number>;
  }) {
    return new Offset({
      builder: "f:1:Offset.fromDirection",
      ...data,
    });
  }
}
export class Offstage extends ZacBuilder<FlutterOffstage> {
  static new(data?: {
    key?: ZacBuilder<FlutterKey>;
    offstage?: boolean | ZacBuilder<boolean>;
    child?: ZacBuilder<FlutterWidget>;
  }) {
    return new Offstage({
      builder: "f:1:Offstage",
      ...data,
    });
  }
}
export class Opacity extends ZacBuilder<FlutterOpacity> {
  static new(data: {
    key?: ZacBuilder<FlutterKey>;
    opacity: number | ZacBuilder<number>;
    alwaysIncludeSemantics?: boolean | ZacBuilder<boolean>;
    child?: ZacBuilder<FlutterWidget>;
  }) {
    return new Opacity({
      builder: "f:1:Opacity",
      ...data,
    });
  }
}
export class OutlineInputBorder extends ZacBuilder<FlutterOutlineInputBorder> {
  static new(data?: {
    borderSide?: ZacBuilder<FlutterBorderSide>;
    borderRadius?: ZacBuilder<FlutterBorderRadius>;
    gapPadding?: number | ZacBuilder<number>;
  }) {
    return new OutlineInputBorder({
      builder: "f:1:OutlineInputBorder",
      ...data,
    });
  }
}
export class OutlinedButton extends ZacBuilder<FlutterOutlinedButton> {
  static new(data: {
    key?: ZacBuilder<FlutterKey>;
    child: ZacBuilder<FlutterWidget>;
    onPressed?: ZacBuilder<Array<ZacAction>>;
    onLongPress?: ZacBuilder<Array<ZacAction>>;
    autofocus?: boolean | ZacBuilder<boolean>;
    clipBehavior?: ZacBuilder<DartClip>;
  }) {
    return new OutlinedButton({
      builder: "f:1:OutlinedButton",
      ...data,
    });
  }
  static icon(data: {
    key?: ZacBuilder<FlutterKey>;
    icon: ZacBuilder<FlutterWidget>;
    label: ZacBuilder<FlutterWidget>;
    onPressed?: ZacBuilder<Array<ZacAction>>;
    onLongPress?: ZacBuilder<Array<ZacAction>>;
    autofocus?: boolean | ZacBuilder<boolean>;
    clipBehavior?: ZacBuilder<DartClip>;
  }) {
    return new OutlinedButton({
      builder: "f:1:OutlinedButton.icon",
      ...data,
    });
  }
}
export class OverflowBox extends ZacBuilder<FlutterOverflowBox> {
  static new(data?: {
    key?: ZacBuilder<FlutterKey>;
    alignment?: ZacBuilder<FlutterAlignmentGeometry>;
    minWidth?: number | ZacBuilder<number>;
    maxWidth?: number | ZacBuilder<number>;
    minHeight?: number | ZacBuilder<number>;
    maxHeight?: number | ZacBuilder<number>;
    child?: ZacBuilder<FlutterWidget>;
  }) {
    return new OverflowBox({
      builder: "f:1:OverflowBox",
      ...data,
    });
  }
}
export class Padding extends ZacBuilder<FlutterPadding> {
  static new(data: {
    key?: ZacBuilder<FlutterKey>;
    padding: ZacBuilder<FlutterEdgeInsetsGeometry>;
    child?: ZacBuilder<FlutterWidget>;
  }) {
    return new Padding({
      builder: "f:1:Padding",
      ...data,
    });
  }
}
export class PageRouteBuilder extends ZacBuilder<FlutterRoute<JSONValue>> {
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
  }) {
    return new PageRouteBuilder({
      builder: "f:1:PageRouteBuilder",
      ...data,
    });
  }
}
export class PanAxis extends ZacBuilder<FlutterPanAxis> {
  static horizontal() {
    return new PanAxis({
      builder: "f:1:PanAxis.horizontal",
    });
  }
  static vertical() {
    return new PanAxis({
      builder: "f:1:PanAxis.vertical",
    });
  }
  static aligned() {
    return new PanAxis({
      builder: "f:1:PanAxis.aligned",
    });
  }
  static free() {
    return new PanAxis({
      builder: "f:1:PanAxis.free",
    });
  }
}
export class Positioned extends ZacBuilder<FlutterPositioned> {
  static new(data: {
    key?: ZacBuilder<FlutterKey>;
    left?: number | ZacBuilder<number>;
    top?: number | ZacBuilder<number>;
    right?: number | ZacBuilder<number>;
    bottom?: number | ZacBuilder<number>;
    width?: number | ZacBuilder<number>;
    height?: number | ZacBuilder<number>;
    child: ZacBuilder<FlutterWidget>;
  }) {
    return new Positioned({
      builder: "f:1:Positioned",
      ...data,
    });
  }
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
  }) {
    return new Positioned({
      builder: "f:1:Positioned.directional",
      ...data,
    });
  }
  static fill(data: {
    key?: ZacBuilder<FlutterKey>;
    left?: number | ZacBuilder<number>;
    top?: number | ZacBuilder<number>;
    right?: number | ZacBuilder<number>;
    bottom?: number | ZacBuilder<number>;
    child: ZacBuilder<FlutterWidget>;
  }) {
    return new Positioned({
      builder: "f:1:Positioned.fill",
      ...data,
    });
  }
}
export class ProgressIndicator extends ZacBuilder<FlutterProgressIndicator> {
  static linear(data?: {
    key?: ZacBuilder<FlutterKey>;
    value?: number | ZacBuilder<number>;
    backgroundColor?: ZacBuilder<DartColor>;
    color?: ZacBuilder<DartColor>;
    minHeight?: number | ZacBuilder<number>;
    semanticsLabel?: string | ZacBuilder<string>;
    semanticsValue?: string | ZacBuilder<string>;
  }) {
    return new ProgressIndicator({
      builder: "f:1:LinearProgressIndicator",
      ...data,
    });
  }
  static circular(data?: {
    key?: ZacBuilder<FlutterKey>;
    value?: number | ZacBuilder<number>;
    backgroundColor?: ZacBuilder<DartColor>;
    color?: ZacBuilder<DartColor>;
    strokeWidth?: number | ZacBuilder<number>;
    semanticsLabel?: string | ZacBuilder<string>;
    semanticsValue?: string | ZacBuilder<string>;
  }) {
    return new ProgressIndicator({
      builder: "f:1:CircularProgressIndicator",
      ...data,
    });
  }
}
export class Radius extends ZacBuilder<DartRadius> {
  static circular(data: { radius: number | ZacBuilder<number> }) {
    return new Radius({
      builder: "f:1:Radius.circular",
      ...data,
    });
  }
  static elliptical(data: {
    x: number | ZacBuilder<number>;
    y: number | ZacBuilder<number>;
  }) {
    return new Radius({
      builder: "f:1:Radius.elliptical",
      ...data,
    });
  }
}
export class Rect extends ZacBuilder<DartRect> {
  static fromCenter(data: {
    center: Offset;
    width: number | ZacBuilder<number>;
    height: number | ZacBuilder<number>;
  }) {
    return new Rect({
      builder: "f:1:Rect.fromCenter",
      ...data,
    });
  }
  static fromCircle(data: {
    center: Offset;
    radius: number | ZacBuilder<number>;
  }) {
    return new Rect({
      builder: "f:1:Rect.fromCircle",
      ...data,
    });
  }
  static fromLTRB(data: {
    left: number | ZacBuilder<number>;
    top: number | ZacBuilder<number>;
    right: number | ZacBuilder<number>;
    bottom: number | ZacBuilder<number>;
  }) {
    return new Rect({
      builder: "f:1:Rect.fromLTRB",
      ...data,
    });
  }
  static fromLTWH(data: {
    left: number | ZacBuilder<number>;
    top: number | ZacBuilder<number>;
    width: number | ZacBuilder<number>;
    height: number | ZacBuilder<number>;
  }) {
    return new Rect({
      builder: "f:1:Rect.fromLTWH",
      ...data,
    });
  }
  static fromPoints(data: { a: Offset; b: Offset }) {
    return new Rect({
      builder: "f:1:Rect.fromPoints",
      ...data,
    });
  }
}
export class RefreshIndicator extends ZacBuilder<FlutterRefreshIndicator> {
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
  }) {
    return new RefreshIndicator({
      builder: "f:1:RefreshIndicator",
      ...data,
    });
  }
}
export class RefreshIndicatorTriggerMode extends ZacBuilder<FlutterRefreshIndicatorTriggerMode> {
  static onEdge() {
    return new RefreshIndicatorTriggerMode({
      builder: "f:1:RefreshIndicatorTriggerMode.onEdge",
    });
  }
  static anywhere() {
    return new RefreshIndicatorTriggerMode({
      builder: "f:1:RefreshIndicatorTriggerMode.anywhere",
    });
  }
}
export class RotatedBox extends ZacBuilder<FlutterRotatedBox> {
  static new(data: {
    key?: ZacBuilder<FlutterKey>;
    child?: ZacBuilder<FlutterWidget>;
    quarterTurns: number;
  }) {
    return new RotatedBox({
      builder: "f:1:RotatedBox",
      ...data,
    });
  }
}
export class RoundedRectangleBorder extends ZacBuilder<FlutterRoundedRectangleBorder> {
  static new(data?: {
    side?: ZacBuilder<FlutterBorderSide>;
    borderRadius?: ZacBuilder<FlutterBorderRadiusGeometry>;
  }) {
    return new RoundedRectangleBorder({
      builder: "f:1:RoundedRectangleBorder",
      ...data,
    });
  }
}
export class RouteFactory extends ZacBuilder<FlutterRouteFactory> {
  static new(data: {
    routes: Record<string, ZacBuilder<FlutterRoute<JSONValue>>>;
    familyNameOfArguments: Record<string, string>;
  }) {
    return new RouteFactory({
      builder: "f:1:RouteFactory",
      ...data,
    });
  }
}
export class RouteSettings extends ZacBuilder<FlutterRouteSettings> {
  static new(data?: {
    name?: string | ZacBuilder<string>;
    arguments?: ZacBuilder<unknown>;
  }) {
    return new RouteSettings({
      builder: "f:1:RouteSettings",
      ...data,
    });
  }
}
export class Row extends ZacBuilder<FlutterRow> {
  static new(data?: {
    key?: ZacBuilder<FlutterKey>;
    mainAxisAlignment?: ZacBuilder<FlutterMainAxisAlignment>;
    mainAxisSize?: ZacBuilder<FlutterMainAxisSize>;
    crossAxisAlignment?: ZacBuilder<FlutterCrossAxisAlignment>;
    textDirection?: ZacBuilder<DartTextDirection>;
    verticalDirection?: ZacBuilder<FlutterVerticalDirection>;
    textBaseline?: ZacBuilder<DartTextBaseline>;
    children?: ZacBuilder<Array<FlutterWidget>>;
  }) {
    return new Row({
      builder: "f:1:Row",
      ...data,
    });
  }
}
export class SafeArea extends ZacBuilder<FlutterSafeArea> {
  static new(data: {
    key?: ZacBuilder<FlutterKey>;
    left?: boolean | ZacBuilder<boolean>;
    top?: boolean | ZacBuilder<boolean>;
    right?: boolean | ZacBuilder<boolean>;
    bottom?: boolean | ZacBuilder<boolean>;
    minimum?: ZacBuilder<FlutterEdgeInsets>;
    maintainBottomViewPadding?: boolean | ZacBuilder<boolean>;
    child: ZacBuilder<FlutterWidget>;
  }) {
    return new SafeArea({
      builder: "f:1:SafeArea",
      ...data,
    });
  }
}
export class Scaffold extends ZacBuilder<FlutterScaffold> {
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
  }) {
    return new Scaffold({
      builder: "f:1:Scaffold",
      ...data,
    });
  }
}
export class ScaffoldActions extends ZacBuilder<ZacAction> {
  static openDrawer() {
    return new ScaffoldActions({
      builder: "f:1:Scaffold.openDrawer",
    });
  }
  static openEndDrawer() {
    return new ScaffoldActions({
      builder: "f:1:Scaffold.openEndDrawer",
    });
  }
  static showBodyScrim(data: {
    value: boolean;
    opacity: number | ZacBuilder<number>;
  }) {
    return new ScaffoldActions({
      builder: "f:1:Scaffold.showBodyScrim",
      ...data,
    });
  }
  static showBottomSheet(data: {
    child: ZacBuilder<FlutterWidget>;
    backgroundColor?: ZacBuilder<DartColor>;
    elevation?: number | ZacBuilder<number>;
    shape?: ZacBuilder<FlutterShapeBorder>;
    clipBehavior?: ZacBuilder<DartClip>;
    constraints?: BoxConstraints;
    enableDrag?: boolean | ZacBuilder<boolean>;
  }) {
    return new ScaffoldActions({
      builder: "f:1:Scaffold.showBottomSheet",
      ...data,
    });
  }
}
export class ScaffoldMessenger extends ZacBuilder<ZacAction> {
  static showSnackBar(data: { snackBar: SnackBar }) {
    return new ScaffoldMessenger({
      builder: "f:1:ScaffoldMessenger.showSnackBar",
      ...data,
    });
  }
  static hideCurrentSnackBar() {
    return new ScaffoldMessenger({
      builder: "f:1:ScaffoldMessenger.hideCurrentSnackBar",
    });
  }
  static removeCurrentSnackBar() {
    return new ScaffoldMessenger({
      builder: "f:1:ScaffoldMessenger.removeCurrentSnackBar",
    });
  }
  static showMaterialBanner(data: { materialBanner: MaterialBanner }) {
    return new ScaffoldMessenger({
      builder: "f:1:ScaffoldMessenger.showMaterialBanner",
      ...data,
    });
  }
  static hideCurrentMaterialBanner() {
    return new ScaffoldMessenger({
      builder: "f:1:ScaffoldMessenger.hideCurrentMaterialBanner",
    });
  }
  static removeCurrentMaterialBanner() {
    return new ScaffoldMessenger({
      builder: "f:1:ScaffoldMessenger.removeCurrentMaterialBanner",
    });
  }
}
export class ScrollController extends ZacBuilder<FlutterScrollController> {
  static new(data?: {
    initialScrollOffset?: number;
    keepScrollOffset?: boolean;
    debugLabel?: string;
  }) {
    return new ScrollController({
      builder: "f:1:ScrollController",
      ...data,
    });
  }
}
export class ScrollPhysics extends ZacBuilder<FlutterScrollPhysics> {
  static alwaysScrollable(data?: { parent?: ScrollPhysics }) {
    return new ScrollPhysics({
      builder: "f:1:AlwaysScrollableScrollPhysics",
      ...data,
    });
  }
  static bouncingScroll(data?: { parent?: ScrollPhysics }) {
    return new ScrollPhysics({
      builder: "f:1:BouncingScrollPhysics",
      ...data,
    });
  }
  static clampingScrollPhysics(data?: { parent?: ScrollPhysics }) {
    return new ScrollPhysics({
      builder: "f:1:ClampingScrollPhysics",
      ...data,
    });
  }
}
export class ScrollViewKeyboardDismissBehavior extends ZacBuilder<FlutterScrollViewKeyboardDismissBehavior> {
  static manual() {
    return new ScrollViewKeyboardDismissBehavior({
      builder: "f:1:ScrollViewKeyboardDismissBehavior.manual",
    });
  }
  static onDrag() {
    return new ScrollViewKeyboardDismissBehavior({
      builder: "f:1:ScrollViewKeyboardDismissBehavior.onDrag",
    });
  }
}
export class SelectableText extends ZacBuilder<FlutterSelectableText> {
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
  }) {
    return new SelectableText({
      builder: "f:1:SelectableText",
      ...data,
    });
  }
}
export class Shadow extends ZacBuilder<DartShadow> {
  static new(data?: {
    color?: ZacBuilder<DartColor>;
    offset?: ZacBuilder<DartOffset>;
    blurRadius?: number | ZacBuilder<number>;
  }) {
    return new Shadow({
      builder: "f:1:Shadow",
      ...data,
    });
  }
}
export class ShapeDecoration extends ZacBuilder<FlutterShapeDecoration> {
  static new(data: {
    color?: ZacBuilder<DartColor>;
    image?: ZacBuilder<FlutterDecorationImage>;
    gradient?: ZacBuilder<FlutterGradient>;
    shadows?: Array<BoxShadow>;
    shape: ZacBuilder<FlutterShapeBorder>;
  }) {
    return new ShapeDecoration({
      builder: "f:1:ShapeDecoration",
      ...data,
    });
  }
}
export class SingleChildScrollView extends ZacBuilder<FlutterSingleChildScrollView> {
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
  }) {
    return new SingleChildScrollView({
      builder: "f:1:SingleChildScrollView",
      ...data,
    });
  }
}
export class Size extends ZacBuilder<DartSize> {
  static new(data: {
    width: number | ZacBuilder<number>;
    height: number | ZacBuilder<number>;
  }) {
    return new Size({
      builder: "f:1:Size",
      ...data,
    });
  }
}
export class SizedBox extends ZacBuilder<FlutterSizedBox> {
  static new(data?: {
    key?: ZacBuilder<FlutterKey>;
    width?: number | ZacBuilder<number>;
    height?: number | ZacBuilder<number>;
    child?: ZacBuilder<FlutterWidget>;
  }) {
    return new SizedBox({
      builder: "f:1:SizedBox",
      ...data,
    });
  }
  static expand(data?: {
    key?: ZacBuilder<FlutterKey>;
    child?: ZacBuilder<FlutterWidget>;
  }) {
    return new SizedBox({
      builder: "f:1:SizedBox.expand",
      ...data,
    });
  }
  static fromSize(data?: {
    key?: ZacBuilder<FlutterKey>;
    child?: ZacBuilder<FlutterWidget>;
    size?: ZacBuilder<DartSize>;
  }) {
    return new SizedBox({
      builder: "f:1:SizedBox.fromSize",
      ...data,
    });
  }
  static shrink(data?: {
    key?: ZacBuilder<FlutterKey>;
    child?: ZacBuilder<FlutterWidget>;
  }) {
    return new SizedBox({
      builder: "f:1:SizedBox.shrink",
      ...data,
    });
  }
  static square(data?: {
    key?: ZacBuilder<FlutterKey>;
    child?: ZacBuilder<FlutterWidget>;
    dimension?: number | ZacBuilder<number>;
  }) {
    return new SizedBox({
      builder: "f:1:SizedBox.square",
      ...data,
    });
  }
}
export class SizedOverflowBox extends ZacBuilder<FlutterSizedOverflowBox> {
  static new(data: {
    key?: ZacBuilder<FlutterKey>;
    size: ZacBuilder<DartSize>;
    alignment?: ZacBuilder<FlutterAlignmentGeometry>;
    child?: ZacBuilder<FlutterWidget>;
  }) {
    return new SizedOverflowBox({
      builder: "f:1:SizedOverflowBox",
      ...data,
    });
  }
}
export class SliverChildDelegate extends ZacBuilder<FlutterSliverChildDelegate> {
  static list(data: {
    children: ZacBuilder<Array<FlutterWidget>>;
    addAutomaticKeepAlives?: boolean | ZacBuilder<boolean>;
    addRepaintBoundaries?: boolean | ZacBuilder<boolean>;
    addSemanticIndexes?: boolean | ZacBuilder<boolean>;
    semanticIndexOffset?: number | ZacBuilder<number>;
  }) {
    return new SliverChildDelegate({
      builder: "f:1:SliverChildListDelegate",
      ...data,
    });
  }
  static listFixed(data: {
    children: ZacBuilder<Array<FlutterWidget>>;
    addAutomaticKeepAlives?: boolean | ZacBuilder<boolean>;
    addRepaintBoundaries?: boolean | ZacBuilder<boolean>;
    addSemanticIndexes?: boolean | ZacBuilder<boolean>;
    semanticIndexOffset?: number | ZacBuilder<number>;
  }) {
    return new SliverChildDelegate({
      builder: "f:1:SliverChildListDelegate.fixed",
      ...data,
    });
  }
}
export class SliverGrid extends ZacBuilder<FlutterSliverGrid> {
  static new(data: {
    key?: ZacBuilder<FlutterKey>;
    delegate: SliverChildDelegate;
    gridDelegate: SliverGridDelegate;
  }) {
    return new SliverGrid({
      builder: "f:1:SliverGrid",
      ...data,
    });
  }
}
export class SliverGridDelegate extends ZacBuilder<FlutterSliverGridDelegate> {
  static withFixedCrossAxisCount(data: {
    crossAxisCount: number;
    mainAxisSpacing?: number | ZacBuilder<number>;
    crossAxisSpacing?: number | ZacBuilder<number>;
    childAspectRatio?: number | ZacBuilder<number>;
    mainAxisExtent?: number | ZacBuilder<number>;
  }) {
    return new SliverGridDelegate({
      builder: "f:1:SliverGridDelegateWithFixedCrossAxisCount",
      ...data,
    });
  }
  static withMaxCrossAxisExtent(data: {
    maxCrossAxisExtent: number | ZacBuilder<number>;
    mainAxisSpacing?: number | ZacBuilder<number>;
    crossAxisSpacing?: number | ZacBuilder<number>;
    childAspectRatio?: number | ZacBuilder<number>;
    mainAxisExtent?: number | ZacBuilder<number>;
  }) {
    return new SliverGridDelegate({
      builder: "f:1:SliverGridDelegateWithMaxCrossAxisExtent",
      ...data,
    });
  }
}
export class SliverList extends ZacBuilder<FlutterSliverList> {
  static new(data: {
    key?: ZacBuilder<FlutterKey>;
    delegate: SliverChildDelegate;
  }) {
    return new SliverList({
      builder: "f:1:SliverList",
      ...data,
    });
  }
}
export class SliverPadding extends ZacBuilder<FlutterSliverPadding> {
  static new(data: {
    key?: ZacBuilder<FlutterKey>;
    sliver?: ZacBuilder<FlutterWidget>;
    padding: ZacBuilder<FlutterEdgeInsetsGeometry>;
  }) {
    return new SliverPadding({
      builder: "f:1:SliverPadding",
      ...data,
    });
  }
}
export class SliverToBoxAdapter extends ZacBuilder<FlutterSliverToBoxAdapter> {
  static new(data?: {
    key?: ZacBuilder<FlutterKey>;
    child?: ZacBuilder<FlutterWidget>;
  }) {
    return new SliverToBoxAdapter({
      builder: "f:1:SliverToBoxAdapter",
      ...data,
    });
  }
}
export class SmartDashesType extends ZacBuilder<FlutterSmartDashesType> {
  static disabled() {
    return new SmartDashesType({
      builder: "f:1:SmartDashesType.disabled",
    });
  }
  static enabled() {
    return new SmartDashesType({
      builder: "f:1:SmartDashesType.enabled",
    });
  }
}
export class SmartQuotesType extends ZacBuilder<FlutterSmartQuotesType> {
  static disabled() {
    return new SmartQuotesType({
      builder: "f:1:SmartQuotesType.disabled",
    });
  }
  static enabled() {
    return new SmartQuotesType({
      builder: "f:1:SmartQuotesType.enabled",
    });
  }
}
export class SnackBar extends ZacBuilder<FlutterSnackBar> {
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
  }) {
    return new SnackBar({
      builder: "f:1:SnackBar",
      ...data,
    });
  }
}
export class SnackBarAction extends ZacBuilder<FlutterSnackBarAction> {
  static new(data: {
    key?: ZacBuilder<FlutterKey>;
    textColor?: ZacBuilder<DartColor>;
    disabledTextColor?: ZacBuilder<DartColor>;
    label: string | ZacBuilder<string>;
    onPressed: ZacBuilder<Array<ZacAction>>;
  }) {
    return new SnackBarAction({
      builder: "f:1:SnackBarAction",
      ...data,
    });
  }
}
export class SnackBarBehavior extends ZacBuilder<FlutterSnackBarBehavior> {
  static fixed() {
    return new SnackBarBehavior({
      builder: "f:1:SnackBarBehavior.fixed",
    });
  }
  static floating() {
    return new SnackBarBehavior({
      builder: "f:1:SnackBarBehavior.floating",
    });
  }
}
export class Spacer extends ZacBuilder<FlutterSpacer> {
  static new(data?: {
    key?: ZacBuilder<FlutterKey>;
    flex?: number | ZacBuilder<number>;
  }) {
    return new Spacer({
      builder: "f:1:Spacer",
      ...data,
    });
  }
}
export class Stack extends ZacBuilder<FlutterStack> {
  static new(data?: {
    key?: ZacBuilder<FlutterKey>;
    alignment?: ZacBuilder<FlutterAlignmentGeometry>;
    textDirection?: ZacBuilder<DartTextDirection>;
    fit?: ZacBuilder<FlutterStackFit>;
    clipBehavior?: ZacBuilder<DartClip>;
    children?: ZacBuilder<Array<FlutterWidget>>;
  }) {
    return new Stack({
      builder: "f:1:Stack",
      ...data,
    });
  }
}
export class StackFit extends ZacBuilder<FlutterStackFit> {
  static expand() {
    return new StackFit({
      builder: "f:1:StackFit.expand",
    });
  }
  static loose() {
    return new StackFit({
      builder: "f:1:StackFit.loose",
    });
  }
  static passthrough() {
    return new StackFit({
      builder: "f:1:StackFit.passthrough",
    });
  }
}
export class StrutStyle extends ZacBuilder<FlutterStrutStyle> {
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
  }) {
    return new StrutStyle({
      builder: "f:1:StrutStyle",
      ...data,
    });
  }
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
  }) {
    return new StrutStyle({
      builder: "f:1:StrutStyle.fromTextStyle",
      ...data,
    });
  }
}
export class SystemUiOverlayStyle extends ZacBuilder<FlutterSystemUiOverlayStyle> {
  static new(data?: {
    systemNavigationBarColor?: ZacBuilder<DartColor>;
    systemNavigationBarDividerColor?: ZacBuilder<DartColor>;
    systemNavigationBarIconBrightness?: ZacBuilder<DartBrightness>;
    systemNavigationBarContrastEnforced?: boolean | ZacBuilder<boolean>;
    statusBarColor?: ZacBuilder<DartColor>;
    statusBarBrightness?: ZacBuilder<DartBrightness>;
    statusBarIconBrightness?: ZacBuilder<DartBrightness>;
    systemStatusBarContrastEnforced?: boolean | ZacBuilder<boolean>;
  }) {
    return new SystemUiOverlayStyle({
      builder: "f:1:SystemUiOverlayStyle",
      ...data,
    });
  }
}
export class Text extends ZacBuilder<FlutterText> {
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
  }) {
    return new Text({
      builder: "f:1:Text",
      ...data,
    });
  }
}
export class TextAlign extends ZacBuilder<DartTextAlign> {
  static center() {
    return new TextAlign({
      builder: "f:1:TextAlign.center",
    });
  }
  static end() {
    return new TextAlign({
      builder: "f:1:TextAlign.end",
    });
  }
  static justify() {
    return new TextAlign({
      builder: "f:1:TextAlign.justify",
    });
  }
  static left() {
    return new TextAlign({
      builder: "f:1:TextAlign.left",
    });
  }
  static right() {
    return new TextAlign({
      builder: "f:1:TextAlign.right",
    });
  }
  static start() {
    return new TextAlign({
      builder: "f:1:TextAlign.start",
    });
  }
}
export class TextAlignVertical extends ZacBuilder<FlutterTextAlignVertical> {
  static new(data: { y: number | ZacBuilder<number> }) {
    return new TextAlignVertical({
      builder: "f:1:TextAlignVertical",
      ...data,
    });
  }
  static bottom() {
    return new TextAlignVertical({
      builder: "f:1:TextAlignVertical.bottom",
    });
  }
  static center() {
    return new TextAlignVertical({
      builder: "f:1:TextAlignVertical.center",
    });
  }
  static top() {
    return new TextAlignVertical({
      builder: "f:1:TextAlignVertical.top",
    });
  }
}
export class TextBaseline extends ZacBuilder<DartTextBaseline> {
  static alphabetic() {
    return new TextBaseline({
      builder: "f:1:TextBaseline.alphabetic",
    });
  }
  static ideographic() {
    return new TextBaseline({
      builder: "f:1:TextBaseline.ideographic",
    });
  }
}
export class TextButton extends ZacBuilder<FlutterTextButton> {
  static new(data: {
    key?: ZacBuilder<FlutterKey>;
    child: ZacBuilder<FlutterWidget>;
    onPressed?: ZacBuilder<Array<ZacAction>>;
    onLongPress?: ZacBuilder<Array<ZacAction>>;
    autofocus?: boolean | ZacBuilder<boolean>;
    clipBehavior?: ZacBuilder<DartClip>;
  }) {
    return new TextButton({
      builder: "f:1:TextButton",
      ...data,
    });
  }
  static icon(data: {
    key?: ZacBuilder<FlutterKey>;
    icon: ZacBuilder<FlutterWidget>;
    label: ZacBuilder<FlutterWidget>;
    onPressed?: ZacBuilder<Array<ZacAction>>;
    onLongPress?: ZacBuilder<Array<ZacAction>>;
    autofocus?: boolean | ZacBuilder<boolean>;
    clipBehavior?: ZacBuilder<DartClip>;
  }) {
    return new TextButton({
      builder: "f:1:TextButton.icon",
      ...data,
    });
  }
}
export class TextCapitalization extends ZacBuilder<FlutterTextCapitalization> {
  static characters() {
    return new TextCapitalization({
      builder: "f:1:TextCapitalization.characters",
    });
  }
  static none() {
    return new TextCapitalization({
      builder: "f:1:TextCapitalization.none",
    });
  }
  static sentences() {
    return new TextCapitalization({
      builder: "f:1:TextCapitalization.sentences",
    });
  }
  static words() {
    return new TextCapitalization({
      builder: "f:1:TextCapitalization.words",
    });
  }
}
export class TextDecoration extends ZacBuilder<DartTextDecoration> {
  static lineThrough() {
    return new TextDecoration({
      builder: "f:1:TextDecoration.lineThrough",
    });
  }
  static none() {
    return new TextDecoration({
      builder: "f:1:TextDecoration.none",
    });
  }
  static overline() {
    return new TextDecoration({
      builder: "f:1:TextDecoration.overline",
    });
  }
  static underline() {
    return new TextDecoration({
      builder: "f:1:TextDecoration.underline",
    });
  }
}
export class TextDecorationStyle extends ZacBuilder<DartTextDecorationStyle> {
  static dashed() {
    return new TextDecorationStyle({
      builder: "f:1:TextDecorationStyle.dashed",
    });
  }
  static dotted() {
    return new TextDecorationStyle({
      builder: "f:1:TextDecorationStyle.dotted",
    });
  }
  static double() {
    return new TextDecorationStyle({
      builder: "f:1:TextDecorationStyle.double",
    });
  }
  static solid() {
    return new TextDecorationStyle({
      builder: "f:1:TextDecorationStyle.solid",
    });
  }
  static wavy() {
    return new TextDecorationStyle({
      builder: "f:1:TextDecorationStyle.wavy",
    });
  }
}
export class TextDirection extends ZacBuilder<DartTextDirection> {
  static rtl() {
    return new TextDirection({
      builder: "f:1:TextDirection.rtl",
    });
  }
  static ltr() {
    return new TextDirection({
      builder: "f:1:TextDirection.ltr",
    });
  }
}
export class TextField extends ZacBuilder<FlutterTextField> {
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
  }) {
    return new TextField({
      builder: "f:1:TextField",
      ...data,
    });
  }
}
export class TextHeightBehavior extends ZacBuilder<DartTextHeightBehavior> {
  static new(data?: {
    applyHeightToFirstAscent?: boolean | ZacBuilder<boolean>;
    applyHeightToLastDescent?: boolean | ZacBuilder<boolean>;
    leadingDistribution?: ZacBuilder<DartTextLeadingDistribution>;
  }) {
    return new TextHeightBehavior({
      builder: "f:1:TextHeightBehavior",
      ...data,
    });
  }
}
export class TextInputAction extends ZacBuilder<FlutterTextInputAction> {
  static continueAction() {
    return new TextInputAction({
      builder: "f:1:TextInputAction.continueAction",
    });
  }
  static done() {
    return new TextInputAction({
      builder: "f:1:TextInputAction.done",
    });
  }
  static emergencyCall() {
    return new TextInputAction({
      builder: "f:1:TextInputAction.emergencyCall",
    });
  }
  static go() {
    return new TextInputAction({
      builder: "f:1:TextInputAction.go",
    });
  }
  static join() {
    return new TextInputAction({
      builder: "f:1:TextInputAction.join",
    });
  }
  static newline() {
    return new TextInputAction({
      builder: "f:1:TextInputAction.newline",
    });
  }
  static next() {
    return new TextInputAction({
      builder: "f:1:TextInputAction.next",
    });
  }
  static none() {
    return new TextInputAction({
      builder: "f:1:TextInputAction.none",
    });
  }
  static previous() {
    return new TextInputAction({
      builder: "f:1:TextInputAction.previous",
    });
  }
  static route() {
    return new TextInputAction({
      builder: "f:1:TextInputAction.route",
    });
  }
  static search() {
    return new TextInputAction({
      builder: "f:1:TextInputAction.search",
    });
  }
  static send() {
    return new TextInputAction({
      builder: "f:1:TextInputAction.send",
    });
  }
  static unspecified() {
    return new TextInputAction({
      builder: "f:1:TextInputAction.unspecified",
    });
  }
}
export class TextInputType extends ZacBuilder<FlutterTextInputType> {
  static datetime() {
    return new TextInputType({
      builder: "f:1:TextInputType.datetime",
    });
  }
  static emailAddress() {
    return new TextInputType({
      builder: "f:1:TextInputType.emailAddress",
    });
  }
  static multiline() {
    return new TextInputType({
      builder: "f:1:TextInputType.multiline",
    });
  }
  static name_() {
    return new TextInputType({
      builder: "f:1:TextInputType.name",
    });
  }
  static none() {
    return new TextInputType({
      builder: "f:1:TextInputType.none",
    });
  }
  static number() {
    return new TextInputType({
      builder: "f:1:TextInputType.number",
    });
  }
  static phone() {
    return new TextInputType({
      builder: "f:1:TextInputType.phone",
    });
  }
  static streetAddress() {
    return new TextInputType({
      builder: "f:1:TextInputType.streetAddress",
    });
  }
  static text() {
    return new TextInputType({
      builder: "f:1:TextInputType.text",
    });
  }
  static url() {
    return new TextInputType({
      builder: "f:1:TextInputType.url",
    });
  }
  static visiblePassword() {
    return new TextInputType({
      builder: "f:1:TextInputType.visiblePassword",
    });
  }
}
export class TextLeadingDistribution extends ZacBuilder<DartTextLeadingDistribution> {
  static even() {
    return new TextLeadingDistribution({
      builder: "f:1:TextLeadingDistribution.even",
    });
  }
  static proportional() {
    return new TextLeadingDistribution({
      builder: "f:1:TextLeadingDistribution.proportional",
    });
  }
}
export class TextOverflow extends ZacBuilder<FlutterTextOverflow> {
  static clip() {
    return new TextOverflow({
      builder: "f:1:TextOverflow.clip",
    });
  }
  static ellipsis() {
    return new TextOverflow({
      builder: "f:1:TextOverflow.ellipsis",
    });
  }
  static fade() {
    return new TextOverflow({
      builder: "f:1:TextOverflow.fade",
    });
  }
  static visible() {
    return new TextOverflow({
      builder: "f:1:TextOverflow.visible",
    });
  }
}
export class TextStyle extends ZacBuilder<FlutterTextStyle> {
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
  }) {
    return new TextStyle({
      builder: "f:1:TextStyle",
      ...data,
    });
  }
}
export class TextWidthBasis extends ZacBuilder<FlutterTextWidthBasis> {
  static longestLine() {
    return new TextWidthBasis({
      builder: "f:1:TextWidthBasis.longestLine",
    });
  }
  static parent() {
    return new TextWidthBasis({
      builder: "f:1:TextWidthBasis.parent",
    });
  }
}
export class UnconstrainedBox extends ZacBuilder<FlutterUnconstrainedBox> {
  static new(data?: {
    key?: ZacBuilder<FlutterKey>;
    child?: ZacBuilder<FlutterWidget>;
    textDirection?: ZacBuilder<DartTextDirection>;
    alignment?: ZacBuilder<FlutterAlignmentGeometry>;
    constrainedAxis?: ZacBuilder<FlutterAxis>;
    clipBehavior?: ZacBuilder<DartClip>;
  }) {
    return new UnconstrainedBox({
      builder: "f:1:UnconstrainedBox",
      ...data,
    });
  }
}
export class UnderlineInputBorder extends ZacBuilder<FlutterUnderlineInputBorder> {
  static new(data?: {
    borderSide?: ZacBuilder<FlutterBorderSide>;
    borderRadius?: ZacBuilder<FlutterBorderRadius>;
  }) {
    return new UnderlineInputBorder({
      builder: "f:1:UnderlineInputBorder",
      ...data,
    });
  }
}
export class ValueKey extends ZacBuilder<FlutterValueKey<string>> {
  static new(data: { value: string }) {
    return new ValueKey({
      builder: "f:1:ValueKey",
      ...data,
    });
  }
}
export class VerticalDirection extends ZacBuilder<FlutterVerticalDirection> {
  static up() {
    return new VerticalDirection({
      builder: "f:1:VerticalDirection.up",
    });
  }
  static down() {
    return new VerticalDirection({
      builder: "f:1:VerticalDirection.down",
    });
  }
}
export class Wrap extends ZacBuilder<FlutterWrap> {
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
  }) {
    return new Wrap({
      builder: "f:1:Wrap",
      ...data,
    });
  }
}
export class WrapAlignment extends ZacBuilder<FlutterWrapAlignment> {
  static start() {
    return new WrapAlignment({
      builder: "f:1:WrapAlignment.start",
    });
  }
  static end() {
    return new WrapAlignment({
      builder: "f:1:WrapAlignment.end",
    });
  }
  static center() {
    return new WrapAlignment({
      builder: "f:1:WrapAlignment.center",
    });
  }
  static spaceBetween() {
    return new WrapAlignment({
      builder: "f:1:WrapAlignment.spaceBetween",
    });
  }
  static spaceAround() {
    return new WrapAlignment({
      builder: "f:1:WrapAlignment.spaceAround",
    });
  }
  static spaceEvenly() {
    return new WrapAlignment({
      builder: "f:1:WrapAlignment.spaceEvenly",
    });
  }
}
export class WrapCrossAlignment extends ZacBuilder<FlutterWrapCrossAlignment> {
  static center() {
    return new WrapCrossAlignment({
      builder: "f:1:WrapCrossAlignment.center",
    });
  }
  static end() {
    return new WrapCrossAlignment({
      builder: "f:1:WrapCrossAlignment.end",
    });
  }
  static start() {
    return new WrapCrossAlignment({
      builder: "f:1:WrapCrossAlignment.start",
    });
  }
}
export class IntTransformer extends ZacBuilder<ZacTransform> {
  static parse(data: { number: string | ZacBuilder<string> }) {
    return new IntTransformer({
      builder: "z:1:Transformer:int.parse",
      ...data,
    });
  }
  static tryParse(data: { number: string | ZacBuilder<string> }) {
    return new IntTransformer({
      builder: "z:1:Transformer:int.tryParse",
      ...data,
    });
  }
  static incr(data: {
    number: number | ZacBuilder<number>;
    by: number | ZacBuilder<number>;
  }) {
    return new IntTransformer({
      builder: "z:1:Transformer:int.incr",
      ...data,
    });
  }
  static decr(data: {
    number: number | ZacBuilder<number>;
    by: number | ZacBuilder<number>;
  }) {
    return new IntTransformer({
      builder: "z:1:Transformer:int.decr",
      ...data,
    });
  }
}
export class IterableTransformer extends ZacBuilder<ZacTransform> {
  static map(data: {
    iterable: ZacBuilder<Array<JSONValue>>;
    transformer: ZacBuilder<Array<ZacTransform>>;
  }) {
    return new IterableTransformer({
      builder: "z:1:Transformer:Iterable.map",
      ...data,
    });
  }
  static single(data: { iterable: ZacBuilder<Array<JSONValue>> }) {
    return new IterableTransformer({
      builder: "z:1:Transformer:Iterable.single",
      ...data,
    });
  }
  static first(data: { iterable: ZacBuilder<Array<JSONValue>> }) {
    return new IterableTransformer({
      builder: "z:1:Transformer:Iterable.first",
      ...data,
    });
  }
  static last(data: { iterable: ZacBuilder<Array<JSONValue>> }) {
    return new IterableTransformer({
      builder: "z:1:Transformer:Iterable.last",
      ...data,
    });
  }
  static length_(data: { iterable: ZacBuilder<Array<JSONValue>> }) {
    return new IterableTransformer({
      builder: "z:1:Transformer:Iterable.length",
      ...data,
    });
  }
  static isEmpty(data: { iterable: ZacBuilder<Array<JSONValue>> }) {
    return new IterableTransformer({
      builder: "z:1:Transformer:Iterable.isEmpty",
      ...data,
    });
  }
  static isNotEmpty(data: { iterable: ZacBuilder<Array<JSONValue>> }) {
    return new IterableTransformer({
      builder: "z:1:Transformer:Iterable.isNotEmpty",
      ...data,
    });
  }
  static toList(data: { iterable: ZacBuilder<Array<JSONValue>> }) {
    return new IterableTransformer({
      builder: "z:1:Transformer:Iterable.toList",
      ...data,
    });
  }
  static toSet(data: { iterable: ZacBuilder<Array<JSONValue>> }) {
    return new IterableTransformer({
      builder: "z:1:Transformer:Iterable.toSet",
      ...data,
    });
  }
  static toString(data: { iterable: ZacBuilder<Array<JSONValue>> }) {
    return new IterableTransformer({
      builder: "z:1:Transformer:Iterable.toString",
      ...data,
    });
  }
  static join(data: {
    iterable: ZacBuilder<Array<JSONValue>>;
    separator?: string;
  }) {
    return new IterableTransformer({
      builder: "z:1:Transformer:Iterable.join",
      ...data,
    });
  }
  static contains(data: {
    iterable: ZacBuilder<Array<JSONValue>>;
    element: ZacBuilder<unknown>;
  }) {
    return new IterableTransformer({
      builder: "z:1:Transformer:Iterable.contains",
      ...data,
    });
  }
  static elementAt(data: {
    iterable: ZacBuilder<Array<JSONValue>>;
    index: number;
  }) {
    return new IterableTransformer({
      builder: "z:1:Transformer:Iterable.elementAt",
      ...data,
    });
  }
  static skip(data: { iterable: ZacBuilder<Array<JSONValue>>; count: number }) {
    return new IterableTransformer({
      builder: "z:1:Transformer:Iterable.skip",
      ...data,
    });
  }
  static take(data: { iterable: ZacBuilder<Array<JSONValue>>; count: number }) {
    return new IterableTransformer({
      builder: "z:1:Transformer:Iterable.take",
      ...data,
    });
  }
}
export class JsonTransformer extends ZacBuilder<ZacTransform> {
  static encode(data: { object: ZacBuilder<unknown> }) {
    return new JsonTransformer({
      builder: "z:1:Transformer:Json.encode",
      ...data,
    });
  }
  static decode(data: { jsonString: string | ZacBuilder<string> }) {
    return new JsonTransformer({
      builder: "z:1:Transformer:Json.decode",
      ...data,
    });
  }
}
export class ListTransformer extends ZacBuilder<ZacTransform> {
  static reversed(data: { list: ZacBuilder<Array<JSONValue>> }) {
    return new ListTransformer({
      builder: "z:1:Transformer:List.reversed",
      ...data,
    });
  }
  static add(data: {
    list: ZacBuilder<Array<JSONValue>>;
    value: ZacBuilder<unknown>;
  }) {
    return new ListTransformer({
      builder: "z:1:Transformer:List.add",
      ...data,
    });
  }
}
export class MapTransformer extends ZacBuilder<ZacTransform> {
  static values(data: { fromMap: ZacBuilder<Record<string, JSONValue>> }) {
    return new MapTransformer({
      builder: "z:1:Transformer:Map.values",
      ...data,
    });
  }
  static keys(data: { fromMap: ZacBuilder<Record<string, JSONValue>> }) {
    return new MapTransformer({
      builder: "z:1:Transformer:Map.keys",
      ...data,
    });
  }
  static entries(data: { fromMap: ZacBuilder<Record<string, JSONValue>> }) {
    return new MapTransformer({
      builder: "z:1:Transformer:Map.entries",
      ...data,
    });
  }
  static length_(data: { fromMap: ZacBuilder<Record<string, JSONValue>> }) {
    return new MapTransformer({
      builder: "z:1:Transformer:Map.length",
      ...data,
    });
  }
  static isEmpty(data: { fromMap: ZacBuilder<Record<string, JSONValue>> }) {
    return new MapTransformer({
      builder: "z:1:Transformer:Map.isEmpty",
      ...data,
    });
  }
  static isNotEmpty(data: { fromMap: ZacBuilder<Record<string, JSONValue>> }) {
    return new MapTransformer({
      builder: "z:1:Transformer:Map.isNotEmpty",
      ...data,
    });
  }
  static containsKey(data: {
    fromMap: ZacBuilder<Record<string, JSONValue>>;
    key: ZacBuilder<unknown>;
  }) {
    return new MapTransformer({
      builder: "z:1:Transformer:Map.containsKey",
      ...data,
    });
  }
  static containsValue(data: {
    fromMap: ZacBuilder<Record<string, JSONValue>>;
    value: ZacBuilder<unknown>;
  }) {
    return new MapTransformer({
      builder: "z:1:Transformer:Map.containsValue",
      ...data,
    });
  }
  static mapper(data: {
    fromMap: ZacBuilder<Record<string, JSONValue>>;
    keyTransformer?: ZacBuilder<Array<ZacTransform>>;
    valueTransformer?: ZacBuilder<Array<ZacTransform>>;
  }) {
    return new MapTransformer({
      builder: "z:1:Transformer:Map.map",
      ...data,
    });
  }
  static fromObjectObject(data: {
    fromMap: ZacBuilder<Record<string, JSONValue>>;
  }) {
    return new MapTransformer({
      builder: "z:1:Transformer:Map<Object, Object>.from",
      ...data,
    });
  }
  static fromStringObject(data: {
    fromMap: ZacBuilder<Record<string, JSONValue>>;
  }) {
    return new MapTransformer({
      builder: "z:1:Transformer:Map<String, Object>.from",
      ...data,
    });
  }
  static fromStringNullObject(data: {
    fromMap: ZacBuilder<Record<string, JSONValue>>;
  }) {
    return new MapTransformer({
      builder: "z:1:Transformer:Map<String, Object?>.from",
      ...data,
    });
  }
  static key(data: {
    fromMap: ZacBuilder<Record<string, JSONValue>>;
    key: string | ZacBuilder<string>;
  }) {
    return new MapTransformer({
      builder: "z:1:Transformer:Map[key]",
      ...data,
    });
  }
  static setValueForKey(data: {
    fromMap: ZacBuilder<Record<string, JSONValue>>;
    value: ZacBuilder<unknown>;
    key: string | ZacBuilder<string>;
  }) {
    return new MapTransformer({
      builder: "z:1:Transformer:Map.setValueForKey",
      ...data,
    });
  }
}
export class NumTransformer extends ZacBuilder<ZacTransform> {
  static toDouble(data: { number: number | ZacBuilder<number> }) {
    return new NumTransformer({
      builder: "z:1:Transformer:num.toDouble",
      ...data,
    });
  }
  static toInt(data: { number: number | ZacBuilder<number> }) {
    return new NumTransformer({
      builder: "z:1:Transformer:num.toInt",
      ...data,
    });
  }
  static abs(data: { number: number | ZacBuilder<number> }) {
    return new NumTransformer({
      builder: "z:1:Transformer:num.abs",
      ...data,
    });
  }
  static ceil(data: { number: number | ZacBuilder<number> }) {
    return new NumTransformer({
      builder: "z:1:Transformer:num.ceil",
      ...data,
    });
  }
  static ceilToDouble(data: { number: number | ZacBuilder<number> }) {
    return new NumTransformer({
      builder: "z:1:Transformer:num.ceilToDouble",
      ...data,
    });
  }
  static floor(data: { number: number | ZacBuilder<number> }) {
    return new NumTransformer({
      builder: "z:1:Transformer:num.floor",
      ...data,
    });
  }
  static floorToDouble(data: { number: number | ZacBuilder<number> }) {
    return new NumTransformer({
      builder: "z:1:Transformer:num.floorToDouble",
      ...data,
    });
  }
  static round(data: { number: number | ZacBuilder<number> }) {
    return new NumTransformer({
      builder: "z:1:Transformer:num.round",
      ...data,
    });
  }
  static roundToDouble(data: { number: number | ZacBuilder<number> }) {
    return new NumTransformer({
      builder: "z:1:Transformer:num.roundToDouble",
      ...data,
    });
  }
  static isFinite(data: { number: number | ZacBuilder<number> }) {
    return new NumTransformer({
      builder: "z:1:Transformer:num.isFinite",
      ...data,
    });
  }
  static isInfinite(data: { number: number | ZacBuilder<number> }) {
    return new NumTransformer({
      builder: "z:1:Transformer:num.isInfinite",
      ...data,
    });
  }
  static isNan(data: { number: number | ZacBuilder<number> }) {
    return new NumTransformer({
      builder: "z:1:Transformer:num.isNan",
      ...data,
    });
  }
  static isNegative(data: { number: number | ZacBuilder<number> }) {
    return new NumTransformer({
      builder: "z:1:Transformer:num.isNegative",
      ...data,
    });
  }
}
export class ObjectTransformer extends ZacBuilder<ZacTransform> {
  static isList(data: { object: ZacBuilder<unknown> }) {
    return new ObjectTransformer({
      builder: "z:1:Transformer:Object.isList",
      ...data,
    });
  }
  static isMap(data: { object: ZacBuilder<unknown> }) {
    return new ObjectTransformer({
      builder: "z:1:Transformer:Object.isMap",
      ...data,
    });
  }
  static isBool(data: { object: ZacBuilder<unknown> }) {
    return new ObjectTransformer({
      builder: "z:1:Transformer:Object.isBool",
      ...data,
    });
  }
  static isString(data: { object: ZacBuilder<unknown> }) {
    return new ObjectTransformer({
      builder: "z:1:Transformer:Object.isString",
      ...data,
    });
  }
  static isDouble(data: { object: ZacBuilder<unknown> }) {
    return new ObjectTransformer({
      builder: "z:1:Transformer:Object.isDouble",
      ...data,
    });
  }
  static isInt(data: { object: ZacBuilder<unknown> }) {
    return new ObjectTransformer({
      builder: "z:1:Transformer:Object.isInt",
      ...data,
    });
  }
  static isNull(data: { object: ZacBuilder<unknown> }) {
    return new ObjectTransformer({
      builder: "z:1:Transformer:Object.isNull",
      ...data,
    });
  }
  static equals(data: {
    object: ZacBuilder<unknown>;
    other: ZacBuilder<unknown>;
  }) {
    return new ObjectTransformer({
      builder: "z:1:Transformer:Object.equals",
      ...data,
    });
  }
  static toString(data: { object: ZacBuilder<unknown> }) {
    return new ObjectTransformer({
      builder: "z:1:Transformer:Object.toString",
      ...data,
    });
  }
  static runtimeType(data: { object: ZacBuilder<unknown> }) {
    return new ObjectTransformer({
      builder: "z:1:Transformer:Object.runtimeType",
      ...data,
    });
  }
  static hashCode(data: { object: ZacBuilder<unknown> }) {
    return new ObjectTransformer({
      builder: "z:1:Transformer:Object.hashCode",
      ...data,
    });
  }
}
export class StringTransformer extends ZacBuilder<ZacTransform> {
  static length_(data: { string: string | ZacBuilder<string> }) {
    return new StringTransformer({
      builder: "z:1:Transformer:String.length",
      ...data,
    });
  }
  static split(data: {
    string: string | ZacBuilder<string>;
    pattern: string | ZacBuilder<string>;
  }) {
    return new StringTransformer({
      builder: "z:1:Transformer:String.split",
      ...data,
    });
  }
  static isEmpty(data: { string: string | ZacBuilder<string> }) {
    return new StringTransformer({
      builder: "z:1:Transformer:String.isEmpty",
      ...data,
    });
  }
  static isNotEmpty(data: { string: string | ZacBuilder<string> }) {
    return new StringTransformer({
      builder: "z:1:Transformer:String.isNotEmpty",
      ...data,
    });
  }
  static replaceAll(data: {
    string: string | ZacBuilder<string>;
    from: string | ZacBuilder<string>;
    replace: string | ZacBuilder<string>;
  }) {
    return new StringTransformer({
      builder: "z:1:Transformer:String.replaceAll",
      ...data,
    });
  }
}
export class ZacBool extends ZacBuilder<boolean> {
  static new(data: { value: boolean }) {
    return new ZacBool({
      builder: "z:1:bool",
      ...data,
    });
  }
}
export class ZacBuild extends ZacBuilder<FlutterWidget> {
  static fromJsonString(data: {
    key?: ZacBuilder<FlutterKey>;
    jsonString: string;
  }) {
    return new ZacBuild({
      builder: "z:1:Build.fromJsonString",
      ...data,
    });
  }
  static fromBuilderMap(data: {
    key?: ZacBuilder<FlutterKey>;
    builderMap: Record<string, JSONValue>;
  }) {
    return new ZacBuild({
      builder: "z:1:Build.fromBuilderMap",
      ...data,
    });
  }
  static fromBuilder(data: {
    key?: ZacBuilder<FlutterKey>;
    builderWidget: ZacBuilder<FlutterWidget>;
  }) {
    return new ZacBuild({
      builder: "z:1:Build.fromBuilder",
      ...data,
    });
  }
  static isolateFromJsonString(data: {
    key?: ZacBuilder<FlutterKey>;
    jsonString: string;
    errorChild?: ZacBuilder<FlutterWidget>;
  }) {
    return new ZacBuild({
      builder: "z:1:Build:Isolate.fromJsonString",
      ...data,
    });
  }
  static isolateFromBuilderMap(data: {
    key?: ZacBuilder<FlutterKey>;
    builderMap: Record<string, JSONValue>;
    errorChild?: ZacBuilder<FlutterWidget>;
  }) {
    return new ZacBuild({
      builder: "z:1:Build:Isolate.fromBuilderMap",
      ...data,
    });
  }
}
export class ZacControlFlowAction extends ZacBuilder<ZacAction> {
  static ifCond(data: {
    conditionValue: ZacBuilder<unknown>;
    condition: ZacBuilder<Array<ZacTransform>>;
    ifTrue: ZacBuilder<Array<ZacAction>>;
    ifFalse?: ZacBuilder<Array<ZacAction>>;
  }) {
    return new ZacControlFlowAction({
      builder: "z:1:Action:If",
      ...data,
    });
  }
}
export class ZacDateTime extends ZacBuilder<string> {
  static new(data: { value: string }) {
    return new ZacDateTime({
      builder: "z:1:DateTime",
      ...data,
    });
  }
}
export class ZacDouble extends ZacBuilder<number> {
  static new(data: { value: number }) {
    return new ZacDouble({
      builder: "z:1:double",
      ...data,
    });
  }
}
export class ZacExecuteActionsBuilder extends ZacBuilder<FlutterWidget> {
  static once(data: {
    actions: ZacBuilder<Array<ZacAction>>;
    child?: ZacBuilder<FlutterWidget>;
  }) {
    return new ZacExecuteActionsBuilder({
      builder: "z:1:ExecuteActionsOnce",
      ...data,
    });
  }
}
export class ZacInt extends ZacBuilder<number> {
  static new(data: { value: number }) {
    return new ZacInt({
      builder: "z:1:int",
      ...data,
    });
  }
}
export class ZacListOfActions extends ZacBuilder<Array<ZacAction>> {
  static new(data: { value: Array<ZacBuilder<ZacAction>> }) {
    return new ZacListOfActions({
      builder: "z:1:List<ZacAction>",
      ...data,
    });
  }
}
export class ZacListOfTransformers extends ZacBuilder<Array<ZacTransform>> {
  static new(data: { value: Array<ZacBuilder<ZacTransform>> }) {
    return new ZacListOfTransformers({
      builder: "z:1:List<ZacTransform>",
      ...data,
    });
  }
}
export class ZacListOfWidgets extends ZacBuilder<Array<FlutterWidget>> {
  static new(data: { value: Array<ZacBuilder<FlutterWidget>> }) {
    return new ZacListOfWidgets({
      builder: "z:1:List<Widget>",
      ...data,
    });
  }
}
export class ZacMapOfWidgets extends ZacBuilder<Record<string, FlutterWidget>> {
  static new(data: { value: Record<string, ZacBuilder<FlutterWidget>> }) {
    return new ZacMapOfWidgets({
      builder: "z:1:Map<String, Widget>",
      ...data,
    });
  }
}
export class ZacNum extends ZacBuilder<number> {
  static new(data: { value: number }) {
    return new ZacNum({
      builder: "z:1:num",
      ...data,
    });
  }
}
export class ZacObject extends ZacBuilder<JSONValue> {
  static new(data: { value: JSONValue }) {
    return new ZacObject({
      builder: "z:1:Object",
      ...data,
    });
  }
}
export class ZacOnStateChange extends ZacBuilder<FlutterWidget> {
  static executeActions(data: {
    actions: ZacBuilder<Array<ZacAction>>;
    family: string;
    child?: ZacBuilder<FlutterWidget>;
  }) {
    return new ZacOnStateChange({
      builder: "z:1:State:OnChange.executeActions",
      ...data,
    });
  }
}
export class ZacStateActions extends ZacBuilder<ZacAction> {
  static update(data: { family: string; withValue: ZacBuilder<unknown> }) {
    return new ZacStateActions({
      builder: "z:1:State.update",
      ...data,
    });
  }
}
export class ZacStateConsume<T> extends ZacBuilder<T> {
  static new<T>(data: {
    family: string;
    mayBuildBuilder?: boolean;
    transformer?: ZacBuilder<Array<ZacTransform>>;
  }) {
    return new ZacStateConsume<T>({
      builder: "z:1:State.consume",
      ...data,
    });
  }
}
export class ZacStateMachineActions extends ZacBuilder<ZacAction> {
  static send(data: {
    widget?: ZacBuilder<FlutterWidget>;
    family: string;
    event: string;
  }) {
    return new ZacStateMachineActions({
      builder: "z:1:StateMachine:Action.send",
      ...data,
    });
  }
  static trySend(data: {
    widget?: ZacBuilder<FlutterWidget>;
    family: string;
    event: string;
  }) {
    return new ZacStateMachineActions({
      builder: "z:1:StateMachine:Action.trySend",
      ...data,
    });
  }
}
export class ZacStateMachineBuild extends ZacBuilder<ZacStateMachineBuildWidget> {
  static new(data: { family: string }) {
    return new ZacStateMachineBuild({
      builder: "z:1:StateMachine:Build",
      ...data,
    });
  }
}
export class ZacStateMachineProvider extends ZacBuilder<FlutterWidget> {
  static new(data: {
    machines: Record<string, ZacStateMachineProvide>;
    child: ZacBuilder<FlutterWidget>;
  }) {
    return new ZacStateMachineProvider({
      builder: "z:1:StateMachines.provide",
      ...data,
    });
  }
}
export class ZacStateProvide extends ZacBuilder<ZacStateCreate> {
  static builder(data: { value: ZacBuilder<unknown> }) {
    return new ZacStateProvide({
      builder: "z:1:State.provideBuilder",
      ...data,
    });
  }
  static builtIn(data?: { value?: JSONValue }) {
    return new ZacStateProvide({
      builder: "z:1:State.provideBuiltIn",
      ...data,
    });
  }
}
export class ZacStatesProvider extends ZacBuilder<FlutterWidget> {
  static new(data: {
    states: Record<string, ZacBuilder<ZacStateCreate>>;
    child: ZacBuilder<FlutterWidget>;
  }) {
    return new ZacStatesProvider({
      builder: "z:1:States.provide",
      ...data,
    });
  }
}
export class ZacString extends ZacBuilder<string> {
  static new(data: { value: string }) {
    return new ZacString({
      builder: "z:1:String",
      ...data,
    });
  }
}
export class ZacTransformValue<T> extends ZacBuilder<T> {
  static current<T>() {
    return new ZacTransformValue<T>({
      builder: "z:1:TransformValue.current",
    });
  }
  static initial<T>() {
    return new ZacTransformValue<T>({
      builder: "z:1:TransformValue.initial",
    });
  }
}
