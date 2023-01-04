/* eslint-disable @typescript-eslint/no-explicit-any */
import { ZacConvertable, ZacBuilder, ZacTransformer, ZacAction } from 'base';
export class SharedValueConsumeType extends ZacConvertable {
    static watch(data) {
        return new SharedValueConsumeType(Object.assign({ builder: 'z:1:SharedValueConsume.watch' }, data));
    }
    static read() {
        return new SharedValueConsumeType({
            builder: 'z:1:SharedValueConsume.read'
        });
    }
}
export class ZacStateConfig extends ZacConvertable {
    static new(data) {
        return new ZacStateConfig(Object.assign({ builder: 'z:1:StateMachine:StateConfig' }, data));
    }
}
export class ZacTransition extends ZacConvertable {
    static new(data) {
        return new ZacTransition(Object.assign({ builder: 'z:1:StateMachine:Transition' }, data));
    }
}
export class FlutterAlign extends ZacBuilder {
    static new(data) {
        return new FlutterAlign(Object.assign({ builder: 'f:1:Align' }, data));
    }
}
export class FlutterAlignment extends ZacBuilder {
    static new(data) {
        return new FlutterAlignment(Object.assign({ builder: 'f:1:Alignment' }, data));
    }
    static bottomCenter() {
        return new FlutterAlignment({
            builder: 'f:1:Alignment.bottomCenter'
        });
    }
    static bottomLeft() {
        return new FlutterAlignment({
            builder: 'f:1:Alignment.bottomLeft'
        });
    }
    static bottomRight() {
        return new FlutterAlignment({
            builder: 'f:1:Alignment.bottomRight'
        });
    }
    static center() {
        return new FlutterAlignment({
            builder: 'f:1:Alignment.center'
        });
    }
    static centerLeft() {
        return new FlutterAlignment({
            builder: 'f:1:Alignment.centerLeft'
        });
    }
    static centerRight() {
        return new FlutterAlignment({
            builder: 'f:1:Alignment.centerRight'
        });
    }
    static topCenter() {
        return new FlutterAlignment({
            builder: 'f:1:Alignment.topCenter'
        });
    }
    static topLeft() {
        return new FlutterAlignment({
            builder: 'f:1:Alignment.topLeft'
        });
    }
    static topRight() {
        return new FlutterAlignment({
            builder: 'f:1:Alignment.topRight'
        });
    }
}
export class FlutterAlignmentDirectional extends ZacBuilder {
    static new(data) {
        return new FlutterAlignmentDirectional(Object.assign({ builder: 'f:1:AlignmentDirectional' }, data));
    }
    static bottomCenter() {
        return new FlutterAlignmentDirectional({
            builder: 'f:1:AlignmentDirectional.bottomCenter'
        });
    }
    static bottomStart() {
        return new FlutterAlignmentDirectional({
            builder: 'f:1:AlignmentDirectional.bottomStart'
        });
    }
    static bottomEnd() {
        return new FlutterAlignmentDirectional({
            builder: 'f:1:AlignmentDirectional.bottomEnd'
        });
    }
    static center() {
        return new FlutterAlignmentDirectional({
            builder: 'f:1:AlignmentDirectional.center'
        });
    }
    static centerStart() {
        return new FlutterAlignmentDirectional({
            builder: 'f:1:AlignmentDirectional.centerStart'
        });
    }
    static centerEnd() {
        return new FlutterAlignmentDirectional({
            builder: 'f:1:AlignmentDirectional.centerEnd'
        });
    }
    static topCenter() {
        return new FlutterAlignmentDirectional({
            builder: 'f:1:AlignmentDirectional.topCenter'
        });
    }
    static topStart() {
        return new FlutterAlignmentDirectional({
            builder: 'f:1:AlignmentDirectional.topStart'
        });
    }
    static topEnd() {
        return new FlutterAlignmentDirectional({
            builder: 'f:1:AlignmentDirectional.topEnd'
        });
    }
}
export class FlutterAppBar extends ZacBuilder {
    static new(data) {
        return new FlutterAppBar(Object.assign({ builder: 'f:1:AppBar' }, data));
    }
}
export class FlutterAspectRatio extends ZacBuilder {
    static new(data) {
        return new FlutterAspectRatio(Object.assign({ builder: 'f:1:AspectRatio' }, data));
    }
}
export class FlutterAxis extends ZacBuilder {
    static horizontal() {
        return new FlutterAxis({
            builder: 'f:1:Axis.horizontal'
        });
    }
    static vertical() {
        return new FlutterAxis({
            builder: 'f:1:Axis.vertical'
        });
    }
}
export class FlutterBlendMode extends ZacBuilder {
    static clear() {
        return new FlutterBlendMode({
            builder: 'f:1:BlendMode.clear'
        });
    }
    static color() {
        return new FlutterBlendMode({
            builder: 'f:1:BlendMode.color'
        });
    }
    static colorBurn() {
        return new FlutterBlendMode({
            builder: 'f:1:BlendMode.colorBurn'
        });
    }
    static colorDodge() {
        return new FlutterBlendMode({
            builder: 'f:1:BlendMode.colorDodge'
        });
    }
    static darken() {
        return new FlutterBlendMode({
            builder: 'f:1:BlendMode.darken'
        });
    }
    static difference() {
        return new FlutterBlendMode({
            builder: 'f:1:BlendMode.difference'
        });
    }
    static dst() {
        return new FlutterBlendMode({
            builder: 'f:1:BlendMode.dst'
        });
    }
    static dstATop() {
        return new FlutterBlendMode({
            builder: 'f:1:BlendMode.dstATop'
        });
    }
    static dstIn() {
        return new FlutterBlendMode({
            builder: 'f:1:BlendMode.dstIn'
        });
    }
    static dstOut() {
        return new FlutterBlendMode({
            builder: 'f:1:BlendMode.dstOut'
        });
    }
    static dstOver() {
        return new FlutterBlendMode({
            builder: 'f:1:BlendMode.dstOver'
        });
    }
    static exclusion() {
        return new FlutterBlendMode({
            builder: 'f:1:BlendMode.exclusion'
        });
    }
    static hardLight() {
        return new FlutterBlendMode({
            builder: 'f:1:BlendMode.hardLight'
        });
    }
    static hue() {
        return new FlutterBlendMode({
            builder: 'f:1:BlendMode.hue'
        });
    }
    static lighten() {
        return new FlutterBlendMode({
            builder: 'f:1:BlendMode.lighten'
        });
    }
    static luminosity() {
        return new FlutterBlendMode({
            builder: 'f:1:BlendMode.luminosity'
        });
    }
    static modulate() {
        return new FlutterBlendMode({
            builder: 'f:1:BlendMode.modulate'
        });
    }
    static multiply() {
        return new FlutterBlendMode({
            builder: 'f:1:BlendMode.multiply'
        });
    }
    static overlay() {
        return new FlutterBlendMode({
            builder: 'f:1:BlendMode.overlay'
        });
    }
    static plus() {
        return new FlutterBlendMode({
            builder: 'f:1:BlendMode.plus'
        });
    }
    static saturation() {
        return new FlutterBlendMode({
            builder: 'f:1:BlendMode.saturation'
        });
    }
    static screen() {
        return new FlutterBlendMode({
            builder: 'f:1:BlendMode.screen'
        });
    }
    static softLight() {
        return new FlutterBlendMode({
            builder: 'f:1:BlendMode.softLight'
        });
    }
    static src() {
        return new FlutterBlendMode({
            builder: 'f:1:BlendMode.src'
        });
    }
    static srcATop() {
        return new FlutterBlendMode({
            builder: 'f:1:BlendMode.srcATop'
        });
    }
    static srcIn() {
        return new FlutterBlendMode({
            builder: 'f:1:BlendMode.srcIn'
        });
    }
    static srcOut() {
        return new FlutterBlendMode({
            builder: 'f:1:BlendMode.srcOut'
        });
    }
    static srcOver() {
        return new FlutterBlendMode({
            builder: 'f:1:BlendMode.srcOver'
        });
    }
    static xor() {
        return new FlutterBlendMode({
            builder: 'f:1:BlendMode.xor'
        });
    }
}
export class FlutterBlurStyle extends ZacBuilder {
    static inner() {
        return new FlutterBlurStyle({
            builder: 'f:1:BlurStyle.inner'
        });
    }
    static normal() {
        return new FlutterBlurStyle({
            builder: 'f:1:BlurStyle.normal'
        });
    }
    static outer() {
        return new FlutterBlurStyle({
            builder: 'f:1:BlurStyle.outer'
        });
    }
    static solid() {
        return new FlutterBlurStyle({
            builder: 'f:1:BlurStyle.solid'
        });
    }
}
export class FlutterBorder extends ZacBuilder {
    static new(data) {
        return new FlutterBorder(Object.assign({ builder: 'f:1:Border' }, data));
    }
    static all(data) {
        return new FlutterBorder(Object.assign({ builder: 'f:1:Border.all' }, data));
    }
}
export class FlutterBorderDirectional extends ZacBuilder {
    static new(data) {
        return new FlutterBorderDirectional(Object.assign({ builder: 'f:1:BorderDirectional' }, data));
    }
}
export class FlutterBorderRadius extends ZacBuilder {
    static all(data) {
        return new FlutterBorderRadius(Object.assign({ builder: 'f:1:BorderRadius.all' }, data));
    }
    static circular(data) {
        return new FlutterBorderRadius(Object.assign({ builder: 'f:1:BorderRadius.circular' }, data));
    }
    static horizontal(data) {
        return new FlutterBorderRadius(Object.assign({ builder: 'f:1:BorderRadius.horizontal' }, data));
    }
}
export class FlutterBorderSide extends ZacBuilder {
    static new(data) {
        return new FlutterBorderSide(Object.assign({ builder: 'f:1:BorderSide' }, data));
    }
}
export class FlutterBorderStyle extends ZacBuilder {
    static none() {
        return new FlutterBorderStyle({
            builder: 'f:1:BorderStyle.none'
        });
    }
    static solid() {
        return new FlutterBorderStyle({
            builder: 'f:1:BorderStyle.solid'
        });
    }
}
export class FlutterBoxConstraints extends ZacBuilder {
    static new(data) {
        return new FlutterBoxConstraints(Object.assign({ builder: 'f:1:BoxConstraints' }, data));
    }
    static expand(data) {
        return new FlutterBoxConstraints(Object.assign({ builder: 'f:1:BoxConstraints.expand' }, data));
    }
    static loose(data) {
        return new FlutterBoxConstraints(Object.assign({ builder: 'f:1:BoxConstraints.loose' }, data));
    }
    static tight(data) {
        return new FlutterBoxConstraints(Object.assign({ builder: 'f:1:BoxConstraints.tight' }, data));
    }
    static tightFor(data) {
        return new FlutterBoxConstraints(Object.assign({ builder: 'f:1:BoxConstraints.tightFor' }, data));
    }
    static tightForFinite(data) {
        return new FlutterBoxConstraints(Object.assign({ builder: 'f:1:BoxConstraints.tightForFinite' }, data));
    }
}
export class FlutterBoxDecoration extends ZacBuilder {
    static new(data) {
        return new FlutterBoxDecoration(Object.assign({ builder: 'f:1:BoxDecoration' }, data));
    }
}
export class FlutterBoxFit extends ZacBuilder {
    static contain() {
        return new FlutterBoxFit({
            builder: 'f:1:BoxFit.contain'
        });
    }
    static cover() {
        return new FlutterBoxFit({
            builder: 'f:1:BoxFit.cover'
        });
    }
    static fill() {
        return new FlutterBoxFit({
            builder: 'f:1:BoxFit.fill'
        });
    }
    static fitHeight() {
        return new FlutterBoxFit({
            builder: 'f:1:BoxFit.fitHeight'
        });
    }
    static fitWidth() {
        return new FlutterBoxFit({
            builder: 'f:1:BoxFit.fitWidth'
        });
    }
    static none() {
        return new FlutterBoxFit({
            builder: 'f:1:BoxFit.none'
        });
    }
    static scaleDown() {
        return new FlutterBoxFit({
            builder: 'f:1:BoxFit.scaleDown'
        });
    }
}
export class FlutterBoxHeightStyle extends ZacBuilder {
    static includeLineSpacingBottom() {
        return new FlutterBoxHeightStyle({
            builder: 'f:1:BoxHeightStyle.includeLineSpacingBottom'
        });
    }
    static includeLineSpacingMiddle() {
        return new FlutterBoxHeightStyle({
            builder: 'f:1:BoxHeightStyle.includeLineSpacingMiddle'
        });
    }
    static includeLineSpacingTop() {
        return new FlutterBoxHeightStyle({
            builder: 'f:1:BoxHeightStyle.includeLineSpacingTop'
        });
    }
    static max() {
        return new FlutterBoxHeightStyle({
            builder: 'f:1:BoxHeightStyle.max'
        });
    }
    static strut() {
        return new FlutterBoxHeightStyle({
            builder: 'f:1:BoxHeightStyle.strut'
        });
    }
    static tight() {
        return new FlutterBoxHeightStyle({
            builder: 'f:1:BoxHeightStyle.tight'
        });
    }
}
export class FlutterBoxShadow extends ZacBuilder {
    static new(data) {
        return new FlutterBoxShadow(Object.assign({ builder: 'f:1:BoxShadow' }, data));
    }
}
export class FlutterBoxShape extends ZacBuilder {
    static circle() {
        return new FlutterBoxShape({
            builder: 'f:1:BoxShape.circle'
        });
    }
    static rectangle() {
        return new FlutterBoxShape({
            builder: 'f:1:BoxShape.rectangle'
        });
    }
}
export class FlutterBoxWidthStyle extends ZacBuilder {
    static max() {
        return new FlutterBoxWidthStyle({
            builder: 'f:1:BoxWidthStyle.max'
        });
    }
    static tight() {
        return new FlutterBoxWidthStyle({
            builder: 'f:1:BoxWidthStyle.tight'
        });
    }
}
export class FlutterBrightness extends ZacBuilder {
    static dark() {
        return new FlutterBrightness({
            builder: 'f:1:Brightness.dark'
        });
    }
    static light() {
        return new FlutterBrightness({
            builder: 'f:1:Brightness.light'
        });
    }
}
export class FlutterBuilder extends ZacBuilder {
    static new(data) {
        return new FlutterBuilder(Object.assign({ builder: 'f:1:Builder' }, data));
    }
}
export class FlutterButtonBar extends ZacBuilder {
    static new(data) {
        return new FlutterButtonBar(Object.assign({ builder: 'f:1:ButtonBar' }, data));
    }
}
export class FlutterCard extends ZacBuilder {
    static new(data) {
        return new FlutterCard(Object.assign({ builder: 'f:1:Card' }, data));
    }
}
export class FlutterCenter extends ZacBuilder {
    static new(data) {
        return new FlutterCenter(Object.assign({ builder: 'f:1:Center' }, data));
    }
}
export class FlutterCircleBorder extends ZacBuilder {
    static new(data) {
        return new FlutterCircleBorder(Object.assign({ builder: 'f:1:CircleBorder' }, data));
    }
}
export class FlutterClip extends ZacBuilder {
    static none() {
        return new FlutterClip({
            builder: 'f:1:Clip.none'
        });
    }
    static antiAlias() {
        return new FlutterClip({
            builder: 'f:1:Clip.antiAlias'
        });
    }
    static hardEdge() {
        return new FlutterClip({
            builder: 'f:1:Clip.hardEdge'
        });
    }
}
export class FlutterClipOval extends ZacBuilder {
    static new(data) {
        return new FlutterClipOval(Object.assign({ builder: 'f:1:ClipOval' }, data));
    }
}
export class FlutterClipRect extends ZacBuilder {
    static new(data) {
        return new FlutterClipRect(Object.assign({ builder: 'f:1:ClipRect' }, data));
    }
}
export class FlutterColor extends ZacBuilder {
    static fromARGB(data) {
        return new FlutterColor(Object.assign({ builder: 'f:1:Color.fromARGB' }, data));
    }
    static fromRGBO(data) {
        return new FlutterColor(Object.assign({ builder: 'f:1:Color.fromRGBO' }, data));
    }
}
export class FlutterColumn extends ZacBuilder {
    static new(data) {
        return new FlutterColumn(Object.assign({ builder: 'f:1:Column' }, data));
    }
}
export class FlutterConstrainedBox extends ZacBuilder {
    static new(data) {
        return new FlutterConstrainedBox(Object.assign({ builder: 'f:1:ConstrainedBox' }, data));
    }
}
export class FlutterContainer extends ZacBuilder {
    static new(data) {
        return new FlutterContainer(Object.assign({ builder: 'f:1:Container' }, data));
    }
}
export class FlutterCrossAxisAlignment extends ZacBuilder {
    static baseline() {
        return new FlutterCrossAxisAlignment({
            builder: 'f:1:CrossAxisAlignment.baseline'
        });
    }
    static center() {
        return new FlutterCrossAxisAlignment({
            builder: 'f:1:CrossAxisAlignment.center'
        });
    }
    static end() {
        return new FlutterCrossAxisAlignment({
            builder: 'f:1:CrossAxisAlignment.end'
        });
    }
    static start() {
        return new FlutterCrossAxisAlignment({
            builder: 'f:1:CrossAxisAlignment.start'
        });
    }
    static stretch() {
        return new FlutterCrossAxisAlignment({
            builder: 'f:1:CrossAxisAlignment.stretch'
        });
    }
}
export class FlutterCustomScrollView extends ZacBuilder {
    static new(data) {
        return new FlutterCustomScrollView(Object.assign({ builder: 'f:1:CustomScrollView' }, data));
    }
}
export class FlutterDecoratedBox extends ZacBuilder {
    static new(data) {
        return new FlutterDecoratedBox(Object.assign({ builder: 'f:1:DecoratedBox' }, data));
    }
}
export class FlutterDecorationPosition extends ZacBuilder {
    static background() {
        return new FlutterDecorationPosition({
            builder: 'f:1:DecorationPosition.background'
        });
    }
    static foreground() {
        return new FlutterDecorationPosition({
            builder: 'f:1:DecorationPosition.foreground'
        });
    }
}
export class FlutterDialogs extends ZacBuilder {
    static dialog(data) {
        return new FlutterDialogs(Object.assign({ builder: 'f:1:Dialog' }, data));
    }
    static alertDialog(data) {
        return new FlutterDialogs(Object.assign({ builder: 'f:1:AlertDialog' }, data));
    }
    static simpleDialog(data) {
        return new FlutterDialogs(Object.assign({ builder: 'f:1:SimpleDialog' }, data));
    }
    static simpleDialogOption(data) {
        return new FlutterDialogs(Object.assign({ builder: 'f:1:SimpleDialogOption' }, data));
    }
}
export class FlutterDivider extends ZacBuilder {
    static new(data) {
        return new FlutterDivider(Object.assign({ builder: 'f:1:Divider' }, data));
    }
}
export class FlutterDrawer extends ZacBuilder {
    static new(data) {
        return new FlutterDrawer(Object.assign({ builder: 'f:1:Drawer' }, data));
    }
}
export class FlutterEdgeInsets extends ZacBuilder {
    static all(data) {
        return new FlutterEdgeInsets(Object.assign({ builder: 'f:1:EdgeInsets.all' }, data));
    }
    static symmetric(data) {
        return new FlutterEdgeInsets(Object.assign({ builder: 'f:1:EdgeInsets.symmetric' }, data));
    }
    static only(data) {
        return new FlutterEdgeInsets(Object.assign({ builder: 'f:1:EdgeInsets.only' }, data));
    }
}
export class FlutterEdgeInsetsDirectional extends ZacBuilder {
    static all(data) {
        return new FlutterEdgeInsetsDirectional(Object.assign({ builder: 'f:1:EdgeInsetsDirectional.all' }, data));
    }
    static only(data) {
        return new FlutterEdgeInsetsDirectional(Object.assign({ builder: 'f:1:EdgeInsetsDirectional.only' }, data));
    }
}
export class FlutterElevatedButton extends ZacBuilder {
    static new(data) {
        return new FlutterElevatedButton(Object.assign({ builder: 'f:1:ElevatedButton' }, data));
    }
    static icon(data) {
        return new FlutterElevatedButton(Object.assign({ builder: 'f:1:ElevatedButton.icon' }, data));
    }
}
export class FlutterExpanded extends ZacBuilder {
    static new(data) {
        return new FlutterExpanded(Object.assign({ builder: 'f:1:Expanded' }, data));
    }
}
export class FlutterFilterQuality extends ZacBuilder {
    static high() {
        return new FlutterFilterQuality({
            builder: 'f:1:FilterQuality.high'
        });
    }
    static low() {
        return new FlutterFilterQuality({
            builder: 'f:1:FilterQuality.low'
        });
    }
    static medium() {
        return new FlutterFilterQuality({
            builder: 'f:1:FilterQuality.medium'
        });
    }
    static none() {
        return new FlutterFilterQuality({
            builder: 'f:1:FilterQuality.none'
        });
    }
}
export class FlutterFittedBox extends ZacBuilder {
    static new(data) {
        return new FlutterFittedBox(Object.assign({ builder: 'f:1:FittedBox' }, data));
    }
}
export class FlutterFlexFit extends ZacBuilder {
    static tight() {
        return new FlutterFlexFit({
            builder: 'f:1:FlexFit.tight'
        });
    }
    static loose() {
        return new FlutterFlexFit({
            builder: 'f:1:FlexFit.loose'
        });
    }
}
export class FlutterFlexible extends ZacBuilder {
    static new(data) {
        return new FlutterFlexible(Object.assign({ builder: 'f:1:Flexible' }, data));
    }
}
export class FlutterFontFeature extends ZacBuilder {
    static new(data) {
        return new FlutterFontFeature(Object.assign({ builder: 'f:1:FontFeature' }, data));
    }
    static alternative(data) {
        return new FlutterFontFeature(Object.assign({ builder: 'f:1:FontFeature.alternative' }, data));
    }
    static alternativeFractions() {
        return new FlutterFontFeature({
            builder: 'f:1:FontFeature.alternativeFractions'
        });
    }
    static caseSensitiveForms() {
        return new FlutterFontFeature({
            builder: 'f:1:FontFeature.caseSensitiveForms'
        });
    }
    static characterVariant(data) {
        return new FlutterFontFeature(Object.assign({ builder: 'f:1:FontFeature.characterVariant' }, data));
    }
    static contextualAlternates() {
        return new FlutterFontFeature({
            builder: 'f:1:FontFeature.contextualAlternates'
        });
    }
    static denominator() {
        return new FlutterFontFeature({
            builder: 'f:1:FontFeature.denominator'
        });
    }
    static disable(data) {
        return new FlutterFontFeature(Object.assign({ builder: 'f:1:FontFeature.disable' }, data));
    }
    static enable(data) {
        return new FlutterFontFeature(Object.assign({ builder: 'f:1:FontFeature.enable' }, data));
    }
    static fractions() {
        return new FlutterFontFeature({
            builder: 'f:1:FontFeature.fractions'
        });
    }
    static historicalForms() {
        return new FlutterFontFeature({
            builder: 'f:1:FontFeature.historicalForms'
        });
    }
    static historicalLigatures() {
        return new FlutterFontFeature({
            builder: 'f:1:FontFeature.historicalLigatures'
        });
    }
    static liningFigures() {
        return new FlutterFontFeature({
            builder: 'f:1:FontFeature.liningFigures'
        });
    }
    static localeAware(data) {
        return new FlutterFontFeature(Object.assign({ builder: 'f:1:FontFeature.localeAware' }, data));
    }
    static notationalForms(data) {
        return new FlutterFontFeature(Object.assign({ builder: 'f:1:FontFeature.notationalForms' }, data));
    }
    static numerators() {
        return new FlutterFontFeature({
            builder: 'f:1:FontFeature.numerators'
        });
    }
    static oldstyleFigures() {
        return new FlutterFontFeature({
            builder: 'f:1:FontFeature.oldstyleFigures'
        });
    }
    static ordinalForms() {
        return new FlutterFontFeature({
            builder: 'f:1:FontFeature.ordinalForms'
        });
    }
    static proportionalFigures() {
        return new FlutterFontFeature({
            builder: 'f:1:FontFeature.proportionalFigures'
        });
    }
    static randomize() {
        return new FlutterFontFeature({
            builder: 'f:1:FontFeature.randomize'
        });
    }
    static scientificInferiors() {
        return new FlutterFontFeature({
            builder: 'f:1:FontFeature.scientificInferiors'
        });
    }
    static slashedZero() {
        return new FlutterFontFeature({
            builder: 'f:1:FontFeature.slashedZero'
        });
    }
    static stylisticAlternates() {
        return new FlutterFontFeature({
            builder: 'f:1:FontFeature.stylisticAlternates'
        });
    }
    static stylisticSet(data) {
        return new FlutterFontFeature(Object.assign({ builder: 'f:1:FontFeature.stylisticSet' }, data));
    }
    static subscripts() {
        return new FlutterFontFeature({
            builder: 'f:1:FontFeature.subscripts'
        });
    }
    static superscripts() {
        return new FlutterFontFeature({
            builder: 'f:1:FontFeature.superscripts'
        });
    }
    static swash(data) {
        return new FlutterFontFeature(Object.assign({ builder: 'f:1:FontFeature.swash' }, data));
    }
    static tabularFigures() {
        return new FlutterFontFeature({
            builder: 'f:1:FontFeature.tabularFigures'
        });
    }
}
export class FlutterFontStyle extends ZacBuilder {
    static italic() {
        return new FlutterFontStyle({
            builder: 'f:1:FontStyle.italic'
        });
    }
    static normal() {
        return new FlutterFontStyle({
            builder: 'f:1:FontStyle.normal'
        });
    }
}
export class FlutterFontWeight extends ZacBuilder {
    static bold() {
        return new FlutterFontWeight({
            builder: 'f:1:FontWeight.bold'
        });
    }
    static normal() {
        return new FlutterFontWeight({
            builder: 'f:1:FontWeight.normal'
        });
    }
    static w100() {
        return new FlutterFontWeight({
            builder: 'f:1:FontWeight.w100'
        });
    }
    static w200() {
        return new FlutterFontWeight({
            builder: 'f:1:FontWeight.w200'
        });
    }
    static w300() {
        return new FlutterFontWeight({
            builder: 'f:1:FontWeight.w300'
        });
    }
    static w400() {
        return new FlutterFontWeight({
            builder: 'f:1:FontWeight.w400'
        });
    }
    static w500() {
        return new FlutterFontWeight({
            builder: 'f:1:FontWeight.w500'
        });
    }
    static w600() {
        return new FlutterFontWeight({
            builder: 'f:1:FontWeight.w600'
        });
    }
    static w700() {
        return new FlutterFontWeight({
            builder: 'f:1:FontWeight.w700'
        });
    }
    static w800() {
        return new FlutterFontWeight({
            builder: 'f:1:FontWeight.w800'
        });
    }
    static w900() {
        return new FlutterFontWeight({
            builder: 'f:1:FontWeight.w900'
        });
    }
}
export class FlutterFractionalOffset extends ZacBuilder {
    static new(data) {
        return new FlutterFractionalOffset(Object.assign({ builder: 'f:1:FractionalOffset' }, data));
    }
}
export class FlutterFractionalTranslation extends ZacBuilder {
    static new(data) {
        return new FlutterFractionalTranslation(Object.assign({ builder: 'f:1:FractionalTranslation' }, data));
    }
}
export class FlutterFractionallySizedBox extends ZacBuilder {
    static new(data) {
        return new FlutterFractionallySizedBox(Object.assign({ builder: 'f:1:FractionallySizedBox' }, data));
    }
}
export class FlutterGestureDetector extends ZacBuilder {
    static new(data) {
        return new FlutterGestureDetector(Object.assign({ builder: 'f:1:GestureDetector' }, data));
    }
}
export class FlutterGlobalKeyNavigatorStateProvider extends ZacBuilder {
    static new(data) {
        return new FlutterGlobalKeyNavigatorStateProvider(Object.assign({ builder: 'z:1:GlobalKey<NavigatorState>.provide' }, data));
    }
}
export class FlutterGlobalKeyScaffoldMessengerStateProvider extends ZacBuilder {
    static new(data) {
        return new FlutterGlobalKeyScaffoldMessengerStateProvider(Object.assign({ builder: 'z:1:GlobalKey<ScaffoldMessengerState>.provide' }, data));
    }
}
export class FlutterGridView extends ZacBuilder {
    static new(data) {
        return new FlutterGridView(Object.assign({ builder: 'f:1:GridView' }, data));
    }
}
export class FlutterHitTestBehavior extends ZacBuilder {
    static deferToChild() {
        return new FlutterHitTestBehavior({
            builder: 'f:1:HitTestBehavior.deferToChild'
        });
    }
    static opaque() {
        return new FlutterHitTestBehavior({
            builder: 'f:1:HitTestBehavior.opaque'
        });
    }
    static translucent() {
        return new FlutterHitTestBehavior({
            builder: 'f:1:HitTestBehavior.translucent'
        });
    }
}
export class FlutterIcon extends ZacBuilder {
    static new(data) {
        return new FlutterIcon(Object.assign({ builder: 'f:1:Icon' }, data));
    }
}
export class FlutterIconData extends ZacBuilder {
    static new(data) {
        return new FlutterIconData(Object.assign({ builder: 'f:1:IconData' }, data));
    }
}
export class FlutterIconThemeData extends ZacBuilder {
    static new(data) {
        return new FlutterIconThemeData(Object.assign({ builder: 'f:1:IconThemeData' }, data));
    }
}
export class FlutterIgnorePointer extends ZacBuilder {
    static new(data) {
        return new FlutterIgnorePointer(Object.assign({ builder: 'f:1:IgnorePointer' }, data));
    }
}
export class FlutterImage extends ZacBuilder {
    static network(data) {
        return new FlutterImage(Object.assign({ builder: 'f:1:Image.network' }, data));
    }
    static asset(data) {
        return new FlutterImage(Object.assign({ builder: 'f:1:Image.asset' }, data));
    }
}
export class FlutterImageRepeat extends ZacBuilder {
    static noRepeat() {
        return new FlutterImageRepeat({
            builder: 'f:1:ImageRepeat.noRepeat'
        });
    }
    static repeat() {
        return new FlutterImageRepeat({
            builder: 'f:1:ImageRepeat.repeat'
        });
    }
    static repeatX() {
        return new FlutterImageRepeat({
            builder: 'f:1:ImageRepeat.repeatX'
        });
    }
    static repeatY() {
        return new FlutterImageRepeat({
            builder: 'f:1:ImageRepeat.repeatY'
        });
    }
}
export class FlutterIndexedStack extends ZacBuilder {
    static new(data) {
        return new FlutterIndexedStack(Object.assign({ builder: 'f:1:IndexedStack' }, data));
    }
}
export class FlutterInputDecoration extends ZacBuilder {
    static new(data) {
        return new FlutterInputDecoration(Object.assign({ builder: 'f:1:InputDecoration' }, data));
    }
}
export class FlutterInteractiveViewer extends ZacBuilder {
    static new(data) {
        return new FlutterInteractiveViewer(Object.assign({ builder: 'f:1:InteractiveViewer' }, data));
    }
}
export class FlutterIntrinsicHeight extends ZacBuilder {
    static new(data) {
        return new FlutterIntrinsicHeight(Object.assign({ builder: 'f:1:IntrinsicHeight' }, data));
    }
}
export class FlutterIntrinsicWidth extends ZacBuilder {
    static new(data) {
        return new FlutterIntrinsicWidth(Object.assign({ builder: 'f:1:IntrinsicWidth' }, data));
    }
}
export class FlutterLimitedBox extends ZacBuilder {
    static new(data) {
        return new FlutterLimitedBox(Object.assign({ builder: 'f:1:LimitedBox' }, data));
    }
}
export class FlutterListTile extends ZacBuilder {
    static new(data) {
        return new FlutterListTile(Object.assign({ builder: 'f:1:ListTile' }, data));
    }
}
export class FlutterListView extends ZacBuilder {
    static new(data) {
        return new FlutterListView(Object.assign({ builder: 'f:1:ListView' }, data));
    }
}
export class FlutterLocale extends ZacBuilder {
    static new(data) {
        return new FlutterLocale(Object.assign({ builder: 'f:1:Locale' }, data));
    }
}
export class FlutterMainAxisAlignment extends ZacBuilder {
    static start() {
        return new FlutterMainAxisAlignment({
            builder: 'f:1:MainAxisAlignment.start'
        });
    }
    static end() {
        return new FlutterMainAxisAlignment({
            builder: 'f:1:MainAxisAlignment.end'
        });
    }
    static center() {
        return new FlutterMainAxisAlignment({
            builder: 'f:1:MainAxisAlignment.center'
        });
    }
    static spaceBetween() {
        return new FlutterMainAxisAlignment({
            builder: 'f:1:MainAxisAlignment.spaceBetween'
        });
    }
    static spaceAround() {
        return new FlutterMainAxisAlignment({
            builder: 'f:1:MainAxisAlignment.spaceAround'
        });
    }
    static spaceEvenly() {
        return new FlutterMainAxisAlignment({
            builder: 'f:1:MainAxisAlignment.spaceEvenly'
        });
    }
}
export class FlutterMainAxisSize extends ZacBuilder {
    static min() {
        return new FlutterMainAxisSize({
            builder: 'f:1:MainAxisSize.min'
        });
    }
    static max() {
        return new FlutterMainAxisSize({
            builder: 'f:1:MainAxisSize.max'
        });
    }
}
export class FlutterMaterial extends ZacBuilder {
    static new(data) {
        return new FlutterMaterial(Object.assign({ builder: 'f:1:Material' }, data));
    }
}
export class FlutterMaterialApp extends ZacBuilder {
    static new(data) {
        return new FlutterMaterialApp(Object.assign({ builder: 'f:1:MaterialApp' }, data));
    }
}
export class FlutterMaterialBanner extends ZacBuilder {
    static new(data) {
        return new FlutterMaterialBanner(Object.assign({ builder: 'f:1:MaterialBanner' }, data));
    }
}
export class FlutterMaterialPageRoute extends ZacBuilder {
    static new(data) {
        return new FlutterMaterialPageRoute(Object.assign({ builder: 'f:1:MaterialPageRoute' }, data));
    }
}
export class FlutterNavigator extends ZacBuilder {
    static new(data) {
        return new FlutterNavigator(Object.assign({ builder: 'f:1:Navigator' }, data));
    }
}
export class FlutterNavigatorState extends ZacBuilder {
    static closest() {
        return new FlutterNavigatorState({
            builder: 'f:1:NavigatorState.closest'
        });
    }
    static root() {
        return new FlutterNavigatorState({
            builder: 'f:1:NavigatorState.root'
        });
    }
    static shared(data) {
        return new FlutterNavigatorState(Object.assign({ builder: 'z:1:NavigatorState.shared' }, data));
    }
}
export class FlutterOffset extends ZacBuilder {
    static new(data) {
        return new FlutterOffset(Object.assign({ builder: 'f:1:Offset' }, data));
    }
    static fromDirection(data) {
        return new FlutterOffset(Object.assign({ builder: 'f:1:Offset.fromDirection' }, data));
    }
}
export class FlutterOffstage extends ZacBuilder {
    static new(data) {
        return new FlutterOffstage(Object.assign({ builder: 'f:1:Offstage' }, data));
    }
}
export class FlutterOpacity extends ZacBuilder {
    static new(data) {
        return new FlutterOpacity(Object.assign({ builder: 'f:1:Opacity' }, data));
    }
}
export class FlutterOutlineInputBorder extends ZacBuilder {
    static new(data) {
        return new FlutterOutlineInputBorder(Object.assign({ builder: 'f:1:OutlineInputBorder' }, data));
    }
}
export class FlutterOutlinedButton extends ZacBuilder {
    static new(data) {
        return new FlutterOutlinedButton(Object.assign({ builder: 'f:1:OutlinedButton' }, data));
    }
    static icon(data) {
        return new FlutterOutlinedButton(Object.assign({ builder: 'f:1:OutlinedButton.icon' }, data));
    }
}
export class FlutterOverflowBox extends ZacBuilder {
    static new(data) {
        return new FlutterOverflowBox(Object.assign({ builder: 'f:1:OverflowBox' }, data));
    }
}
export class FlutterPadding extends ZacBuilder {
    static new(data) {
        return new FlutterPadding(Object.assign({ builder: 'f:1:Padding' }, data));
    }
}
export class FlutterPageRouteBuilder extends ZacBuilder {
    static new(data) {
        return new FlutterPageRouteBuilder(Object.assign({ builder: 'f:1:PageRouteBuilder' }, data));
    }
}
export class FlutterPositioned extends ZacBuilder {
    static new(data) {
        return new FlutterPositioned(Object.assign({ builder: 'f:1:Positioned' }, data));
    }
    static directional(data) {
        return new FlutterPositioned(Object.assign({ builder: 'f:1:Positioned.directional' }, data));
    }
    static fill(data) {
        return new FlutterPositioned(Object.assign({ builder: 'f:1:Positioned.fill' }, data));
    }
}
export class FlutterProgressIndicator extends ZacBuilder {
    static linear(data) {
        return new FlutterProgressIndicator(Object.assign({ builder: 'f:1:LinearProgressIndicator' }, data));
    }
    static circular(data) {
        return new FlutterProgressIndicator(Object.assign({ builder: 'f:1:CircularProgressIndicator' }, data));
    }
}
export class FlutterRadius extends ZacBuilder {
    static circular(data) {
        return new FlutterRadius(Object.assign({ builder: 'f:1:Radius.circular' }, data));
    }
    static elliptical(data) {
        return new FlutterRadius(Object.assign({ builder: 'f:1:Radius.elliptical' }, data));
    }
}
export class FlutterRect extends ZacBuilder {
    static fromCenter(data) {
        return new FlutterRect(Object.assign({ builder: 'f:1:Rect.fromCenter' }, data));
    }
    static fromCircle(data) {
        return new FlutterRect(Object.assign({ builder: 'f:1:Rect.fromCircle' }, data));
    }
    static fromLTRB(data) {
        return new FlutterRect(Object.assign({ builder: 'f:1:Rect.fromLTRB' }, data));
    }
    static fromLTWH(data) {
        return new FlutterRect(Object.assign({ builder: 'f:1:Rect.fromLTWH' }, data));
    }
    static fromPoints(data) {
        return new FlutterRect(Object.assign({ builder: 'f:1:Rect.fromPoints' }, data));
    }
}
export class FlutterRefreshIndicator extends ZacBuilder {
    static new(data) {
        return new FlutterRefreshIndicator(Object.assign({ builder: 'f:1:RefreshIndicator' }, data));
    }
}
export class FlutterRefreshIndicatorTriggerMode extends ZacBuilder {
    static onEdge() {
        return new FlutterRefreshIndicatorTriggerMode({
            builder: 'f:1:RefreshIndicatorTriggerMode.onEdge'
        });
    }
    static anywhere() {
        return new FlutterRefreshIndicatorTriggerMode({
            builder: 'f:1:RefreshIndicatorTriggerMode.anywhere'
        });
    }
}
export class FlutterRotatedBox extends ZacBuilder {
    static new(data) {
        return new FlutterRotatedBox(Object.assign({ builder: 'f:1:RotatedBox' }, data));
    }
}
export class FlutterRoundedRectangleBorder extends ZacBuilder {
    static new(data) {
        return new FlutterRoundedRectangleBorder(Object.assign({ builder: 'f:1:RoundedRectangleBorder' }, data));
    }
}
export class FlutterRouteFactory extends ZacBuilder {
    static new(data) {
        return new FlutterRouteFactory(Object.assign({ builder: 'f:1:RouteFactory' }, data));
    }
}
export class FlutterRouteSettings extends ZacBuilder {
    static new(data) {
        return new FlutterRouteSettings(Object.assign({ builder: 'f:1:RouteSettings' }, data));
    }
}
export class FlutterRow extends ZacBuilder {
    static new(data) {
        return new FlutterRow(Object.assign({ builder: 'f:1:Row' }, data));
    }
}
export class FlutterSafeArea extends ZacBuilder {
    static new(data) {
        return new FlutterSafeArea(Object.assign({ builder: 'f:1:SafeArea' }, data));
    }
}
export class FlutterScaffold extends ZacBuilder {
    static new(data) {
        return new FlutterScaffold(Object.assign({ builder: 'f:1:Scaffold' }, data));
    }
}
export class FlutterScrollController extends ZacBuilder {
    static new(data) {
        return new FlutterScrollController(Object.assign({ builder: 'z:1:ScrollController.provide' }, data));
    }
}
export class FlutterScrollPhysics extends ZacBuilder {
    static alwaysScrollable(data) {
        return new FlutterScrollPhysics(Object.assign({ builder: 'f:1:AlwaysScrollableScrollPhysics' }, data));
    }
    static bouncingScroll(data) {
        return new FlutterScrollPhysics(Object.assign({ builder: 'f:1:BouncingScrollPhysics' }, data));
    }
    static clampingScrollPhysics(data) {
        return new FlutterScrollPhysics(Object.assign({ builder: 'f:1:ClampingScrollPhysics' }, data));
    }
}
export class FlutterScrollViewKeyboardDismissBehavior extends ZacBuilder {
    static manual() {
        return new FlutterScrollViewKeyboardDismissBehavior({
            builder: 'f:1:ScrollViewKeyboardDismissBehavior.manual'
        });
    }
    static onDrag() {
        return new FlutterScrollViewKeyboardDismissBehavior({
            builder: 'f:1:ScrollViewKeyboardDismissBehavior.onDrag'
        });
    }
}
export class FlutterSelectableText extends ZacBuilder {
    static new(data) {
        return new FlutterSelectableText(Object.assign({ builder: 'f:1:SelectableText' }, data));
    }
}
export class FlutterShadow extends ZacBuilder {
    static new(data) {
        return new FlutterShadow(Object.assign({ builder: 'f:1:Shadow' }, data));
    }
}
export class FlutterShapeDecoration extends ZacBuilder {
    static new(data) {
        return new FlutterShapeDecoration(Object.assign({ builder: 'f:1:ShapeDecoration' }, data));
    }
}
export class FlutterSingleChildScrollView extends ZacBuilder {
    static new(data) {
        return new FlutterSingleChildScrollView(Object.assign({ builder: 'f:1:SingleChildScrollView' }, data));
    }
}
export class FlutterSize extends ZacBuilder {
    static new(data) {
        return new FlutterSize(Object.assign({ builder: 'f:1:Size' }, data));
    }
}
export class FlutterSizedBox extends ZacBuilder {
    static new(data) {
        return new FlutterSizedBox(Object.assign({ builder: 'f:1:SizedBox' }, data));
    }
    static expand(data) {
        return new FlutterSizedBox(Object.assign({ builder: 'f:1:SizedBox.expand' }, data));
    }
    static fromSize(data) {
        return new FlutterSizedBox(Object.assign({ builder: 'f:1:SizedBox.fromSize' }, data));
    }
    static shrink(data) {
        return new FlutterSizedBox(Object.assign({ builder: 'f:1:SizedBox.shrink' }, data));
    }
    static square(data) {
        return new FlutterSizedBox(Object.assign({ builder: 'f:1:SizedBox.square' }, data));
    }
}
export class FlutterSizedOverflowBox extends ZacBuilder {
    static new(data) {
        return new FlutterSizedOverflowBox(Object.assign({ builder: 'f:1:SizedOverflowBox' }, data));
    }
}
export class FlutterSliverChildDelegate extends ZacBuilder {
    static list(data) {
        return new FlutterSliverChildDelegate(Object.assign({ builder: 'f:1:SliverChildListDelegate' }, data));
    }
    static listFixed(data) {
        return new FlutterSliverChildDelegate(Object.assign({ builder: 'f:1:SliverChildListDelegate.fixed' }, data));
    }
}
export class FlutterSliverGrid extends ZacBuilder {
    static new(data) {
        return new FlutterSliverGrid(Object.assign({ builder: 'f:1:SliverGrid' }, data));
    }
}
export class FlutterSliverGridDelegate extends ZacBuilder {
    static withFixedCrossAxisCount(data) {
        return new FlutterSliverGridDelegate(Object.assign({ builder: 'f:1:SliverGridDelegateWithFixedCrossAxisCount' }, data));
    }
    static withMaxCrossAxisExtent(data) {
        return new FlutterSliverGridDelegate(Object.assign({ builder: 'f:1:SliverGridDelegateWithMaxCrossAxisExtent' }, data));
    }
}
export class FlutterSliverList extends ZacBuilder {
    static new(data) {
        return new FlutterSliverList(Object.assign({ builder: 'f:1:SliverList' }, data));
    }
}
export class FlutterSliverPadding extends ZacBuilder {
    static new(data) {
        return new FlutterSliverPadding(Object.assign({ builder: 'f:1:SliverPadding' }, data));
    }
}
export class FlutterSliverToBoxAdapter extends ZacBuilder {
    static new(data) {
        return new FlutterSliverToBoxAdapter(Object.assign({ builder: 'f:1:SliverToBoxAdapter' }, data));
    }
}
export class FlutterSmartDashesType extends ZacBuilder {
    static disabled() {
        return new FlutterSmartDashesType({
            builder: 'f:1:SmartDashesType.disabled'
        });
    }
    static enabled() {
        return new FlutterSmartDashesType({
            builder: 'f:1:SmartDashesType.enabled'
        });
    }
}
export class FlutterSmartQuotesType extends ZacBuilder {
    static disabled() {
        return new FlutterSmartQuotesType({
            builder: 'f:1:SmartQuotesType.disabled'
        });
    }
    static enabled() {
        return new FlutterSmartQuotesType({
            builder: 'f:1:SmartQuotesType.enabled'
        });
    }
}
export class FlutterSnackBar extends ZacBuilder {
    static new(data) {
        return new FlutterSnackBar(Object.assign({ builder: 'f:1:SnackBar' }, data));
    }
}
export class FlutterSnackBarAction extends ZacBuilder {
    static new(data) {
        return new FlutterSnackBarAction(Object.assign({ builder: 'f:1:SnackBarAction' }, data));
    }
}
export class FlutterSnackBarBehavior extends ZacBuilder {
    static fixed() {
        return new FlutterSnackBarBehavior({
            builder: 'f:1:SnackBarBehavior.fixed'
        });
    }
    static floating() {
        return new FlutterSnackBarBehavior({
            builder: 'f:1:SnackBarBehavior.floating'
        });
    }
}
export class FlutterSpacer extends ZacBuilder {
    static new(data) {
        return new FlutterSpacer(Object.assign({ builder: 'f:1:Spacer' }, data));
    }
}
export class FlutterStack extends ZacBuilder {
    static new(data) {
        return new FlutterStack(Object.assign({ builder: 'f:1:Stack' }, data));
    }
}
export class FlutterStackFit extends ZacBuilder {
    static expand() {
        return new FlutterStackFit({
            builder: 'f:1:StackFit.expand'
        });
    }
    static loose() {
        return new FlutterStackFit({
            builder: 'f:1:StackFit.loose'
        });
    }
    static passthrough() {
        return new FlutterStackFit({
            builder: 'f:1:StackFit.passthrough'
        });
    }
}
export class FlutterStrutStyle extends ZacBuilder {
    static new(data) {
        return new FlutterStrutStyle(Object.assign({ builder: 'f:1:StrutStyle' }, data));
    }
    static fromTextStyle(data) {
        return new FlutterStrutStyle(Object.assign({ builder: 'f:1:StrutStyle.fromTextStyle' }, data));
    }
}
export class FlutterSystemUiOverlayStyle extends ZacBuilder {
    static new(data) {
        return new FlutterSystemUiOverlayStyle(Object.assign({ builder: 'f:1:SystemUiOverlayStyle' }, data));
    }
}
export class FlutterText extends ZacBuilder {
    static new(data) {
        return new FlutterText(Object.assign({ builder: 'f:1:Text' }, data));
    }
}
export class FlutterTextAlign extends ZacBuilder {
    static center() {
        return new FlutterTextAlign({
            builder: 'f:1:TextAlign.center'
        });
    }
    static end() {
        return new FlutterTextAlign({
            builder: 'f:1:TextAlign.end'
        });
    }
    static justify() {
        return new FlutterTextAlign({
            builder: 'f:1:TextAlign.justify'
        });
    }
    static left() {
        return new FlutterTextAlign({
            builder: 'f:1:TextAlign.left'
        });
    }
    static right() {
        return new FlutterTextAlign({
            builder: 'f:1:TextAlign.right'
        });
    }
    static start() {
        return new FlutterTextAlign({
            builder: 'f:1:TextAlign.start'
        });
    }
}
export class FlutterTextAlignVertical extends ZacBuilder {
    static new(data) {
        return new FlutterTextAlignVertical(Object.assign({ builder: 'f:1:TextAlignVertical' }, data));
    }
    static bottom() {
        return new FlutterTextAlignVertical({
            builder: 'f:1:TextAlignVertical.bottom'
        });
    }
    static center() {
        return new FlutterTextAlignVertical({
            builder: 'f:1:TextAlignVertical.center'
        });
    }
    static top() {
        return new FlutterTextAlignVertical({
            builder: 'f:1:TextAlignVertical.top'
        });
    }
}
export class FlutterTextBaseline extends ZacBuilder {
    static alphabetic() {
        return new FlutterTextBaseline({
            builder: 'f:1:TextBaseline.alphabetic'
        });
    }
    static ideographic() {
        return new FlutterTextBaseline({
            builder: 'f:1:TextBaseline.ideographic'
        });
    }
}
export class FlutterTextButton extends ZacBuilder {
    static new(data) {
        return new FlutterTextButton(Object.assign({ builder: 'f:1:TextButton' }, data));
    }
    static icon(data) {
        return new FlutterTextButton(Object.assign({ builder: 'f:1:TextButton.icon' }, data));
    }
}
export class FlutterTextCapitalization extends ZacBuilder {
    static characters() {
        return new FlutterTextCapitalization({
            builder: 'f:1:TextCapitalization.characters'
        });
    }
    static none() {
        return new FlutterTextCapitalization({
            builder: 'f:1:TextCapitalization.none'
        });
    }
    static sentences() {
        return new FlutterTextCapitalization({
            builder: 'f:1:TextCapitalization.sentences'
        });
    }
    static words() {
        return new FlutterTextCapitalization({
            builder: 'f:1:TextCapitalization.words'
        });
    }
}
export class FlutterTextDecoration extends ZacBuilder {
    static lineThrough() {
        return new FlutterTextDecoration({
            builder: 'f:1:TextDecoration.lineThrough'
        });
    }
    static none() {
        return new FlutterTextDecoration({
            builder: 'f:1:TextDecoration.none'
        });
    }
    static overline() {
        return new FlutterTextDecoration({
            builder: 'f:1:TextDecoration.overline'
        });
    }
    static underline() {
        return new FlutterTextDecoration({
            builder: 'f:1:TextDecoration.underline'
        });
    }
}
export class FlutterTextDecorationStyle extends ZacBuilder {
    static dashed() {
        return new FlutterTextDecorationStyle({
            builder: 'f:1:TextDecorationStyle.dashed'
        });
    }
    static dotted() {
        return new FlutterTextDecorationStyle({
            builder: 'f:1:TextDecorationStyle.dotted'
        });
    }
    static double() {
        return new FlutterTextDecorationStyle({
            builder: 'f:1:TextDecorationStyle.double'
        });
    }
    static solid() {
        return new FlutterTextDecorationStyle({
            builder: 'f:1:TextDecorationStyle.solid'
        });
    }
    static wavy() {
        return new FlutterTextDecorationStyle({
            builder: 'f:1:TextDecorationStyle.wavy'
        });
    }
}
export class FlutterTextDirection extends ZacBuilder {
    static rtl() {
        return new FlutterTextDirection({
            builder: 'f:1:TextDirection.rtl'
        });
    }
    static ltr() {
        return new FlutterTextDirection({
            builder: 'f:1:TextDirection.ltr'
        });
    }
}
export class FlutterTextField extends ZacBuilder {
    static new(data) {
        return new FlutterTextField(Object.assign({ builder: 'f:1:TextField' }, data));
    }
}
export class FlutterTextHeightBehavior extends ZacBuilder {
    static new(data) {
        return new FlutterTextHeightBehavior(Object.assign({ builder: 'f:1:TextHeightBehavior' }, data));
    }
}
export class FlutterTextInputAction extends ZacBuilder {
    static continueAction() {
        return new FlutterTextInputAction({
            builder: 'f:1:TextInputAction.continueAction'
        });
    }
    static done() {
        return new FlutterTextInputAction({
            builder: 'f:1:TextInputAction.done'
        });
    }
    static emergencyCall() {
        return new FlutterTextInputAction({
            builder: 'f:1:TextInputAction.emergencyCall'
        });
    }
    static go() {
        return new FlutterTextInputAction({
            builder: 'f:1:TextInputAction.go'
        });
    }
    static join() {
        return new FlutterTextInputAction({
            builder: 'f:1:TextInputAction.join'
        });
    }
    static newline() {
        return new FlutterTextInputAction({
            builder: 'f:1:TextInputAction.newline'
        });
    }
    static next() {
        return new FlutterTextInputAction({
            builder: 'f:1:TextInputAction.next'
        });
    }
    static none() {
        return new FlutterTextInputAction({
            builder: 'f:1:TextInputAction.none'
        });
    }
    static previous() {
        return new FlutterTextInputAction({
            builder: 'f:1:TextInputAction.previous'
        });
    }
    static route() {
        return new FlutterTextInputAction({
            builder: 'f:1:TextInputAction.route'
        });
    }
    static search() {
        return new FlutterTextInputAction({
            builder: 'f:1:TextInputAction.search'
        });
    }
    static send() {
        return new FlutterTextInputAction({
            builder: 'f:1:TextInputAction.send'
        });
    }
    static unspecified() {
        return new FlutterTextInputAction({
            builder: 'f:1:TextInputAction.unspecified'
        });
    }
}
export class FlutterTextInputType extends ZacBuilder {
    static datetime() {
        return new FlutterTextInputType({
            builder: 'f:1:TextInputType.datetime'
        });
    }
    static emailAddress() {
        return new FlutterTextInputType({
            builder: 'f:1:TextInputType.emailAddress'
        });
    }
    static multiline() {
        return new FlutterTextInputType({
            builder: 'f:1:TextInputType.multiline'
        });
    }
    static name_() {
        return new FlutterTextInputType({
            builder: 'f:1:TextInputType.name'
        });
    }
    static none() {
        return new FlutterTextInputType({
            builder: 'f:1:TextInputType.none'
        });
    }
    static number() {
        return new FlutterTextInputType({
            builder: 'f:1:TextInputType.number'
        });
    }
    static phone() {
        return new FlutterTextInputType({
            builder: 'f:1:TextInputType.phone'
        });
    }
    static streetAddress() {
        return new FlutterTextInputType({
            builder: 'f:1:TextInputType.streetAddress'
        });
    }
    static text() {
        return new FlutterTextInputType({
            builder: 'f:1:TextInputType.text'
        });
    }
    static url() {
        return new FlutterTextInputType({
            builder: 'f:1:TextInputType.url'
        });
    }
    static visiblePassword() {
        return new FlutterTextInputType({
            builder: 'f:1:TextInputType.visiblePassword'
        });
    }
}
export class FlutterTextLeadingDistribution extends ZacBuilder {
    static even() {
        return new FlutterTextLeadingDistribution({
            builder: 'f:1:TextLeadingDistribution.even'
        });
    }
    static proportional() {
        return new FlutterTextLeadingDistribution({
            builder: 'f:1:TextLeadingDistribution.proportional'
        });
    }
}
export class FlutterTextOverflow extends ZacBuilder {
    static clip() {
        return new FlutterTextOverflow({
            builder: 'f:1:TextOverflow.clip'
        });
    }
    static ellipsis() {
        return new FlutterTextOverflow({
            builder: 'f:1:TextOverflow.ellipsis'
        });
    }
    static fade() {
        return new FlutterTextOverflow({
            builder: 'f:1:TextOverflow.fade'
        });
    }
    static visible() {
        return new FlutterTextOverflow({
            builder: 'f:1:TextOverflow.visible'
        });
    }
}
export class FlutterTextStyle extends ZacBuilder {
    static new(data) {
        return new FlutterTextStyle(Object.assign({ builder: 'f:1:TextStyle' }, data));
    }
}
export class FlutterTextWidthBasis extends ZacBuilder {
    static longestLine() {
        return new FlutterTextWidthBasis({
            builder: 'f:1:TextWidthBasis.longestLine'
        });
    }
    static parent() {
        return new FlutterTextWidthBasis({
            builder: 'f:1:TextWidthBasis.parent'
        });
    }
}
export class FlutterUnconstrainedBox extends ZacBuilder {
    static new(data) {
        return new FlutterUnconstrainedBox(Object.assign({ builder: 'f:1:UnconstrainedBox' }, data));
    }
}
export class FlutterUnderlineInputBorder extends ZacBuilder {
    static new(data) {
        return new FlutterUnderlineInputBorder(Object.assign({ builder: 'f:1:UnderlineInputBorder' }, data));
    }
}
export class FlutterValueKey extends ZacBuilder {
    static new(data) {
        return new FlutterValueKey(Object.assign({ builder: 'f:1:ValueKey' }, data));
    }
}
export class FlutterVerticalDirection extends ZacBuilder {
    static up() {
        return new FlutterVerticalDirection({
            builder: 'f:1:VerticalDirection.up'
        });
    }
    static down() {
        return new FlutterVerticalDirection({
            builder: 'f:1:VerticalDirection.down'
        });
    }
}
export class FlutterWrap extends ZacBuilder {
    static new(data) {
        return new FlutterWrap(Object.assign({ builder: 'f:1:Wrap' }, data));
    }
}
export class FlutterWrapAlignment extends ZacBuilder {
    static start() {
        return new FlutterWrapAlignment({
            builder: 'f:1:WrapAlignment.start'
        });
    }
    static end() {
        return new FlutterWrapAlignment({
            builder: 'f:1:WrapAlignment.end'
        });
    }
    static center() {
        return new FlutterWrapAlignment({
            builder: 'f:1:WrapAlignment.center'
        });
    }
    static spaceBetween() {
        return new FlutterWrapAlignment({
            builder: 'f:1:WrapAlignment.spaceBetween'
        });
    }
    static spaceAround() {
        return new FlutterWrapAlignment({
            builder: 'f:1:WrapAlignment.spaceAround'
        });
    }
    static spaceEvenly() {
        return new FlutterWrapAlignment({
            builder: 'f:1:WrapAlignment.spaceEvenly'
        });
    }
}
export class FlutterWrapCrossAlignment extends ZacBuilder {
    static center() {
        return new FlutterWrapCrossAlignment({
            builder: 'f:1:WrapCrossAlignment.center'
        });
    }
    static end() {
        return new FlutterWrapCrossAlignment({
            builder: 'f:1:WrapCrossAlignment.end'
        });
    }
    static start() {
        return new FlutterWrapCrossAlignment({
            builder: 'f:1:WrapCrossAlignment.start'
        });
    }
}
export class SharedValueProviderBuilder extends ZacBuilder {
    static provideInt(data) {
        return new SharedValueProviderBuilder(Object.assign({ builder: 'z:1:int.provide' }, data));
    }
    static provideDouble(data) {
        return new SharedValueProviderBuilder(Object.assign({ builder: 'z:1:double.provide' }, data));
    }
    static provideString(data) {
        return new SharedValueProviderBuilder(Object.assign({ builder: 'z:1:String.provide' }, data));
    }
    static provideBool(data) {
        return new SharedValueProviderBuilder(Object.assign({ builder: 'z:1:bool.provide' }, data));
    }
    static provideObject(data) {
        return new SharedValueProviderBuilder(Object.assign({ builder: 'z:1:Object.provide' }, data));
    }
    static provideNull(data) {
        return new SharedValueProviderBuilder(Object.assign({ builder: 'z:1:null.provide' }, data));
    }
    static provideWidget(data) {
        return new SharedValueProviderBuilder(Object.assign({ builder: 'z:1:Widget.provide' }, data));
    }
    static provideWidgets(data) {
        return new SharedValueProviderBuilder(Object.assign({ builder: 'z:1:List<Widget>.provide' }, data));
    }
    static provideWidgetsMap(data) {
        return new SharedValueProviderBuilder(Object.assign({ builder: 'z:1:Map<String, Widget>.provide' }, data));
    }
    static provideAnyBuilder(data) {
        return new SharedValueProviderBuilder(Object.assign({ builder: 'z:1:ZacBuilder<Object>.provide' }, data));
    }
}
export class ZacActions extends ZacBuilder {
    static new(data) {
        return new ZacActions(Object.assign({ builder: 'z:1:Actions' }, data));
    }
}
export class ZacCompleterVoidProvider extends ZacBuilder {
    static new(data) {
        return new ZacCompleterVoidProvider(Object.assign({ builder: 'z:1:Completer<void>.provide' }, data));
    }
}
export class ZacExecuteActionsBuilder extends ZacBuilder {
    static once(data) {
        return new ZacExecuteActionsBuilder(Object.assign({ builder: 'z:1:ExecuteActions.once' }, data));
    }
    static listen(data) {
        return new ZacExecuteActionsBuilder(Object.assign({ builder: 'z:1:ExecuteActions.listen' }, data));
    }
}
export class ZacStateMachineBuildStateBuilder extends ZacBuilder {
    static new(data) {
        return new ZacStateMachineBuildStateBuilder(Object.assign({ builder: 'z:1:StateMachine:BuildState' }, data));
    }
}
export class ZacStateMachineProviderBuilder extends ZacBuilder {
    static new(data) {
        return new ZacStateMachineProviderBuilder(Object.assign({ builder: 'z:1:StateMachine.provide' }, data));
    }
}
export class ZacTransformers extends ZacBuilder {
    static new(data) {
        return new ZacTransformers(Object.assign({ builder: 'z:1:Transformers' }, data));
    }
}
export class ZacUpdateContextBuilder extends ZacBuilder {
    static new(data) {
        return new ZacUpdateContextBuilder(Object.assign({ builder: 'z:1:UpdateContext' }, data));
    }
}
export class ZacWidgetBuilder extends ZacBuilder {
    static new(data) {
        return new ZacWidgetBuilder(Object.assign({ builder: 'z:1:Widget' }, data));
    }
    static isolate(data) {
        return new ZacWidgetBuilder(Object.assign({ builder: 'z:1:Widget.isolate' }, data));
    }
}
export class BoolTransformer extends ZacTransformer {
    static negate() {
        return new BoolTransformer({
            builder: 'z:1:Transformer:Bool.negate'
        });
    }
}
export class ConvertTransformer extends ZacTransformer {
    static new() {
        return new ConvertTransformer({
            builder: 'z:1:Transformer:Converter'
        });
    }
}
export class IntTransformer extends ZacTransformer {
    static parse() {
        return new IntTransformer({
            builder: 'z:1:Transformer:int.parse'
        });
    }
    static tryParse() {
        return new IntTransformer({
            builder: 'z:1:Transformer:int.tryParse'
        });
    }
}
export class IterableTransformer extends ZacTransformer {
    static map(data) {
        return new IterableTransformer(Object.assign({ builder: 'z:1:Transformer:Iterable.map' }, data));
    }
    static single() {
        return new IterableTransformer({
            builder: 'z:1:Transformer:Iterable.single'
        });
    }
    static first() {
        return new IterableTransformer({
            builder: 'z:1:Transformer:Iterable.first'
        });
    }
    static last() {
        return new IterableTransformer({
            builder: 'z:1:Transformer:Iterable.last'
        });
    }
    static length_() {
        return new IterableTransformer({
            builder: 'z:1:Transformer:Iterable.length'
        });
    }
    static isEmpty() {
        return new IterableTransformer({
            builder: 'z:1:Transformer:Iterable.isEmpty'
        });
    }
    static isNotEmpty() {
        return new IterableTransformer({
            builder: 'z:1:Transformer:Iterable.isNotEmpty'
        });
    }
    static toList() {
        return new IterableTransformer({
            builder: 'z:1:Transformer:Iterable.toList'
        });
    }
    static toSet() {
        return new IterableTransformer({
            builder: 'z:1:Transformer:Iterable.toSet'
        });
    }
    static toString() {
        return new IterableTransformer({
            builder: 'z:1:Transformer:Iterable.toString'
        });
    }
    static join(data) {
        return new IterableTransformer(Object.assign({ builder: 'z:1:Transformer:Iterable.join' }, data));
    }
    static contains(data) {
        return new IterableTransformer(Object.assign({ builder: 'z:1:Transformer:Iterable.contains' }, data));
    }
    static elementAt(data) {
        return new IterableTransformer(Object.assign({ builder: 'z:1:Transformer:Iterable.elementAt' }, data));
    }
    static skip(data) {
        return new IterableTransformer(Object.assign({ builder: 'z:1:Transformer:Iterable.skip' }, data));
    }
    static take(data) {
        return new IterableTransformer(Object.assign({ builder: 'z:1:Transformer:Iterable.take' }, data));
    }
}
export class JsonTransformer extends ZacTransformer {
    static encode() {
        return new JsonTransformer({
            builder: 'z:1:Transformer:Json.encode'
        });
    }
    static decode() {
        return new JsonTransformer({
            builder: 'z:1:Transformer:Json.decode'
        });
    }
}
export class ListTransformer extends ZacTransformer {
    static reversed() {
        return new ListTransformer({
            builder: 'z:1:Transformer:List.reversed'
        });
    }
    static add(data) {
        return new ListTransformer(Object.assign({ builder: 'z:1:Transformer:List.add' }, data));
    }
}
export class MapTransformer extends ZacTransformer {
    static values() {
        return new MapTransformer({
            builder: 'z:1:Transformer:Map.values'
        });
    }
    static keys() {
        return new MapTransformer({
            builder: 'z:1:Transformer:Map.keys'
        });
    }
    static entries() {
        return new MapTransformer({
            builder: 'z:1:Transformer:Map.entries'
        });
    }
    static length_() {
        return new MapTransformer({
            builder: 'z:1:Transformer:Map.length'
        });
    }
    static isEmpty() {
        return new MapTransformer({
            builder: 'z:1:Transformer:Map.isEmpty'
        });
    }
    static isNotEmpty() {
        return new MapTransformer({
            builder: 'z:1:Transformer:Map.isNotEmpty'
        });
    }
    static containsKey(data) {
        return new MapTransformer(Object.assign({ builder: 'z:1:Transformer:Map.containsKey' }, data));
    }
    static containsValue(data) {
        return new MapTransformer(Object.assign({ builder: 'z:1:Transformer:Map.containsValue' }, data));
    }
    static mapper(data) {
        return new MapTransformer(Object.assign({ builder: 'z:1:Transformer:Map.map' }, data));
    }
    static fromObjectObject() {
        return new MapTransformer({
            builder: 'z:1:Transformer:Map<Object, Object>.from'
        });
    }
    static fromStringObject() {
        return new MapTransformer({
            builder: 'z:1:Transformer:Map<String, Object>.from'
        });
    }
    static fromStringNullObject() {
        return new MapTransformer({
            builder: 'z:1:Transformer:Map<String, Object?>.from'
        });
    }
    static key(data) {
        return new MapTransformer(Object.assign({ builder: 'z:1:Transformer:Map[key]' }, data));
    }
    static setValueForKey(data) {
        return new MapTransformer(Object.assign({ builder: 'z:1:Transformer:Map.setValueForKey' }, data));
    }
}
export class NumTransformer extends ZacTransformer {
    static toDouble() {
        return new NumTransformer({
            builder: 'z:1:Transformer:num.toDouble'
        });
    }
    static toInt() {
        return new NumTransformer({
            builder: 'z:1:Transformer:num.toInt'
        });
    }
    static abs() {
        return new NumTransformer({
            builder: 'z:1:Transformer:num.abs'
        });
    }
    static ceil() {
        return new NumTransformer({
            builder: 'z:1:Transformer:num.ceil'
        });
    }
    static ceilToDouble() {
        return new NumTransformer({
            builder: 'z:1:Transformer:num.ceilToDouble'
        });
    }
    static floor() {
        return new NumTransformer({
            builder: 'z:1:Transformer:num.floor'
        });
    }
    static floorToDouble() {
        return new NumTransformer({
            builder: 'z:1:Transformer:num.floorToDouble'
        });
    }
    static round() {
        return new NumTransformer({
            builder: 'z:1:Transformer:num.round'
        });
    }
    static roundToDouble() {
        return new NumTransformer({
            builder: 'z:1:Transformer:num.roundToDouble'
        });
    }
    static isFinite() {
        return new NumTransformer({
            builder: 'z:1:Transformer:num.isFinite'
        });
    }
    static isInfinite() {
        return new NumTransformer({
            builder: 'z:1:Transformer:num.isInfinite'
        });
    }
    static isNan() {
        return new NumTransformer({
            builder: 'z:1:Transformer:num.isNan'
        });
    }
    static isNegative() {
        return new NumTransformer({
            builder: 'z:1:Transformer:num.isNegative'
        });
    }
}
export class ObjectTransformer extends ZacTransformer {
    static isList() {
        return new ObjectTransformer({
            builder: 'z:1:Transformer:Object.isList'
        });
    }
    static isMap() {
        return new ObjectTransformer({
            builder: 'z:1:Transformer:Object.isMap'
        });
    }
    static isBool() {
        return new ObjectTransformer({
            builder: 'z:1:Transformer:Object.isBool'
        });
    }
    static isString() {
        return new ObjectTransformer({
            builder: 'z:1:Transformer:Object.isString'
        });
    }
    static isDouble() {
        return new ObjectTransformer({
            builder: 'z:1:Transformer:Object.isDouble'
        });
    }
    static isInt() {
        return new ObjectTransformer({
            builder: 'z:1:Transformer:Object.isInt'
        });
    }
    static isNull() {
        return new ObjectTransformer({
            builder: 'z:1:Transformer:Object.isNull'
        });
    }
    static equals(data) {
        return new ObjectTransformer(Object.assign({ builder: 'z:1:Transformer:Object.equals' }, data));
    }
    static toString() {
        return new ObjectTransformer({
            builder: 'z:1:Transformer:Object.toString'
        });
    }
    static runtimeType() {
        return new ObjectTransformer({
            builder: 'z:1:Transformer:Object.runtimeType'
        });
    }
    static hashCode() {
        return new ObjectTransformer({
            builder: 'z:1:Transformer:Object.hashCode'
        });
    }
    static equalsSharedValue(data) {
        return new ObjectTransformer(Object.assign({ builder: 'z:1:Transformer:Object.equalsSharedValue' }, data));
    }
}
export class StringTransformer extends ZacTransformer {
    static length_() {
        return new StringTransformer({
            builder: 'z:1:Transformer:String.length'
        });
    }
    static split(data) {
        return new StringTransformer(Object.assign({ builder: 'z:1:Transformer:String.split' }, data));
    }
    static isEmpty() {
        return new StringTransformer({
            builder: 'z:1:Transformer:String.isEmpty'
        });
    }
    static isNotEmpty() {
        return new StringTransformer({
            builder: 'z:1:Transformer:String.isNotEmpty'
        });
    }
    static replaceAll(data) {
        return new StringTransformer(Object.assign({ builder: 'z:1:Transformer:String.replaceAll' }, data));
    }
}
export class ZacStateMachineTransformer extends ZacTransformer {
    static pickState() {
        return new ZacStateMachineTransformer({
            builder: 'z:1:StateMachine:Transformer.pickState'
        });
    }
    static pickContext() {
        return new ZacStateMachineTransformer({
            builder: 'z:1:StateMachine:Transformer.pickContext'
        });
    }
}
export class FlutterDialogActions extends ZacAction {
    static showDialog(data) {
        return new FlutterDialogActions(Object.assign({ builder: 'f:1:showDialog' }, data));
    }
}
export class FlutterNavigatorActions extends ZacAction {
    static push(data) {
        return new FlutterNavigatorActions(Object.assign({ builder: 'f:1:Navigator.push' }, data));
    }
    static pushNamed(data) {
        return new FlutterNavigatorActions(Object.assign({ builder: 'f:1:Navigator.pushNamed' }, data));
    }
    static pop(data) {
        return new FlutterNavigatorActions(Object.assign({ builder: 'f:1:Navigator.pop' }, data));
    }
    static maybePop(data) {
        return new FlutterNavigatorActions(Object.assign({ builder: 'f:1:Navigator.maybePop' }, data));
    }
    static pushReplacement(data) {
        return new FlutterNavigatorActions(Object.assign({ builder: 'f:1:Navigator.pushReplacement' }, data));
    }
    static pushReplacementNamed(data) {
        return new FlutterNavigatorActions(Object.assign({ builder: 'f:1:Navigator.pushReplacementNamed' }, data));
    }
    static popUntilRouteName(data) {
        return new FlutterNavigatorActions(Object.assign({ builder: 'z:1:Navigator.popUntilRouteName' }, data));
    }
}
export class FlutterScaffoldActions extends ZacAction {
    static openDrawer() {
        return new FlutterScaffoldActions({
            builder: 'f:1:Scaffold.openDrawer'
        });
    }
    static openEndDrawer() {
        return new FlutterScaffoldActions({
            builder: 'f:1:Scaffold.openEndDrawer'
        });
    }
    static showBodyScrim(data) {
        return new FlutterScaffoldActions(Object.assign({ builder: 'f:1:Scaffold.showBodyScrim' }, data));
    }
    static showBottomSheet(data) {
        return new FlutterScaffoldActions(Object.assign({ builder: 'f:1:Scaffold.showBottomSheet' }, data));
    }
}
export class FlutterScaffoldMessenger extends ZacAction {
    static showSnackBar(data) {
        return new FlutterScaffoldMessenger(Object.assign({ builder: 'f:1:ScaffoldMessenger.showSnackBar' }, data));
    }
    static hideCurrentSnackBar() {
        return new FlutterScaffoldMessenger({
            builder: 'f:1:ScaffoldMessenger.hideCurrentSnackBar'
        });
    }
    static removeCurrentSnackBar() {
        return new FlutterScaffoldMessenger({
            builder: 'f:1:ScaffoldMessenger.removeCurrentSnackBar'
        });
    }
    static showMaterialBanner(data) {
        return new FlutterScaffoldMessenger(Object.assign({ builder: 'f:1:ScaffoldMessenger.showMaterialBanner' }, data));
    }
    static hideCurrentMaterialBanner() {
        return new FlutterScaffoldMessenger({
            builder: 'f:1:ScaffoldMessenger.hideCurrentMaterialBanner'
        });
    }
    static removeCurrentMaterialBanner() {
        return new FlutterScaffoldMessenger({
            builder: 'f:1:ScaffoldMessenger.removeCurrentMaterialBanner'
        });
    }
}
export class SharedValueActions extends ZacAction {
    static update(data) {
        return new SharedValueActions(Object.assign({ builder: 'z:1:SharedValue.update' }, data));
    }
    static invalidate(data) {
        return new SharedValueActions(Object.assign({ builder: 'z:1:SharedValue.invalidate' }, data));
    }
}
export class ZacCompleterActions extends ZacAction {
    static completeVoid(data) {
        return new ZacCompleterActions(Object.assign({ builder: 'z:1:Completer<void>.complete' }, data));
    }
}
export class ZacControlFlowAction extends ZacAction {
    static ifCond(data) {
        return new ZacControlFlowAction(Object.assign({ builder: 'z:1:ControlFlowAction.if' }, data));
    }
}
export class ZacStateMachineActions extends ZacAction {
    static send(data) {
        return new ZacStateMachineActions(Object.assign({ builder: 'z:1:StateMachine:Action.send' }, data));
    }
    static trySend(data) {
        return new ZacStateMachineActions(Object.assign({ builder: 'z:1:StateMachine:Action.trySend' }, data));
    }
}
export class ZacValueActions extends ZacAction {
    static asPayload(data) {
        return new ZacValueActions(Object.assign({ builder: 'z:1:ZacValue.asActionPayload' }, data));
    }
}
