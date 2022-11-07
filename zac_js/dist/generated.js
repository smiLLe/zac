/* eslint-disable @typescript-eslint/no-explicit-any */
import { ZacConverter } from "./base";
export class Widget extends ZacConverter {
}
export class DartShadow extends ZacConverter {
}
export class Key extends ZacConverter {
}
export class LocalKey extends ZacConverter {
}
export class AlignmentGeometry extends ZacConverter {
}
export class ShapeBorder extends ZacConverter {
}
export class BoxBorder extends ZacConverter {
}
export class BorderRadiusGeometry extends ZacConverter {
}
export class OutlinedBorder extends ZacConverter {
}
export class Decoration extends ZacConverter {
}
export class EdgeInsetsGeometry extends ZacConverter {
}
export class Route extends ZacConverter {
}
export class RouteFactory extends ZacConverter {
}
export class ZacAction extends ZacConverter {
}
export class InputBorder extends ZacConverter {
}
export class ZacTransformer extends ZacConverter {
}
export class ZacValueConsumeType extends ZacConverter {
    static read() {
        return new ZacValueConsumeType({
            converter: 'z:1:ZacValueConsume.read'
        });
    }
    static watch() {
        return new ZacValueConsumeType({
            converter: 'z:1:ZacValueConsume.watch'
        });
    }
}
export class Color extends ZacConverter {
    static fromARGB(data) {
        return new Color(Object.assign({ converter: 'f:1:Color.fromARGB' }, data));
    }
    static fromRGBO(data) {
        return new Color(Object.assign({ converter: 'f:1:Color.fromRGBO' }, data));
    }
}
export class Offset extends ZacConverter {
    static new(data) {
        return new Offset(Object.assign({ converter: 'f:1:Offset' }, data));
    }
    static fromDirection(data) {
        return new Offset(Object.assign({ converter: 'f:1:Offset.fromDirection' }, data));
    }
}
export class BlurStyle extends ZacConverter {
    static inner() {
        return new BlurStyle({
            converter: 'f:1:BlurSyle.inner'
        });
    }
    static normal() {
        return new BlurStyle({
            converter: 'f:1:BlurSyle.normal'
        });
    }
    static outer() {
        return new BlurStyle({
            converter: 'f:1:BlurSyle.outer'
        });
    }
    static solid() {
        return new BlurStyle({
            converter: 'f:1:BlurSyle.solid'
        });
    }
}
export class Radius extends ZacConverter {
    static circular(data) {
        return new Radius(Object.assign({ converter: 'f:1:Radius.circular' }, data));
    }
    static elliptical(data) {
        return new Radius(Object.assign({ converter: 'f:1:Radius.elliptical' }, data));
    }
}
export class TextDirection extends ZacConverter {
    static rtl() {
        return new TextDirection({
            converter: 'f:1:TextDirection.rtl'
        });
    }
    static ltr() {
        return new TextDirection({
            converter: 'f:1:TextDirection.ltr'
        });
    }
}
export class Clip extends ZacConverter {
    static none() {
        return new Clip({
            converter: 'f:1:Clip.none'
        });
    }
    static antiAlias() {
        return new Clip({
            converter: 'f:1:Clip.antiAlias'
        });
    }
    static hardEdge() {
        return new Clip({
            converter: 'f:1:Clip.hardEdge'
        });
    }
}
export class TextBaseline extends ZacConverter {
    static alphabetic() {
        return new TextBaseline({
            converter: 'f:1:TextBaseline.alphabetic'
        });
    }
    static ideographic() {
        return new TextBaseline({
            converter: 'f:1:TextBaseline.ideographic'
        });
    }
}
export class FontWeight extends ZacConverter {
    static bold() {
        return new FontWeight({
            converter: 'f:1:FontWeight.bold'
        });
    }
    static normal() {
        return new FontWeight({
            converter: 'f:1:FontWeight.normal'
        });
    }
    static w100() {
        return new FontWeight({
            converter: 'f:1:FontWeight.w100'
        });
    }
    static w200() {
        return new FontWeight({
            converter: 'f:1:FontWeight.w200'
        });
    }
    static w300() {
        return new FontWeight({
            converter: 'f:1:FontWeight.w300'
        });
    }
    static w400() {
        return new FontWeight({
            converter: 'f:1:FontWeight.w400'
        });
    }
    static w500() {
        return new FontWeight({
            converter: 'f:1:FontWeight.w500'
        });
    }
    static w600() {
        return new FontWeight({
            converter: 'f:1:FontWeight.w600'
        });
    }
    static w700() {
        return new FontWeight({
            converter: 'f:1:FontWeight.w700'
        });
    }
    static w800() {
        return new FontWeight({
            converter: 'f:1:FontWeight.w800'
        });
    }
    static w900() {
        return new FontWeight({
            converter: 'f:1:FontWeight.w900'
        });
    }
}
export class FontStyle extends ZacConverter {
    static italic() {
        return new FontStyle({
            converter: 'f:1:FontStyle.italic'
        });
    }
    static normal() {
        return new FontStyle({
            converter: 'f:1:FontStyle.normal'
        });
    }
}
export class TextDecoration extends ZacConverter {
    static lineThrough() {
        return new TextDecoration({
            converter: 'f:1:TextDecoration.lineThrough'
        });
    }
    static none() {
        return new TextDecoration({
            converter: 'f:1:TextDecoration.none'
        });
    }
    static overline() {
        return new TextDecoration({
            converter: 'f:1:TextDecoration.overline'
        });
    }
    static underline() {
        return new TextDecoration({
            converter: 'f:1:TextDecoration.underline'
        });
    }
}
export class TextLeadingDistribution extends ZacConverter {
    static even() {
        return new TextLeadingDistribution({
            converter: 'f:1:TextLeadingDistribution.even'
        });
    }
    static proportional() {
        return new TextLeadingDistribution({
            converter: 'f:1:TextLeadingDistribution.proportional'
        });
    }
}
export class Locale extends ZacConverter {
    static new(data) {
        return new Locale(Object.assign({ converter: 'f:1:Locale' }, data));
    }
}
export class FontFeature extends ZacConverter {
    static new(data) {
        return new FontFeature(Object.assign({ converter: 'f:1:FontFeature' }, data));
    }
    static alternative(data) {
        return new FontFeature(Object.assign({ converter: 'f:1:FontFeature.alternative' }, data));
    }
    static alternativeFractions() {
        return new FontFeature({
            converter: 'f:1:FontFeature.alternativeFractions'
        });
    }
    static caseSensitiveForms() {
        return new FontFeature({
            converter: 'f:1:FontFeature.caseSensitiveForms'
        });
    }
    static characterVariant(data) {
        return new FontFeature(Object.assign({ converter: 'f:1:FontFeature.characterVariant' }, data));
    }
    static contextualAlternates() {
        return new FontFeature({
            converter: 'f:1:FontFeature.contextualAlternates'
        });
    }
    static denominator() {
        return new FontFeature({
            converter: 'f:1:FontFeature.denominator'
        });
    }
    static disable(data) {
        return new FontFeature(Object.assign({ converter: 'f:1:FontFeature.disable' }, data));
    }
    static enable(data) {
        return new FontFeature(Object.assign({ converter: 'f:1:FontFeature.enable' }, data));
    }
    static fractions() {
        return new FontFeature({
            converter: 'f:1:FontFeature.fractions'
        });
    }
    static historicalForms() {
        return new FontFeature({
            converter: 'f:1:FontFeature.historicalForms'
        });
    }
    static historicalLigatures() {
        return new FontFeature({
            converter: 'f:1:FontFeature.historicalLigatures'
        });
    }
    static liningFigures() {
        return new FontFeature({
            converter: 'f:1:FontFeature.liningFigures'
        });
    }
    static localeAware(data) {
        return new FontFeature(Object.assign({ converter: 'f:1:FontFeature.localeAware' }, data));
    }
    static notationalForms(data) {
        return new FontFeature(Object.assign({ converter: 'f:1:FontFeature.notationalForms' }, data));
    }
    static numerators() {
        return new FontFeature({
            converter: 'f:1:FontFeature.numerators'
        });
    }
    static oldstyleFigures() {
        return new FontFeature({
            converter: 'f:1:FontFeature.oldstyleFigures'
        });
    }
    static ordinalForms() {
        return new FontFeature({
            converter: 'f:1:FontFeature.ordinalForms'
        });
    }
    static proportionalFigures() {
        return new FontFeature({
            converter: 'f:1:FontFeature.proportionalFigures'
        });
    }
    static randomize() {
        return new FontFeature({
            converter: 'f:1:FontFeature.randomize'
        });
    }
    static scientificInferiors() {
        return new FontFeature({
            converter: 'f:1:FontFeature.scientificInferiors'
        });
    }
    static slashedZero() {
        return new FontFeature({
            converter: 'f:1:FontFeature.slashedZero'
        });
    }
    static stylisticAlternates() {
        return new FontFeature({
            converter: 'f:1:FontFeature.stylisticAlternates'
        });
    }
    static stylisticSet(data) {
        return new FontFeature(Object.assign({ converter: 'f:1:FontFeature.stylisticSet' }, data));
    }
    static subscripts() {
        return new FontFeature({
            converter: 'f:1:FontFeature.subscripts'
        });
    }
    static superscripts() {
        return new FontFeature({
            converter: 'f:1:FontFeature.superscripts'
        });
    }
    static swash(data) {
        return new FontFeature(Object.assign({ converter: 'f:1:FontFeature.swash' }, data));
    }
    static tabularFigures() {
        return new FontFeature({
            converter: 'f:1:FontFeature.tabularFigures'
        });
    }
}
export class TextDecorationStyle extends ZacConverter {
    static dashed() {
        return new TextDecorationStyle({
            converter: 'f:1:TextDecorationStyle.dashed'
        });
    }
    static dotted() {
        return new TextDecorationStyle({
            converter: 'f:1:TextDecorationStyle.dotted'
        });
    }
    static double() {
        return new TextDecorationStyle({
            converter: 'f:1:TextDecorationStyle.double'
        });
    }
    static solid() {
        return new TextDecorationStyle({
            converter: 'f:1:TextDecorationStyle.solid'
        });
    }
    static wavy() {
        return new TextDecorationStyle({
            converter: 'f:1:TextDecorationStyle.wavy'
        });
    }
}
export class TextAlign extends ZacConverter {
    static center() {
        return new TextAlign({
            converter: 'f:1:TextAlign.center'
        });
    }
    static end() {
        return new TextAlign({
            converter: 'f:1:TextAlign.end'
        });
    }
    static justify() {
        return new TextAlign({
            converter: 'f:1:TextAlign.justify'
        });
    }
    static left() {
        return new TextAlign({
            converter: 'f:1:TextAlign.left'
        });
    }
    static right() {
        return new TextAlign({
            converter: 'f:1:TextAlign.right'
        });
    }
    static start() {
        return new TextAlign({
            converter: 'f:1:TextAlign.start'
        });
    }
}
export class TextHeightBehavior extends ZacConverter {
    static new(data) {
        return new TextHeightBehavior(Object.assign({ converter: 'f:1:TextHeightBehavior' }, data));
    }
}
export class BlendMode extends ZacConverter {
    static clear() {
        return new BlendMode({
            converter: 'f:1:BlendMode.clear'
        });
    }
    static color() {
        return new BlendMode({
            converter: 'f:1:BlendMode.color'
        });
    }
    static colorBurn() {
        return new BlendMode({
            converter: 'f:1:BlendMode.colorBurn'
        });
    }
    static colorDodge() {
        return new BlendMode({
            converter: 'f:1:BlendMode.colorDodge'
        });
    }
    static darken() {
        return new BlendMode({
            converter: 'f:1:BlendMode.darken'
        });
    }
    static difference() {
        return new BlendMode({
            converter: 'f:1:BlendMode.difference'
        });
    }
    static dst() {
        return new BlendMode({
            converter: 'f:1:BlendMode.dst'
        });
    }
    static dstATop() {
        return new BlendMode({
            converter: 'f:1:BlendMode.dstATop'
        });
    }
    static dstIn() {
        return new BlendMode({
            converter: 'f:1:BlendMode.dstIn'
        });
    }
    static dstOut() {
        return new BlendMode({
            converter: 'f:1:BlendMode.dstOut'
        });
    }
    static dstOver() {
        return new BlendMode({
            converter: 'f:1:BlendMode.dstOver'
        });
    }
    static exclusion() {
        return new BlendMode({
            converter: 'f:1:BlendMode.exclusion'
        });
    }
    static hardLight() {
        return new BlendMode({
            converter: 'f:1:BlendMode.hardLight'
        });
    }
    static hue() {
        return new BlendMode({
            converter: 'f:1:BlendMode.hue'
        });
    }
    static lighten() {
        return new BlendMode({
            converter: 'f:1:BlendMode.lighten'
        });
    }
    static luminosity() {
        return new BlendMode({
            converter: 'f:1:BlendMode.luminosity'
        });
    }
    static modulate() {
        return new BlendMode({
            converter: 'f:1:BlendMode.modulate'
        });
    }
    static multiply() {
        return new BlendMode({
            converter: 'f:1:BlendMode.multiply'
        });
    }
    static overlay() {
        return new BlendMode({
            converter: 'f:1:BlendMode.overlay'
        });
    }
    static plus() {
        return new BlendMode({
            converter: 'f:1:BlendMode.plus'
        });
    }
    static saturation() {
        return new BlendMode({
            converter: 'f:1:BlendMode.saturation'
        });
    }
    static screen() {
        return new BlendMode({
            converter: 'f:1:BlendMode.screen'
        });
    }
    static softLight() {
        return new BlendMode({
            converter: 'f:1:BlendMode.softLight'
        });
    }
    static src() {
        return new BlendMode({
            converter: 'f:1:BlendMode.src'
        });
    }
    static srcATop() {
        return new BlendMode({
            converter: 'f:1:BlendMode.srcATop'
        });
    }
    static srcIn() {
        return new BlendMode({
            converter: 'f:1:BlendMode.srcIn'
        });
    }
    static srcOut() {
        return new BlendMode({
            converter: 'f:1:BlendMode.srcOut'
        });
    }
    static srcOver() {
        return new BlendMode({
            converter: 'f:1:BlendMode.srcOver'
        });
    }
    static xor() {
        return new BlendMode({
            converter: 'f:1:BlendMode.xor'
        });
    }
}
export class Rect extends ZacConverter {
    static fromCenter(data) {
        return new Rect(Object.assign({ converter: 'f:1:Rect.fromCenter' }, data));
    }
    static fromCircle(data) {
        return new Rect(Object.assign({ converter: 'f:1:Rect.fromCircle' }, data));
    }
    static fromLTRB(data) {
        return new Rect(Object.assign({ converter: 'f:1:Rect.fromLTRB' }, data));
    }
    static fromLTWH(data) {
        return new Rect(Object.assign({ converter: 'f:1:Rect.fromLTWH' }, data));
    }
    static fromPoints(data) {
        return new Rect(Object.assign({ converter: 'f:1:Rect.fromPoints' }, data));
    }
}
export class FilterQuality extends ZacConverter {
    static high() {
        return new FilterQuality({
            converter: 'f:1:FilterQuality.high'
        });
    }
    static low() {
        return new FilterQuality({
            converter: 'f:1:FilterQuality.low'
        });
    }
    static medium() {
        return new FilterQuality({
            converter: 'f:1:FilterQuality.medium'
        });
    }
    static none() {
        return new FilterQuality({
            converter: 'f:1:FilterQuality.none'
        });
    }
}
export class Brightness extends ZacConverter {
    static dark() {
        return new Brightness({
            converter: 'f:1:Brightness.dark'
        });
    }
    static light() {
        return new Brightness({
            converter: 'f:1:Brightness.light'
        });
    }
}
export class Size extends ZacConverter {
    static new(data) {
        return new Size(Object.assign({ converter: 'f:1:Size' }, data));
    }
}
export class BoxHeightStyle extends ZacConverter {
    static includeLineSpacingBottom() {
        return new BoxHeightStyle({
            converter: 'f:1:BoxHeightStyle.includeLineSpacingBottom'
        });
    }
    static includeLineSpacingMiddle() {
        return new BoxHeightStyle({
            converter: 'f:1:BoxHeightStyle.includeLineSpacingMiddle'
        });
    }
    static includeLineSpacingTop() {
        return new BoxHeightStyle({
            converter: 'f:1:BoxHeightStyle.includeLineSpacingTop'
        });
    }
    static max() {
        return new BoxHeightStyle({
            converter: 'f:1:BoxHeightStyle.max'
        });
    }
    static strut() {
        return new BoxHeightStyle({
            converter: 'f:1:BoxHeightStyle.strut'
        });
    }
    static tight() {
        return new BoxHeightStyle({
            converter: 'f:1:BoxHeightStyle.tight'
        });
    }
}
export class BoxWidthStyle extends ZacConverter {
    static max() {
        return new BoxWidthStyle({
            converter: 'f:1:BoxWidthStyle.max'
        });
    }
    static tight() {
        return new BoxWidthStyle({
            converter: 'f:1:BoxWidthStyle.tight'
        });
    }
}
export class Shadow extends ZacConverter {
    static new(data) {
        return new Shadow(Object.assign({ converter: 'f:1:Shadow' }, data));
    }
}
export class ValueKey extends ZacConverter {
    static new(data) {
        return new ValueKey(Object.assign({ converter: 'f:1:ValueKey' }, data));
    }
}
export class StackFit extends ZacConverter {
    static expand() {
        return new StackFit({
            converter: 'f:1:StackFit.expand'
        });
    }
    static loose() {
        return new StackFit({
            converter: 'f:1:StackFit.loose'
        });
    }
    static passthrough() {
        return new StackFit({
            converter: 'f:1:StackFit.passthrough'
        });
    }
}
export class SmartQuotesType extends ZacConverter {
    static disabled() {
        return new SmartQuotesType({
            converter: 'f:1:SmartQuotesType.disabled'
        });
    }
    static enabled() {
        return new SmartQuotesType({
            converter: 'f:1:SmartQuotesType.enabled'
        });
    }
}
export class BoxShape extends ZacConverter {
    static circle() {
        return new BoxShape({
            converter: 'f:1:BoxShape.circle'
        });
    }
    static rectangle() {
        return new BoxShape({
            converter: 'f:1:BoxShape.rectangle'
        });
    }
}
export class Axis extends ZacConverter {
    static horizontal() {
        return new Axis({
            converter: 'f:1:Axis.horizontal'
        });
    }
    static vertical() {
        return new Axis({
            converter: 'f:1:Axis.vertical'
        });
    }
}
export class VerticalDirection extends ZacConverter {
    static up() {
        return new VerticalDirection({
            converter: 'f:1:VerticalDirection.up'
        });
    }
    static down() {
        return new VerticalDirection({
            converter: 'f:1:VerticalDirection.down'
        });
    }
}
export class TextOverflow extends ZacConverter {
    static clip() {
        return new TextOverflow({
            converter: 'f:1:TextOverflow.clip'
        });
    }
    static ellipsis() {
        return new TextOverflow({
            converter: 'f:1:TextOverflow.ellipsis'
        });
    }
    static fade() {
        return new TextOverflow({
            converter: 'f:1:TextOverflow.fade'
        });
    }
    static visible() {
        return new TextOverflow({
            converter: 'f:1:TextOverflow.visible'
        });
    }
}
export class StrutStyle extends ZacConverter {
    static new(data) {
        return new StrutStyle(Object.assign({ converter: 'f:1:StrutStyle' }, data));
    }
    static fromTextStyle(data) {
        return new StrutStyle(Object.assign({ converter: 'f:1:StrutStyle.fromTextStyle' }, data));
    }
}
export class TextWidthBasis extends ZacConverter {
    static longestLine() {
        return new TextWidthBasis({
            converter: 'f:1:TextWidthBasis.longestLine'
        });
    }
    static parent() {
        return new TextWidthBasis({
            converter: 'f:1:TextWidthBasis.parent'
        });
    }
}
export class BoxFit extends ZacConverter {
    static contain() {
        return new BoxFit({
            converter: 'f:1:BoxFit.contain'
        });
    }
    static cover() {
        return new BoxFit({
            converter: 'f:1:BoxFit.cover'
        });
    }
    static fill() {
        return new BoxFit({
            converter: 'f:1:BoxFit.fill'
        });
    }
    static fitHeight() {
        return new BoxFit({
            converter: 'f:1:BoxFit.fitHeight'
        });
    }
    static fitWidth() {
        return new BoxFit({
            converter: 'f:1:BoxFit.fitWidth'
        });
    }
    static none() {
        return new BoxFit({
            converter: 'f:1:BoxFit.none'
        });
    }
    static scaleDown() {
        return new BoxFit({
            converter: 'f:1:BoxFit.scaleDown'
        });
    }
}
export class ImageRepeat extends ZacConverter {
    static noRepeat() {
        return new ImageRepeat({
            converter: 'f:1:ImageRepeat.noRepeat'
        });
    }
    static repeat() {
        return new ImageRepeat({
            converter: 'f:1:ImageRepeat.repeat'
        });
    }
    static repeatX() {
        return new ImageRepeat({
            converter: 'f:1:ImageRepeat.repeatX'
        });
    }
    static repeatY() {
        return new ImageRepeat({
            converter: 'f:1:ImageRepeat.repeatY'
        });
    }
}
export class TextStyle extends ZacConverter {
    static new(data) {
        return new TextStyle(Object.assign({ converter: 'f:1:TextStyle' }, data));
    }
}
export class TextAlignVertical extends ZacConverter {
    static new(data) {
        return new TextAlignVertical(Object.assign({ converter: 'f:1:TextAlignVertical' }, data));
    }
    static bottom() {
        return new TextAlignVertical({
            converter: 'f:1:TextAlignVertical.bottom'
        });
    }
    static center() {
        return new TextAlignVertical({
            converter: 'f:1:TextAlignVertical.center'
        });
    }
    static top() {
        return new TextAlignVertical({
            converter: 'f:1:TextAlignVertical.top'
        });
    }
}
export class BoxShadow extends ZacConverter {
    static new(data) {
        return new BoxShadow(Object.assign({ converter: 'f:1:BoxShadow' }, data));
    }
}
export class Alignment extends ZacConverter {
    static new(data) {
        return new Alignment(Object.assign({ converter: 'f:1:Alignment' }, data));
    }
    static bottomCenter() {
        return new Alignment({
            converter: 'f:1:Alignment.bottomCenter'
        });
    }
    static bottomLeft() {
        return new Alignment({
            converter: 'f:1:Alignment.bottomLeft'
        });
    }
    static bottomRight() {
        return new Alignment({
            converter: 'f:1:Alignment.bottomRight'
        });
    }
    static center() {
        return new Alignment({
            converter: 'f:1:Alignment.center'
        });
    }
    static centerLeft() {
        return new Alignment({
            converter: 'f:1:Alignment.centerLeft'
        });
    }
    static centerRight() {
        return new Alignment({
            converter: 'f:1:Alignment.centerRight'
        });
    }
    static topCenter() {
        return new Alignment({
            converter: 'f:1:Alignment.topCenter'
        });
    }
    static topLeft() {
        return new Alignment({
            converter: 'f:1:Alignment.topLeft'
        });
    }
    static topRight() {
        return new Alignment({
            converter: 'f:1:Alignment.topRight'
        });
    }
}
export class AlignmentDirectional extends ZacConverter {
    static new(data) {
        return new AlignmentDirectional(Object.assign({ converter: 'f:1:AlignmentDirectional' }, data));
    }
    static bottomCenter() {
        return new AlignmentDirectional({
            converter: 'f:1:AlignmentDirectional.bottomCenter'
        });
    }
    static bottomStart() {
        return new AlignmentDirectional({
            converter: 'f:1:AlignmentDirectional.bottomStart'
        });
    }
    static bottomEnd() {
        return new AlignmentDirectional({
            converter: 'f:1:AlignmentDirectional.bottomEnd'
        });
    }
    static center() {
        return new AlignmentDirectional({
            converter: 'f:1:AlignmentDirectional.center'
        });
    }
    static centerStart() {
        return new AlignmentDirectional({
            converter: 'f:1:AlignmentDirectional.centerStart'
        });
    }
    static centerEnd() {
        return new AlignmentDirectional({
            converter: 'f:1:AlignmentDirectional.centerEnd'
        });
    }
    static topCenter() {
        return new AlignmentDirectional({
            converter: 'f:1:AlignmentDirectional.topCenter'
        });
    }
    static topStart() {
        return new AlignmentDirectional({
            converter: 'f:1:AlignmentDirectional.topStart'
        });
    }
    static topEnd() {
        return new AlignmentDirectional({
            converter: 'f:1:AlignmentDirectional.topEnd'
        });
    }
}
export class FractionalOffset extends ZacConverter {
    static new(data) {
        return new FractionalOffset(Object.assign({ converter: 'f:1:FractionalOffset' }, data));
    }
}
export class BorderDirectional extends ZacConverter {
    static new(data) {
        return new BorderDirectional(Object.assign({ converter: 'f:1:BorderDirectional' }, data));
    }
}
export class Border extends ZacConverter {
    static new(data) {
        return new Border(Object.assign({ converter: 'f:1:Border' }, data));
    }
    static all(data) {
        return new Border(Object.assign({ converter: 'f:1:Border.all' }, data));
    }
}
export class BorderStyle extends ZacConverter {
    static none() {
        return new BorderStyle({
            converter: 'f:1:BorderStyle.none'
        });
    }
    static solid() {
        return new BorderStyle({
            converter: 'f:1:BorderStyle.solid'
        });
    }
}
export class BorderRadius extends ZacConverter {
    static all(data) {
        return new BorderRadius(Object.assign({ converter: 'f:1:BorderRadius.all' }, data));
    }
    static circular(data) {
        return new BorderRadius(Object.assign({ converter: 'f:1:BorderRadius.circular' }, data));
    }
    static horizontal(data) {
        return new BorderRadius(Object.assign({ converter: 'f:1:BorderRadius.horizontal' }, data));
    }
}
export class BorderSide extends ZacConverter {
    static new(data) {
        return new BorderSide(Object.assign({ converter: 'f:1:BorderSide' }, data));
    }
}
export class CircleBorder extends ZacConverter {
    static new(data) {
        return new CircleBorder(Object.assign({ converter: 'f:1:CircleBorder' }, data));
    }
}
export class RoundedRectangleBorder extends ZacConverter {
    static new(data) {
        return new RoundedRectangleBorder(Object.assign({ converter: 'f:1:RoundedRectangleBorder' }, data));
    }
}
export class BoxDecoration extends ZacConverter {
    static new(data) {
        return new BoxDecoration(Object.assign({ converter: 'f:1:BoxDecoration' }, data));
    }
}
export class ShapeDecoration extends ZacConverter {
    static new(data) {
        return new ShapeDecoration(Object.assign({ converter: 'f:1:ShapeDecoration' }, data));
    }
}
export class EdgeInsets extends ZacConverter {
    static all(data) {
        return new EdgeInsets(Object.assign({ converter: 'f:1:EdgeInsets.all' }, data));
    }
    static symmetric(data) {
        return new EdgeInsets(Object.assign({ converter: 'f:1:EdgeInsets.symmetric' }, data));
    }
    static only(data) {
        return new EdgeInsets(Object.assign({ converter: 'f:1:EdgeInsets.only' }, data));
    }
}
export class EdgeInsetsDirectional extends ZacConverter {
    static all(data) {
        return new EdgeInsetsDirectional(Object.assign({ converter: 'f:1:EdgeInsetsDirectional.all' }, data));
    }
    static only(data) {
        return new EdgeInsetsDirectional(Object.assign({ converter: 'f:1:EdgeInsetsDirectional.only' }, data));
    }
}
export class HitTestBehavior extends ZacConverter {
    static deferToChild() {
        return new HitTestBehavior({
            converter: 'f:1:HitTestBehavior.deferToChild'
        });
    }
    static opaque() {
        return new HitTestBehavior({
            converter: 'f:1:HitTestBehavior.opaque'
        });
    }
    static translucent() {
        return new HitTestBehavior({
            converter: 'f:1:HitTestBehavior.translucent'
        });
    }
}
export class CrossAxisAlignment extends ZacConverter {
    static baseline() {
        return new CrossAxisAlignment({
            converter: 'f:1:CrossAxisAlignment.baseline'
        });
    }
    static center() {
        return new CrossAxisAlignment({
            converter: 'f:1:CrossAxisAlignment.center'
        });
    }
    static end() {
        return new CrossAxisAlignment({
            converter: 'f:1:CrossAxisAlignment.end'
        });
    }
    static start() {
        return new CrossAxisAlignment({
            converter: 'f:1:CrossAxisAlignment.start'
        });
    }
    static stretch() {
        return new CrossAxisAlignment({
            converter: 'f:1:CrossAxisAlignment.stretch'
        });
    }
}
export class MainAxisAlignment extends ZacConverter {
    static start() {
        return new MainAxisAlignment({
            converter: 'f:1:MainAxisAlignment.start'
        });
    }
    static end() {
        return new MainAxisAlignment({
            converter: 'f:1:MainAxisAlignment.end'
        });
    }
    static center() {
        return new MainAxisAlignment({
            converter: 'f:1:MainAxisAlignment.center'
        });
    }
    static spaceBetween() {
        return new MainAxisAlignment({
            converter: 'f:1:MainAxisAlignment.spaceBetween'
        });
    }
    static spaceAround() {
        return new MainAxisAlignment({
            converter: 'f:1:MainAxisAlignment.spaceAround'
        });
    }
    static spaceEvenly() {
        return new MainAxisAlignment({
            converter: 'f:1:MainAxisAlignment.spaceEvenly'
        });
    }
}
export class MainAxisSize extends ZacConverter {
    static min() {
        return new MainAxisSize({
            converter: 'f:1:MainAxisSize.min'
        });
    }
    static max() {
        return new MainAxisSize({
            converter: 'f:1:MainAxisSize.max'
        });
    }
}
export class FlexFit extends ZacConverter {
    static tight() {
        return new FlexFit({
            converter: 'f:1:FlexFit.tight'
        });
    }
    static loose() {
        return new FlexFit({
            converter: 'f:1:FlexFit.loose'
        });
    }
}
export class WrapAlignment extends ZacConverter {
    static start() {
        return new WrapAlignment({
            converter: 'f:1:WrapAlignment.start'
        });
    }
    static end() {
        return new WrapAlignment({
            converter: 'f:1:WrapAlignment.end'
        });
    }
    static center() {
        return new WrapAlignment({
            converter: 'f:1:WrapAlignment.center'
        });
    }
    static spaceBetween() {
        return new WrapAlignment({
            converter: 'f:1:WrapAlignment.spaceBetween'
        });
    }
    static spaceAround() {
        return new WrapAlignment({
            converter: 'f:1:WrapAlignment.spaceAround'
        });
    }
    static spaceEvenly() {
        return new WrapAlignment({
            converter: 'f:1:WrapAlignment.spaceEvenly'
        });
    }
}
export class WrapCrossAlignment extends ZacConverter {
    static center() {
        return new WrapCrossAlignment({
            converter: 'f:1:WrapCrossAlignment.center'
        });
    }
    static end() {
        return new WrapCrossAlignment({
            converter: 'f:1:WrapCrossAlignment.end'
        });
    }
    static start() {
        return new WrapCrossAlignment({
            converter: 'f:1:WrapCrossAlignment.start'
        });
    }
}
export class BoxConstraints extends ZacConverter {
    static new(data) {
        return new BoxConstraints(Object.assign({ converter: 'f:1:BoxConstraints' }, data));
    }
    static expand(data) {
        return new BoxConstraints(Object.assign({ converter: 'f:1:BoxConstraints.expand' }, data));
    }
    static loose(data) {
        return new BoxConstraints(Object.assign({ converter: 'f:1:BoxConstraints.loose' }, data));
    }
    static tight(data) {
        return new BoxConstraints(Object.assign({ converter: 'f:1:BoxConstraints.tight' }, data));
    }
    static tightFor(data) {
        return new BoxConstraints(Object.assign({ converter: 'f:1:BoxConstraints.tightFor' }, data));
    }
    static tightForFinite(data) {
        return new BoxConstraints(Object.assign({ converter: 'f:1:BoxConstraints.tightForFinite' }, data));
    }
}
export class DecorationPosition extends ZacConverter {
    static background() {
        return new DecorationPosition({
            converter: 'f:1:DecorationPosition.background'
        });
    }
    static foreground() {
        return new DecorationPosition({
            converter: 'f:1:DecorationPosition.foreground'
        });
    }
}
export class SystemUiOverlayStyle extends ZacConverter {
    static new(data) {
        return new SystemUiOverlayStyle(Object.assign({ converter: 'f:1:SystemUiOverlayStyle' }, data));
    }
}
export class TextInputType extends ZacConverter {
    static datetime() {
        return new TextInputType({
            converter: 'f:1:TextInputType.datetime'
        });
    }
    static emailAddress() {
        return new TextInputType({
            converter: 'f:1:TextInputType.emailAddress'
        });
    }
    static multiline() {
        return new TextInputType({
            converter: 'f:1:TextInputType.multiline'
        });
    }
    static name_() {
        return new TextInputType({
            converter: 'f:1:TextInputType.name'
        });
    }
    static none() {
        return new TextInputType({
            converter: 'f:1:TextInputType.none'
        });
    }
    static number() {
        return new TextInputType({
            converter: 'f:1:TextInputType.number'
        });
    }
    static phone() {
        return new TextInputType({
            converter: 'f:1:TextInputType.phone'
        });
    }
    static streetAddress() {
        return new TextInputType({
            converter: 'f:1:TextInputType.streetAddress'
        });
    }
    static text() {
        return new TextInputType({
            converter: 'f:1:TextInputType.text'
        });
    }
    static url() {
        return new TextInputType({
            converter: 'f:1:TextInputType.url'
        });
    }
    static visiblePassword() {
        return new TextInputType({
            converter: 'f:1:TextInputType.visiblePassword'
        });
    }
}
export class TextInputAction extends ZacConverter {
    static continueAction() {
        return new TextInputAction({
            converter: 'f:1:TextInputAction.continueAction'
        });
    }
    static done() {
        return new TextInputAction({
            converter: 'f:1:TextInputAction.done'
        });
    }
    static emergencyCall() {
        return new TextInputAction({
            converter: 'f:1:TextInputAction.emergencyCall'
        });
    }
    static go() {
        return new TextInputAction({
            converter: 'f:1:TextInputAction.go'
        });
    }
    static join() {
        return new TextInputAction({
            converter: 'f:1:TextInputAction.join'
        });
    }
    static newline() {
        return new TextInputAction({
            converter: 'f:1:TextInputAction.newline'
        });
    }
    static next() {
        return new TextInputAction({
            converter: 'f:1:TextInputAction.next'
        });
    }
    static none() {
        return new TextInputAction({
            converter: 'f:1:TextInputAction.none'
        });
    }
    static previous() {
        return new TextInputAction({
            converter: 'f:1:TextInputAction.previous'
        });
    }
    static route() {
        return new TextInputAction({
            converter: 'f:1:TextInputAction.route'
        });
    }
    static search() {
        return new TextInputAction({
            converter: 'f:1:TextInputAction.search'
        });
    }
    static send() {
        return new TextInputAction({
            converter: 'f:1:TextInputAction.send'
        });
    }
    static unspecified() {
        return new TextInputAction({
            converter: 'f:1:TextInputAction.unspecified'
        });
    }
}
export class TextCapitalization extends ZacConverter {
    static characters() {
        return new TextCapitalization({
            converter: 'f:1:TextCapitalization.characters'
        });
    }
    static none() {
        return new TextCapitalization({
            converter: 'f:1:TextCapitalization.none'
        });
    }
    static sentences() {
        return new TextCapitalization({
            converter: 'f:1:TextCapitalization.sentences'
        });
    }
    static words() {
        return new TextCapitalization({
            converter: 'f:1:TextCapitalization.words'
        });
    }
}
export class SmartDashesType extends ZacConverter {
    static disabled() {
        return new SmartDashesType({
            converter: 'f:1:SmartDashesType.disabled'
        });
    }
    static enabled() {
        return new SmartDashesType({
            converter: 'f:1:SmartDashesType.enabled'
        });
    }
}
export class ZacWidgetBuilder extends ZacConverter {
    static new(data) {
        return new ZacWidgetBuilder(Object.assign({ converter: 'z:1:Widget' }, data));
    }
    static map(data) {
        return new ZacWidgetBuilder(Object.assign({ converter: 'z:1:Widget.map' }, data));
    }
    static isolate(data) {
        return new ZacWidgetBuilder(Object.assign({ converter: 'z:1:Widget.isolate' }, data));
    }
    static isolateString(data) {
        return new ZacWidgetBuilder(Object.assign({ converter: 'z:1:Widget.isolateString' }, data));
    }
}
export class ZacStateMachineBuildStateBuilder extends ZacConverter {
    static new(data) {
        return new ZacStateMachineBuildStateBuilder(Object.assign({ converter: 'z:1:StateMachine:BuildState' }, data));
    }
}
export class ZacUpdateContextBuilder extends ZacConverter {
    static new(data) {
        return new ZacUpdateContextBuilder(Object.assign({ converter: 'z:1:UpdateContext' }, data));
    }
}
export class SharedValueProviderBuilder extends ZacConverter {
    static new(data) {
        return new SharedValueProviderBuilder(Object.assign({ converter: 'z:1:SharedValue.provide' }, data));
    }
}
export class ZacStateMachineProviderBuilder extends ZacConverter {
    static new(data) {
        return new ZacStateMachineProviderBuilder(Object.assign({ converter: 'z:1:StateMachine.provide' }, data));
    }
}
export class ZacExecuteActionsBuilder extends ZacConverter {
    static once(data) {
        return new ZacExecuteActionsBuilder(Object.assign({ converter: 'z:1:ExecuteActions.once' }, data));
    }
    static listen(data) {
        return new ZacExecuteActionsBuilder(Object.assign({ converter: 'z:1:ExecuteActions.listen' }, data));
    }
}
export class DecoratedBox extends ZacConverter {
    static new(data) {
        return new DecoratedBox(Object.assign({ converter: 'f:1:DecoratedBox' }, data));
    }
}
export class FractionalTranslation extends ZacConverter {
    static new(data) {
        return new FractionalTranslation(Object.assign({ converter: 'f:1:FractionalTranslation' }, data));
    }
}
export class GestureDetector extends ZacConverter {
    static new(data) {
        return new GestureDetector(Object.assign({ converter: 'f:1:GestureDetector' }, data));
    }
}
export class Icon extends ZacConverter {
    static new(data) {
        return new Icon(Object.assign({ converter: 'f:1:Icon' }, data));
    }
}
export class IconData extends ZacConverter {
    static new(data) {
        return new IconData(Object.assign({ converter: 'f:1:IconData' }, data));
    }
}
export class IconThemeData extends ZacConverter {
    static new(data) {
        return new IconThemeData(Object.assign({ converter: 'f:1:IconThemeData' }, data));
    }
}
export class IgnorePointer extends ZacConverter {
    static new(data) {
        return new IgnorePointer(Object.assign({ converter: 'f:1:IgnorePointer' }, data));
    }
}
export class Image extends ZacConverter {
    static network(data) {
        return new Image(Object.assign({ converter: 'f:1:Image.network' }, data));
    }
    static asset(data) {
        return new Image(Object.assign({ converter: 'f:1:Image.asset' }, data));
    }
}
export class InteractiveViewer extends ZacConverter {
    static new(data) {
        return new InteractiveViewer(Object.assign({ converter: 'f:1:InteractiveViewer' }, data));
    }
}
export class ScrollViewKeyboardDismissBehavior extends ZacConverter {
    static manual() {
        return new ScrollViewKeyboardDismissBehavior({
            converter: 'f:1:ScrollViewKeyboardDismissBehavior.manual'
        });
    }
    static onDrag() {
        return new ScrollViewKeyboardDismissBehavior({
            converter: 'f:1:ScrollViewKeyboardDismissBehavior.onDrag'
        });
    }
}
export class Align extends ZacConverter {
    static new(data) {
        return new Align(Object.assign({ converter: 'f:1:Align' }, data));
    }
}
export class AspectRatio extends ZacConverter {
    static new(data) {
        return new AspectRatio(Object.assign({ converter: 'f:1:AspectRatio' }, data));
    }
}
export class Center extends ZacConverter {
    static new(data) {
        return new Center(Object.assign({ converter: 'f:1:Center' }, data));
    }
}
export class ConstrainedBox extends ZacConverter {
    static new(data) {
        return new ConstrainedBox(Object.assign({ converter: 'f:1:ConstrainedBox' }, data));
    }
}
export class Container extends ZacConverter {
    static new(data) {
        return new Container(Object.assign({ converter: 'f:1:Container' }, data));
    }
}
export class Expanded extends ZacConverter {
    static new(data) {
        return new Expanded(Object.assign({ converter: 'f:1:Expanded' }, data));
    }
}
export class FittedBox extends ZacConverter {
    static new(data) {
        return new FittedBox(Object.assign({ converter: 'f:1:FittedBox' }, data));
    }
}
export class Flexible extends ZacConverter {
    static new(data) {
        return new Flexible(Object.assign({ converter: 'f:1:Flexible' }, data));
    }
}
export class FractionallySizedBox extends ZacConverter {
    static new(data) {
        return new FractionallySizedBox(Object.assign({ converter: 'f:1:FractionallySizedBox' }, data));
    }
}
export class ClipRect extends ZacConverter {
    static new(data) {
        return new ClipRect(Object.assign({ converter: 'f:1:ClipRect' }, data));
    }
}
export class IntrinsicWidth extends ZacConverter {
    static new(data) {
        return new IntrinsicWidth(Object.assign({ converter: 'f:1:IntrinsicWidth' }, data));
    }
}
export class LimitedBox extends ZacConverter {
    static new(data) {
        return new LimitedBox(Object.assign({ converter: 'f:1:LimitedBox' }, data));
    }
}
export class Offstage extends ZacConverter {
    static new(data) {
        return new Offstage(Object.assign({ converter: 'f:1:Offstage' }, data));
    }
}
export class OverflowBox extends ZacConverter {
    static new(data) {
        return new OverflowBox(Object.assign({ converter: 'f:1:OverflowBox' }, data));
    }
}
export class Padding extends ZacConverter {
    static new(data) {
        return new Padding(Object.assign({ converter: 'f:1:Padding' }, data));
    }
}
export class Positioned extends ZacConverter {
    static new(data) {
        return new Positioned(Object.assign({ converter: 'f:1:Positioned' }, data));
    }
    static directional(data) {
        return new Positioned(Object.assign({ converter: 'f:1:Positioned.directional' }, data));
    }
    static fill(data) {
        return new Positioned(Object.assign({ converter: 'f:1:Positioned.fill' }, data));
    }
}
export class SafeArea extends ZacConverter {
    static new(data) {
        return new SafeArea(Object.assign({ converter: 'f:1:SafeArea' }, data));
    }
}
export class SingleChildScrollView extends ZacConverter {
    static new(data) {
        return new SingleChildScrollView(Object.assign({ converter: 'f:1:SingleChildScrollView' }, data));
    }
}
export class SizedBox extends ZacConverter {
    static new(data) {
        return new SizedBox(Object.assign({ converter: 'f:1:SizedBox' }, data));
    }
    static expand(data) {
        return new SizedBox(Object.assign({ converter: 'f:1:SizedBox.expand' }, data));
    }
    static fromSize(data) {
        return new SizedBox(Object.assign({ converter: 'f:1:SizedBox.fromSize' }, data));
    }
    static shrink(data) {
        return new SizedBox(Object.assign({ converter: 'f:1:SizedBox.shrink' }, data));
    }
    static square(data) {
        return new SizedBox(Object.assign({ converter: 'f:1:SizedBox.square' }, data));
    }
}
export class SizedOverflowBox extends ZacConverter {
    static new(data) {
        return new SizedOverflowBox(Object.assign({ converter: 'f:1:SizedOverflowBox' }, data));
    }
}
export class Spacer extends ZacConverter {
    static new(data) {
        return new Spacer(Object.assign({ converter: 'f:1:Spacer' }, data));
    }
}
export class UnconstrainedBox extends ZacConverter {
    static new(data) {
        return new UnconstrainedBox(Object.assign({ converter: 'f:1:UnconstrainedBox' }, data));
    }
}
export class Column extends ZacConverter {
    static new(data) {
        return new Column(Object.assign({ converter: 'f:1:Column' }, data));
    }
}
export class GridView extends ZacConverter {
    static new(data) {
        return new GridView(Object.assign({ converter: 'f:1:GridView' }, data));
    }
}
export class IndexedStack extends ZacConverter {
    static new(data) {
        return new IndexedStack(Object.assign({ converter: 'f:1:IndexedStack' }, data));
    }
}
export class ListView extends ZacConverter {
    static new(data) {
        return new ListView(Object.assign({ converter: 'f:1:ListView' }, data));
    }
}
export class Row extends ZacConverter {
    static new(data) {
        return new Row(Object.assign({ converter: 'f:1:Row' }, data));
    }
}
export class Stack extends ZacConverter {
    static new(data) {
        return new Stack(Object.assign({ converter: 'f:1:Stack' }, data));
    }
}
export class Material extends ZacConverter {
    static new(data) {
        return new Material(Object.assign({ converter: 'f:1:Material' }, data));
    }
}
export class AppBar extends ZacConverter {
    static new(data) {
        return new AppBar(Object.assign({ converter: 'f:1:AppBar' }, data));
    }
}
export class ElevatedButton extends ZacConverter {
    static new(data) {
        return new ElevatedButton(Object.assign({ converter: 'f:1:ElevatedButton' }, data));
    }
    static icon(data) {
        return new ElevatedButton(Object.assign({ converter: 'f:1:ElevatedButton.icon' }, data));
    }
}
export class OutlinedButton extends ZacConverter {
    static new(data) {
        return new OutlinedButton(Object.assign({ converter: 'f:1:OutlinedButton' }, data));
    }
    static icon(data) {
        return new OutlinedButton(Object.assign({ converter: 'f:1:OutlinedButton.icon' }, data));
    }
}
export class TextButton extends ZacConverter {
    static new(data) {
        return new TextButton(Object.assign({ converter: 'f:1:TextButton' }, data));
    }
    static icon(data) {
        return new TextButton(Object.assign({ converter: 'f:1:TextButton.icon' }, data));
    }
}
export class ButtonBar extends ZacConverter {
    static new(data) {
        return new ButtonBar(Object.assign({ converter: 'f:1:ButtonBar' }, data));
    }
}
export class Card extends ZacConverter {
    static new(data) {
        return new Card(Object.assign({ converter: 'f:1:Card' }, data));
    }
}
export class Dialogs extends ZacConverter {
    static dialog(data) {
        return new Dialogs(Object.assign({ converter: 'f:1:Dialog' }, data));
    }
    static alertDialog(data) {
        return new Dialogs(Object.assign({ converter: 'f:1:AlertDialog' }, data));
    }
    static simpleDialog(data) {
        return new Dialogs(Object.assign({ converter: 'f:1:SimpleDialog' }, data));
    }
    static simpleDialogOption(data) {
        return new Dialogs(Object.assign({ converter: 'f:1:SimpleDialogOption' }, data));
    }
}
export class DialogActions extends ZacConverter {
    static showDialog(data) {
        return new DialogActions(Object.assign({ converter: 'f:1:showDialog' }, data));
    }
}
export class Divider extends ZacConverter {
    static new(data) {
        return new Divider(Object.assign({ converter: 'f:1:Divider' }, data));
    }
}
export class Drawer extends ZacConverter {
    static new(data) {
        return new Drawer(Object.assign({ converter: 'f:1:Drawer' }, data));
    }
}
export class ListTile extends ZacConverter {
    static new(data) {
        return new ListTile(Object.assign({ converter: 'f:1:ListTile' }, data));
    }
}
export class ClipOval extends ZacConverter {
    static new(data) {
        return new ClipOval(Object.assign({ converter: 'f:1:ClipOval' }, data));
    }
}
export class MaterialApp extends ZacConverter {
    static new(data) {
        return new MaterialApp(Object.assign({ converter: 'f:1:MaterialApp' }, data));
    }
}
export class ProgressIndicator extends ZacConverter {
    static linear(data) {
        return new ProgressIndicator(Object.assign({ converter: 'f:1:LinearProgressIndicator' }, data));
    }
    static circular(data) {
        return new ProgressIndicator(Object.assign({ converter: 'f:1:CircularProgressIndicator' }, data));
    }
}
export class RefreshIndicator extends ZacConverter {
    static new(data) {
        return new RefreshIndicator(Object.assign({ converter: 'f:1:RefreshIndicator' }, data));
    }
}
export class RefreshIndicatorTriggerMode extends ZacConverter {
    static onEdge() {
        return new RefreshIndicatorTriggerMode({
            converter: 'f:1:RefreshIndicatorTriggerMode.onEdge'
        });
    }
    static anywhere() {
        return new RefreshIndicatorTriggerMode({
            converter: 'f:1:RefreshIndicatorTriggerMode.anywhere'
        });
    }
}
export class Scaffold extends ZacConverter {
    static new(data) {
        return new Scaffold(Object.assign({ converter: 'f:1:Scaffold' }, data));
    }
}
export class ScaffoldActions extends ZacConverter {
    static openDrawer() {
        return new ScaffoldActions({
            converter: 'f:1:Scaffold.openDrawer'
        });
    }
    static openEndDrawer() {
        return new ScaffoldActions({
            converter: 'f:1:Scaffold.openEndDrawer'
        });
    }
    static showBodyScrim(data) {
        return new ScaffoldActions(Object.assign({ converter: 'f:1:Scaffold.showBodyScrim' }, data));
    }
    static showBottomSheet(data) {
        return new ScaffoldActions(Object.assign({ converter: 'f:1:Scaffold.showBottomSheet' }, data));
    }
}
export class ScaffoldMessenger extends ZacConverter {
    static showSnackBar(data) {
        return new ScaffoldMessenger(Object.assign({ converter: 'f:1:ScaffoldMessenger.showSnackBar' }, data));
    }
    static hideCurrentSnackBar() {
        return new ScaffoldMessenger({
            converter: 'f:1:ScaffoldMessenger.hideCurrentSnackBar'
        });
    }
    static removeCurrentSnackBar() {
        return new ScaffoldMessenger({
            converter: 'f:1:ScaffoldMessenger.removeCurrentSnackBar'
        });
    }
    static showMaterialBanner(data) {
        return new ScaffoldMessenger(Object.assign({ converter: 'f:1:ScaffoldMessenger.showMaterialBanner' }, data));
    }
    static hideCurrentMaterialBanner() {
        return new ScaffoldMessenger({
            converter: 'f:1:ScaffoldMessenger.hideCurrentMaterialBanner'
        });
    }
    static removeCurrentMaterialBanner() {
        return new ScaffoldMessenger({
            converter: 'f:1:ScaffoldMessenger.removeCurrentMaterialBanner'
        });
    }
}
export class SnackBar extends ZacConverter {
    static new(data) {
        return new SnackBar(Object.assign({ converter: 'f:1:SnackBar' }, data));
    }
}
export class SnackBarBehavior extends ZacConverter {
    static fixed() {
        return new SnackBarBehavior({
            converter: 'f:1:SnackBarBehavior.fixed'
        });
    }
    static floating() {
        return new SnackBarBehavior({
            converter: 'f:1:SnackBarBehavior.floating'
        });
    }
}
export class SnackBarAction extends ZacConverter {
    static new(data) {
        return new SnackBarAction(Object.assign({ converter: 'f:1:SnackBarAction' }, data));
    }
}
export class MaterialBanner extends ZacConverter {
    static new(data) {
        return new MaterialBanner(Object.assign({ converter: 'f:1:MaterialBanner' }, data));
    }
}
export class SelectableText extends ZacConverter {
    static new(data) {
        return new SelectableText(Object.assign({ converter: 'f:1:SelectableText' }, data));
    }
}
export class TextField extends ZacConverter {
    static new(data) {
        return new TextField(Object.assign({ converter: 'f:1:TextField' }, data));
    }
}
export class NavigatorState extends ZacConverter {
    static closest() {
        return new NavigatorState({
            converter: 'f:1:NavigatorState.closest'
        });
    }
    static root() {
        return new NavigatorState({
            converter: 'f:1:NavigatorState.root'
        });
    }
    static shared(data) {
        return new NavigatorState(Object.assign({ converter: 'z:1:NavigatorState.shared' }, data));
    }
}
export class Navigator extends ZacConverter {
    static new(data) {
        return new Navigator(Object.assign({ converter: 'f:1:Navigator' }, data));
    }
}
export class NavigatorActions extends ZacConverter {
    static push(data) {
        return new NavigatorActions(Object.assign({ converter: 'f:1:Navigator.push' }, data));
    }
    static pushNamed(data) {
        return new NavigatorActions(Object.assign({ converter: 'f:1:Navigator.pushNamed' }, data));
    }
    static pop(data) {
        return new NavigatorActions(Object.assign({ converter: 'f:1:Navigator.pop' }, data));
    }
    static maybePop(data) {
        return new NavigatorActions(Object.assign({ converter: 'f:1:Navigator.maybePop' }, data));
    }
    static pushReplacement(data) {
        return new NavigatorActions(Object.assign({ converter: 'f:1:Navigator.pushReplacement' }, data));
    }
    static pushReplacementNamed(data) {
        return new NavigatorActions(Object.assign({ converter: 'f:1:Navigator.pushReplacementNamed' }, data));
    }
}
export class PageRouteBuilder extends ZacConverter {
    static new(data) {
        return new PageRouteBuilder(Object.assign({ converter: 'f:1:PageRouteBuilder' }, data));
    }
}
export class RouteSettings extends ZacConverter {
    static new(data) {
        return new RouteSettings(Object.assign({ converter: 'f:1:RouteSettings' }, data));
    }
}
export class Opacity extends ZacConverter {
    static new(data) {
        return new Opacity(Object.assign({ converter: 'f:1:Opacity' }, data));
    }
}
export class RotatedBox extends ZacConverter {
    static new(data) {
        return new RotatedBox(Object.assign({ converter: 'f:1:RotatedBox' }, data));
    }
}
export class ScrollPhysics extends ZacConverter {
    static alwaysScrollable(data) {
        return new ScrollPhysics(Object.assign({ converter: 'f:1:AlwaysScrollableScrollPhysics' }, data));
    }
    static bouncingScroll(data) {
        return new ScrollPhysics(Object.assign({ converter: 'f:1:BouncingScrollPhysics' }, data));
    }
    static clampingScrollPhysics(data) {
        return new ScrollPhysics(Object.assign({ converter: 'f:1:ClampingScrollPhysics' }, data));
    }
}
export class CustomScrollView extends ZacConverter {
    static new(data) {
        return new CustomScrollView(Object.assign({ converter: 'f:1:CustomScrollView' }, data));
    }
}
export class SliverChildDelegate extends ZacConverter {
    static list(data) {
        return new SliverChildDelegate(Object.assign({ converter: 'f:1:SliverChildListDelegate' }, data));
    }
    static listFixed(data) {
        return new SliverChildDelegate(Object.assign({ converter: 'f:1:SliverChildListDelegate.fixed' }, data));
    }
}
export class SliverGridDelegate extends ZacConverter {
    static withFixedCrossAxisCount(data) {
        return new SliverGridDelegate(Object.assign({ converter: 'f:1:SliverGridDelegateWithFixedCrossAxisCount' }, data));
    }
    static withMaxCrossAxisExtent(data) {
        return new SliverGridDelegate(Object.assign({ converter: 'f:1:SliverGridDelegateWithMaxCrossAxisExtent' }, data));
    }
}
export class SliverGrid extends ZacConverter {
    static new(data) {
        return new SliverGrid(Object.assign({ converter: 'f:1:SliverGrid' }, data));
    }
}
export class SliverList extends ZacConverter {
    static new(data) {
        return new SliverList(Object.assign({ converter: 'f:1:SliverList' }, data));
    }
}
export class SliverPadding extends ZacConverter {
    static new(data) {
        return new SliverPadding(Object.assign({ converter: 'f:1:SliverPadding' }, data));
    }
}
export class SliverToBoxAdapter extends ZacConverter {
    static new(data) {
        return new SliverToBoxAdapter(Object.assign({ converter: 'f:1:SliverToBoxAdapter' }, data));
    }
}
export class Text extends ZacConverter {
    static new(data) {
        return new Text(Object.assign({ converter: 'f:1:Text' }, data));
    }
}
export class Builder extends ZacConverter {
    static new(data) {
        return new Builder(Object.assign({ converter: 'f:1:Builder' }, data));
    }
}
export class Wrap extends ZacConverter {
    static new(data) {
        return new Wrap(Object.assign({ converter: 'f:1:Wrap' }, data));
    }
}
export class IntrinsicHeight extends ZacConverter {
    static new(data) {
        return new IntrinsicHeight(Object.assign({ converter: 'f:1:IntrinsicHeight' }, data));
    }
}
export class ZacFlutterNavigatorActions extends ZacConverter {
    static popUntilRouteName(data) {
        return new ZacFlutterNavigatorActions(Object.assign({ converter: 'z:1:Navigator.popUntilRouteName' }, data));
    }
}
export class RouteFactoryRouteConfig extends ZacConverter {
    static new(data) {
        return new RouteFactoryRouteConfig(Object.assign({ converter: 'z:1:RouteFactoryRouteConfig' }, data));
    }
}
export class RouteFactorySingleRoute extends ZacConverter {
    static new(data) {
        return new RouteFactorySingleRoute(Object.assign({ converter: 'z:1:RouteFactorySingleRoute' }, data));
    }
}
export class RouteFactoryFromRoutes extends ZacConverter {
    static new(data) {
        return new RouteFactoryFromRoutes(Object.assign({ converter: 'z:1:RouteFactoryFromRoutes' }, data));
    }
}
export class RefreshIndicatorAction extends ZacConverter {
    static new() {
        return new RefreshIndicatorAction({
            converter: 'z:1:RefreshIndicator.complete'
        });
    }
}
export class SharedValueActions extends ZacConverter {
    static update(data) {
        return new SharedValueActions(Object.assign({ converter: 'z:1:SharedValue.update' }, data));
    }
}
export class SharedValueConsumeType extends ZacConverter {
    static watch(data) {
        return new SharedValueConsumeType(Object.assign({ converter: 'z:1:SharedValueConsume.watch' }, data));
    }
    static read() {
        return new SharedValueConsumeType({
            converter: 'z:1:SharedValueConsume.read'
        });
    }
}
export class ZacActions extends ZacConverter {
    static new(data) {
        return new ZacActions(Object.assign({ converter: 'z:1:Actions' }, data));
    }
}
export class ZacTransition extends ZacConverter {
    static new(data) {
        return new ZacTransition(Object.assign({ converter: 'z:1:StateMachine:Transition' }, data));
    }
}
export class ZacStateConfig extends ZacConverter {
    static new(data) {
        return new ZacStateConfig(Object.assign({ converter: 'z:1:StateMachine:StateConfig' }, data));
    }
}
export class ZacTemplateExpressionsSyntax extends ZacConverter {
    static new() {
        return new ZacTemplateExpressionsSyntax({
            converter: 'template_expressions:1:Syntax:Standard'
        });
    }
}
export class MaterialPageRoute extends ZacConverter {
    static new(data) {
        return new MaterialPageRoute(Object.assign({ converter: 'f:1:MaterialPageRoute' }, data));
    }
}
export class ZacStateMachineActions extends ZacConverter {
    static send(data) {
        return new ZacStateMachineActions(Object.assign({ converter: 'z:1:StateMachine:Action.send' }, data));
    }
    static trySend(data) {
        return new ZacStateMachineActions(Object.assign({ converter: 'z:1:StateMachine:Action.trySend' }, data));
    }
}
export class ZacStateMachineTransformer extends ZacConverter {
    static pickState() {
        return new ZacStateMachineTransformer({
            converter: 'z:1:StateMachine:Transformer.pickState'
        });
    }
    static pickContext() {
        return new ZacStateMachineTransformer({
            converter: 'z:1:StateMachine:Transformer.pickContext'
        });
    }
}
export class ZacTransformers extends ZacConverter {
    static new(data) {
        return new ZacTransformers(Object.assign({ converter: 'z:1:Transformers' }, data));
    }
}
export class ConvertTransformer extends ZacConverter {
    static new() {
        return new ConvertTransformer({
            converter: 'z:1:Transformer:Converter'
        });
    }
}
export class MapTransformer extends ZacConverter {
    static values() {
        return new MapTransformer({
            converter: 'z:1:Transformer:Map.values'
        });
    }
    static keys() {
        return new MapTransformer({
            converter: 'z:1:Transformer:Map.keys'
        });
    }
    static entries() {
        return new MapTransformer({
            converter: 'z:1:Transformer:Map.entries'
        });
    }
    static length_() {
        return new MapTransformer({
            converter: 'z:1:Transformer:Map.length'
        });
    }
    static isEmpty() {
        return new MapTransformer({
            converter: 'z:1:Transformer:Map.isEmpty'
        });
    }
    static isNotEmpty() {
        return new MapTransformer({
            converter: 'z:1:Transformer:Map.isNotEmpty'
        });
    }
    static containsKey(data) {
        return new MapTransformer(Object.assign({ converter: 'z:1:Transformer:Map.containsKey' }, data));
    }
    static containsValue(data) {
        return new MapTransformer(Object.assign({ converter: 'z:1:Transformer:Map.containsValue' }, data));
    }
    static mapper(data) {
        return new MapTransformer(Object.assign({ converter: 'z:1:Transformer:Map.map' }, data));
    }
    static fromObjectObject() {
        return new MapTransformer({
            converter: 'z:1:Transformer:Map<Object, Object>.from'
        });
    }
    static fromStringObject() {
        return new MapTransformer({
            converter: 'z:1:Transformer:Map<String, Object>.from'
        });
    }
    static fromStringNullObject() {
        return new MapTransformer({
            converter: 'z:1:Transformer:Map<String, Object?>.from'
        });
    }
    static key(data) {
        return new MapTransformer(Object.assign({ converter: 'z:1:Transformer:Map[key]' }, data));
    }
    static fromStringFlutterWidget() {
        return new MapTransformer({
            converter: 'z:1:Transformer:Map<String, FlutterWidget>.from'
        });
    }
}
export class IterableTransformer extends ZacConverter {
    static map(data) {
        return new IterableTransformer(Object.assign({ converter: 'z:1:Transformer:Iterable.map' }, data));
    }
    static single() {
        return new IterableTransformer({
            converter: 'z:1:Transformer:Iterable.single'
        });
    }
    static first() {
        return new IterableTransformer({
            converter: 'z:1:Transformer:Iterable.first'
        });
    }
    static last() {
        return new IterableTransformer({
            converter: 'z:1:Transformer:Iterable.last'
        });
    }
    static length_() {
        return new IterableTransformer({
            converter: 'z:1:Transformer:Iterable.length'
        });
    }
    static isEmpty() {
        return new IterableTransformer({
            converter: 'z:1:Transformer:Iterable.isEmpty'
        });
    }
    static isNotEmpty() {
        return new IterableTransformer({
            converter: 'z:1:Transformer:Iterable.isNotEmpty'
        });
    }
    static toList() {
        return new IterableTransformer({
            converter: 'z:1:Transformer:Iterable.toList'
        });
    }
    static toSet() {
        return new IterableTransformer({
            converter: 'z:1:Transformer:Iterable.toSet'
        });
    }
    static toString() {
        return new IterableTransformer({
            converter: 'z:1:Transformer:Iterable.toString'
        });
    }
    static join(data) {
        return new IterableTransformer(Object.assign({ converter: 'z:1:Transformer:Iterable.join' }, data));
    }
    static contains(data) {
        return new IterableTransformer(Object.assign({ converter: 'z:1:Transformer:Iterable.contains' }, data));
    }
    static elementAt(data) {
        return new IterableTransformer(Object.assign({ converter: 'z:1:Transformer:Iterable.elementAt' }, data));
    }
    static skip(data) {
        return new IterableTransformer(Object.assign({ converter: 'z:1:Transformer:Iterable.skip' }, data));
    }
    static take(data) {
        return new IterableTransformer(Object.assign({ converter: 'z:1:Transformer:Iterable.take' }, data));
    }
}
export class ListTransformer extends ZacConverter {
    static reversed() {
        return new ListTransformer({
            converter: 'z:1:Transformer:List.reversed'
        });
    }
    static fromFlutterWidget() {
        return new ListTransformer({
            converter: 'z:1:Transformer:List<FlutterWidget>.from'
        });
    }
}
export class ObjectTransformer extends ZacConverter {
    static isList() {
        return new ObjectTransformer({
            converter: 'z:1:Transformer:Object.isList'
        });
    }
    static isMap() {
        return new ObjectTransformer({
            converter: 'z:1:Transformer:Object.isMap'
        });
    }
    static isBool() {
        return new ObjectTransformer({
            converter: 'z:1:Transformer:Object.isBool'
        });
    }
    static isString() {
        return new ObjectTransformer({
            converter: 'z:1:Transformer:Object.isString'
        });
    }
    static isDouble() {
        return new ObjectTransformer({
            converter: 'z:1:Transformer:Object.isDouble'
        });
    }
    static isInt() {
        return new ObjectTransformer({
            converter: 'z:1:Transformer:Object.isInt'
        });
    }
    static isFlutterWidget() {
        return new ObjectTransformer({
            converter: 'z:1:Transformer:Object.isFlutterWidget'
        });
    }
    static isNull() {
        return new ObjectTransformer({
            converter: 'z:1:Transformer:Object.isNull'
        });
    }
    static equals(data) {
        return new ObjectTransformer(Object.assign({ converter: 'z:1:Transformer:Object.equals' }, data));
    }
    static toString() {
        return new ObjectTransformer({
            converter: 'z:1:Transformer:Object.toString'
        });
    }
    static runtimeType() {
        return new ObjectTransformer({
            converter: 'z:1:Transformer:Object.runtimeType'
        });
    }
    static hashCode() {
        return new ObjectTransformer({
            converter: 'z:1:Transformer:Object.hashCode'
        });
    }
    static equalsSharedValue(data) {
        return new ObjectTransformer(Object.assign({ converter: 'z:1:Transformer:Object.equalsSharedValue' }, data));
    }
}
export class NumTransformer extends ZacConverter {
    static toDouble() {
        return new NumTransformer({
            converter: 'z:1:Transformer:num.toDouble'
        });
    }
    static toInt() {
        return new NumTransformer({
            converter: 'z:1:Transformer:num.toInt'
        });
    }
    static abs() {
        return new NumTransformer({
            converter: 'z:1:Transformer:num.abs'
        });
    }
    static ceil() {
        return new NumTransformer({
            converter: 'z:1:Transformer:num.ceil'
        });
    }
    static ceilToDouble() {
        return new NumTransformer({
            converter: 'z:1:Transformer:num.ceilToDouble'
        });
    }
    static floor() {
        return new NumTransformer({
            converter: 'z:1:Transformer:num.floor'
        });
    }
    static floorToDouble() {
        return new NumTransformer({
            converter: 'z:1:Transformer:num.floorToDouble'
        });
    }
    static round() {
        return new NumTransformer({
            converter: 'z:1:Transformer:num.round'
        });
    }
    static roundToDouble() {
        return new NumTransformer({
            converter: 'z:1:Transformer:num.roundToDouble'
        });
    }
    static isFinite() {
        return new NumTransformer({
            converter: 'z:1:Transformer:num.isFinite'
        });
    }
    static isInfinite() {
        return new NumTransformer({
            converter: 'z:1:Transformer:num.isInfinite'
        });
    }
    static isNan() {
        return new NumTransformer({
            converter: 'z:1:Transformer:num.isNan'
        });
    }
    static isNegative() {
        return new NumTransformer({
            converter: 'z:1:Transformer:num.isNegative'
        });
    }
}
export class IntTransformer extends ZacConverter {
    static parse() {
        return new IntTransformer({
            converter: 'z:1:Transformer:int.parse'
        });
    }
    static tryParse() {
        return new IntTransformer({
            converter: 'z:1:Transformer:int.tryParse'
        });
    }
}
export class StringTransformer extends ZacConverter {
    static length_() {
        return new StringTransformer({
            converter: 'z:1:Transformer:String.length'
        });
    }
    static split(data) {
        return new StringTransformer(Object.assign({ converter: 'z:1:Transformer:String.split' }, data));
    }
    static isEmpty() {
        return new StringTransformer({
            converter: 'z:1:Transformer:String.isEmpty'
        });
    }
    static isNotEmpty() {
        return new StringTransformer({
            converter: 'z:1:Transformer:String.isNotEmpty'
        });
    }
    static replaceAll(data) {
        return new StringTransformer(Object.assign({ converter: 'z:1:Transformer:String.replaceAll' }, data));
    }
}
export class JsonTransformer extends ZacConverter {
    static encode() {
        return new JsonTransformer({
            converter: 'z:1:Transformer:Json.encode'
        });
    }
    static decode() {
        return new JsonTransformer({
            converter: 'z:1:Transformer:Json.decode'
        });
    }
}
export class UnderlineInputBorder extends ZacConverter {
    static new(data) {
        return new UnderlineInputBorder(Object.assign({ converter: 'f:1:OutlineInputBorder' }, data));
    }
}
export class OutlineInputBorder extends ZacConverter {
    static new(data) {
        return new OutlineInputBorder(Object.assign({ converter: 'f:1:OutlineInputBorder' }, data));
    }
}
export class InputDecoration extends ZacConverter {
    static new(data) {
        return new InputDecoration(Object.assign({ converter: 'f:1:InputDecoration' }, data));
    }
}
export class ZacValueActions extends ZacConverter {
    static asPayload(data) {
        return new ZacValueActions(Object.assign({ converter: 'z:1:ZacValue.asActionPayload' }, data));
    }
}
export class ZacTemplateExpressionsTransformer extends ZacConverter {
    static new(data) {
        return new ZacTemplateExpressionsTransformer(Object.assign({ converter: 'template_expressions:1:Transformer:Template.process' }, data));
    }
}
export class ZacFlutterGlobalKeyNavigatorStateProvider extends ZacConverter {
    static new(data) {
        return new ZacFlutterGlobalKeyNavigatorStateProvider(Object.assign({ converter: 'z:1:GlobalKeyNavigatorStateProvider' }, data));
    }
}
