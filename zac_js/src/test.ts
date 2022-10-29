import { DartDouble, DartInt, FlutterWidget, ValidTypes, ZacConverter } from "./base"
import { ZacAction, ZacActions } from "./zac/action"
import { ZacValue, ZacValueList } from "./zac/zac_value"

/// FROM: dart_ui.dart
export class FlutterColor extends ZacConverter {
  static fromARGB(data: {
    a: DartInt,
    r: DartInt,
    g: DartInt,
    b: DartInt
  }) {
    return new FlutterColor({
      converter: 'f:1:Color.fromARGB',
      ...data
    })
  }
  static fromRGBO(data: {
    r: DartInt,
    g: DartInt,
    b: DartInt,
    opacity: ZacValue<DartDouble>
  }) {
    return new FlutterColor({
      converter: 'f:1:Color.fromRGBO',
      ...data
    })
  }
}
export class FlutterOffset extends ZacConverter {
  static new(data: {
    dx: ZacValue<DartDouble>,
    dy: ZacValue<DartDouble>
  }) {
    return new FlutterOffset({
      converter: 'f:1:Offset',
      ...data
    })
  }
  static fromDirection(data: {
    direction: ZacValue<DartDouble>,
    distance?: ZacValue<DartDouble>
  }) {
    return new FlutterOffset({
      converter: 'f:1:Offset.fromDirection',
      ...data
    })
  }
}
export class FlutterBlurStyle extends ZacConverter {
  static inner() {
    return new FlutterBlurStyle({
      converter: 'f:1:BlurSyle.inner'

    })
  }
  static normal() {
    return new FlutterBlurStyle({
      converter: 'f:1:BlurSyle.normal'

    })
  }
  static outer() {
    return new FlutterBlurStyle({
      converter: 'f:1:BlurSyle.outer'

    })
  }
  static solid() {
    return new FlutterBlurStyle({
      converter: 'f:1:BlurSyle.solid'

    })
  }
}
export class FlutterRadius extends ZacConverter {
  static circular(data: { radius: ZacValue<DartDouble> }) {
    return new FlutterRadius({
      converter: 'f:1:Radius.circular',
      ...data
    })
  }
  static elliptical(data: {
    x: ZacValue<DartDouble>,
    y: ZacValue<DartDouble>
  }) {
    return new FlutterRadius({
      converter: 'f:1:Radius.elliptical',
      ...data
    })
  }
}
export class FlutterTextDirection extends ZacConverter {
  static rtl() {
    return new FlutterTextDirection({
      converter: 'f:1:TextDirection.rtl'

    })
  }
  static ltr() {
    return new FlutterTextDirection({
      converter: 'f:1:TextDirection.ltr'

    })
  }
}
export class FlutterClip extends ZacConverter {
  static none() {
    return new FlutterClip({
      converter: 'f:1:Clip.none'

    })
  }
  static antiAlias() {
    return new FlutterClip({
      converter: 'f:1:Clip.antiAlias'

    })
  }
  static hardEdge() {
    return new FlutterClip({
      converter: 'f:1:Clip.hardEdge'

    })
  }
}
export class FlutterTextBaseline extends ZacConverter {
  static alphabetic() {
    return new FlutterTextBaseline({
      converter: 'f:1:TextBaseline.alphabetic'

    })
  }
  static ideographic() {
    return new FlutterTextBaseline({
      converter: 'f:1:TextBaseline.ideographic'

    })
  }
}
export class FlutterFontWeight extends ZacConverter {
  static bold() {
    return new FlutterFontWeight({
      converter: 'f:1:FontWeight.bold'

    })
  }
  static normal() {
    return new FlutterFontWeight({
      converter: 'f:1:FontWeight.normal'

    })
  }
  static w100() {
    return new FlutterFontWeight({
      converter: 'f:1:FontWeight.w100'

    })
  }
  static w200() {
    return new FlutterFontWeight({
      converter: 'f:1:FontWeight.w200'

    })
  }
  static w300() {
    return new FlutterFontWeight({
      converter: 'f:1:FontWeight.w300'

    })
  }
  static w400() {
    return new FlutterFontWeight({
      converter: 'f:1:FontWeight.w400'

    })
  }
  static w500() {
    return new FlutterFontWeight({
      converter: 'f:1:FontWeight.w500'

    })
  }
  static w600() {
    return new FlutterFontWeight({
      converter: 'f:1:FontWeight.w600'

    })
  }
  static w700() {
    return new FlutterFontWeight({
      converter: 'f:1:FontWeight.w700'

    })
  }
  static w800() {
    return new FlutterFontWeight({
      converter: 'f:1:FontWeight.w800'

    })
  }
  static w900() {
    return new FlutterFontWeight({
      converter: 'f:1:FontWeight.w900'

    })
  }
}
export class FlutterFontStyle extends ZacConverter {
  static italic() {
    return new FlutterFontStyle({
      converter: 'f:1:FontStyle.italic'

    })
  }
  static normal() {
    return new FlutterFontStyle({
      converter: 'f:1:FontStyle.normal'

    })
  }
}
export class FlutterTextDecoration extends ZacConverter {
  static lineThrough() {
    return new FlutterTextDecoration({
      converter: 'f:1:TextDecoration.lineThrough'

    })
  }
  static none() {
    return new FlutterTextDecoration({
      converter: 'f:1:TextDecoration.none'

    })
  }
  static overline() {
    return new FlutterTextDecoration({
      converter: 'f:1:TextDecoration.overline'

    })
  }
  static underline() {
    return new FlutterTextDecoration({
      converter: 'f:1:TextDecoration.underline'

    })
  }
}
export class FlutterTextLeadingDistribution extends ZacConverter {
  static even() {
    return new FlutterTextLeadingDistribution({
      converter: 'f:1:TextLeadingDistribution.even'

    })
  }
  static proportional() {
    return new FlutterTextLeadingDistribution({
      converter: 'f:1:TextLeadingDistribution.proportional'

    })
  }
}
export class FlutterLocale extends ZacConverter {
  static new(data: {
    languageCode: string,
    countryCode?: string
  }) {
    return new FlutterLocale({
      converter: 'f:1:Locale',
      ...data
    })
  }
}
export class FlutterFontFeature extends ZacConverter {
  static new(data: {
    feature: string,
    value?: ZacValue<DartInt>
  }) {
    return new FlutterFontFeature({
      converter: 'f:1:FontFeature',
      ...data
    })
  }
  static alternative(data: { value: DartInt }) {
    return new FlutterFontFeature({
      converter: 'f:1:FontFeature.alternative',
      ...data
    })
  }
  static alternativeFractions() {
    return new FlutterFontFeature({
      converter: 'f:1:FontFeature.alternativeFractions'

    })
  }
  static caseSensitiveForms() {
    return new FlutterFontFeature({
      converter: 'f:1:FontFeature.caseSensitiveForms'

    })
  }
  static characterVariant(data: { value: DartInt }) {
    return new FlutterFontFeature({
      converter: 'f:1:FontFeature.characterVariant',
      ...data
    })
  }
  static contextualAlternates() {
    return new FlutterFontFeature({
      converter: 'f:1:FontFeature.contextualAlternates'

    })
  }
  static denominator() {
    return new FlutterFontFeature({
      converter: 'f:1:FontFeature.denominator'

    })
  }
  static disable(data: { feature: string }) {
    return new FlutterFontFeature({
      converter: 'f:1:FontFeature.disable',
      ...data
    })
  }
  static enable(data: { feature: string }) {
    return new FlutterFontFeature({
      converter: 'f:1:FontFeature.enable',
      ...data
    })
  }
  static fractions() {
    return new FlutterFontFeature({
      converter: 'f:1:FontFeature.fractions'

    })
  }
  static historicalForms() {
    return new FlutterFontFeature({
      converter: 'f:1:FontFeature.historicalForms'

    })
  }
  static historicalLigatures() {
    return new FlutterFontFeature({
      converter: 'f:1:FontFeature.historicalLigatures'

    })
  }
  static liningFigures() {
    return new FlutterFontFeature({
      converter: 'f:1:FontFeature.liningFigures'

    })
  }
  static localeAware(data: { enable?: ZacValue<boolean> }) {
    return new FlutterFontFeature({
      converter: 'f:1:FontFeature.localeAware',
      ...data
    })
  }
  static notationalForms(data: { value?: ZacValue<DartInt> }) {
    return new FlutterFontFeature({
      converter: 'f:1:FontFeature.notationalForms',
      ...data
    })
  }
  static numerators() {
    return new FlutterFontFeature({
      converter: 'f:1:FontFeature.numerators'

    })
  }
  static oldstyleFigures() {
    return new FlutterFontFeature({
      converter: 'f:1:FontFeature.oldstyleFigures'

    })
  }
  static ordinalForms() {
    return new FlutterFontFeature({
      converter: 'f:1:FontFeature.ordinalForms'

    })
  }
  static proportionalFigures() {
    return new FlutterFontFeature({
      converter: 'f:1:FontFeature.proportionalFigures'

    })
  }
  static randomize() {
    return new FlutterFontFeature({
      converter: 'f:1:FontFeature.randomize'

    })
  }
  static scientificInferiors() {
    return new FlutterFontFeature({
      converter: 'f:1:FontFeature.scientificInferiors'

    })
  }
  static slashedZero() {
    return new FlutterFontFeature({
      converter: 'f:1:FontFeature.slashedZero'

    })
  }
  static stylisticAlternates() {
    return new FlutterFontFeature({
      converter: 'f:1:FontFeature.stylisticAlternates'

    })
  }
  static stylisticSet(data: { value: DartInt }) {
    return new FlutterFontFeature({
      converter: 'f:1:FontFeature.stylisticSet',
      ...data
    })
  }
  static subscripts() {
    return new FlutterFontFeature({
      converter: 'f:1:FontFeature.subscripts'

    })
  }
  static superscripts() {
    return new FlutterFontFeature({
      converter: 'f:1:FontFeature.superscripts'

    })
  }
  static swash(data: { value?: ZacValue<DartInt> }) {
    return new FlutterFontFeature({
      converter: 'f:1:FontFeature.swash',
      ...data
    })
  }
  static tabularFigures() {
    return new FlutterFontFeature({
      converter: 'f:1:FontFeature.tabularFigures'

    })
  }
}
export class FlutterTextDecorationStyle extends ZacConverter {
  static dashed() {
    return new FlutterTextDecorationStyle({
      converter: 'f:1:TextDecorationStyle.dashed'

    })
  }
  static dotted() {
    return new FlutterTextDecorationStyle({
      converter: 'f:1:TextDecorationStyle.dotted'

    })
  }
  static double() {
    return new FlutterTextDecorationStyle({
      converter: 'f:1:TextDecorationStyle.double'

    })
  }
  static solid() {
    return new FlutterTextDecorationStyle({
      converter: 'f:1:TextDecorationStyle.solid'

    })
  }
  static wavy() {
    return new FlutterTextDecorationStyle({
      converter: 'f:1:TextDecorationStyle.wavy'

    })
  }
}
export class FlutterTextAlign extends ZacConverter {
  static center() {
    return new FlutterTextAlign({
      converter: 'f:1:TextAlign.center'

    })
  }
  static end() {
    return new FlutterTextAlign({
      converter: 'f:1:TextAlign.end'

    })
  }
  static justify() {
    return new FlutterTextAlign({
      converter: 'f:1:TextAlign.justify'

    })
  }
  static left() {
    return new FlutterTextAlign({
      converter: 'f:1:TextAlign.left'

    })
  }
  static right() {
    return new FlutterTextAlign({
      converter: 'f:1:TextAlign.right'

    })
  }
  static start() {
    return new FlutterTextAlign({
      converter: 'f:1:TextAlign.start'

    })
  }
}
export class FlutterTextHeightBehavior extends ZacConverter {
  static new(data: {
    applyHeightToFirstAscent?: ZacValue<boolean>,
    applyHeightToLastDescent?: ZacValue<boolean>,
    leadingDistribution?: FlutterTextLeadingDistribution
  }) {
    return new FlutterTextHeightBehavior({
      converter: 'f:1:TextHeightBehavior',
      ...data
    })
  }
}
export class FlutterBlendMode extends ZacConverter {
  static clear() {
    return new FlutterBlendMode({
      converter: 'f:1:BlendMode.clear'

    })
  }
  static color() {
    return new FlutterBlendMode({
      converter: 'f:1:BlendMode.color'

    })
  }
  static colorBurn() {
    return new FlutterBlendMode({
      converter: 'f:1:BlendMode.colorBurn'

    })
  }
  static colorDodge() {
    return new FlutterBlendMode({
      converter: 'f:1:BlendMode.colorDodge'

    })
  }
  static darken() {
    return new FlutterBlendMode({
      converter: 'f:1:BlendMode.darken'

    })
  }
  static difference() {
    return new FlutterBlendMode({
      converter: 'f:1:BlendMode.difference'

    })
  }
  static dst() {
    return new FlutterBlendMode({
      converter: 'f:1:BlendMode.dst'

    })
  }
  static dstATop() {
    return new FlutterBlendMode({
      converter: 'f:1:BlendMode.dstATop'

    })
  }
  static dstIn() {
    return new FlutterBlendMode({
      converter: 'f:1:BlendMode.dstIn'

    })
  }
  static dstOut() {
    return new FlutterBlendMode({
      converter: 'f:1:BlendMode.dstOut'

    })
  }
  static dstOver() {
    return new FlutterBlendMode({
      converter: 'f:1:BlendMode.dstOver'

    })
  }
  static exclusion() {
    return new FlutterBlendMode({
      converter: 'f:1:BlendMode.exclusion'

    })
  }
  static hardLight() {
    return new FlutterBlendMode({
      converter: 'f:1:BlendMode.hardLight'

    })
  }
  static hue() {
    return new FlutterBlendMode({
      converter: 'f:1:BlendMode.hue'

    })
  }
  static lighten() {
    return new FlutterBlendMode({
      converter: 'f:1:BlendMode.lighten'

    })
  }
  static luminosity() {
    return new FlutterBlendMode({
      converter: 'f:1:BlendMode.luminosity'

    })
  }
  static modulate() {
    return new FlutterBlendMode({
      converter: 'f:1:BlendMode.modulate'

    })
  }
  static multiply() {
    return new FlutterBlendMode({
      converter: 'f:1:BlendMode.multiply'

    })
  }
  static overlay() {
    return new FlutterBlendMode({
      converter: 'f:1:BlendMode.overlay'

    })
  }
  static plus() {
    return new FlutterBlendMode({
      converter: 'f:1:BlendMode.plus'

    })
  }
  static saturation() {
    return new FlutterBlendMode({
      converter: 'f:1:BlendMode.saturation'

    })
  }
  static screen() {
    return new FlutterBlendMode({
      converter: 'f:1:BlendMode.screen'

    })
  }
  static softLight() {
    return new FlutterBlendMode({
      converter: 'f:1:BlendMode.softLight'

    })
  }
  static src() {
    return new FlutterBlendMode({
      converter: 'f:1:BlendMode.src'

    })
  }
  static srcATop() {
    return new FlutterBlendMode({
      converter: 'f:1:BlendMode.srcATop'

    })
  }
  static srcIn() {
    return new FlutterBlendMode({
      converter: 'f:1:BlendMode.srcIn'

    })
  }
  static srcOut() {
    return new FlutterBlendMode({
      converter: 'f:1:BlendMode.srcOut'

    })
  }
  static srcOver() {
    return new FlutterBlendMode({
      converter: 'f:1:BlendMode.srcOver'

    })
  }
  static xor() {
    return new FlutterBlendMode({
      converter: 'f:1:BlendMode.xor'

    })
  }
}
export class FlutterRect extends ZacConverter {
  static fromCenter(data: {
    center: FlutterOffset,
    width: ZacValue<DartDouble>,
    height: ZacValue<DartDouble>
  }) {
    return new FlutterRect({
      converter: 'f:1:Rect.fromCenter',
      ...data
    })
  }
  static fromCircle(data: {
    center: FlutterOffset,
    radius: ZacValue<DartDouble>
  }) {
    return new FlutterRect({
      converter: 'f:1:Rect.fromCircle',
      ...data
    })
  }
  static fromLTRB(data: {
    left: ZacValue<DartDouble>,
    top: ZacValue<DartDouble>,
    right: ZacValue<DartDouble>,
    bottom: ZacValue<DartDouble>
  }) {
    return new FlutterRect({
      converter: 'f:1:Rect.fromLTRB',
      ...data
    })
  }
  static fromLTWH(data: {
    left: ZacValue<DartDouble>,
    top: ZacValue<DartDouble>,
    width: ZacValue<DartDouble>,
    height: ZacValue<DartDouble>
  }) {
    return new FlutterRect({
      converter: 'f:1:Rect.fromLTWH',
      ...data
    })
  }
  static fromPoints(data: {
    a: FlutterOffset,
    b: FlutterOffset
  }) {
    return new FlutterRect({
      converter: 'f:1:Rect.fromPoints',
      ...data
    })
  }
}
export class FlutterFilterQuality extends ZacConverter {
  static high() {
    return new FlutterFilterQuality({
      converter: 'f:1:FilterQuality.high'

    })
  }
  static low() {
    return new FlutterFilterQuality({
      converter: 'f:1:FilterQuality.low'

    })
  }
  static medium() {
    return new FlutterFilterQuality({
      converter: 'f:1:FilterQuality.medium'

    })
  }
  static none() {
    return new FlutterFilterQuality({
      converter: 'f:1:FilterQuality.none'

    })
  }
}
export class FlutterBrightness extends ZacConverter {
  static dark() {
    return new FlutterBrightness({
      converter: 'f:1:Brightness.dark'

    })
  }
  static light() {
    return new FlutterBrightness({
      converter: 'f:1:Brightness.light'

    })
  }
}
export class FlutterSize extends ZacConverter {
  static new(data: {
    width: ZacValue<DartDouble>,
    height: ZacValue<DartDouble>
  }) {
    return new FlutterSize({
      converter: 'f:1:Size',
      ...data
    })
  }
}
export class FlutterBoxHeightStyle extends ZacConverter {
  static includeLineSpacingBottom() {
    return new FlutterBoxHeightStyle({
      converter: 'f:1:BoxHeightStyle.includeLineSpacingBottom'

    })
  }
  static includeLineSpacingMiddle() {
    return new FlutterBoxHeightStyle({
      converter: 'f:1:BoxHeightStyle.includeLineSpacingMiddle'

    })
  }
  static includeLineSpacingTop() {
    return new FlutterBoxHeightStyle({
      converter: 'f:1:BoxHeightStyle.includeLineSpacingTop'

    })
  }
  static max() {
    return new FlutterBoxHeightStyle({
      converter: 'f:1:BoxHeightStyle.max'

    })
  }
  static strut() {
    return new FlutterBoxHeightStyle({
      converter: 'f:1:BoxHeightStyle.strut'

    })
  }
  static tight() {
    return new FlutterBoxHeightStyle({
      converter: 'f:1:BoxHeightStyle.tight'

    })
  }
}
export class FlutterBoxWidthStyle extends ZacConverter {
  static max() {
    return new FlutterBoxWidthStyle({
      converter: 'f:1:BoxWidthStyle.max'

    })
  }
  static tight() {
    return new FlutterBoxWidthStyle({
      converter: 'f:1:BoxWidthStyle.tight'

    })
  }
}
export abstract class FlutterDartUiShadow extends ZacConverter {

}
export class DartUiShadow extends FlutterDartUiShadow {
  static new(data: {
    color?: FlutterColor,
    offset?: FlutterOffset,
    blurRadius?: ZacValue<DartDouble>
  }) {
    return new DartUiShadow({
      converter: 'f:1:Shadow',
      ...data
    })
  }
}
/// FROM: foundation.dart
export abstract class FlutterKey extends ZacConverter {

}
export abstract class FlutterLocalKey extends FlutterKey {

}
export class FlutterValueKey extends FlutterLocalKey {
  static new(data: { value: string }) {
    return new FlutterValueKey({
      converter: 'f:1:ValueKey',
      ...data
    })
  }
}
export abstract class FlutterGlobalKeyNavigatorState extends FlutterKey {

}
/// FROM: input_decoration.dart
export class FlutterInputDecoration extends ZacConverter {
  static new(data: {
    icon?: FlutterWidget,
    iconColor?: FlutterColor,
    label?: FlutterWidget,
    labelText?: ZacValue<string>,
    labelStyle?: FlutterTextStyle,
    floatingLabelStyle?: FlutterTextStyle,
    helperText?: ZacValue<string>,
    helperStyle?: FlutterTextStyle,
    helperMaxLines?: ZacValue<DartInt>,
    hintText?: ZacValue<string>,
    hintStyle?: FlutterTextStyle,
    hintTextDirection?: FlutterTextDirection,
    hintMaxLines?: ZacValue<DartInt>,
    errorText?: ZacValue<string>,
    errorStyle?: FlutterTextStyle,
    errorMaxLines?: ZacValue<DartInt>,
    isCollapsed?: ZacValue<boolean>,
    isDense?: ZacValue<boolean>,
    contentPadding?: FlutterEdgeInsetsGeometry,
    prefixIcon?: FlutterWidget,
    prefixIconConstraints?: FlutterBoxConstraints,
    prefix?: FlutterWidget,
    prefixText?: ZacValue<string>,
    prefixStyle?: FlutterTextStyle,
    prefixIconColor?: FlutterColor,
    suffixIcon?: FlutterWidget,
    suffix?: FlutterWidget,
    suffixText?: ZacValue<string>,
    suffixStyle?: FlutterTextStyle,
    suffixIconColor?: FlutterColor,
    suffixIconConstraints?: FlutterBoxConstraints,
    counter?: FlutterWidget,
    counterText?: ZacValue<string>,
    counterStyle?: FlutterTextStyle,
    filled?: ZacValue<boolean>,
    fillColor?: FlutterColor,
    focusColor?: FlutterColor,
    hoverColor?: FlutterColor,
    errorBorder?: FlutterInputBorder,
    focusedBorder?: FlutterInputBorder,
    focusedErrorBorder?: FlutterInputBorder,
    disabledBorder?: FlutterInputBorder,
    enabledBorder?: FlutterInputBorder,
    border?: FlutterInputBorder,
    enabled?: ZacValue<boolean>,
    semanticCounterText?: ZacValue<string>,
    alignLabelWithHint?: ZacValue<boolean>,
    constraints?: FlutterBoxConstraints
  }) {
    return new FlutterInputDecoration({
      converter: 'f:1:InputDecoration',
      ...data
    })
  }
}
/// FROM: material.dart
export abstract class FlutterInputBorder extends FlutterShapeBorder {

}
export class FlutterOutlineInputBorder extends FlutterInputBorder {
  static new(data: {
    borderSide?: FlutterBorderSide,
    borderRadius?: FlutterBorderRadius,
    gapPadding?: ZacValue<DartDouble>
  }) {
    return new FlutterOutlineInputBorder({
      converter: 'f:1:OutlineInputBorder',
      ...data
    })
  }
}
export class FlutterUnderlineInputBorder extends FlutterInputBorder {
  static new(data: {
    borderSide?: FlutterBorderSide,
    borderRadius?: FlutterBorderRadius
  }) {
    return new FlutterUnderlineInputBorder({
      converter: 'f:1:OutlineInputBorder',
      ...data
    })
  }
}
export class FlutterMaterialPageRoute extends FlutterRoute {
  static new(data: {
    child: FlutterWidget,
    settings?: FlutterRouteSettings,
    maintainState?: ZacValue<boolean>,
    fullscreenDialog?: ZacValue<boolean>
  }) {
    return new FlutterMaterialPageRoute({
      converter: 'f:1:MaterialPageRoute',
      ...data
    })
  }
}
/// FROM: painting.dart
export class FlutterBoxShape extends ZacConverter {
  static circle() {
    return new FlutterBoxShape({
      converter: 'f:1:BoxShape.circle'

    })
  }
  static rectangle() {
    return new FlutterBoxShape({
      converter: 'f:1:BoxShape.rectangle'

    })
  }
}
export class FlutterAxis extends ZacConverter {
  static horizontal() {
    return new FlutterAxis({
      converter: 'f:1:Axis.horizontal'

    })
  }
  static vertical() {
    return new FlutterAxis({
      converter: 'f:1:Axis.vertical'

    })
  }
}
export class FlutterVerticalDirection extends ZacConverter {
  static up() {
    return new FlutterVerticalDirection({
      converter: 'f:1:VerticalDirection.up'

    })
  }
  static down() {
    return new FlutterVerticalDirection({
      converter: 'f:1:VerticalDirection.down'

    })
  }
}
export class FlutterTextOverflow extends ZacConverter {
  static clip() {
    return new FlutterTextOverflow({
      converter: 'f:1:TextOverflow.clip'

    })
  }
  static ellipsis() {
    return new FlutterTextOverflow({
      converter: 'f:1:TextOverflow.ellipsis'

    })
  }
  static fade() {
    return new FlutterTextOverflow({
      converter: 'f:1:TextOverflow.fade'

    })
  }
  static visible() {
    return new FlutterTextOverflow({
      converter: 'f:1:TextOverflow.visible'

    })
  }
}
export class FlutterStrutStyle extends ZacConverter {
  static new(data: {
    fontFamily?: ZacValue<string>,
    fontFamilyFallback?: Array<string>,
    fontSize?: ZacValue<DartDouble>,
    height?: ZacValue<DartDouble>,
    leadingDistribution?: FlutterTextLeadingDistribution,
    leading?: ZacValue<DartDouble>,
    fontWeight?: FlutterFontWeight,
    fontStyle?: FlutterFontStyle,
    forceStrutHeight?: ZacValue<boolean>,
    debugLabel?: ZacValue<string>,
    package?: ZacValue<string>
  }) {
    return new FlutterStrutStyle({
      converter: 'f:1:StrutStyle',
      ...data
    })
  }
  static fromTextStyle(data: {
    textStyle: FlutterTextStyle,
    fontFamily?: ZacValue<string>,
    fontFamilyFallback?: Array<string>,
    fontSize?: ZacValue<DartDouble>,
    height?: ZacValue<DartDouble>,
    leadingDistribution?: FlutterTextLeadingDistribution,
    leading?: ZacValue<DartDouble>,
    fontWeight?: FlutterFontWeight,
    fontStyle?: FlutterFontStyle,
    forceStrutHeight?: ZacValue<boolean>,
    debugLabel?: ZacValue<string>,
    package?: ZacValue<string>
  }) {
    return new FlutterStrutStyle({
      converter: 'f:1:StrutStyle.fromTextStyle',
      ...data
    })
  }
}
export class FlutterTextWidthBasis extends ZacConverter {
  static longestLine() {
    return new FlutterTextWidthBasis({
      converter: 'f:1:TextWidthBasis.longestLine'

    })
  }
  static parent() {
    return new FlutterTextWidthBasis({
      converter: 'f:1:TextWidthBasis.parent'

    })
  }
}
export class FlutterBoxFit extends ZacConverter {
  static contain() {
    return new FlutterBoxFit({
      converter: 'f:1:BoxFit.contain'

    })
  }
  static cover() {
    return new FlutterBoxFit({
      converter: 'f:1:BoxFit.cover'

    })
  }
  static fill() {
    return new FlutterBoxFit({
      converter: 'f:1:BoxFit.fill'

    })
  }
  static fitHeight() {
    return new FlutterBoxFit({
      converter: 'f:1:BoxFit.fitHeight'

    })
  }
  static fitWidth() {
    return new FlutterBoxFit({
      converter: 'f:1:BoxFit.fitWidth'

    })
  }
  static none() {
    return new FlutterBoxFit({
      converter: 'f:1:BoxFit.none'

    })
  }
  static scaleDown() {
    return new FlutterBoxFit({
      converter: 'f:1:BoxFit.scaleDown'

    })
  }
}
export class FlutterImageRepeat extends ZacConverter {
  static noRepeat() {
    return new FlutterImageRepeat({
      converter: 'f:1:ImageRepeat.noRepeat'

    })
  }
  static repeat() {
    return new FlutterImageRepeat({
      converter: 'f:1:ImageRepeat.repeat'

    })
  }
  static repeatX() {
    return new FlutterImageRepeat({
      converter: 'f:1:ImageRepeat.repeatX'

    })
  }
  static repeatY() {
    return new FlutterImageRepeat({
      converter: 'f:1:ImageRepeat.repeatY'

    })
  }
}
export class FlutterTextStyle extends ZacConverter {
  static new(data: {
    inherit?: ZacValue<boolean>,
    color?: FlutterColor,
    backgroundColor?: FlutterColor,
    fontSize?: ZacValue<DartDouble>,
    fontWeight?: FlutterFontWeight,
    fontStyle?: FlutterFontStyle,
    letterSpacing?: ZacValue<DartDouble>,
    wordSpacing?: ZacValue<DartDouble>,
    textBaseline?: FlutterTextBaseline,
    height?: ZacValue<DartDouble>,
    leadingDistribution?: FlutterTextLeadingDistribution,
    locale?: FlutterLocale,
    shadows?: Array<FlutterDartUiShadow>,
    fontFeatures?: Array<FlutterFontFeature>,
    decoration?: FlutterTextDecoration,
    decorationColor?: FlutterColor,
    decorationStyle?: FlutterTextDecorationStyle,
    decorationThickness?: ZacValue<DartDouble>,
    debugLabel?: ZacValue<string>,
    fontFamily?: ZacValue<string>,
    fontFamilyFallback?: Array<string>,
    package?: ZacValue<string>,
    overflow?: FlutterTextOverflow
  }) {
    return new FlutterTextStyle({
      converter: 'f:1:TextStyle',
      ...data
    })
  }
}
export class FlutterTextAlignVertical extends ZacConverter {
  static new(data: { y: ZacValue<DartDouble> }) {
    return new FlutterTextAlignVertical({
      converter: 'f:1:TextAlignVertical',
      ...data
    })
  }
  static bottom() {
    return new FlutterTextAlignVertical({
      converter: 'f:1:TextAlignVertical.bottom'

    })
  }
  static center() {
    return new FlutterTextAlignVertical({
      converter: 'f:1:TextAlignVertical.center'

    })
  }
  static top() {
    return new FlutterTextAlignVertical({
      converter: 'f:1:TextAlignVertical.top'

    })
  }
}
export class FlutterBoxShadow extends FlutterDartUiShadow {
  static new(data: {
    color?: FlutterColor,
    offset?: FlutterOffset,
    blurRadius?: ZacValue<DartDouble>,
    spreadRadius?: ZacValue<DartDouble>,
    blurStyle?: FlutterBlurStyle
  }) {
    return new FlutterBoxShadow({
      converter: 'f:1:BoxShadow',
      ...data
    })
  }
}
export abstract class FlutterAlignmentGeometry extends ZacConverter {

}
export class FlutterAlignment extends FlutterAlignmentGeometry {
  static new(data: {
    x: ZacValue<DartDouble>,
    y: ZacValue<DartDouble>
  }) {
    return new FlutterAlignment({
      converter: 'f:1:Alignment',
      ...data
    })
  }
  static bottomCenter() {
    return new FlutterAlignment({
      converter: 'f:1:Alignment.bottomCenter'

    })
  }
  static bottomLeft() {
    return new FlutterAlignment({
      converter: 'f:1:Alignment.bottomLeft'

    })
  }
  static bottomRight() {
    return new FlutterAlignment({
      converter: 'f:1:Alignment.bottomRight'

    })
  }
  static center() {
    return new FlutterAlignment({
      converter: 'f:1:Alignment.center'

    })
  }
  static centerLeft() {
    return new FlutterAlignment({
      converter: 'f:1:Alignment.centerLeft'

    })
  }
  static centerRight() {
    return new FlutterAlignment({
      converter: 'f:1:Alignment.centerRight'

    })
  }
  static topCenter() {
    return new FlutterAlignment({
      converter: 'f:1:Alignment.topCenter'

    })
  }
  static topLeft() {
    return new FlutterAlignment({
      converter: 'f:1:Alignment.topLeft'

    })
  }
  static topRight() {
    return new FlutterAlignment({
      converter: 'f:1:Alignment.topRight'

    })
  }
}
export class FlutterAlignmentDirectional extends FlutterAlignmentGeometry {
  static new(data: {
    start: ZacValue<DartDouble>,
    y: ZacValue<DartDouble>
  }) {
    return new FlutterAlignmentDirectional({
      converter: 'f:1:AlignmentDirectional',
      ...data
    })
  }
  static bottomCenter() {
    return new FlutterAlignmentDirectional({
      converter: 'f:1:AlignmentDirectional.bottomCenter'

    })
  }
  static bottomStart() {
    return new FlutterAlignmentDirectional({
      converter: 'f:1:AlignmentDirectional.bottomStart'

    })
  }
  static bottomEnd() {
    return new FlutterAlignmentDirectional({
      converter: 'f:1:AlignmentDirectional.bottomEnd'

    })
  }
  static center() {
    return new FlutterAlignmentDirectional({
      converter: 'f:1:AlignmentDirectional.center'

    })
  }
  static centerStart() {
    return new FlutterAlignmentDirectional({
      converter: 'f:1:AlignmentDirectional.centerStart'

    })
  }
  static centerEnd() {
    return new FlutterAlignmentDirectional({
      converter: 'f:1:AlignmentDirectional.centerEnd'

    })
  }
  static topCenter() {
    return new FlutterAlignmentDirectional({
      converter: 'f:1:AlignmentDirectional.topCenter'

    })
  }
  static topStart() {
    return new FlutterAlignmentDirectional({
      converter: 'f:1:AlignmentDirectional.topStart'

    })
  }
  static topEnd() {
    return new FlutterAlignmentDirectional({
      converter: 'f:1:AlignmentDirectional.topEnd'

    })
  }
}
export class FlutterFractionalOffset extends FlutterAlignmentGeometry {
  static new(data: {
    dx: ZacValue<DartDouble>,
    dy: ZacValue<DartDouble>
  }) {
    return new FlutterFractionalOffset({
      converter: 'f:1:FractionalOffset',
      ...data
    })
  }
}
export abstract class FlutterShapeBorder extends ZacConverter {

}
export abstract class FlutterBoxBorder extends FlutterShapeBorder {

}
export class FlutterBorderDirectional extends FlutterBoxBorder {
  static new(data: {
    top?: FlutterBorderSide,
    start?: FlutterBorderSide,
    bottom?: FlutterBorderSide,
    end?: FlutterBorderSide
  }) {
    return new FlutterBorderDirectional({
      converter: 'f:1:BorderDirectional',
      ...data
    })
  }
}
export class FlutterBorder extends FlutterBoxBorder {
  static new(data: {
    top?: FlutterBorderSide,
    right?: FlutterBorderSide,
    bottom?: FlutterBorderSide,
    left?: FlutterBorderSide
  }) {
    return new FlutterBorder({
      converter: 'f:1:Border',
      ...data
    })
  }
  static all(data: {
    color?: FlutterColor,
    width?: ZacValue<DartDouble>,
    style?: FlutterBorderStyle
  }) {
    return new FlutterBorder({
      converter: 'f:1:Border.all',
      ...data
    })
  }
}
export class FlutterBorderStyle extends ZacConverter {
  static none() {
    return new FlutterBorderStyle({
      converter: 'f:1:BorderStyle.none'

    })
  }
  static solid() {
    return new FlutterBorderStyle({
      converter: 'f:1:BorderStyle.solid'

    })
  }
}
export abstract class FlutterBorderRadiusGeometry extends ZacConverter {

}
export class FlutterBorderRadius extends FlutterBorderRadiusGeometry {
  static all(data: { radius: FlutterRadius }) {
    return new FlutterBorderRadius({
      converter: 'f:1:BorderRadius.all',
      ...data
    })
  }
  static circular(data: { radius: ZacValue<DartDouble> }) {
    return new FlutterBorderRadius({
      converter: 'f:1:BorderRadius.circular',
      ...data
    })
  }
  static horizontal(data: {
    left?: FlutterRadius,
    right?: FlutterRadius
  }) {
    return new FlutterBorderRadius({
      converter: 'f:1:BorderRadius.horizontal',
      ...data
    })
  }
}
export class FlutterBorderSide extends ZacConverter {
  static new(data: {
    color?: FlutterColor,
    width?: ZacValue<DartDouble>,
    style?: FlutterBorderStyle
  }) {
    return new FlutterBorderSide({
      converter: 'f:1:BorderSide',
      ...data
    })
  }
}
export abstract class FlutterOutlinedBorder extends FlutterShapeBorder {

}
export class FlutterCircleBorder extends FlutterOutlinedBorder {
  static new(data: { side?: FlutterBorderSide }) {
    return new FlutterCircleBorder({
      converter: 'f:1:CircleBorder',
      ...data
    })
  }
}
export class FlutterRoundedRectangleBorder extends FlutterOutlinedBorder {
  static new(data: {
    side?: FlutterBorderSide,
    borderRadius?: FlutterBorderRadiusGeometry
  }) {
    return new FlutterRoundedRectangleBorder({
      converter: 'f:1:RoundedRectangleBorder',
      ...data
    })
  }
}
export abstract class FlutterDecoration extends ZacConverter {

}
export class FlutterBoxDecoration extends FlutterDecoration {
  static new(data: {
    color?: FlutterColor,
    border?: FlutterBoxBorder,
    borderRadius?: FlutterBorderRadiusGeometry,
    boxShadow?: Array<FlutterBoxShadow>,
    shape?: FlutterBoxShape,
    backgroundBlendMode?: FlutterBlendMode
  }) {
    return new FlutterBoxDecoration({
      converter: 'f:1:BoxDecoration',
      ...data
    })
  }
}
export class FlutterShapeDecoration extends FlutterDecoration {
  static new(data: {
    color?: FlutterColor,
    shadows?: Array<FlutterBoxShadow>,
    shape: FlutterShapeBorder
  }) {
    return new FlutterShapeDecoration({
      converter: 'f:1:ShapeDecoration',
      ...data
    })
  }
}
export abstract class FlutterEdgeInsetsGeometry extends ZacConverter {

}
export class FlutterEdgeInsets extends FlutterEdgeInsetsGeometry {
  static all(data: { value: ZacValue<DartDouble> }) {
    return new FlutterEdgeInsets({
      converter: 'f:1:EdgeInsets.all',
      ...data
    })
  }
  static symmetric(data: {
    vertical?: ZacValue<DartDouble>,
    horizontal?: ZacValue<DartDouble>
  }) {
    return new FlutterEdgeInsets({
      converter: 'f:1:EdgeInsets.symmetric',
      ...data
    })
  }
  static only(data: {
    left?: ZacValue<DartDouble>,
    top?: ZacValue<DartDouble>,
    right?: ZacValue<DartDouble>,
    bottom?: ZacValue<DartDouble>
  }) {
    return new FlutterEdgeInsets({
      converter: 'f:1:EdgeInsets.only',
      ...data
    })
  }
}
export class FlutterEdgeInsetsDirectional extends FlutterEdgeInsetsGeometry {
  static all(data: { value: ZacValue<DartDouble> }) {
    return new FlutterEdgeInsetsDirectional({
      converter: 'f:1:EdgeInsetsDirectional.all',
      ...data
    })
  }
  static only(data: {
    start?: ZacValue<DartDouble>,
    top?: ZacValue<DartDouble>,
    end?: ZacValue<DartDouble>,
    bottom?: ZacValue<DartDouble>
  }) {
    return new FlutterEdgeInsetsDirectional({
      converter: 'f:1:EdgeInsetsDirectional.only',
      ...data
    })
  }
}
/// FROM: rendering.dart
export class FlutterHitTestBehavior extends ZacConverter {
  static deferToChild() {
    return new FlutterHitTestBehavior({
      converter: 'f:1:HitTestBehavior.deferToChild'

    })
  }
  static opaque() {
    return new FlutterHitTestBehavior({
      converter: 'f:1:HitTestBehavior.opaque'

    })
  }
  static translucent() {
    return new FlutterHitTestBehavior({
      converter: 'f:1:HitTestBehavior.translucent'

    })
  }
}
export class FlutterCrossAxisAlignment extends ZacConverter {
  static baseline() {
    return new FlutterCrossAxisAlignment({
      converter: 'f:1:CrossAxisAlignment.baseline'

    })
  }
  static center() {
    return new FlutterCrossAxisAlignment({
      converter: 'f:1:CrossAxisAlignment.center'

    })
  }
  static end() {
    return new FlutterCrossAxisAlignment({
      converter: 'f:1:CrossAxisAlignment.end'

    })
  }
  static start() {
    return new FlutterCrossAxisAlignment({
      converter: 'f:1:CrossAxisAlignment.start'

    })
  }
  static stretch() {
    return new FlutterCrossAxisAlignment({
      converter: 'f:1:CrossAxisAlignment.stretch'

    })
  }
}
export class FlutterMainAxisAlignment extends ZacConverter {
  static start() {
    return new FlutterMainAxisAlignment({
      converter: 'f:1:MainAxisAlignment.start'

    })
  }
  static end() {
    return new FlutterMainAxisAlignment({
      converter: 'f:1:MainAxisAlignment.end'

    })
  }
  static center() {
    return new FlutterMainAxisAlignment({
      converter: 'f:1:MainAxisAlignment.center'

    })
  }
  static spaceBetween() {
    return new FlutterMainAxisAlignment({
      converter: 'f:1:MainAxisAlignment.spaceBetween'

    })
  }
  static spaceAround() {
    return new FlutterMainAxisAlignment({
      converter: 'f:1:MainAxisAlignment.spaceAround'

    })
  }
  static spaceEvenly() {
    return new FlutterMainAxisAlignment({
      converter: 'f:1:MainAxisAlignment.spaceEvenly'

    })
  }
}
export class FlutterMainAxisSize extends ZacConverter {
  static min() {
    return new FlutterMainAxisSize({
      converter: 'f:1:MainAxisSize.min'

    })
  }
  static max() {
    return new FlutterMainAxisSize({
      converter: 'f:1:MainAxisSize.max'

    })
  }
}
export class FlutterFlexFit extends ZacConverter {
  static tight() {
    return new FlutterFlexFit({
      converter: 'f:1:FlexFit.tight'

    })
  }
  static loose() {
    return new FlutterFlexFit({
      converter: 'f:1:FlexFit.loose'

    })
  }
}
export class FlutterWrapAlignment extends ZacConverter {
  static start() {
    return new FlutterWrapAlignment({
      converter: 'f:1:WrapAlignment.start'

    })
  }
  static end() {
    return new FlutterWrapAlignment({
      converter: 'f:1:WrapAlignment.end'

    })
  }
  static center() {
    return new FlutterWrapAlignment({
      converter: 'f:1:WrapAlignment.center'

    })
  }
  static spaceBetween() {
    return new FlutterWrapAlignment({
      converter: 'f:1:WrapAlignment.spaceBetween'

    })
  }
  static spaceAround() {
    return new FlutterWrapAlignment({
      converter: 'f:1:WrapAlignment.spaceAround'

    })
  }
  static spaceEvenly() {
    return new FlutterWrapAlignment({
      converter: 'f:1:WrapAlignment.spaceEvenly'

    })
  }
}
export class FlutterWrapCrossAlignment extends ZacConverter {
  static center() {
    return new FlutterWrapCrossAlignment({
      converter: 'f:1:WrapCrossAlignment.center'

    })
  }
  static end() {
    return new FlutterWrapCrossAlignment({
      converter: 'f:1:WrapCrossAlignment.end'

    })
  }
  static start() {
    return new FlutterWrapCrossAlignment({
      converter: 'f:1:WrapCrossAlignment.start'

    })
  }
}
export class FlutterStackFit extends ZacConverter {
  static expand() {
    return new FlutterStackFit({
      converter: 'f:1:StackFit.expand'

    })
  }
  static loose() {
    return new FlutterStackFit({
      converter: 'f:1:StackFit.loose'

    })
  }
  static passthrough() {
    return new FlutterStackFit({
      converter: 'f:1:StackFit.passthrough'

    })
  }
}
export class FlutterBoxConstraints extends ZacConverter {
  static new(data: {
    minWidth?: ZacValue<DartDouble>,
    maxWidth?: ZacValue<DartDouble>,
    minHeight?: ZacValue<DartDouble>,
    maxHeight?: ZacValue<DartDouble>
  }) {
    return new FlutterBoxConstraints({
      converter: 'f:1:BoxConstraints',
      ...data
    })
  }
  static expand(data: {
    width?: ZacValue<DartDouble>,
    height?: ZacValue<DartDouble>
  }) {
    return new FlutterBoxConstraints({
      converter: 'f:1:BoxConstraints.expand',
      ...data
    })
  }
  static loose(data: { size: FlutterSize }) {
    return new FlutterBoxConstraints({
      converter: 'f:1:BoxConstraints.loose',
      ...data
    })
  }
  static tight(data: { size: FlutterSize }) {
    return new FlutterBoxConstraints({
      converter: 'f:1:BoxConstraints.tight',
      ...data
    })
  }
  static tightFor(data: {
    width?: ZacValue<DartDouble>,
    height?: ZacValue<DartDouble>
  }) {
    return new FlutterBoxConstraints({
      converter: 'f:1:BoxConstraints.tightFor',
      ...data
    })
  }
  static tightForFinite(data: {
    width?: ZacValue<DartDouble>,
    height?: ZacValue<DartDouble>
  }) {
    return new FlutterBoxConstraints({
      converter: 'f:1:BoxConstraints.tightForFinite',
      ...data
    })
  }
}
export class FlutterSliverGridDelegate extends ZacConverter {
  static fixedCrossAxisCount(data: {
    crossAxisCount: DartInt,
    mainAxisSpacing?: ZacValue<DartDouble>,
    crossAxisSpacing?: ZacValue<DartDouble>,
    childAspectRatio?: ZacValue<DartDouble>,
    mainAxisExtent?: ZacValue<DartDouble>
  }) {
    return new FlutterSliverGridDelegate({
      converter: 'f:1:SliverGridDelegateWithFixedCrossAxisCount',
      ...data
    })
  }
  static maxCrossAxisExtent(data: {
    maxCrossAxisExtent: ZacValue<DartDouble>,
    mainAxisSpacing?: ZacValue<DartDouble>,
    crossAxisSpacing?: ZacValue<DartDouble>,
    childAspectRatio?: ZacValue<DartDouble>,
    mainAxisExtent?: ZacValue<DartDouble>
  }) {
    return new FlutterSliverGridDelegate({
      converter: 'f:1:SliverGridDelegateWithMaxCrossAxisExtent',
      ...data
    })
  }
}
export class FlutterDecorationPosition extends ZacConverter {
  static background() {
    return new FlutterDecorationPosition({
      converter: 'f:1:DecorationPosition.background'

    })
  }
  static foreground() {
    return new FlutterDecorationPosition({
      converter: 'f:1:DecorationPosition.foreground'

    })
  }
}
/// FROM: services.dart
export class FlutterSystemUiOverlayStyle extends ZacConverter {
  static new(data: {
    systemNavigationBarColor?: FlutterColor,
    systemNavigationBarDividerColor?: FlutterColor,
    systemNavigationBarIconBrightness?: FlutterBrightness,
    systemNavigationBarContrastEnforced?: ZacValue<boolean>,
    statusBarColor?: FlutterColor,
    statusBarBrightness?: FlutterBrightness,
    statusBarIconBrightness?: FlutterBrightness,
    systemStatusBarContrastEnforced?: ZacValue<boolean>
  }) {
    return new FlutterSystemUiOverlayStyle({
      converter: 'f:1:SystemUiOverlayStyle',
      ...data
    })
  }
}
export class FlutterTextInputType extends ZacConverter {
  static datetime() {
    return new FlutterTextInputType({
      converter: 'f:1:TextInputType.datetime'

    })
  }
  static emailAddress() {
    return new FlutterTextInputType({
      converter: 'f:1:TextInputType.emailAddress'

    })
  }
  static multiline() {
    return new FlutterTextInputType({
      converter: 'f:1:TextInputType.multiline'

    })
  }
  static name() {
    return new FlutterTextInputType({
      converter: 'f:1:TextInputType.name'

    })
  }
  static none() {
    return new FlutterTextInputType({
      converter: 'f:1:TextInputType.none'

    })
  }
  static number() {
    return new FlutterTextInputType({
      converter: 'f:1:TextInputType.number'

    })
  }
  static phone() {
    return new FlutterTextInputType({
      converter: 'f:1:TextInputType.phone'

    })
  }
  static streetAddress() {
    return new FlutterTextInputType({
      converter: 'f:1:TextInputType.streetAddress'

    })
  }
  static text() {
    return new FlutterTextInputType({
      converter: 'f:1:TextInputType.text'

    })
  }
  static url() {
    return new FlutterTextInputType({
      converter: 'f:1:TextInputType.url'

    })
  }
  static visiblePassword() {
    return new FlutterTextInputType({
      converter: 'f:1:TextInputType.visiblePassword'

    })
  }
}
export class FlutterTextInputAction extends ZacConverter {
  static continueAction() {
    return new FlutterTextInputAction({
      converter: 'f:1:TextInputAction.continueAction'

    })
  }
  static done() {
    return new FlutterTextInputAction({
      converter: 'f:1:TextInputAction.done'

    })
  }
  static emergencyCall() {
    return new FlutterTextInputAction({
      converter: 'f:1:TextInputAction.emergencyCall'

    })
  }
  static go() {
    return new FlutterTextInputAction({
      converter: 'f:1:TextInputAction.go'

    })
  }
  static join() {
    return new FlutterTextInputAction({
      converter: 'f:1:TextInputAction.join'

    })
  }
  static newline() {
    return new FlutterTextInputAction({
      converter: 'f:1:TextInputAction.newline'

    })
  }
  static next() {
    return new FlutterTextInputAction({
      converter: 'f:1:TextInputAction.next'

    })
  }
  static none() {
    return new FlutterTextInputAction({
      converter: 'f:1:TextInputAction.none'

    })
  }
  static previous() {
    return new FlutterTextInputAction({
      converter: 'f:1:TextInputAction.previous'

    })
  }
  static route() {
    return new FlutterTextInputAction({
      converter: 'f:1:TextInputAction.route'

    })
  }
  static search() {
    return new FlutterTextInputAction({
      converter: 'f:1:TextInputAction.search'

    })
  }
  static send() {
    return new FlutterTextInputAction({
      converter: 'f:1:TextInputAction.send'

    })
  }
  static unspecified() {
    return new FlutterTextInputAction({
      converter: 'f:1:TextInputAction.unspecified'

    })
  }
}
export class FlutterTextCapitalization extends ZacConverter {
  static characters() {
    return new FlutterTextCapitalization({
      converter: 'f:1:TextCapitalization.characters'

    })
  }
  static none() {
    return new FlutterTextCapitalization({
      converter: 'f:1:TextCapitalization.none'

    })
  }
  static sentences() {
    return new FlutterTextCapitalization({
      converter: 'f:1:TextCapitalization.sentences'

    })
  }
  static words() {
    return new FlutterTextCapitalization({
      converter: 'f:1:TextCapitalization.words'

    })
  }
}
export class FlutterSmartDashesType extends ZacConverter {
  static disabled() {
    return new FlutterSmartDashesType({
      converter: 'f:1:SmartDashesType.disabled'

    })
  }
  static enabled() {
    return new FlutterSmartDashesType({
      converter: 'f:1:SmartDashesType.enabled'

    })
  }
}
export class FlutterSmartQuotesType extends ZacConverter {
  static disabled() {
    return new FlutterSmartQuotesType({
      converter: 'f:1:SmartQuotesType.disabled'

    })
  }
  static enabled() {
    return new FlutterSmartQuotesType({
      converter: 'f:1:SmartQuotesType.enabled'

    })
  }
}
/// FROM: builder.dart
export class FlutterBuilder extends FlutterWidget {
  static new(data: {
    key?: FlutterKey,
    child: FlutterWidget
  }) {
    return new FlutterBuilder({
      converter: 'f:1:Builder',
      ...data
    })
  }
}
/// FROM: clip_oval.dart
export class FlutterClipOval extends FlutterWidget {
  static new(data: {
    key?: FlutterKey,
    child?: FlutterWidget,
    clipBehavior?: FlutterClip
  }) {
    return new FlutterClipOval({
      converter: 'f:1:ClipOval',
      ...data
    })
  }
}
/// FROM: clip_rect.dart
export class FlutterClipRect extends FlutterWidget {
  static new(data: {
    key?: FlutterKey,
    child?: FlutterWidget,
    clipBehavior?: FlutterClip
  }) {
    return new FlutterClipRect({
      converter: 'f:1:ClipRect',
      ...data
    })
  }
}
/// FROM: decorated_box.dart
export class FlutterDecoratedBox extends FlutterWidget {
  static new(data: {
    key?: FlutterKey,
    child?: FlutterWidget,
    decoration: FlutterDecoration,
    position?: FlutterDecorationPosition
  }) {
    return new FlutterDecoratedBox({
      converter: 'f:1:DecoratedBox',
      ...data
    })
  }
}
/// FROM: fractional_translation.dart
export class FlutterFractionalTranslation extends FlutterWidget {
  static new(data: {
    key?: FlutterKey,
    child?: FlutterWidget,
    translation: FlutterOffset,
    transformHitTests?: ZacValue<boolean>
  }) {
    return new FlutterFractionalTranslation({
      converter: 'f:1:FractionalTranslation',
      ...data
    })
  }
}
/// FROM: gesture_detector.dart
export class FlutterGestureDetector extends FlutterWidget {
  static new(data: {
    key?: FlutterKey,
    child?: FlutterWidget,
    onTap?: ZacActions,
    onSecondaryTap?: ZacActions,
    onDoubleTap?: ZacActions,
    onLongPress?: ZacActions,
    onSecondaryLongPress?: ZacActions,
    onTertiaryLongPress?: ZacActions,
    behavior?: FlutterHitTestBehavior,
    excludeFromSemantics?: ZacValue<boolean>
  }) {
    return new FlutterGestureDetector({
      converter: 'f:1:GestureDetector',
      ...data
    })
  }
}
/// FROM: icon.dart
export class FlutterIcon extends FlutterWidget {
  static new(data: {
    icon: FlutterIconData,
    key?: FlutterKey,
    size?: ZacValue<DartDouble>,
    color?: FlutterColor,
    semanticLabel?: ZacValue<string>,
    textDirection?: FlutterTextDirection
  }) {
    return new FlutterIcon({
      converter: 'f:1:Icon',
      ...data
    })
  }
}
export class FlutterIconData extends ZacConverter {
  static new(data: {
    codePoint: ZacValue<DartInt>,
    fontFamily?: ZacValue<string>,
    fontPackage?: ZacValue<string>,
    matchTextDirection?: ZacValue<boolean>
  }) {
    return new FlutterIconData({
      converter: 'f:1:IconData',
      ...data
    })
  }
}
export class FlutterIconThemeData extends ZacConverter {
  static new(data: {
    color?: FlutterColor,
    opacity?: ZacValue<DartDouble>,
    size?: ZacValue<DartDouble>
  }) {
    return new FlutterIconThemeData({
      converter: 'f:1:IconThemeData',
      ...data
    })
  }
}
/// FROM: ignore_pointer.dart
export class FlutterIgnorePointer extends FlutterWidget {
  static new(data: {
    key?: FlutterKey,
    ignoring?: ZacValue<boolean>,
    ignoringSemantics?: ZacValue<boolean>,
    child?: FlutterWidget
  }) {
    return new FlutterIgnorePointer({
      converter: 'f:1:IgnorePointer',
      ...data
    })
  }
}
/// FROM: image.dart
export class FlutterImage extends FlutterWidget {
  static network(data: {
    src: ZacValue<string>,
    key?: FlutterKey,
    scale?: ZacValue<DartDouble>,
    semanticLabel?: ZacValue<string>,
    excludeFromSemantics?: ZacValue<boolean>,
    width?: ZacValue<DartDouble>,
    height?: ZacValue<DartDouble>,
    color?: FlutterColor,
    colorBlendMode?: FlutterBlendMode,
    fit?: FlutterBoxFit,
    alignment?: FlutterAlignmentGeometry,
    repeat?: FlutterImageRepeat,
    centerSlice?: FlutterRect,
    matchTextDirection?: ZacValue<boolean>,
    gaplessPlayback?: ZacValue<boolean>,
    filterQuality?: FlutterFilterQuality,
    isAntiAlias?: ZacValue<boolean>,
    headers?: { [key: string]: string },
    cacheWidth?: ZacValue<DartInt>,
    cacheHeight?: ZacValue<DartInt>
  }) {
    return new FlutterImage({
      converter: 'f:1:Image.network',
      ...data
    })
  }
  static asset(data: {
    name: ZacValue<string>,
    key?: FlutterKey,
    semanticLabel?: ZacValue<string>,
    excludeFromSemantics?: ZacValue<boolean>,
    scale?: ZacValue<DartDouble>,
    width?: ZacValue<DartDouble>,
    height?: ZacValue<DartDouble>,
    color?: FlutterColor,
    colorBlendMode?: FlutterBlendMode,
    fit?: FlutterBoxFit,
    alignment?: FlutterAlignmentGeometry,
    repeat?: FlutterImageRepeat,
    centerSlice?: FlutterRect,
    matchTextDirection?: ZacValue<boolean>,
    gaplessPlayback?: ZacValue<boolean>,
    isAntiAlias?: ZacValue<boolean>,
    package?: ZacValue<string>,
    filterQuality?: FlutterFilterQuality,
    cacheWidth?: ZacValue<DartInt>,
    cacheHeight?: ZacValue<DartInt>
  }) {
    return new FlutterImage({
      converter: 'f:1:Image.asset',
      ...data
    })
  }
}
/// FROM: interactive_viewer.dart
export class FlutterInteractiveViewer extends FlutterWidget {
  static new(data: {
    key?: FlutterKey,
    child: FlutterWidget,
    clipBehavior?: FlutterClip,
    alignPanAxis?: ZacValue<boolean>,
    boundaryMargin?: FlutterEdgeInsets,
    constrained?: ZacValue<boolean>,
    maxScale?: ZacValue<DartDouble>,
    minScale?: ZacValue<DartDouble>,
    onInteractionEnd?: ZacActions,
    onInteractionStart?: ZacActions,
    onInteractionUpdate?: ZacActions,
    panEnabled?: ZacValue<boolean>,
    scaleEnabled?: ZacValue<boolean>
  }) {
    return new FlutterInteractiveViewer({
      converter: 'f:1:InteractiveViewer',
      ...data
    })
  }
}
/// FROM: keyboard.dart
export class FlutterScrollViewKeyboardDismissBehavior extends ZacConverter {
  static manual() {
    return new FlutterScrollViewKeyboardDismissBehavior({
      converter: 'f:1:ScrollViewKeyboardDismissBehavior.manual'

    })
  }
  static onDrag() {
    return new FlutterScrollViewKeyboardDismissBehavior({
      converter: 'f:1:ScrollViewKeyboardDismissBehavior.onDrag'

    })
  }
}
/// FROM: align.dart
export class FlutterAlign extends FlutterWidget {
  static new(data: {
    key?: FlutterKey,
    alignment?: FlutterAlignmentGeometry,
    widthFactor?: ZacValue<DartDouble>,
    heightFactor?: ZacValue<DartDouble>,
    child?: FlutterWidget
  }) {
    return new FlutterAlign({
      converter: 'f:1:Align',
      ...data
    })
  }
}
/// FROM: aspect_ratio.dart
export class FlutterAspectRatio extends FlutterWidget {
  static new(data: {
    key?: FlutterKey,
    aspectRatio: ZacValue<DartDouble>,
    child?: FlutterWidget
  }) {
    return new FlutterAspectRatio({
      converter: 'f:1:AspectRatio',
      ...data
    })
  }
}
/// FROM: center.dart
export class FlutterCenter extends FlutterWidget {
  static new(data: {
    key?: FlutterKey,
    widthFactor?: ZacValue<DartDouble>,
    heightFactor?: ZacValue<DartDouble>,
    child?: FlutterWidget
  }) {
    return new FlutterCenter({
      converter: 'f:1:Center',
      ...data
    })
  }
}
/// FROM: constrained_box.dart
export class FlutterConstrainedBox extends FlutterWidget {
  static new(data: {
    key?: FlutterKey,
    constraints: FlutterBoxConstraints,
    child?: FlutterWidget
  }) {
    return new FlutterConstrainedBox({
      converter: 'f:1:ConstrainedBox',
      ...data
    })
  }
}
/// FROM: container.dart
export class FlutterContainer extends FlutterWidget {
  static new(data: {
    key?: FlutterKey,
    child?: FlutterWidget,
    color?: FlutterColor,
    margin?: FlutterEdgeInsetsGeometry,
    padding?: FlutterEdgeInsetsGeometry,
    alignment?: FlutterAlignmentGeometry,
    decoration?: FlutterDecoration
  }) {
    return new FlutterContainer({
      converter: 'f:1:Container',
      ...data
    })
  }
}
/// FROM: expanded.dart
export class FlutterExpanded extends FlutterWidget {
  static new(data: {
    key?: FlutterKey,
    flex?: ZacValue<DartInt>,
    child: FlutterWidget
  }) {
    return new FlutterExpanded({
      converter: 'f:1:Expanded',
      ...data
    })
  }
}
/// FROM: fitted_box.dart
export class FlutterFittedBox extends FlutterWidget {
  static new(data: {
    key?: FlutterKey,
    fit?: FlutterBoxFit,
    alignment?: FlutterAlignmentGeometry,
    clipBehavior?: FlutterClip,
    child?: FlutterWidget
  }) {
    return new FlutterFittedBox({
      converter: 'f:1:FittedBox',
      ...data
    })
  }
}
/// FROM: flexible.dart
export class FlutterFlexible extends FlutterWidget {
  static new(data: {
    key?: FlutterKey,
    flex?: ZacValue<DartInt>,
    fit?: FlutterFlexFit,
    child: FlutterWidget
  }) {
    return new FlutterFlexible({
      converter: 'f:1:Flexible',
      ...data
    })
  }
}
/// FROM: fractionally_sized_box.dart
export class FlutterFractionallySizedBox extends FlutterWidget {
  static new(data: {
    key?: FlutterKey,
    child?: FlutterWidget,
    alignment?: FlutterAlignmentGeometry,
    widthFactor?: ZacValue<DartDouble>,
    heightFactor?: ZacValue<DartDouble>
  }) {
    return new FlutterFractionallySizedBox({
      converter: 'f:1:FractionallySizedBox',
      ...data
    })
  }
}
/// FROM: intrinsic_height.dart
export class FlutterIntrinsicHeight extends FlutterWidget {
  static new(data: {
    key?: FlutterKey,
    child?: FlutterWidget
  }) {
    return new FlutterIntrinsicHeight({
      converter: 'f:1:IntrinsicHeight',
      ...data
    })
  }
}
/// FROM: intrinsic_width.dart
export class FlutterIntrinsicWidth extends FlutterWidget {
  static new(data: {
    key?: FlutterKey,
    child?: FlutterWidget
  }) {
    return new FlutterIntrinsicWidth({
      converter: 'f:1:IntrinsicWidth',
      ...data
    })
  }
}
/// FROM: limited_box.dart
export class FlutterLimitedBox extends FlutterWidget {
  static new(data: {
    key?: FlutterKey,
    maxWidth?: ZacValue<DartDouble>,
    maxHeight?: ZacValue<DartDouble>,
    child?: FlutterWidget
  }) {
    return new FlutterLimitedBox({
      converter: 'f:1:LimitedBox',
      ...data
    })
  }
}
/// FROM: offstage.dart
export class FlutterOffstage extends FlutterWidget {
  static new(data: {
    key?: FlutterKey,
    offstage?: ZacValue<boolean>,
    child?: FlutterWidget
  }) {
    return new FlutterOffstage({
      converter: 'f:1:Offstage',
      ...data
    })
  }
}
/// FROM: overflow_box.dart
export class FlutterOverflowBox extends FlutterWidget {
  static new(data: {
    key?: FlutterKey,
    alignment?: FlutterAlignmentGeometry,
    minWidth?: ZacValue<DartDouble>,
    maxWidth?: ZacValue<DartDouble>,
    minHeight?: ZacValue<DartDouble>,
    maxHeight?: ZacValue<DartDouble>,
    child?: FlutterWidget
  }) {
    return new FlutterOverflowBox({
      converter: 'f:1:OverflowBox',
      ...data
    })
  }
}
/// FROM: padding.dart
export class FlutterPadding extends FlutterWidget {
  static new(data: {
    key?: FlutterKey,
    padding: FlutterEdgeInsetsGeometry,
    child?: FlutterWidget
  }) {
    return new FlutterPadding({
      converter: 'f:1:Padding',
      ...data
    })
  }
}
/// FROM: positioned.dart
export class FlutterPositioned extends FlutterWidget {
  static new(data: {
    key?: FlutterKey,
    left?: ZacValue<DartDouble>,
    top?: ZacValue<DartDouble>,
    right?: ZacValue<DartDouble>,
    bottom?: ZacValue<DartDouble>,
    width?: ZacValue<DartDouble>,
    height?: ZacValue<DartDouble>,
    child: FlutterWidget
  }) {
    return new FlutterPositioned({
      converter: 'f:1:Positioned',
      ...data
    })
  }
  static directional(data: {
    key?: FlutterKey,
    textDirection: FlutterTextDirection,
    start?: ZacValue<DartDouble>,
    top?: ZacValue<DartDouble>,
    end?: ZacValue<DartDouble>,
    bottom?: ZacValue<DartDouble>,
    width?: ZacValue<DartDouble>,
    height?: ZacValue<DartDouble>,
    child: FlutterWidget
  }) {
    return new FlutterPositioned({
      converter: 'f:1:Positioned.directional',
      ...data
    })
  }
  static fill(data: {
    key?: FlutterKey,
    left?: ZacValue<DartDouble>,
    top?: ZacValue<DartDouble>,
    right?: ZacValue<DartDouble>,
    bottom?: ZacValue<DartDouble>,
    child: FlutterWidget
  }) {
    return new FlutterPositioned({
      converter: 'f:1:Positioned.fill',
      ...data
    })
  }
}
/// FROM: safe_area.dart
export class FlutterSafeArea extends FlutterWidget {
  static new(data: {
    key?: FlutterKey,
    left?: ZacValue<boolean>,
    top?: ZacValue<boolean>,
    right?: ZacValue<boolean>,
    bottom?: ZacValue<boolean>,
    minimum?: FlutterEdgeInsets,
    maintainBottomViewPadding?: ZacValue<boolean>,
    child: FlutterWidget
  }) {
    return new FlutterSafeArea({
      converter: 'f:1:SafeArea',
      ...data
    })
  }
}
/// FROM: single_child_scroll_view.dart
export class FlutterSingleChildScrollView extends FlutterWidget {
  static new(data: {
    key?: FlutterKey,
    scrollDirection?: FlutterAxis,
    reverse?: ZacValue<boolean>,
    padding?: FlutterEdgeInsetsGeometry,
    primary?: ZacValue<boolean>,
    child?: FlutterWidget,
    clipBehavior?: FlutterClip,
    restorationId?: ZacValue<string>,
    keyboardDismissBehavior?: FlutterScrollViewKeyboardDismissBehavior
  }) {
    return new FlutterSingleChildScrollView({
      converter: 'f:1:SingleChildScrollView',
      ...data
    })
  }
}
/// FROM: sized_box.dart
export class FlutterSizedBox extends FlutterWidget {
  static new(data: {
    key?: FlutterKey,
    width?: ZacValue<DartDouble>,
    height?: ZacValue<DartDouble>,
    child?: FlutterWidget
  }) {
    return new FlutterSizedBox({
      converter: 'f:1:SizedBox',
      ...data
    })
  }
  static expand(data: {
    key?: FlutterKey,
    child?: FlutterWidget
  }) {
    return new FlutterSizedBox({
      converter: 'f:1:SizedBox.expand',
      ...data
    })
  }
  static fromSize(data: {
    key?: FlutterKey,
    child?: FlutterWidget,
    size?: FlutterSize
  }) {
    return new FlutterSizedBox({
      converter: 'f:1:SizedBox.fromSize',
      ...data
    })
  }
  static shrink(data: {
    key?: FlutterKey,
    child?: FlutterWidget
  }) {
    return new FlutterSizedBox({
      converter: 'f:1:SizedBox.shrink',
      ...data
    })
  }
  static square(data: {
    key?: FlutterKey,
    child?: FlutterWidget,
    dimension?: ZacValue<DartDouble>
  }) {
    return new FlutterSizedBox({
      converter: 'f:1:SizedBox.square',
      ...data
    })
  }
}
/// FROM: sized_overflow_box.dart
export class FlutterSizedOverflowBox extends FlutterWidget {
  static new(data: {
    key?: FlutterKey,
    size: FlutterSize,
    alignment?: FlutterAlignmentGeometry,
    child?: FlutterWidget
  }) {
    return new FlutterSizedOverflowBox({
      converter: 'f:1:SizedOverflowBox',
      ...data
    })
  }
}
/// FROM: spacer.dart
export class FlutterSpacer extends FlutterWidget {
  static new(data: {
    key?: FlutterKey,
    flex?: ZacValue<DartInt>
  }) {
    return new FlutterSpacer({
      converter: 'f:1:Spacer',
      ...data
    })
  }
}
/// FROM: unconstrained_box.dart
export class FlutterUnconstrainedBox extends FlutterWidget {
  static new(data: {
    key?: FlutterKey,
    child?: FlutterWidget,
    textDirection?: FlutterTextDirection,
    alignment?: FlutterAlignmentGeometry,
    constrainedAxis?: FlutterAxis,
    clipBehavior?: FlutterClip
  }) {
    return new FlutterUnconstrainedBox({
      converter: 'f:1:UnconstrainedBox',
      ...data
    })
  }
}
/// FROM: column.dart
export class FlutterColumn extends FlutterWidget {
  static new(data: {
    key?: FlutterKey,
    mainAxisAlignment?: FlutterMainAxisAlignment,
    mainAxisSize?: FlutterMainAxisSize,
    crossAxisAlignment?: FlutterCrossAxisAlignment,
    textDirection?: FlutterTextDirection,
    verticalDirection?: FlutterVerticalDirection,
    textBaseline?: FlutterTextBaseline,
    children?: ZacValueList<FlutterWidget>
  }) {
    return new FlutterColumn({
      converter: 'f:1:Column',
      ...data
    })
  }
}
/// FROM: grid_view.dart
export class FlutterGridView extends FlutterWidget {
  static new(data: {
    key?: FlutterKey,
    scrollDirection?: FlutterAxis,
    reverse?: ZacValue<boolean>,
    primary?: ZacValue<boolean>,
    shrinkWrap?: ZacValue<boolean>,
    padding?: FlutterEdgeInsetsGeometry,
    gridDelegate: FlutterSliverGridDelegate,
    addAutomaticKeepAlives?: ZacValue<boolean>,
    addRepaintBoundaries?: ZacValue<boolean>,
    addSemanticIndexes?: ZacValue<boolean>,
    cacheExtent?: ZacValue<DartDouble>,
    children?: ZacValueList<FlutterWidget>,
    semanticChildCount?: ZacValue<DartInt>,
    clipBehavior?: FlutterClip,
    keyboardDismissBehavior?: FlutterScrollViewKeyboardDismissBehavior,
    restorationId?: ZacValue<string>
  }) {
    return new FlutterGridView({
      converter: 'f:1:GridView',
      ...data
    })
  }
}
/// FROM: indexed_stack.dart
export class FlutterIndexedStack extends FlutterWidget {
  static new(data: {
    key?: FlutterKey,
    alignment?: FlutterAlignmentGeometry,
    textDirection?: FlutterTextDirection,
    sizing?: FlutterStackFit,
    index?: ZacValue<DartInt>,
    children?: ZacValueList<FlutterWidget>
  }) {
    return new FlutterIndexedStack({
      converter: 'f:1:IndexedStack',
      ...data
    })
  }
}
/// FROM: list_view.dart
export class FlutterListView extends FlutterWidget {
  static new(data: {
    key?: FlutterKey,
    scrollDirection?: FlutterAxis,
    reverse?: ZacValue<boolean>,
    primary?: ZacValue<boolean>,
    physics?: FlutterScrollPhysics,
    shrinkWrap?: ZacValue<boolean>,
    padding?: FlutterEdgeInsetsGeometry,
    itemExtent?: ZacValue<DartDouble>,
    prototypeItem?: FlutterWidget,
    addAutomaticKeepAlives?: ZacValue<boolean>,
    addRepaintBoundaries?: ZacValue<boolean>,
    addSemanticIndexes?: ZacValue<boolean>,
    cacheExtent?: ZacValue<DartDouble>,
    children?: ZacValueList<FlutterWidget>,
    semanticChildCount?: ZacValue<DartInt>,
    keyboardDismissBehavior?: FlutterScrollViewKeyboardDismissBehavior,
    restorationId?: ZacValue<string>,
    clipBehavior?: FlutterClip
  }) {
    return new FlutterListView({
      converter: 'f:1:ListView',
      ...data
    })
  }
}
/// FROM: row.dart
export class FlutterRow extends FlutterWidget {
  static new(data: {
    key?: FlutterKey,
    mainAxisAlignment?: FlutterMainAxisAlignment,
    mainAxisSize?: FlutterMainAxisSize,
    crossAxisAlignment?: FlutterCrossAxisAlignment,
    textDirection?: FlutterTextDirection,
    verticalDirection?: FlutterVerticalDirection,
    textBaseline?: FlutterTextBaseline,
    children?: ZacValueList<FlutterWidget>
  }) {
    return new FlutterRow({
      converter: 'f:1:Row',
      ...data
    })
  }
}
/// FROM: stack.dart
export class FlutterStack extends FlutterWidget {
  static new(data: {
    key?: FlutterKey,
    alignment?: FlutterAlignmentGeometry,
    textDirection?: FlutterTextDirection,
    fit?: FlutterStackFit,
    clipBehavior?: FlutterClip,
    children?: ZacValueList<FlutterWidget>
  }) {
    return new FlutterStack({
      converter: 'f:1:Stack',
      ...data
    })
  }
}
/// FROM: wrap.dart
export class FlutterWrap extends FlutterWidget {
  static new(data: {
    key?: FlutterKey,
    direction?: FlutterAxis,
    alignment?: FlutterWrapAlignment,
    spacing?: ZacValue<DartDouble>,
    runSpacing?: ZacValue<DartDouble>,
    runAlignment?: FlutterWrapAlignment,
    crossAxisAlignment?: FlutterWrapCrossAlignment,
    textDirection?: FlutterTextDirection,
    verticalDirection?: FlutterVerticalDirection,
    clipBehavior?: FlutterClip,
    children?: ZacValueList<FlutterWidget>
  }) {
    return new FlutterWrap({
      converter: 'f:1:Wrap',
      ...data
    })
  }
}
/// FROM: app_bar.dart
export class FlutterAppBar extends FlutterWidget {
  static new(data: {
    key?: FlutterKey,
    leading?: FlutterWidget,
    automaticallyImplyLeading?: ZacValue<boolean>,
    title?: FlutterWidget,
    actions?: ZacValueList<FlutterWidget>,
    flexibleSpace?: FlutterWidget,
    bottom?: FlutterWidget,
    elevation?: ZacValue<DartDouble>,
    shadowColor?: FlutterColor,
    shape?: FlutterShapeBorder,
    backgroundColor?: FlutterColor,
    foregroundColor?: FlutterColor,
    iconTheme?: FlutterIconThemeData,
    actionsIconTheme?: FlutterIconThemeData,
    primary?: ZacValue<boolean>,
    centerTitle?: ZacValue<boolean>,
    excludeHeaderSemantics?: ZacValue<boolean>,
    titleSpacing?: ZacValue<DartDouble>,
    toolbarOpacity?: ZacValue<DartDouble>,
    bottomOpacity?: ZacValue<DartDouble>,
    toolbarHeight?: ZacValue<DartDouble>,
    leadingWidth?: ZacValue<DartDouble>,
    toolbarTextStyle?: FlutterTextStyle,
    titleTextStyle?: FlutterTextStyle,
    systemOverlayStyle?: FlutterSystemUiOverlayStyle
  }) {
    return new FlutterAppBar({
      converter: 'f:1:AppBar',
      ...data
    })
  }
}
/// FROM: buttons.dart
export class FlutterElevatedButton extends FlutterWidget {
  static new(data: {
    key?: FlutterKey,
    child: FlutterWidget,
    onPressed?: ZacActions,
    onLongPress?: ZacActions,
    autofocus?: ZacValue<boolean>,
    clipBehavior?: FlutterClip
  }) {
    return new FlutterElevatedButton({
      converter: 'f:1:ElevatedButton',
      ...data
    })
  }
  static icon(data: {
    key?: FlutterKey,
    icon: FlutterWidget,
    label: FlutterWidget,
    onPressed?: ZacActions,
    onLongPress?: ZacActions,
    autofocus?: ZacValue<boolean>,
    clipBehavior?: FlutterClip
  }) {
    return new FlutterElevatedButton({
      converter: 'f:1:ElevatedButton.icon',
      ...data
    })
  }
}
export class FlutterOutlinedButton extends FlutterWidget {
  static new(data: {
    key?: FlutterKey,
    child: FlutterWidget,
    onPressed?: ZacActions,
    onLongPress?: ZacActions,
    autofocus?: ZacValue<boolean>,
    clipBehavior?: FlutterClip
  }) {
    return new FlutterOutlinedButton({
      converter: 'f:1:OutlinedButton',
      ...data
    })
  }
  static icon(data: {
    key?: FlutterKey,
    icon: FlutterWidget,
    label: FlutterWidget,
    onPressed?: ZacActions,
    onLongPress?: ZacActions,
    autofocus?: ZacValue<boolean>,
    clipBehavior?: FlutterClip
  }) {
    return new FlutterOutlinedButton({
      converter: 'f:1:OutlinedButton.icon',
      ...data
    })
  }
}
export class FlutterTextButton extends FlutterWidget {
  static new(data: {
    key?: FlutterKey,
    child: FlutterWidget,
    onPressed?: ZacActions,
    onLongPress?: ZacActions,
    autofocus?: ZacValue<boolean>,
    clipBehavior?: FlutterClip
  }) {
    return new FlutterTextButton({
      converter: 'f:1:TextButton',
      ...data
    })
  }
  static icon(data: {
    key?: FlutterKey,
    icon: FlutterWidget,
    label: FlutterWidget,
    onPressed?: ZacActions,
    onLongPress?: ZacActions,
    autofocus?: ZacValue<boolean>,
    clipBehavior?: FlutterClip
  }) {
    return new FlutterTextButton({
      converter: 'f:1:TextButton.icon',
      ...data
    })
  }
}
/// FROM: button_bar.dart
export class FlutterButtonBar extends FlutterWidget {
  static new(data: {
    key?: FlutterKey,
    alignment?: FlutterMainAxisAlignment,
    mainAxisSize?: FlutterMainAxisSize,
    buttonMinWidth?: ZacValue<DartDouble>,
    buttonHeight?: ZacValue<DartDouble>,
    buttonPadding?: FlutterEdgeInsetsGeometry,
    buttonAlignedDropdown?: ZacValue<boolean>,
    overflowDirection?: FlutterVerticalDirection,
    overflowButtonSpacing?: ZacValue<DartDouble>,
    children?: ZacValueList<FlutterWidget>
  }) {
    return new FlutterButtonBar({
      converter: 'f:1:ButtonBar',
      ...data
    })
  }
}
/// FROM: card.dart
export class FlutterCard extends FlutterWidget {
  static new(data: {
    key?: FlutterKey,
    color?: FlutterColor,
    shadowColor?: FlutterColor,
    elevation?: ZacValue<DartDouble>,
    shape?: FlutterShapeBorder,
    borderOnForeground?: ZacValue<boolean>,
    margin?: FlutterEdgeInsetsGeometry,
    clipBehavior?: FlutterClip,
    child?: FlutterWidget,
    semanticContainer?: ZacValue<boolean>
  }) {
    return new FlutterCard({
      converter: 'f:1:Card',
      ...data
    })
  }
}
/// FROM: dialog.dart
export class FlutterDialogs extends ZacAction, FlutterWidget {
  static showDialog(data: {
    child: FlutterWidget,
    barrierDismissible?: ZacValue<boolean>,
    barrierColor?: FlutterColor,
    barrierLabel?: ZacValue<string>,
    useSafeArea?: ZacValue<boolean>,
    useRootNavigator?: ZacValue<boolean>,
    routeSettings?: FlutterRouteSettings
  }) {
    return new FlutterDialogs({
      converter: 'f:1:showDialog',
      ...data
    })
  }
  static dialog(data: {
    key?: FlutterKey,
    backgroundColor?: FlutterColor,
    elevation?: ZacValue<DartDouble>,
    insetPadding?: FlutterEdgeInsets,
    clipBehavior?: FlutterClip,
    shape?: FlutterShapeBorder,
    alignment?: FlutterAlignmentGeometry,
    child?: FlutterWidget
  }) {
    return new FlutterDialogs({
      converter: 'f:1:Dialog',
      ...data
    })
  }
  static alertDialog(data: {
    key?: FlutterKey,
    title?: FlutterWidget,
    content?: FlutterWidget,
    actions?: ZacValueList<FlutterWidget>,
    titlePadding?: FlutterEdgeInsetsGeometry,
    titleTextStyle?: FlutterTextStyle,
    contentPadding?: FlutterEdgeInsetsGeometry,
    contentTextStyle?: FlutterTextStyle,
    actionsPadding?: FlutterEdgeInsetsGeometry,
    actionsAlignment?: FlutterMainAxisAlignment,
    actionsOverflowDirection?: FlutterVerticalDirection,
    actionsOverflowButtonSpacing?: ZacValue<DartDouble>,
    buttonPadding?: FlutterEdgeInsetsGeometry,
    backgroundColor?: FlutterColor,
    elevation?: ZacValue<DartDouble>,
    semanticLabel?: ZacValue<string>,
    insetPadding?: FlutterEdgeInsets,
    clipBehavior?: FlutterClip,
    shape?: FlutterShapeBorder,
    alignment?: FlutterAlignmentGeometry,
    scrollable?: ZacValue<boolean>
  }) {
    return new FlutterDialogs({
      converter: 'f:1:AlertDialog',
      ...data
    })
  }
  static simpleDialog(data: {
    key?: FlutterKey,
    title?: FlutterWidget,
    children?: ZacValueList<FlutterWidget>,
    titlePadding?: FlutterEdgeInsetsGeometry,
    titleTextStyle?: FlutterTextStyle,
    contentPadding?: FlutterEdgeInsetsGeometry,
    backgroundColor?: FlutterColor,
    elevation?: ZacValue<DartDouble>,
    semanticLabel?: ZacValue<string>,
    insetPadding?: FlutterEdgeInsets,
    clipBehavior?: FlutterClip,
    shape?: FlutterShapeBorder,
    alignment?: FlutterAlignmentGeometry
  }) {
    return new FlutterDialogs({
      converter: 'f:1:SimpleDialog',
      ...data
    })
  }
  static simpleDialogOption(data: {
    key?: FlutterKey,
    child?: FlutterWidget,
    onPressed?: ZacActions,
    padding?: FlutterEdgeInsets
  }) {
    return new FlutterDialogs({
      converter: 'f:1:SimpleDialogOption',
      ...data
    })
  }
}
/// FROM: divider.dart
export class FlutterDivider extends FlutterWidget {
  static new(data: {
    key?: FlutterKey,
    height?: ZacValue<DartDouble>,
    thickness?: ZacValue<DartDouble>,
    indent?: ZacValue<DartDouble>,
    endIndent?: ZacValue<DartDouble>,
    color?: FlutterColor
  }) {
    return new FlutterDivider({
      converter: 'f:1:Divider',
      ...data
    })
  }
}
/// FROM: drawer.dart
export class FlutterDrawer extends FlutterWidget {
  static new(data: {
    key?: FlutterKey,
    backgroundColor?: FlutterColor,
    elevation?: ZacValue<DartDouble>,
    shape?: FlutterShapeBorder,
    child?: FlutterWidget,
    semanticLabel?: ZacValue<string>
  }) {
    return new FlutterDrawer({
      converter: 'f:1:Drawer',
      ...data
    })
  }
}
/// FROM: list_tile.dart
export class FlutterListTile extends FlutterWidget {
  static new(data: {
    key?: FlutterKey,
    leading?: FlutterWidget,
    title?: FlutterWidget,
    subtitle?: FlutterWidget,
    trailing?: FlutterWidget,
    isThreeLine?: ZacValue<boolean>,
    dense?: ZacValue<boolean>,
    shape?: FlutterShapeBorder,
    selectedColor?: FlutterColor,
    iconColor?: FlutterColor,
    textColor?: FlutterColor,
    contentPadding?: FlutterEdgeInsetsGeometry,
    enabled?: ZacValue<boolean>,
    onTap?: ZacActions,
    onLongPress?: ZacActions,
    selected?: ZacValue<boolean>,
    focusColor?: FlutterColor,
    hoverColor?: FlutterColor,
    autofocus?: ZacValue<boolean>,
    tileColor?: FlutterColor,
    selectedTileColor?: FlutterColor,
    enableFeedback?: ZacValue<boolean>,
    horizontalTitleGap?: ZacValue<DartDouble>,
    minVerticalPadding?: ZacValue<DartDouble>,
    minLeadingWidth?: ZacValue<DartDouble>
  }) {
    return new FlutterListTile({
      converter: 'f:1:ListTile',
      ...data
    })
  }
}
/// FROM: material.dart
export class FlutterMaterial extends FlutterWidget {
  static new(data: {
    key?: FlutterKey,
    child?: FlutterWidget,
    elevation?: ZacValue<DartDouble>,
    color?: FlutterColor,
    shadowColor?: FlutterColor,
    textStyle?: FlutterTextStyle,
    borderRadius?: FlutterBorderRadiusGeometry,
    shape?: FlutterShapeBorder,
    borderOnForeground?: ZacValue<boolean>,
    clipBehavior?: FlutterClip
  }) {
    return new FlutterMaterial({
      converter: 'f:1:Material',
      ...data
    })
  }
}
/// FROM: material_app.dart
export class FlutterMaterialApp extends FlutterWidget {
  static new(data: {
    key?: FlutterKey,
    navigatorKey?: FlutterGlobalKeyNavigatorState,
    home?: FlutterWidget,
    initialRoute?: ZacValue<string>,
    onGenerateRoute?: FlutterRouteFactory,
    onUnknownRoute?: FlutterRouteFactory,
    title?: ZacValue<string>,
    color?: FlutterColor,
    locale?: FlutterLocale,
    debugShowMaterialGrid?: ZacValue<boolean>,
    showPerformanceOverlay?: ZacValue<boolean>,
    checkerboardRasterCacheImages?: ZacValue<boolean>,
    checkerboardOffscreenLayers?: ZacValue<boolean>,
    showSemanticsDebugger?: ZacValue<boolean>,
    debugShowCheckedModeBanner?: ZacValue<boolean>,
    restorationScopeId?: ZacValue<string>,
    useInheritedMediaQuery?: ZacValue<boolean>
  }) {
    return new FlutterMaterialApp({
      converter: 'f:1:MaterialApp',
      ...data
    })
  }
}
/// FROM: progress_indicator.dart
export class FlutterProgressIndicator extends FlutterWidget {
  static linear(data: {
    key?: FlutterKey,
    value?: ZacValue<DartDouble>,
    backgroundColor?: FlutterColor,
    color?: FlutterColor,
    minHeight?: ZacValue<DartDouble>,
    semanticsLabel?: ZacValue<string>,
    semanticsValue?: ZacValue<string>
  }) {
    return new FlutterProgressIndicator({
      converter: 'f:1:LinearProgressIndicator',
      ...data
    })
  }
  static circular(data: {
    key?: FlutterKey,
    value?: ZacValue<DartDouble>,
    backgroundColor?: FlutterColor,
    color?: FlutterColor,
    strokeWidth?: ZacValue<DartDouble>,
    semanticsLabel?: ZacValue<string>,
    semanticsValue?: ZacValue<string>
  }) {
    return new FlutterProgressIndicator({
      converter: 'f:1:CircularProgressIndicator',
      ...data
    })
  }
}
/// FROM: refresh_indicator.dart
export class FlutterRefreshIndicator extends FlutterWidget {
  static new(data: {
    key?: FlutterKey,
    child: FlutterWidget,
    displacement?: ZacValue<DartDouble>,
    edgeOffset?: ZacValue<DartDouble>,
    onRefresh: ZacActions,
    color?: FlutterColor,
    backgroundColor?: FlutterColor,
    semanticsLabel?: ZacValue<string>,
    semanticsValue?: ZacValue<string>,
    strokeWidth?: ZacValue<DartDouble>,
    triggerMode?: FlutterRefreshIndicatorTriggerMode,
    family?: ValidTypes
  }) {
    return new FlutterRefreshIndicator({
      converter: 'f:1:RefreshIndicator',
      ...data
    })
  }
}
export class FlutterRefreshIndicatorTriggerMode extends ZacConverter {
  static onEdge() {
    return new FlutterRefreshIndicatorTriggerMode({
      converter: 'f:1:RefreshIndicatorTriggerMode.onEdge'

    })
  }
  static anywhere() {
    return new FlutterRefreshIndicatorTriggerMode({
      converter: 'f:1:RefreshIndicatorTriggerMode.anywhere'

    })
  }
}
/// FROM: scaffold.dart
export class FlutterScaffold extends ZacAction, FlutterWidget {
  static new(data: {
    key?: FlutterKey,
    appBar?: FlutterWidget,
    body?: FlutterWidget,
    floatingActionButton?: FlutterWidget,
    persistentFooterButtons?: ZacValueList<FlutterWidget>,
    drawer?: FlutterWidget,
    endDrawer?: FlutterWidget,
    bottomNavigationBar?: FlutterWidget,
    bottomSheet?: FlutterWidget,
    backgroundColor?: FlutterColor,
    resizeToAvoidBottomInset?: ZacValue<boolean>,
    primary?: ZacValue<boolean>,
    extendBody?: ZacValue<boolean>,
    extendBodyBehindAppBar?: ZacValue<boolean>,
    drawerScrimColor?: FlutterColor,
    drawerEdgeDragWidth?: ZacValue<DartDouble>,
    drawerEnableOpenDragGesture?: ZacValue<boolean>,
    endDrawerEnableOpenDragGesture?: ZacValue<boolean>,
    restorationId?: ZacValue<string>
  }) {
    return new FlutterScaffold({
      converter: 'f:1:Scaffold',
      ...data
    })
  }
  static openDrawer() {
    return new FlutterScaffold({
      converter: 'f:1:Scaffold.openDrawer'

    })
  }
  static openEndDrawer() {
    return new FlutterScaffold({
      converter: 'f:1:Scaffold.openEndDrawer'

    })
  }
  static showBodyScrim(data: {
    value: boolean,
    opacity: ZacValue<DartDouble>
  }) {
    return new FlutterScaffold({
      converter: 'f:1:Scaffold.showBodyScrim',
      ...data
    })
  }
  static showBottomSheet(data: {
    child: FlutterWidget,
    backgroundColor?: FlutterColor,
    elevation?: ZacValue<DartDouble>,
    shape?: FlutterShapeBorder,
    clipBehavior?: FlutterClip,
    constraints?: FlutterBoxConstraints,
    enableDrag?: ZacValue<boolean>
  }) {
    return new FlutterScaffold({
      converter: 'f:1:Scaffold.showBottomSheet',
      ...data
    })
  }
}
export class FlutterScaffoldMessenger extends ZacAction {
  static showSnackBar(data: { snackBar: FlutterSnackBar }) {
    return new FlutterScaffoldMessenger({
      converter: 'f:1:ScaffoldMessenger.showSnackBar',
      ...data
    })
  }
  static hideCurrentSnackBar() {
    return new FlutterScaffoldMessenger({
      converter: 'f:1:ScaffoldMessenger.hideCurrentSnackBar'

    })
  }
  static removeCurrentSnackBar() {
    return new FlutterScaffoldMessenger({
      converter: 'f:1:ScaffoldMessenger.removeCurrentSnackBar'

    })
  }
  static showMaterialBanner(data: { materialBanner: FlutterMaterialBanner }) {
    return new FlutterScaffoldMessenger({
      converter: 'f:1:ScaffoldMessenger.showMaterialBanner',
      ...data
    })
  }
  static hideCurrentMaterialBanner() {
    return new FlutterScaffoldMessenger({
      converter: 'f:1:ScaffoldMessenger.hideCurrentMaterialBanner'

    })
  }
  static removeCurrentMaterialBanner() {
    return new FlutterScaffoldMessenger({
      converter: 'f:1:ScaffoldMessenger.removeCurrentMaterialBanner'

    })
  }
}
export class FlutterSnackBar extends FlutterWidget {
  static new(data: {
    key?: FlutterKey,
    content: FlutterWidget,
    backgroundColor?: FlutterColor,
    elevation?: ZacValue<DartDouble>,
    margin?: FlutterEdgeInsetsGeometry,
    padding?: FlutterEdgeInsetsGeometry,
    width?: ZacValue<DartDouble>,
    shape?: FlutterShapeBorder,
    behavior?: FlutterSnackBarBehavior,
    action?: FlutterSnackBarAction,
    onVisible?: ZacActions
  }) {
    return new FlutterSnackBar({
      converter: 'f:1:SnackBar',
      ...data
    })
  }
}
export class FlutterSnackBarBehavior extends ZacConverter {
  static fixed() {
    return new FlutterSnackBarBehavior({
      converter: 'f:1:SnackBarBehavior.fixed'

    })
  }
  static floating() {
    return new FlutterSnackBarBehavior({
      converter: 'f:1:SnackBarBehavior.floating'

    })
  }
}
export class FlutterSnackBarAction extends FlutterWidget {
  static new(data: {
    key?: FlutterKey,
    textColor?: FlutterColor,
    disabledTextColor?: FlutterColor,
    label: string,
    onPressed: ZacActions
  }) {
    return new FlutterSnackBarAction({
      converter: 'f:1:SnackBarAction',
      ...data
    })
  }
}
export class FlutterMaterialBanner extends FlutterWidget {
  static new(data: {
    key?: FlutterKey,
    content: FlutterWidget,
    contentTextStyle?: FlutterTextStyle,
    actions: ZacValueList<FlutterWidget>,
    elevation?: ZacValue<DartDouble>,
    leading: FlutterWidget,
    backgroundColor?: FlutterColor,
    padding?: FlutterEdgeInsetsGeometry,
    leadingPadding?: FlutterEdgeInsetsGeometry,
    forceActionsBelow?: ZacValue<boolean>,
    onVisible?: ZacActions
  }) {
    return new FlutterMaterialBanner({
      converter: 'f:1:MaterialBanner',
      ...data
    })
  }
}
/// FROM: selectable_text.dart
export class FlutterSelectableText extends FlutterWidget {
  static new(data: {
    data: string,
    key?: FlutterKey,
    style?: FlutterTextStyle,
    strutStyle?: FlutterStrutStyle,
    textAlign?: FlutterTextAlign,
    textDirection?: FlutterTextDirection,
    textScaleFactor?: ZacValue<DartDouble>,
    showCursor?: ZacValue<boolean>,
    autofocus?: ZacValue<boolean>,
    minLines?: ZacValue<DartInt>,
    maxLines?: ZacValue<DartInt>,
    cursorWidth?: ZacValue<DartDouble>,
    cursorHeight?: ZacValue<DartDouble>,
    cursorRadius?: FlutterRadius,
    cursorColor?: FlutterColor,
    enableInteractiveSelection?: ZacValue<boolean>,
    semanticsLabel?: ZacValue<string>,
    textHeightBehavior?: FlutterTextHeightBehavior,
    textWidthBasis?: FlutterTextWidthBasis
  }) {
    return new FlutterSelectableText({
      converter: 'f:1:SelectableText',
      ...data
    })
  }
}
/// FROM: text_field.dart
export class FlutterTextField extends FlutterWidget {
  static new(data: {
    key?: FlutterKey,
    decoration?: FlutterInputDecoration,
    keyboardType?: FlutterTextInputType,
    textInputAction?: FlutterTextInputAction,
    textCapitalization?: FlutterTextCapitalization,
    style?: FlutterTextStyle,
    strutStyle?: FlutterStrutStyle,
    textAlign?: FlutterTextAlign,
    textAlignVertical?: FlutterTextAlignVertical,
    textDirection?: FlutterTextDirection,
    readOnly?: ZacValue<boolean>,
    showCursor?: ZacValue<boolean>,
    autofocus?: ZacValue<boolean>,
    obscuringCharacter?: ZacValue<string>,
    obscureText?: ZacValue<boolean>,
    autocorrect?: ZacValue<boolean>,
    smartDashesType?: FlutterSmartDashesType,
    smartQuotesType?: FlutterSmartQuotesType,
    enableSuggestions?: ZacValue<boolean>,
    maxLines?: ZacValue<DartInt>,
    minLines?: ZacValue<DartInt>,
    expands?: ZacValue<boolean>,
    maxLength?: ZacValue<DartInt>,
    onChanged?: ZacActions,
    onEditingComplete?: ZacActions,
    onSubmitted?: ZacActions,
    enabled?: ZacValue<boolean>,
    cursorWidth?: ZacValue<DartDouble>,
    cursorHeight?: ZacValue<DartDouble>,
    cursorRadius?: FlutterRadius,
    cursorColor?: FlutterColor,
    selectionHeightStyle?: FlutterBoxHeightStyle,
    selectionWidthStyle?: FlutterBoxWidthStyle,
    keyboardAppearance?: FlutterBrightness,
    scrollPadding?: FlutterEdgeInsets,
    enableInteractiveSelection?: ZacValue<boolean>,
    onTap?: ZacActions,
    clipBehavior?: FlutterClip,
    restorationId?: ZacValue<string>,
    enableIMEPersonalizedLearning?: ZacValue<boolean>
  }) {
    return new FlutterTextField({
      converter: 'f:1:TextField',
      ...data
    })
  }
}
/// FROM: navigator.dart
export abstract class FlutterRoute extends ZacConverter {

}
export abstract class GetFlutterNavigatorState extends ZacConverter {

}
export class FlutterNavigatorState extends GetFlutterNavigatorState {
  static closest() {
    return new FlutterNavigatorState({
      converter: 'f:1:NavigatorState.closest'

    })
  }
  static root() {
    return new FlutterNavigatorState({
      converter: 'f:1:NavigatorState.root'

    })
  }
}
export class FlutterNavigator extends FlutterWidget {
  static new(data: {
    key?: FlutterKey,
    onGenerateRoute?: FlutterRouteFactory,
    onUnknownRoute?: FlutterRouteFactory,
    initialRoute?: ZacValue<string>,
    requestFocus?: ZacValue<boolean>
  }) {
    return new FlutterNavigator({
      converter: 'f:1:Navigator',
      ...data
    })
  }
}
export class FlutterNavigatorActions extends ZacAction {
  static push(data: {
    route: FlutterRoute,
    navigatorState?: GetFlutterNavigatorState
  }) {
    return new FlutterNavigatorActions({
      converter: 'f:1:Navigator.push',
      ...data
    })
  }
  static pushNamed(data: {
    routeName: ZacValue<string>,
    arguments?: ValidTypes,
    navigatorState?: GetFlutterNavigatorState
  }) {
    return new FlutterNavigatorActions({
      converter: 'f:1:Navigator.pushNamed',
      ...data
    })
  }
  static pop(data: {
    actions?: ZacActions,
    navigatorState?: GetFlutterNavigatorState
  }) {
    return new FlutterNavigatorActions({
      converter: 'f:1:Navigator.pop',
      ...data
    })
  }
  static maybePop(data: {
    actions?: ZacActions,
    navigatorState?: GetFlutterNavigatorState
  }) {
    return new FlutterNavigatorActions({
      converter: 'f:1:Navigator.maybePop',
      ...data
    })
  }
  static pushReplacement(data: {
    route: FlutterRoute,
    result?: ZacActions,
    navigatorState?: GetFlutterNavigatorState
  }) {
    return new FlutterNavigatorActions({
      converter: 'f:1:Navigator.pushReplacement',
      ...data
    })
  }
  static pushReplacementNamed(data: {
    routeName: ZacValue<string>,
    arguments?: ValidTypes,
    navigatorState?: GetFlutterNavigatorState,
    result?: ZacActions
  }) {
    return new FlutterNavigatorActions({
      converter: 'f:1:Navigator.pushReplacementNamed',
      ...data
    })
  }
}
export abstract class FlutterRouteFactory extends ZacConverter {

}
export class FlutterPageRouteBuilder extends FlutterRoute {
  static new(data: {
    child: FlutterWidget,
    settings?: FlutterRouteSettings,
    opaque?: ZacValue<boolean>,
    barrierDismissible?: ZacValue<boolean>,
    barrierColor?: FlutterColor,
    barrierLabel?: ZacValue<string>,
    maintainState?: ZacValue<boolean>,
    fullscreenDialog?: ZacValue<boolean>
  }) {
    return new FlutterPageRouteBuilder({
      converter: 'f:1:PageRouteBuilder',
      ...data
    })
  }
}
export class FlutterRouteSettings extends ZacConverter {
  static new(data: {
    name?: ZacValue<string>,
    arguments?: ValidTypes
  }) {
    return new FlutterRouteSettings({
      converter: 'f:1:RouteSettings',
      ...data
    })
  }
}
/// FROM: opacity.dart
export class FlutterOpacity extends FlutterWidget {
  static new(data: {
    key?: FlutterKey,
    opacity: ZacValue<DartDouble>,
    alwaysIncludeSemantics?: ZacValue<boolean>,
    child?: FlutterWidget
  }) {
    return new FlutterOpacity({
      converter: 'f:1:Opacity',
      ...data
    })
  }
}
/// FROM: rotated_box.dart
export class FlutterRotatedBox extends FlutterWidget {
  static new(data: {
    key?: FlutterKey,
    child?: FlutterWidget,
    quarterTurns: DartInt
  }) {
    return new FlutterRotatedBox({
      converter: 'f:1:RotatedBox',
      ...data
    })
  }
}
/// FROM: scroll_physics.dart
export class FlutterScrollPhysics extends ZacConverter {
  static alwaysScrollable(data: { parent?: FlutterScrollPhysics }) {
    return new FlutterScrollPhysics({
      converter: 'f:1:AlwaysScrollableScrollPhysics',
      ...data
    })
  }
  static bouncingScroll(data: { parent?: FlutterScrollPhysics }) {
    return new FlutterScrollPhysics({
      converter: 'f:1:BouncingScrollPhysics',
      ...data
    })
  }
  static clampingScrollPhysics(data: { parent?: FlutterScrollPhysics }) {
    return new FlutterScrollPhysics({
      converter: 'f:1:ClampingScrollPhysics',
      ...data
    })
  }
}
/// FROM: custom_scroll_view.dart
export class FlutterCustomScrollView extends FlutterWidget {
  static new(data: {
    key?: FlutterKey,
    scrollDirection?: FlutterAxis,
    reverse?: ZacValue<boolean>,
    primary?: ZacValue<boolean>,
    physics?: FlutterScrollPhysics,
    shrinkWrap?: ZacValue<boolean>,
    center?: FlutterKey,
    anchor?: ZacValue<DartDouble>,
    cacheExtent?: ZacValue<DartDouble>,
    slivers?: ZacValueList<FlutterWidget>,
    semanticChildCount?: ZacValue<DartInt>,
    keyboardDismissBehavior?: FlutterScrollViewKeyboardDismissBehavior,
    restorationId?: ZacValue<string>,
    clipBehavior?: FlutterClip
  }) {
    return new FlutterCustomScrollView({
      converter: 'f:1:CustomScrollView',
      ...data
    })
  }
}
/// FROM: sliver_child_delegate.dart
export class FlutterSliverChildDelegate extends ZacConverter {
  static list(data: {
    children: ZacValueList<FlutterWidget>,
    addAutomaticKeepAlives?: ZacValue<boolean>,
    addRepaintBoundaries?: ZacValue<boolean>,
    addSemanticIndexes?: ZacValue<boolean>,
    semanticIndexOffset?: ZacValue<DartInt>
  }) {
    return new FlutterSliverChildDelegate({
      converter: 'f:1:SliverChildListDelegate',
      ...data
    })
  }
  static listFixed(data: {
    children: ZacValueList<FlutterWidget>,
    addAutomaticKeepAlives?: ZacValue<boolean>,
    addRepaintBoundaries?: ZacValue<boolean>,
    addSemanticIndexes?: ZacValue<boolean>,
    semanticIndexOffset?: ZacValue<DartInt>
  }) {
    return new FlutterSliverChildDelegate({
      converter: 'f:1:SliverChildListDelegate.fixed',
      ...data
    })
  }
}
/// FROM: sliver_grid_delegate.dart
export class FlutterSliverGridDelegate extends ZacConverter {
  static withFixedCrossAxisCount(data: {
    crossAxisCount: DartInt,
    mainAxisSpacing?: ZacValue<DartDouble>,
    crossAxisSpacing?: ZacValue<DartDouble>,
    childAspectRatio?: ZacValue<DartDouble>,
    mainAxisExtent?: ZacValue<DartDouble>
  }) {
    return new FlutterSliverGridDelegate({
      converter: 'f:1:SliverGridDelegateWithFixedCrossAxisCount',
      ...data
    })
  }
  static withMaxCrossAxisExtent(data: {
    maxCrossAxisExtent: ZacValue<DartDouble>,
    mainAxisSpacing?: ZacValue<DartDouble>,
    crossAxisSpacing?: ZacValue<DartDouble>,
    childAspectRatio?: ZacValue<DartDouble>,
    mainAxisExtent?: ZacValue<DartDouble>
  }) {
    return new FlutterSliverGridDelegate({
      converter: 'f:1:SliverGridDelegateWithMaxCrossAxisExtent',
      ...data
    })
  }
}
/// FROM: sliver_grid.dart
export class FlutterSliverGrid extends FlutterWidget {
  static new(data: {
    key?: FlutterKey,
    delegate: FlutterSliverChildDelegate,
    gridDelegate: FlutterSliverGridDelegate
  }) {
    return new FlutterSliverGrid({
      converter: 'f:1:SliverGrid',
      ...data
    })
  }
}
/// FROM: sliver_list.dart
export class FlutterSliverList extends FlutterWidget {
  static new(data: {
    key?: FlutterKey,
    delegate: FlutterSliverChildDelegate
  }) {
    return new FlutterSliverList({
      converter: 'f:1:SliverList',
      ...data
    })
  }
}
/// FROM: sliver_padding.dart
export class FlutterSliverPadding extends FlutterWidget {
  static new(data: {
    key?: FlutterKey,
    sliver?: FlutterWidget,
    padding: FlutterEdgeInsetsGeometry
  }) {
    return new FlutterSliverPadding({
      converter: 'f:1:SliverPadding',
      ...data
    })
  }
}
/// FROM: sliver_to_box_adapter.dart
export class FlutterSliverToBoxAdapter extends FlutterWidget {
  static new(data: {
    key?: FlutterKey,
    child?: FlutterWidget
  }) {
    return new FlutterSliverToBoxAdapter({
      converter: 'f:1:SliverToBoxAdapter',
      ...data
    })
  }
}
/// FROM: text.dart
export class FlutterText extends FlutterWidget {
  static new(data: {
    data: ZacValue<string>,
    key?: FlutterKey,
    style?: FlutterTextStyle,
    strutStyle?: FlutterStrutStyle,
    textAlign?: FlutterTextAlign,
    textDirection?: FlutterTextDirection,
    locale?: FlutterLocale,
    softWrap?: ZacValue<boolean>,
    overflow?: FlutterTextOverflow,
    textScaleFactor?: ZacValue<DartDouble>,
    maxLines?: ZacValue<DartInt>,
    semanticsLabel?: ZacValue<string>,
    textWidthBasis?: FlutterTextWidthBasis,
    textHeightBehavior?: FlutterTextHeightBehavior
  }) {
    return new FlutterText({
      converter: 'f:1:Text',
      ...data
    })
  }
}