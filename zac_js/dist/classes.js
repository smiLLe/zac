export class ZacConvertable {
    constructor(data) {
        this.data = data;
    }
    toJSON() {
        return this.data;
    }
}
export class ZacBuilder extends ZacConvertable {
    // Create the public getter or otherwise d.ts files will just omit T
    get doNotUse() {
        return this._doNotUse;
    }
}
export class ZacListBuilder extends ZacBuilder {
}
export class ZacMapBuilder extends ZacBuilder {
}
export class ZacTransform {
}
export class ZacAction {
}
export class ZacValue extends ZacBuilder {
    static new(data) {
        return new ZacValue({
            builder: 'z:1:ZacValue',
            value: data,
        });
    }
}
export class ZacValueList extends ZacListBuilder {
    static new(data) {
        return new ZacValueList({
            builder: 'z:1:ZacValueList',
            items: data,
        });
    }
}
export class ZacValueMap extends ZacMapBuilder {
    static new(data) {
        return new ZacValueMap({
            builder: 'z:1:ZacValueMap',
            items: data,
        });
    }
}
export class SharedValueConsumeType extends ZacConvertable {
    static watch(data) {
        return new SharedValueConsumeType(Object.assign({ builder: "z:1:SharedValueConsume.watch" }, data));
    }
    static read() {
        return new SharedValueConsumeType({
            builder: "z:1:SharedValueConsume.read",
        });
    }
}
export class ConsumeSharedValue extends ZacBuilder {
    static new(data) {
        return new ConsumeSharedValue(Object.assign({ builder: 'z:1:SharedValue.consume' }, data));
    }
}
export class ConsumeSharedValueList extends ZacListBuilder {
    static new(data) {
        return new ConsumeSharedValue(Object.assign({ builder: 'z:1:SharedValueList.consume' }, data));
    }
}
export class ConsumeSharedValueMap extends ZacMapBuilder {
    static new(data) {
        return new ConsumeSharedValue(Object.assign({ builder: 'z:1:SharedValueMap.consume' }, data));
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
export class BoolTransformer extends ZacBuilder {
    static negate() {
        return new BoolTransformer({
            builder: 'z:1:Transformer:Bool.negate'
        });
    }
}
export class Align extends ZacBuilder {
    static new(data) {
        return new Align(Object.assign({ builder: 'f:1:Align' }, data));
    }
}
export class Alignment extends ZacBuilder {
    static new(data) {
        return new Alignment(Object.assign({ builder: 'f:1:Alignment' }, data));
    }
    static bottomCenter() {
        return new Alignment({
            builder: 'f:1:Alignment.bottomCenter'
        });
    }
    static bottomLeft() {
        return new Alignment({
            builder: 'f:1:Alignment.bottomLeft'
        });
    }
    static bottomRight() {
        return new Alignment({
            builder: 'f:1:Alignment.bottomRight'
        });
    }
    static center() {
        return new Alignment({
            builder: 'f:1:Alignment.center'
        });
    }
    static centerLeft() {
        return new Alignment({
            builder: 'f:1:Alignment.centerLeft'
        });
    }
    static centerRight() {
        return new Alignment({
            builder: 'f:1:Alignment.centerRight'
        });
    }
    static topCenter() {
        return new Alignment({
            builder: 'f:1:Alignment.topCenter'
        });
    }
    static topLeft() {
        return new Alignment({
            builder: 'f:1:Alignment.topLeft'
        });
    }
    static topRight() {
        return new Alignment({
            builder: 'f:1:Alignment.topRight'
        });
    }
}
export class AlignmentDirectional extends ZacBuilder {
    static new(data) {
        return new AlignmentDirectional(Object.assign({ builder: 'f:1:AlignmentDirectional' }, data));
    }
    static bottomCenter() {
        return new AlignmentDirectional({
            builder: 'f:1:AlignmentDirectional.bottomCenter'
        });
    }
    static bottomStart() {
        return new AlignmentDirectional({
            builder: 'f:1:AlignmentDirectional.bottomStart'
        });
    }
    static bottomEnd() {
        return new AlignmentDirectional({
            builder: 'f:1:AlignmentDirectional.bottomEnd'
        });
    }
    static center() {
        return new AlignmentDirectional({
            builder: 'f:1:AlignmentDirectional.center'
        });
    }
    static centerStart() {
        return new AlignmentDirectional({
            builder: 'f:1:AlignmentDirectional.centerStart'
        });
    }
    static centerEnd() {
        return new AlignmentDirectional({
            builder: 'f:1:AlignmentDirectional.centerEnd'
        });
    }
    static topCenter() {
        return new AlignmentDirectional({
            builder: 'f:1:AlignmentDirectional.topCenter'
        });
    }
    static topStart() {
        return new AlignmentDirectional({
            builder: 'f:1:AlignmentDirectional.topStart'
        });
    }
    static topEnd() {
        return new AlignmentDirectional({
            builder: 'f:1:AlignmentDirectional.topEnd'
        });
    }
}
export class AppBar extends ZacBuilder {
    static new(data) {
        return new AppBar(Object.assign({ builder: 'f:1:AppBar' }, data));
    }
}
export class AspectRatio extends ZacBuilder {
    static new(data) {
        return new AspectRatio(Object.assign({ builder: 'f:1:AspectRatio' }, data));
    }
}
export class Axis extends ZacBuilder {
    static horizontal() {
        return new Axis({
            builder: 'f:1:Axis.horizontal'
        });
    }
    static vertical() {
        return new Axis({
            builder: 'f:1:Axis.vertical'
        });
    }
}
export class BlendMode extends ZacBuilder {
    static clear() {
        return new BlendMode({
            builder: 'f:1:BlendMode.clear'
        });
    }
    static color() {
        return new BlendMode({
            builder: 'f:1:BlendMode.color'
        });
    }
    static colorBurn() {
        return new BlendMode({
            builder: 'f:1:BlendMode.colorBurn'
        });
    }
    static colorDodge() {
        return new BlendMode({
            builder: 'f:1:BlendMode.colorDodge'
        });
    }
    static darken() {
        return new BlendMode({
            builder: 'f:1:BlendMode.darken'
        });
    }
    static difference() {
        return new BlendMode({
            builder: 'f:1:BlendMode.difference'
        });
    }
    static dst() {
        return new BlendMode({
            builder: 'f:1:BlendMode.dst'
        });
    }
    static dstATop() {
        return new BlendMode({
            builder: 'f:1:BlendMode.dstATop'
        });
    }
    static dstIn() {
        return new BlendMode({
            builder: 'f:1:BlendMode.dstIn'
        });
    }
    static dstOut() {
        return new BlendMode({
            builder: 'f:1:BlendMode.dstOut'
        });
    }
    static dstOver() {
        return new BlendMode({
            builder: 'f:1:BlendMode.dstOver'
        });
    }
    static exclusion() {
        return new BlendMode({
            builder: 'f:1:BlendMode.exclusion'
        });
    }
    static hardLight() {
        return new BlendMode({
            builder: 'f:1:BlendMode.hardLight'
        });
    }
    static hue() {
        return new BlendMode({
            builder: 'f:1:BlendMode.hue'
        });
    }
    static lighten() {
        return new BlendMode({
            builder: 'f:1:BlendMode.lighten'
        });
    }
    static luminosity() {
        return new BlendMode({
            builder: 'f:1:BlendMode.luminosity'
        });
    }
    static modulate() {
        return new BlendMode({
            builder: 'f:1:BlendMode.modulate'
        });
    }
    static multiply() {
        return new BlendMode({
            builder: 'f:1:BlendMode.multiply'
        });
    }
    static overlay() {
        return new BlendMode({
            builder: 'f:1:BlendMode.overlay'
        });
    }
    static plus() {
        return new BlendMode({
            builder: 'f:1:BlendMode.plus'
        });
    }
    static saturation() {
        return new BlendMode({
            builder: 'f:1:BlendMode.saturation'
        });
    }
    static screen() {
        return new BlendMode({
            builder: 'f:1:BlendMode.screen'
        });
    }
    static softLight() {
        return new BlendMode({
            builder: 'f:1:BlendMode.softLight'
        });
    }
    static src() {
        return new BlendMode({
            builder: 'f:1:BlendMode.src'
        });
    }
    static srcATop() {
        return new BlendMode({
            builder: 'f:1:BlendMode.srcATop'
        });
    }
    static srcIn() {
        return new BlendMode({
            builder: 'f:1:BlendMode.srcIn'
        });
    }
    static srcOut() {
        return new BlendMode({
            builder: 'f:1:BlendMode.srcOut'
        });
    }
    static srcOver() {
        return new BlendMode({
            builder: 'f:1:BlendMode.srcOver'
        });
    }
    static xor() {
        return new BlendMode({
            builder: 'f:1:BlendMode.xor'
        });
    }
}
export class BlurStyle extends ZacBuilder {
    static inner() {
        return new BlurStyle({
            builder: 'f:1:BlurStyle.inner'
        });
    }
    static normal() {
        return new BlurStyle({
            builder: 'f:1:BlurStyle.normal'
        });
    }
    static outer() {
        return new BlurStyle({
            builder: 'f:1:BlurStyle.outer'
        });
    }
    static solid() {
        return new BlurStyle({
            builder: 'f:1:BlurStyle.solid'
        });
    }
}
export class Border extends ZacBuilder {
    static new(data) {
        return new Border(Object.assign({ builder: 'f:1:Border' }, data));
    }
    static all(data) {
        return new Border(Object.assign({ builder: 'f:1:Border.all' }, data));
    }
}
export class BorderDirectional extends ZacBuilder {
    static new(data) {
        return new BorderDirectional(Object.assign({ builder: 'f:1:BorderDirectional' }, data));
    }
}
export class BorderRadius extends ZacBuilder {
    static all(data) {
        return new BorderRadius(Object.assign({ builder: 'f:1:BorderRadius.all' }, data));
    }
    static circular(data) {
        return new BorderRadius(Object.assign({ builder: 'f:1:BorderRadius.circular' }, data));
    }
    static horizontal(data) {
        return new BorderRadius(Object.assign({ builder: 'f:1:BorderRadius.horizontal' }, data));
    }
}
export class BorderSide extends ZacBuilder {
    static new(data) {
        return new BorderSide(Object.assign({ builder: 'f:1:BorderSide' }, data));
    }
}
export class BorderStyle extends ZacBuilder {
    static none() {
        return new BorderStyle({
            builder: 'f:1:BorderStyle.none'
        });
    }
    static solid() {
        return new BorderStyle({
            builder: 'f:1:BorderStyle.solid'
        });
    }
}
export class BoxConstraints extends ZacBuilder {
    static new(data) {
        return new BoxConstraints(Object.assign({ builder: 'f:1:BoxConstraints' }, data));
    }
    static expand(data) {
        return new BoxConstraints(Object.assign({ builder: 'f:1:BoxConstraints.expand' }, data));
    }
    static loose(data) {
        return new BoxConstraints(Object.assign({ builder: 'f:1:BoxConstraints.loose' }, data));
    }
    static tight(data) {
        return new BoxConstraints(Object.assign({ builder: 'f:1:BoxConstraints.tight' }, data));
    }
    static tightFor(data) {
        return new BoxConstraints(Object.assign({ builder: 'f:1:BoxConstraints.tightFor' }, data));
    }
    static tightForFinite(data) {
        return new BoxConstraints(Object.assign({ builder: 'f:1:BoxConstraints.tightForFinite' }, data));
    }
}
export class BoxDecoration extends ZacBuilder {
    static new(data) {
        return new BoxDecoration(Object.assign({ builder: 'f:1:BoxDecoration' }, data));
    }
}
export class BoxFit extends ZacBuilder {
    static contain() {
        return new BoxFit({
            builder: 'f:1:BoxFit.contain'
        });
    }
    static cover() {
        return new BoxFit({
            builder: 'f:1:BoxFit.cover'
        });
    }
    static fill() {
        return new BoxFit({
            builder: 'f:1:BoxFit.fill'
        });
    }
    static fitHeight() {
        return new BoxFit({
            builder: 'f:1:BoxFit.fitHeight'
        });
    }
    static fitWidth() {
        return new BoxFit({
            builder: 'f:1:BoxFit.fitWidth'
        });
    }
    static none() {
        return new BoxFit({
            builder: 'f:1:BoxFit.none'
        });
    }
    static scaleDown() {
        return new BoxFit({
            builder: 'f:1:BoxFit.scaleDown'
        });
    }
}
export class BoxHeightStyle extends ZacBuilder {
    static includeLineSpacingBottom() {
        return new BoxHeightStyle({
            builder: 'f:1:BoxHeightStyle.includeLineSpacingBottom'
        });
    }
    static includeLineSpacingMiddle() {
        return new BoxHeightStyle({
            builder: 'f:1:BoxHeightStyle.includeLineSpacingMiddle'
        });
    }
    static includeLineSpacingTop() {
        return new BoxHeightStyle({
            builder: 'f:1:BoxHeightStyle.includeLineSpacingTop'
        });
    }
    static max() {
        return new BoxHeightStyle({
            builder: 'f:1:BoxHeightStyle.max'
        });
    }
    static strut() {
        return new BoxHeightStyle({
            builder: 'f:1:BoxHeightStyle.strut'
        });
    }
    static tight() {
        return new BoxHeightStyle({
            builder: 'f:1:BoxHeightStyle.tight'
        });
    }
}
export class BoxShadow extends ZacBuilder {
    static new(data) {
        return new BoxShadow(Object.assign({ builder: 'f:1:BoxShadow' }, data));
    }
}
export class BoxShape extends ZacBuilder {
    static circle() {
        return new BoxShape({
            builder: 'f:1:BoxShape.circle'
        });
    }
    static rectangle() {
        return new BoxShape({
            builder: 'f:1:BoxShape.rectangle'
        });
    }
}
export class BoxWidthStyle extends ZacBuilder {
    static max() {
        return new BoxWidthStyle({
            builder: 'f:1:BoxWidthStyle.max'
        });
    }
    static tight() {
        return new BoxWidthStyle({
            builder: 'f:1:BoxWidthStyle.tight'
        });
    }
}
export class Brightness extends ZacBuilder {
    static dark() {
        return new Brightness({
            builder: 'f:1:Brightness.dark'
        });
    }
    static light() {
        return new Brightness({
            builder: 'f:1:Brightness.light'
        });
    }
}
export class Builder extends ZacBuilder {
    static new(data) {
        return new Builder(Object.assign({ builder: 'f:1:Builder' }, data));
    }
}
export class ButtonBar extends ZacBuilder {
    static new(data) {
        return new ButtonBar(Object.assign({ builder: 'f:1:ButtonBar' }, data));
    }
}
export class Card extends ZacBuilder {
    static new(data) {
        return new Card(Object.assign({ builder: 'f:1:Card' }, data));
    }
}
export class Center extends ZacBuilder {
    static new(data) {
        return new Center(Object.assign({ builder: 'f:1:Center' }, data));
    }
}
export class CircleBorder extends ZacBuilder {
    static new(data) {
        return new CircleBorder(Object.assign({ builder: 'f:1:CircleBorder' }, data));
    }
}
export class Clip extends ZacBuilder {
    static none() {
        return new Clip({
            builder: 'f:1:Clip.none'
        });
    }
    static antiAlias() {
        return new Clip({
            builder: 'f:1:Clip.antiAlias'
        });
    }
    static hardEdge() {
        return new Clip({
            builder: 'f:1:Clip.hardEdge'
        });
    }
}
export class ClipOval extends ZacBuilder {
    static new(data) {
        return new ClipOval(Object.assign({ builder: 'f:1:ClipOval' }, data));
    }
}
export class ClipRect extends ZacBuilder {
    static new(data) {
        return new ClipRect(Object.assign({ builder: 'f:1:ClipRect' }, data));
    }
}
export class Color extends ZacBuilder {
    static fromARGB(data) {
        return new Color(Object.assign({ builder: 'f:1:Color.fromARGB' }, data));
    }
    static fromRGBO(data) {
        return new Color(Object.assign({ builder: 'f:1:Color.fromRGBO' }, data));
    }
}
export class Column extends ZacBuilder {
    static new(data) {
        return new Column(Object.assign({ builder: 'f:1:Column' }, data));
    }
}
export class ConstrainedBox extends ZacBuilder {
    static new(data) {
        return new ConstrainedBox(Object.assign({ builder: 'f:1:ConstrainedBox' }, data));
    }
}
export class Container extends ZacBuilder {
    static new(data) {
        return new Container(Object.assign({ builder: 'f:1:Container' }, data));
    }
}
export class CrossAxisAlignment extends ZacBuilder {
    static baseline() {
        return new CrossAxisAlignment({
            builder: 'f:1:CrossAxisAlignment.baseline'
        });
    }
    static center() {
        return new CrossAxisAlignment({
            builder: 'f:1:CrossAxisAlignment.center'
        });
    }
    static end() {
        return new CrossAxisAlignment({
            builder: 'f:1:CrossAxisAlignment.end'
        });
    }
    static start() {
        return new CrossAxisAlignment({
            builder: 'f:1:CrossAxisAlignment.start'
        });
    }
    static stretch() {
        return new CrossAxisAlignment({
            builder: 'f:1:CrossAxisAlignment.stretch'
        });
    }
}
export class CustomScrollView extends ZacBuilder {
    static new(data) {
        return new CustomScrollView(Object.assign({ builder: 'f:1:CustomScrollView' }, data));
    }
}
export class DecoratedBox extends ZacBuilder {
    static new(data) {
        return new DecoratedBox(Object.assign({ builder: 'f:1:DecoratedBox' }, data));
    }
}
export class DecorationPosition extends ZacBuilder {
    static background() {
        return new DecorationPosition({
            builder: 'f:1:DecorationPosition.background'
        });
    }
    static foreground() {
        return new DecorationPosition({
            builder: 'f:1:DecorationPosition.foreground'
        });
    }
}
export class DialogActions extends ZacBuilder {
    static showDialog(data) {
        return new DialogActions(Object.assign({ builder: 'f:1:showDialog' }, data));
    }
}
export class Dialogs extends ZacBuilder {
    static dialog(data) {
        return new Dialogs(Object.assign({ builder: 'f:1:Dialog' }, data));
    }
    static alertDialog(data) {
        return new Dialogs(Object.assign({ builder: 'f:1:AlertDialog' }, data));
    }
    static simpleDialog(data) {
        return new Dialogs(Object.assign({ builder: 'f:1:SimpleDialog' }, data));
    }
    static simpleDialogOption(data) {
        return new Dialogs(Object.assign({ builder: 'f:1:SimpleDialogOption' }, data));
    }
}
export class Divider extends ZacBuilder {
    static new(data) {
        return new Divider(Object.assign({ builder: 'f:1:Divider' }, data));
    }
}
export class Drawer extends ZacBuilder {
    static new(data) {
        return new Drawer(Object.assign({ builder: 'f:1:Drawer' }, data));
    }
}
export class EdgeInsets extends ZacBuilder {
    static all(data) {
        return new EdgeInsets(Object.assign({ builder: 'f:1:EdgeInsets.all' }, data));
    }
    static symmetric(data) {
        return new EdgeInsets(Object.assign({ builder: 'f:1:EdgeInsets.symmetric' }, data));
    }
    static only(data) {
        return new EdgeInsets(Object.assign({ builder: 'f:1:EdgeInsets.only' }, data));
    }
}
export class EdgeInsetsDirectional extends ZacBuilder {
    static all(data) {
        return new EdgeInsetsDirectional(Object.assign({ builder: 'f:1:EdgeInsetsDirectional.all' }, data));
    }
    static only(data) {
        return new EdgeInsetsDirectional(Object.assign({ builder: 'f:1:EdgeInsetsDirectional.only' }, data));
    }
}
export class ElevatedButton extends ZacBuilder {
    static new(data) {
        return new ElevatedButton(Object.assign({ builder: 'f:1:ElevatedButton' }, data));
    }
    static icon(data) {
        return new ElevatedButton(Object.assign({ builder: 'f:1:ElevatedButton.icon' }, data));
    }
}
export class Expanded extends ZacBuilder {
    static new(data) {
        return new Expanded(Object.assign({ builder: 'f:1:Expanded' }, data));
    }
}
export class FilterQuality extends ZacBuilder {
    static high() {
        return new FilterQuality({
            builder: 'f:1:FilterQuality.high'
        });
    }
    static low() {
        return new FilterQuality({
            builder: 'f:1:FilterQuality.low'
        });
    }
    static medium() {
        return new FilterQuality({
            builder: 'f:1:FilterQuality.medium'
        });
    }
    static none() {
        return new FilterQuality({
            builder: 'f:1:FilterQuality.none'
        });
    }
}
export class FittedBox extends ZacBuilder {
    static new(data) {
        return new FittedBox(Object.assign({ builder: 'f:1:FittedBox' }, data));
    }
}
export class FlexFit extends ZacBuilder {
    static tight() {
        return new FlexFit({
            builder: 'f:1:FlexFit.tight'
        });
    }
    static loose() {
        return new FlexFit({
            builder: 'f:1:FlexFit.loose'
        });
    }
}
export class Flexible extends ZacBuilder {
    static new(data) {
        return new Flexible(Object.assign({ builder: 'f:1:Flexible' }, data));
    }
}
export class FloatingActionButton extends ZacBuilder {
    static new(data) {
        return new FloatingActionButton(Object.assign({ builder: 'f:1:FloatingActionButton' }, data));
    }
    static extended(data) {
        return new FloatingActionButton(Object.assign({ builder: 'f:1:FloatingActionButton.extended' }, data));
    }
    static large(data) {
        return new FloatingActionButton(Object.assign({ builder: 'f:1:FloatingActionButton.large' }, data));
    }
    static small(data) {
        return new FloatingActionButton(Object.assign({ builder: 'f:1:FloatingActionButton.small' }, data));
    }
}
export class FontFeature extends ZacBuilder {
    static new(data) {
        return new FontFeature(Object.assign({ builder: 'f:1:FontFeature' }, data));
    }
    static alternative(data) {
        return new FontFeature(Object.assign({ builder: 'f:1:FontFeature.alternative' }, data));
    }
    static alternativeFractions() {
        return new FontFeature({
            builder: 'f:1:FontFeature.alternativeFractions'
        });
    }
    static caseSensitiveForms() {
        return new FontFeature({
            builder: 'f:1:FontFeature.caseSensitiveForms'
        });
    }
    static characterVariant(data) {
        return new FontFeature(Object.assign({ builder: 'f:1:FontFeature.characterVariant' }, data));
    }
    static contextualAlternates() {
        return new FontFeature({
            builder: 'f:1:FontFeature.contextualAlternates'
        });
    }
    static denominator() {
        return new FontFeature({
            builder: 'f:1:FontFeature.denominator'
        });
    }
    static disable(data) {
        return new FontFeature(Object.assign({ builder: 'f:1:FontFeature.disable' }, data));
    }
    static enable(data) {
        return new FontFeature(Object.assign({ builder: 'f:1:FontFeature.enable' }, data));
    }
    static fractions() {
        return new FontFeature({
            builder: 'f:1:FontFeature.fractions'
        });
    }
    static historicalForms() {
        return new FontFeature({
            builder: 'f:1:FontFeature.historicalForms'
        });
    }
    static historicalLigatures() {
        return new FontFeature({
            builder: 'f:1:FontFeature.historicalLigatures'
        });
    }
    static liningFigures() {
        return new FontFeature({
            builder: 'f:1:FontFeature.liningFigures'
        });
    }
    static localeAware(data) {
        return new FontFeature(Object.assign({ builder: 'f:1:FontFeature.localeAware' }, data));
    }
    static notationalForms(data) {
        return new FontFeature(Object.assign({ builder: 'f:1:FontFeature.notationalForms' }, data));
    }
    static numerators() {
        return new FontFeature({
            builder: 'f:1:FontFeature.numerators'
        });
    }
    static oldstyleFigures() {
        return new FontFeature({
            builder: 'f:1:FontFeature.oldstyleFigures'
        });
    }
    static ordinalForms() {
        return new FontFeature({
            builder: 'f:1:FontFeature.ordinalForms'
        });
    }
    static proportionalFigures() {
        return new FontFeature({
            builder: 'f:1:FontFeature.proportionalFigures'
        });
    }
    static randomize() {
        return new FontFeature({
            builder: 'f:1:FontFeature.randomize'
        });
    }
    static scientificInferiors() {
        return new FontFeature({
            builder: 'f:1:FontFeature.scientificInferiors'
        });
    }
    static slashedZero() {
        return new FontFeature({
            builder: 'f:1:FontFeature.slashedZero'
        });
    }
    static stylisticAlternates() {
        return new FontFeature({
            builder: 'f:1:FontFeature.stylisticAlternates'
        });
    }
    static stylisticSet(data) {
        return new FontFeature(Object.assign({ builder: 'f:1:FontFeature.stylisticSet' }, data));
    }
    static subscripts() {
        return new FontFeature({
            builder: 'f:1:FontFeature.subscripts'
        });
    }
    static superscripts() {
        return new FontFeature({
            builder: 'f:1:FontFeature.superscripts'
        });
    }
    static swash(data) {
        return new FontFeature(Object.assign({ builder: 'f:1:FontFeature.swash' }, data));
    }
    static tabularFigures() {
        return new FontFeature({
            builder: 'f:1:FontFeature.tabularFigures'
        });
    }
}
export class FontStyle extends ZacBuilder {
    static italic() {
        return new FontStyle({
            builder: 'f:1:FontStyle.italic'
        });
    }
    static normal() {
        return new FontStyle({
            builder: 'f:1:FontStyle.normal'
        });
    }
}
export class FontWeight extends ZacBuilder {
    static bold() {
        return new FontWeight({
            builder: 'f:1:FontWeight.bold'
        });
    }
    static normal() {
        return new FontWeight({
            builder: 'f:1:FontWeight.normal'
        });
    }
    static w100() {
        return new FontWeight({
            builder: 'f:1:FontWeight.w100'
        });
    }
    static w200() {
        return new FontWeight({
            builder: 'f:1:FontWeight.w200'
        });
    }
    static w300() {
        return new FontWeight({
            builder: 'f:1:FontWeight.w300'
        });
    }
    static w400() {
        return new FontWeight({
            builder: 'f:1:FontWeight.w400'
        });
    }
    static w500() {
        return new FontWeight({
            builder: 'f:1:FontWeight.w500'
        });
    }
    static w600() {
        return new FontWeight({
            builder: 'f:1:FontWeight.w600'
        });
    }
    static w700() {
        return new FontWeight({
            builder: 'f:1:FontWeight.w700'
        });
    }
    static w800() {
        return new FontWeight({
            builder: 'f:1:FontWeight.w800'
        });
    }
    static w900() {
        return new FontWeight({
            builder: 'f:1:FontWeight.w900'
        });
    }
}
export class FractionalOffset extends ZacBuilder {
    static new(data) {
        return new FractionalOffset(Object.assign({ builder: 'f:1:FractionalOffset' }, data));
    }
}
export class FractionalTranslation extends ZacBuilder {
    static new(data) {
        return new FractionalTranslation(Object.assign({ builder: 'f:1:FractionalTranslation' }, data));
    }
}
export class FractionallySizedBox extends ZacBuilder {
    static new(data) {
        return new FractionallySizedBox(Object.assign({ builder: 'f:1:FractionallySizedBox' }, data));
    }
}
export class GestureDetector extends ZacBuilder {
    static new(data) {
        return new GestureDetector(Object.assign({ builder: 'f:1:GestureDetector' }, data));
    }
}
export class GlobalKeyNavigatorStateProvider extends ZacBuilder {
    static new(data) {
        return new GlobalKeyNavigatorStateProvider(Object.assign({ builder: 'z:1:GlobalKey<NavigatorState>.provide' }, data));
    }
}
export class GlobalKeyScaffoldMessengerStateProvider extends ZacBuilder {
    static new(data) {
        return new GlobalKeyScaffoldMessengerStateProvider(Object.assign({ builder: 'z:1:GlobalKey<ScaffoldMessengerState>.provide' }, data));
    }
}
export class GridView extends ZacBuilder {
    static new(data) {
        return new GridView(Object.assign({ builder: 'f:1:GridView' }, data));
    }
}
export class HitTestBehavior extends ZacBuilder {
    static deferToChild() {
        return new HitTestBehavior({
            builder: 'f:1:HitTestBehavior.deferToChild'
        });
    }
    static opaque() {
        return new HitTestBehavior({
            builder: 'f:1:HitTestBehavior.opaque'
        });
    }
    static translucent() {
        return new HitTestBehavior({
            builder: 'f:1:HitTestBehavior.translucent'
        });
    }
}
export class Icon extends ZacBuilder {
    static new(data) {
        return new Icon(Object.assign({ builder: 'f:1:Icon' }, data));
    }
}
export class IconData extends ZacBuilder {
    static new(data) {
        return new IconData(Object.assign({ builder: 'f:1:IconData' }, data));
    }
}
export class IconThemeData extends ZacBuilder {
    static new(data) {
        return new IconThemeData(Object.assign({ builder: 'f:1:IconThemeData' }, data));
    }
}
export class IgnorePointer extends ZacBuilder {
    static new(data) {
        return new IgnorePointer(Object.assign({ builder: 'f:1:IgnorePointer' }, data));
    }
}
export class Image extends ZacBuilder {
    static network(data) {
        return new Image(Object.assign({ builder: 'f:1:Image.network' }, data));
    }
    static asset(data) {
        return new Image(Object.assign({ builder: 'f:1:Image.asset' }, data));
    }
}
export class ImageRepeat extends ZacBuilder {
    static noRepeat() {
        return new ImageRepeat({
            builder: 'f:1:ImageRepeat.noRepeat'
        });
    }
    static repeat() {
        return new ImageRepeat({
            builder: 'f:1:ImageRepeat.repeat'
        });
    }
    static repeatX() {
        return new ImageRepeat({
            builder: 'f:1:ImageRepeat.repeatX'
        });
    }
    static repeatY() {
        return new ImageRepeat({
            builder: 'f:1:ImageRepeat.repeatY'
        });
    }
}
export class IndexedStack extends ZacBuilder {
    static new(data) {
        return new IndexedStack(Object.assign({ builder: 'f:1:IndexedStack' }, data));
    }
}
export class InputDecoration extends ZacBuilder {
    static new(data) {
        return new InputDecoration(Object.assign({ builder: 'f:1:InputDecoration' }, data));
    }
}
export class InteractiveViewer extends ZacBuilder {
    static new(data) {
        return new InteractiveViewer(Object.assign({ builder: 'f:1:InteractiveViewer' }, data));
    }
}
export class IntrinsicHeight extends ZacBuilder {
    static new(data) {
        return new IntrinsicHeight(Object.assign({ builder: 'f:1:IntrinsicHeight' }, data));
    }
}
export class IntrinsicWidth extends ZacBuilder {
    static new(data) {
        return new IntrinsicWidth(Object.assign({ builder: 'f:1:IntrinsicWidth' }, data));
    }
}
export class LimitedBox extends ZacBuilder {
    static new(data) {
        return new LimitedBox(Object.assign({ builder: 'f:1:LimitedBox' }, data));
    }
}
export class ListTile extends ZacBuilder {
    static new(data) {
        return new ListTile(Object.assign({ builder: 'f:1:ListTile' }, data));
    }
}
export class ListView extends ZacBuilder {
    static new(data) {
        return new ListView(Object.assign({ builder: 'f:1:ListView' }, data));
    }
}
export class Locale extends ZacBuilder {
    static new(data) {
        return new Locale(Object.assign({ builder: 'f:1:Locale' }, data));
    }
}
export class MainAxisAlignment extends ZacBuilder {
    static start() {
        return new MainAxisAlignment({
            builder: 'f:1:MainAxisAlignment.start'
        });
    }
    static end() {
        return new MainAxisAlignment({
            builder: 'f:1:MainAxisAlignment.end'
        });
    }
    static center() {
        return new MainAxisAlignment({
            builder: 'f:1:MainAxisAlignment.center'
        });
    }
    static spaceBetween() {
        return new MainAxisAlignment({
            builder: 'f:1:MainAxisAlignment.spaceBetween'
        });
    }
    static spaceAround() {
        return new MainAxisAlignment({
            builder: 'f:1:MainAxisAlignment.spaceAround'
        });
    }
    static spaceEvenly() {
        return new MainAxisAlignment({
            builder: 'f:1:MainAxisAlignment.spaceEvenly'
        });
    }
}
export class MainAxisSize extends ZacBuilder {
    static min() {
        return new MainAxisSize({
            builder: 'f:1:MainAxisSize.min'
        });
    }
    static max() {
        return new MainAxisSize({
            builder: 'f:1:MainAxisSize.max'
        });
    }
}
export class Material extends ZacBuilder {
    static new(data) {
        return new Material(Object.assign({ builder: 'f:1:Material' }, data));
    }
}
export class MaterialApp extends ZacBuilder {
    static new(data) {
        return new MaterialApp(Object.assign({ builder: 'f:1:MaterialApp' }, data));
    }
}
export class MaterialBanner extends ZacBuilder {
    static new(data) {
        return new MaterialBanner(Object.assign({ builder: 'f:1:MaterialBanner' }, data));
    }
}
export class MaterialPageRoute extends ZacBuilder {
    static new(data) {
        return new MaterialPageRoute(Object.assign({ builder: 'f:1:MaterialPageRoute' }, data));
    }
}
export class Navigator extends ZacBuilder {
    static new(data) {
        return new Navigator(Object.assign({ builder: 'f:1:Navigator' }, data));
    }
}
export class NavigatorActions extends ZacBuilder {
    static push(data) {
        return new NavigatorActions(Object.assign({ builder: 'f:1:Navigator.push' }, data));
    }
    static pushNamed(data) {
        return new NavigatorActions(Object.assign({ builder: 'f:1:Navigator.pushNamed' }, data));
    }
    static pop(data) {
        return new NavigatorActions(Object.assign({ builder: 'f:1:Navigator.pop' }, data));
    }
    static maybePop(data) {
        return new NavigatorActions(Object.assign({ builder: 'f:1:Navigator.maybePop' }, data));
    }
    static pushReplacement(data) {
        return new NavigatorActions(Object.assign({ builder: 'f:1:Navigator.pushReplacement' }, data));
    }
    static pushReplacementNamed(data) {
        return new NavigatorActions(Object.assign({ builder: 'f:1:Navigator.pushReplacementNamed' }, data));
    }
    static popUntilRouteName(data) {
        return new NavigatorActions(Object.assign({ builder: 'z:1:Navigator.popUntilRouteName' }, data));
    }
}
export class NavigatorState extends ZacBuilder {
    static closest() {
        return new NavigatorState({
            builder: 'f:1:NavigatorState.closest'
        });
    }
    static root() {
        return new NavigatorState({
            builder: 'f:1:NavigatorState.root'
        });
    }
    static shared(data) {
        return new NavigatorState(Object.assign({ builder: 'z:1:NavigatorState.shared' }, data));
    }
}
export class Offset extends ZacBuilder {
    static new(data) {
        return new Offset(Object.assign({ builder: 'f:1:Offset' }, data));
    }
    static fromDirection(data) {
        return new Offset(Object.assign({ builder: 'f:1:Offset.fromDirection' }, data));
    }
}
export class Offstage extends ZacBuilder {
    static new(data) {
        return new Offstage(Object.assign({ builder: 'f:1:Offstage' }, data));
    }
}
export class Opacity extends ZacBuilder {
    static new(data) {
        return new Opacity(Object.assign({ builder: 'f:1:Opacity' }, data));
    }
}
export class OutlineInputBorder extends ZacBuilder {
    static new(data) {
        return new OutlineInputBorder(Object.assign({ builder: 'f:1:OutlineInputBorder' }, data));
    }
}
export class OutlinedButton extends ZacBuilder {
    static new(data) {
        return new OutlinedButton(Object.assign({ builder: 'f:1:OutlinedButton' }, data));
    }
    static icon(data) {
        return new OutlinedButton(Object.assign({ builder: 'f:1:OutlinedButton.icon' }, data));
    }
}
export class OverflowBox extends ZacBuilder {
    static new(data) {
        return new OverflowBox(Object.assign({ builder: 'f:1:OverflowBox' }, data));
    }
}
export class Padding extends ZacBuilder {
    static new(data) {
        return new Padding(Object.assign({ builder: 'f:1:Padding' }, data));
    }
}
export class PageRouteBuilder extends ZacBuilder {
    static new(data) {
        return new PageRouteBuilder(Object.assign({ builder: 'f:1:PageRouteBuilder' }, data));
    }
}
export class Positioned extends ZacBuilder {
    static new(data) {
        return new Positioned(Object.assign({ builder: 'f:1:Positioned' }, data));
    }
    static directional(data) {
        return new Positioned(Object.assign({ builder: 'f:1:Positioned.directional' }, data));
    }
    static fill(data) {
        return new Positioned(Object.assign({ builder: 'f:1:Positioned.fill' }, data));
    }
}
export class ProgressIndicator extends ZacBuilder {
    static linear(data) {
        return new ProgressIndicator(Object.assign({ builder: 'f:1:LinearProgressIndicator' }, data));
    }
    static circular(data) {
        return new ProgressIndicator(Object.assign({ builder: 'f:1:CircularProgressIndicator' }, data));
    }
}
export class Radius extends ZacBuilder {
    static circular(data) {
        return new Radius(Object.assign({ builder: 'f:1:Radius.circular' }, data));
    }
    static elliptical(data) {
        return new Radius(Object.assign({ builder: 'f:1:Radius.elliptical' }, data));
    }
}
export class Rect extends ZacBuilder {
    static fromCenter(data) {
        return new Rect(Object.assign({ builder: 'f:1:Rect.fromCenter' }, data));
    }
    static fromCircle(data) {
        return new Rect(Object.assign({ builder: 'f:1:Rect.fromCircle' }, data));
    }
    static fromLTRB(data) {
        return new Rect(Object.assign({ builder: 'f:1:Rect.fromLTRB' }, data));
    }
    static fromLTWH(data) {
        return new Rect(Object.assign({ builder: 'f:1:Rect.fromLTWH' }, data));
    }
    static fromPoints(data) {
        return new Rect(Object.assign({ builder: 'f:1:Rect.fromPoints' }, data));
    }
}
export class RefreshIndicator extends ZacBuilder {
    static new(data) {
        return new RefreshIndicator(Object.assign({ builder: 'f:1:RefreshIndicator' }, data));
    }
}
export class RefreshIndicatorTriggerMode extends ZacBuilder {
    static onEdge() {
        return new RefreshIndicatorTriggerMode({
            builder: 'f:1:RefreshIndicatorTriggerMode.onEdge'
        });
    }
    static anywhere() {
        return new RefreshIndicatorTriggerMode({
            builder: 'f:1:RefreshIndicatorTriggerMode.anywhere'
        });
    }
}
export class RotatedBox extends ZacBuilder {
    static new(data) {
        return new RotatedBox(Object.assign({ builder: 'f:1:RotatedBox' }, data));
    }
}
export class RoundedRectangleBorder extends ZacBuilder {
    static new(data) {
        return new RoundedRectangleBorder(Object.assign({ builder: 'f:1:RoundedRectangleBorder' }, data));
    }
}
export class RouteFactory extends ZacBuilder {
    static new(data) {
        return new RouteFactory(Object.assign({ builder: 'f:1:RouteFactory' }, data));
    }
}
export class RouteSettings extends ZacBuilder {
    static new(data) {
        return new RouteSettings(Object.assign({ builder: 'f:1:RouteSettings' }, data));
    }
}
export class Row extends ZacBuilder {
    static new(data) {
        return new Row(Object.assign({ builder: 'f:1:Row' }, data));
    }
}
export class SafeArea extends ZacBuilder {
    static new(data) {
        return new SafeArea(Object.assign({ builder: 'f:1:SafeArea' }, data));
    }
}
export class Scaffold extends ZacBuilder {
    static new(data) {
        return new Scaffold(Object.assign({ builder: 'f:1:Scaffold' }, data));
    }
}
export class ScaffoldActions extends ZacBuilder {
    static openDrawer() {
        return new ScaffoldActions({
            builder: 'f:1:Scaffold.openDrawer'
        });
    }
    static openEndDrawer() {
        return new ScaffoldActions({
            builder: 'f:1:Scaffold.openEndDrawer'
        });
    }
    static showBodyScrim(data) {
        return new ScaffoldActions(Object.assign({ builder: 'f:1:Scaffold.showBodyScrim' }, data));
    }
    static showBottomSheet(data) {
        return new ScaffoldActions(Object.assign({ builder: 'f:1:Scaffold.showBottomSheet' }, data));
    }
}
export class ScaffoldMessenger extends ZacBuilder {
    static showSnackBar(data) {
        return new ScaffoldMessenger(Object.assign({ builder: 'f:1:ScaffoldMessenger.showSnackBar' }, data));
    }
    static hideCurrentSnackBar() {
        return new ScaffoldMessenger({
            builder: 'f:1:ScaffoldMessenger.hideCurrentSnackBar'
        });
    }
    static removeCurrentSnackBar() {
        return new ScaffoldMessenger({
            builder: 'f:1:ScaffoldMessenger.removeCurrentSnackBar'
        });
    }
    static showMaterialBanner(data) {
        return new ScaffoldMessenger(Object.assign({ builder: 'f:1:ScaffoldMessenger.showMaterialBanner' }, data));
    }
    static hideCurrentMaterialBanner() {
        return new ScaffoldMessenger({
            builder: 'f:1:ScaffoldMessenger.hideCurrentMaterialBanner'
        });
    }
    static removeCurrentMaterialBanner() {
        return new ScaffoldMessenger({
            builder: 'f:1:ScaffoldMessenger.removeCurrentMaterialBanner'
        });
    }
}
export class ScrollController extends ZacBuilder {
    static new(data) {
        return new ScrollController(Object.assign({ builder: 'z:1:ScrollController.provide' }, data));
    }
}
export class ScrollPhysics extends ZacBuilder {
    static alwaysScrollable(data) {
        return new ScrollPhysics(Object.assign({ builder: 'f:1:AlwaysScrollableScrollPhysics' }, data));
    }
    static bouncingScroll(data) {
        return new ScrollPhysics(Object.assign({ builder: 'f:1:BouncingScrollPhysics' }, data));
    }
    static clampingScrollPhysics(data) {
        return new ScrollPhysics(Object.assign({ builder: 'f:1:ClampingScrollPhysics' }, data));
    }
}
export class ScrollViewKeyboardDismissBehavior extends ZacBuilder {
    static manual() {
        return new ScrollViewKeyboardDismissBehavior({
            builder: 'f:1:ScrollViewKeyboardDismissBehavior.manual'
        });
    }
    static onDrag() {
        return new ScrollViewKeyboardDismissBehavior({
            builder: 'f:1:ScrollViewKeyboardDismissBehavior.onDrag'
        });
    }
}
export class SelectableText extends ZacBuilder {
    static new(data) {
        return new SelectableText(Object.assign({ builder: 'f:1:SelectableText' }, data));
    }
}
export class Shadow extends ZacBuilder {
    static new(data) {
        return new Shadow(Object.assign({ builder: 'f:1:Shadow' }, data));
    }
}
export class ShapeDecoration extends ZacBuilder {
    static new(data) {
        return new ShapeDecoration(Object.assign({ builder: 'f:1:ShapeDecoration' }, data));
    }
}
export class SingleChildScrollView extends ZacBuilder {
    static new(data) {
        return new SingleChildScrollView(Object.assign({ builder: 'f:1:SingleChildScrollView' }, data));
    }
}
export class Size extends ZacBuilder {
    static new(data) {
        return new Size(Object.assign({ builder: 'f:1:Size' }, data));
    }
}
export class SizedBox extends ZacBuilder {
    static new(data) {
        return new SizedBox(Object.assign({ builder: 'f:1:SizedBox' }, data));
    }
    static expand(data) {
        return new SizedBox(Object.assign({ builder: 'f:1:SizedBox.expand' }, data));
    }
    static fromSize(data) {
        return new SizedBox(Object.assign({ builder: 'f:1:SizedBox.fromSize' }, data));
    }
    static shrink(data) {
        return new SizedBox(Object.assign({ builder: 'f:1:SizedBox.shrink' }, data));
    }
    static square(data) {
        return new SizedBox(Object.assign({ builder: 'f:1:SizedBox.square' }, data));
    }
}
export class SizedOverflowBox extends ZacBuilder {
    static new(data) {
        return new SizedOverflowBox(Object.assign({ builder: 'f:1:SizedOverflowBox' }, data));
    }
}
export class SliverChildDelegate extends ZacBuilder {
    static list(data) {
        return new SliverChildDelegate(Object.assign({ builder: 'f:1:SliverChildListDelegate' }, data));
    }
    static listFixed(data) {
        return new SliverChildDelegate(Object.assign({ builder: 'f:1:SliverChildListDelegate.fixed' }, data));
    }
}
export class SliverGrid extends ZacBuilder {
    static new(data) {
        return new SliverGrid(Object.assign({ builder: 'f:1:SliverGrid' }, data));
    }
}
export class SliverGridDelegate extends ZacBuilder {
    static withFixedCrossAxisCount(data) {
        return new SliverGridDelegate(Object.assign({ builder: 'f:1:SliverGridDelegateWithFixedCrossAxisCount' }, data));
    }
    static withMaxCrossAxisExtent(data) {
        return new SliverGridDelegate(Object.assign({ builder: 'f:1:SliverGridDelegateWithMaxCrossAxisExtent' }, data));
    }
}
export class SliverList extends ZacBuilder {
    static new(data) {
        return new SliverList(Object.assign({ builder: 'f:1:SliverList' }, data));
    }
}
export class SliverPadding extends ZacBuilder {
    static new(data) {
        return new SliverPadding(Object.assign({ builder: 'f:1:SliverPadding' }, data));
    }
}
export class SliverToBoxAdapter extends ZacBuilder {
    static new(data) {
        return new SliverToBoxAdapter(Object.assign({ builder: 'f:1:SliverToBoxAdapter' }, data));
    }
}
export class SmartDashesType extends ZacBuilder {
    static disabled() {
        return new SmartDashesType({
            builder: 'f:1:SmartDashesType.disabled'
        });
    }
    static enabled() {
        return new SmartDashesType({
            builder: 'f:1:SmartDashesType.enabled'
        });
    }
}
export class SmartQuotesType extends ZacBuilder {
    static disabled() {
        return new SmartQuotesType({
            builder: 'f:1:SmartQuotesType.disabled'
        });
    }
    static enabled() {
        return new SmartQuotesType({
            builder: 'f:1:SmartQuotesType.enabled'
        });
    }
}
export class SnackBar extends ZacBuilder {
    static new(data) {
        return new SnackBar(Object.assign({ builder: 'f:1:SnackBar' }, data));
    }
}
export class SnackBarAction extends ZacBuilder {
    static new(data) {
        return new SnackBarAction(Object.assign({ builder: 'f:1:SnackBarAction' }, data));
    }
}
export class SnackBarBehavior extends ZacBuilder {
    static fixed() {
        return new SnackBarBehavior({
            builder: 'f:1:SnackBarBehavior.fixed'
        });
    }
    static floating() {
        return new SnackBarBehavior({
            builder: 'f:1:SnackBarBehavior.floating'
        });
    }
}
export class Spacer extends ZacBuilder {
    static new(data) {
        return new Spacer(Object.assign({ builder: 'f:1:Spacer' }, data));
    }
}
export class Stack extends ZacBuilder {
    static new(data) {
        return new Stack(Object.assign({ builder: 'f:1:Stack' }, data));
    }
}
export class StackFit extends ZacBuilder {
    static expand() {
        return new StackFit({
            builder: 'f:1:StackFit.expand'
        });
    }
    static loose() {
        return new StackFit({
            builder: 'f:1:StackFit.loose'
        });
    }
    static passthrough() {
        return new StackFit({
            builder: 'f:1:StackFit.passthrough'
        });
    }
}
export class StrutStyle extends ZacBuilder {
    static new(data) {
        return new StrutStyle(Object.assign({ builder: 'f:1:StrutStyle' }, data));
    }
    static fromTextStyle(data) {
        return new StrutStyle(Object.assign({ builder: 'f:1:StrutStyle.fromTextStyle' }, data));
    }
}
export class SystemUiOverlayStyle extends ZacBuilder {
    static new(data) {
        return new SystemUiOverlayStyle(Object.assign({ builder: 'f:1:SystemUiOverlayStyle' }, data));
    }
}
export class Text extends ZacBuilder {
    static new(data) {
        return new Text(Object.assign({ builder: 'f:1:Text' }, data));
    }
}
export class TextAlign extends ZacBuilder {
    static center() {
        return new TextAlign({
            builder: 'f:1:TextAlign.center'
        });
    }
    static end() {
        return new TextAlign({
            builder: 'f:1:TextAlign.end'
        });
    }
    static justify() {
        return new TextAlign({
            builder: 'f:1:TextAlign.justify'
        });
    }
    static left() {
        return new TextAlign({
            builder: 'f:1:TextAlign.left'
        });
    }
    static right() {
        return new TextAlign({
            builder: 'f:1:TextAlign.right'
        });
    }
    static start() {
        return new TextAlign({
            builder: 'f:1:TextAlign.start'
        });
    }
}
export class TextAlignVertical extends ZacBuilder {
    static new(data) {
        return new TextAlignVertical(Object.assign({ builder: 'f:1:TextAlignVertical' }, data));
    }
    static bottom() {
        return new TextAlignVertical({
            builder: 'f:1:TextAlignVertical.bottom'
        });
    }
    static center() {
        return new TextAlignVertical({
            builder: 'f:1:TextAlignVertical.center'
        });
    }
    static top() {
        return new TextAlignVertical({
            builder: 'f:1:TextAlignVertical.top'
        });
    }
}
export class TextBaseline extends ZacBuilder {
    static alphabetic() {
        return new TextBaseline({
            builder: 'f:1:TextBaseline.alphabetic'
        });
    }
    static ideographic() {
        return new TextBaseline({
            builder: 'f:1:TextBaseline.ideographic'
        });
    }
}
export class TextButton extends ZacBuilder {
    static new(data) {
        return new TextButton(Object.assign({ builder: 'f:1:TextButton' }, data));
    }
    static icon(data) {
        return new TextButton(Object.assign({ builder: 'f:1:TextButton.icon' }, data));
    }
}
export class TextCapitalization extends ZacBuilder {
    static characters() {
        return new TextCapitalization({
            builder: 'f:1:TextCapitalization.characters'
        });
    }
    static none() {
        return new TextCapitalization({
            builder: 'f:1:TextCapitalization.none'
        });
    }
    static sentences() {
        return new TextCapitalization({
            builder: 'f:1:TextCapitalization.sentences'
        });
    }
    static words() {
        return new TextCapitalization({
            builder: 'f:1:TextCapitalization.words'
        });
    }
}
export class TextDecoration extends ZacBuilder {
    static lineThrough() {
        return new TextDecoration({
            builder: 'f:1:TextDecoration.lineThrough'
        });
    }
    static none() {
        return new TextDecoration({
            builder: 'f:1:TextDecoration.none'
        });
    }
    static overline() {
        return new TextDecoration({
            builder: 'f:1:TextDecoration.overline'
        });
    }
    static underline() {
        return new TextDecoration({
            builder: 'f:1:TextDecoration.underline'
        });
    }
}
export class TextDecorationStyle extends ZacBuilder {
    static dashed() {
        return new TextDecorationStyle({
            builder: 'f:1:TextDecorationStyle.dashed'
        });
    }
    static dotted() {
        return new TextDecorationStyle({
            builder: 'f:1:TextDecorationStyle.dotted'
        });
    }
    static double() {
        return new TextDecorationStyle({
            builder: 'f:1:TextDecorationStyle.double'
        });
    }
    static solid() {
        return new TextDecorationStyle({
            builder: 'f:1:TextDecorationStyle.solid'
        });
    }
    static wavy() {
        return new TextDecorationStyle({
            builder: 'f:1:TextDecorationStyle.wavy'
        });
    }
}
export class TextDirection extends ZacBuilder {
    static rtl() {
        return new TextDirection({
            builder: 'f:1:TextDirection.rtl'
        });
    }
    static ltr() {
        return new TextDirection({
            builder: 'f:1:TextDirection.ltr'
        });
    }
}
export class TextField extends ZacBuilder {
    static new(data) {
        return new TextField(Object.assign({ builder: 'f:1:TextField' }, data));
    }
}
export class TextHeightBehavior extends ZacBuilder {
    static new(data) {
        return new TextHeightBehavior(Object.assign({ builder: 'f:1:TextHeightBehavior' }, data));
    }
}
export class TextInputAction extends ZacBuilder {
    static continueAction() {
        return new TextInputAction({
            builder: 'f:1:TextInputAction.continueAction'
        });
    }
    static done() {
        return new TextInputAction({
            builder: 'f:1:TextInputAction.done'
        });
    }
    static emergencyCall() {
        return new TextInputAction({
            builder: 'f:1:TextInputAction.emergencyCall'
        });
    }
    static go() {
        return new TextInputAction({
            builder: 'f:1:TextInputAction.go'
        });
    }
    static join() {
        return new TextInputAction({
            builder: 'f:1:TextInputAction.join'
        });
    }
    static newline() {
        return new TextInputAction({
            builder: 'f:1:TextInputAction.newline'
        });
    }
    static next() {
        return new TextInputAction({
            builder: 'f:1:TextInputAction.next'
        });
    }
    static none() {
        return new TextInputAction({
            builder: 'f:1:TextInputAction.none'
        });
    }
    static previous() {
        return new TextInputAction({
            builder: 'f:1:TextInputAction.previous'
        });
    }
    static route() {
        return new TextInputAction({
            builder: 'f:1:TextInputAction.route'
        });
    }
    static search() {
        return new TextInputAction({
            builder: 'f:1:TextInputAction.search'
        });
    }
    static send() {
        return new TextInputAction({
            builder: 'f:1:TextInputAction.send'
        });
    }
    static unspecified() {
        return new TextInputAction({
            builder: 'f:1:TextInputAction.unspecified'
        });
    }
}
export class TextInputType extends ZacBuilder {
    static datetime() {
        return new TextInputType({
            builder: 'f:1:TextInputType.datetime'
        });
    }
    static emailAddress() {
        return new TextInputType({
            builder: 'f:1:TextInputType.emailAddress'
        });
    }
    static multiline() {
        return new TextInputType({
            builder: 'f:1:TextInputType.multiline'
        });
    }
    static name_() {
        return new TextInputType({
            builder: 'f:1:TextInputType.name'
        });
    }
    static none() {
        return new TextInputType({
            builder: 'f:1:TextInputType.none'
        });
    }
    static number() {
        return new TextInputType({
            builder: 'f:1:TextInputType.number'
        });
    }
    static phone() {
        return new TextInputType({
            builder: 'f:1:TextInputType.phone'
        });
    }
    static streetAddress() {
        return new TextInputType({
            builder: 'f:1:TextInputType.streetAddress'
        });
    }
    static text() {
        return new TextInputType({
            builder: 'f:1:TextInputType.text'
        });
    }
    static url() {
        return new TextInputType({
            builder: 'f:1:TextInputType.url'
        });
    }
    static visiblePassword() {
        return new TextInputType({
            builder: 'f:1:TextInputType.visiblePassword'
        });
    }
}
export class TextLeadingDistribution extends ZacBuilder {
    static even() {
        return new TextLeadingDistribution({
            builder: 'f:1:TextLeadingDistribution.even'
        });
    }
    static proportional() {
        return new TextLeadingDistribution({
            builder: 'f:1:TextLeadingDistribution.proportional'
        });
    }
}
export class TextOverflow extends ZacBuilder {
    static clip() {
        return new TextOverflow({
            builder: 'f:1:TextOverflow.clip'
        });
    }
    static ellipsis() {
        return new TextOverflow({
            builder: 'f:1:TextOverflow.ellipsis'
        });
    }
    static fade() {
        return new TextOverflow({
            builder: 'f:1:TextOverflow.fade'
        });
    }
    static visible() {
        return new TextOverflow({
            builder: 'f:1:TextOverflow.visible'
        });
    }
}
export class TextStyle extends ZacBuilder {
    static new(data) {
        return new TextStyle(Object.assign({ builder: 'f:1:TextStyle' }, data));
    }
}
export class TextWidthBasis extends ZacBuilder {
    static longestLine() {
        return new TextWidthBasis({
            builder: 'f:1:TextWidthBasis.longestLine'
        });
    }
    static parent() {
        return new TextWidthBasis({
            builder: 'f:1:TextWidthBasis.parent'
        });
    }
}
export class UnconstrainedBox extends ZacBuilder {
    static new(data) {
        return new UnconstrainedBox(Object.assign({ builder: 'f:1:UnconstrainedBox' }, data));
    }
}
export class UnderlineInputBorder extends ZacBuilder {
    static new(data) {
        return new UnderlineInputBorder(Object.assign({ builder: 'f:1:UnderlineInputBorder' }, data));
    }
}
export class ValueKey extends ZacBuilder {
    static new(data) {
        return new ValueKey(Object.assign({ builder: 'f:1:ValueKey' }, data));
    }
}
export class VerticalDirection extends ZacBuilder {
    static up() {
        return new VerticalDirection({
            builder: 'f:1:VerticalDirection.up'
        });
    }
    static down() {
        return new VerticalDirection({
            builder: 'f:1:VerticalDirection.down'
        });
    }
}
export class Wrap extends ZacBuilder {
    static new(data) {
        return new Wrap(Object.assign({ builder: 'f:1:Wrap' }, data));
    }
}
export class WrapAlignment extends ZacBuilder {
    static start() {
        return new WrapAlignment({
            builder: 'f:1:WrapAlignment.start'
        });
    }
    static end() {
        return new WrapAlignment({
            builder: 'f:1:WrapAlignment.end'
        });
    }
    static center() {
        return new WrapAlignment({
            builder: 'f:1:WrapAlignment.center'
        });
    }
    static spaceBetween() {
        return new WrapAlignment({
            builder: 'f:1:WrapAlignment.spaceBetween'
        });
    }
    static spaceAround() {
        return new WrapAlignment({
            builder: 'f:1:WrapAlignment.spaceAround'
        });
    }
    static spaceEvenly() {
        return new WrapAlignment({
            builder: 'f:1:WrapAlignment.spaceEvenly'
        });
    }
}
export class WrapCrossAlignment extends ZacBuilder {
    static center() {
        return new WrapCrossAlignment({
            builder: 'f:1:WrapCrossAlignment.center'
        });
    }
    static end() {
        return new WrapCrossAlignment({
            builder: 'f:1:WrapCrossAlignment.end'
        });
    }
    static start() {
        return new WrapCrossAlignment({
            builder: 'f:1:WrapCrossAlignment.start'
        });
    }
}
export class IntTransformer extends ZacBuilder {
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
    static incr(data) {
        return new IntTransformer(Object.assign({ builder: 'z:1:Transformer:int.incr' }, data));
    }
    static decr(data) {
        return new IntTransformer(Object.assign({ builder: 'z:1:Transformer:int.decr' }, data));
    }
}
export class IterableTransformer extends ZacBuilder {
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
export class JsonTransformer extends ZacBuilder {
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
export class ListTransformer extends ZacBuilder {
    static reversed() {
        return new ListTransformer({
            builder: 'z:1:Transformer:List.reversed'
        });
    }
    static add(data) {
        return new ListTransformer(Object.assign({ builder: 'z:1:Transformer:List.add' }, data));
    }
}
export class MapTransformer extends ZacBuilder {
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
export class NumTransformer extends ZacBuilder {
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
export class ObjectTransformer extends ZacBuilder {
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
export class SharedValueActions extends ZacBuilder {
    static update(data) {
        return new SharedValueActions(Object.assign({ builder: 'z:1:SharedValue.update' }, data));
    }
    static invalidate(data) {
        return new SharedValueActions(Object.assign({ builder: 'z:1:SharedValue.invalidate' }, data));
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
export class StringTransformer extends ZacBuilder {
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
export class ZacCompleterActions extends ZacBuilder {
    static completeVoid(data) {
        return new ZacCompleterActions(Object.assign({ builder: 'z:1:Completer<void>.complete' }, data));
    }
}
export class ZacCompleterVoidProvider extends ZacBuilder {
    static new(data) {
        return new ZacCompleterVoidProvider(Object.assign({ builder: 'z:1:Completer<void>.provide' }, data));
    }
}
export class ZacControlFlowAction extends ZacBuilder {
    static ifCond(data) {
        return new ZacControlFlowAction(Object.assign({ builder: 'z:1:ControlFlowAction.if' }, data));
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
export class ZacStateMachineActions extends ZacBuilder {
    static send(data) {
        return new ZacStateMachineActions(Object.assign({ builder: 'z:1:StateMachine:Action.send' }, data));
    }
    static trySend(data) {
        return new ZacStateMachineActions(Object.assign({ builder: 'z:1:StateMachine:Action.trySend' }, data));
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
export class ZacStateMachineTransformer extends ZacBuilder {
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
export class ZacValueActions extends ZacBuilder {
    static asPayload(data) {
        return new ZacValueActions(Object.assign({ builder: 'z:1:ZacValue.asActionPayload' }, data));
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
