/* eslint-disable @typescript-eslint/no-explicit-any */
import { ConsumeSharedValue, ZacConvertable, ZacBuilder, ZacListBuilder, ZacMapBuilder, ZacTransformer, ZacAction } from './header';
import * as native from 'generated.nativetypes';

export class SharedValueConsumeType extends ZacConvertable {
    static watch(data?: { select?: ZacBuilder<Array<ZacTransformer>> }) {
        return new SharedValueConsumeType({
            builder: 'z:1:SharedValueConsume.watch',
            ...data
        })
    }
    static read() {
        return new SharedValueConsumeType({
            builder: 'z:1:SharedValueConsume.read'

        })
    }
}
export class ZacStateConfig extends ZacConvertable {
    static new(data: {
        widget: ZacBuilder<native.Widget>,
        on?: Array<ZacTransition>
    }) {
        return new ZacStateConfig({
            builder: 'z:1:StateMachine:StateConfig',
            ...data
        })
    }
}
export class ZacTransition extends ZacConvertable {
    static new(data: {
        event: string,
        target: string
    }) {
        return new ZacTransition({
            builder: 'z:1:StateMachine:Transition',
            ...data
        })
    }
}
export class Align extends ZacBuilder<native.Align> {
    static new(data?: {
        key?: ZacBuilder<native.Key>,
        alignment?: ZacBuilder<native.AlignmentGeometry>,
        widthFactor?: ZacBuilder<number>,
        heightFactor?: ZacBuilder<number>,
        child?: ZacBuilder<native.Widget>
    }) {
        return new Align({
            builder: 'f:1:Align',
            ...data
        })
    }
}
export class Alignment extends ZacBuilder<native.Alignment> {
    static new(data: {
        x: ZacBuilder<number>,
        y: ZacBuilder<number>
    }) {
        return new Alignment({
            builder: 'f:1:Alignment',
            ...data
        })
    }
    static bottomCenter() {
        return new Alignment({
            builder: 'f:1:Alignment.bottomCenter'

        })
    }
    static bottomLeft() {
        return new Alignment({
            builder: 'f:1:Alignment.bottomLeft'

        })
    }
    static bottomRight() {
        return new Alignment({
            builder: 'f:1:Alignment.bottomRight'

        })
    }
    static center() {
        return new Alignment({
            builder: 'f:1:Alignment.center'

        })
    }
    static centerLeft() {
        return new Alignment({
            builder: 'f:1:Alignment.centerLeft'

        })
    }
    static centerRight() {
        return new Alignment({
            builder: 'f:1:Alignment.centerRight'

        })
    }
    static topCenter() {
        return new Alignment({
            builder: 'f:1:Alignment.topCenter'

        })
    }
    static topLeft() {
        return new Alignment({
            builder: 'f:1:Alignment.topLeft'

        })
    }
    static topRight() {
        return new Alignment({
            builder: 'f:1:Alignment.topRight'

        })
    }
}
export class AlignmentDirectional extends ZacBuilder<native.AlignmentDirectional> {
    static new(data: {
        start: ZacBuilder<number>,
        y: ZacBuilder<number>
    }) {
        return new AlignmentDirectional({
            builder: 'f:1:AlignmentDirectional',
            ...data
        })
    }
    static bottomCenter() {
        return new AlignmentDirectional({
            builder: 'f:1:AlignmentDirectional.bottomCenter'

        })
    }
    static bottomStart() {
        return new AlignmentDirectional({
            builder: 'f:1:AlignmentDirectional.bottomStart'

        })
    }
    static bottomEnd() {
        return new AlignmentDirectional({
            builder: 'f:1:AlignmentDirectional.bottomEnd'

        })
    }
    static center() {
        return new AlignmentDirectional({
            builder: 'f:1:AlignmentDirectional.center'

        })
    }
    static centerStart() {
        return new AlignmentDirectional({
            builder: 'f:1:AlignmentDirectional.centerStart'

        })
    }
    static centerEnd() {
        return new AlignmentDirectional({
            builder: 'f:1:AlignmentDirectional.centerEnd'

        })
    }
    static topCenter() {
        return new AlignmentDirectional({
            builder: 'f:1:AlignmentDirectional.topCenter'

        })
    }
    static topStart() {
        return new AlignmentDirectional({
            builder: 'f:1:AlignmentDirectional.topStart'

        })
    }
    static topEnd() {
        return new AlignmentDirectional({
            builder: 'f:1:AlignmentDirectional.topEnd'

        })
    }
}
export class AppBar extends ZacBuilder<native.AppBar> {
    static new(data?: {
        key?: ZacBuilder<native.Key>,
        leading?: ZacBuilder<native.Widget>,
        automaticallyImplyLeading?: ZacBuilder<boolean>,
        title?: ZacBuilder<native.Widget>,
        actions?: ZacListBuilder<native.Widget>,
        flexibleSpace?: ZacBuilder<native.Widget>,
        bottom?: ZacBuilder<native.Widget>,
        elevation?: ZacBuilder<number>,
        shadowColor?: ZacBuilder<native.Color>,
        shape?: ZacBuilder<native.ShapeBorder>,
        backgroundColor?: ZacBuilder<native.Color>,
        foregroundColor?: ZacBuilder<native.Color>,
        iconTheme?: ZacBuilder<native.IconThemeData>,
        actionsIconTheme?: ZacBuilder<native.IconThemeData>,
        primary?: ZacBuilder<boolean>,
        centerTitle?: ZacBuilder<boolean>,
        excludeHeaderSemantics?: ZacBuilder<boolean>,
        titleSpacing?: ZacBuilder<number>,
        toolbarOpacity?: ZacBuilder<number>,
        bottomOpacity?: ZacBuilder<number>,
        toolbarHeight?: ZacBuilder<number>,
        leadingWidth?: ZacBuilder<number>,
        toolbarTextStyle?: ZacBuilder<native.TextStyle>,
        titleTextStyle?: ZacBuilder<native.TextStyle>,
        systemOverlayStyle?: ZacBuilder<native.SystemUiOverlayStyle>
    }) {
        return new AppBar({
            builder: 'f:1:AppBar',
            ...data
        })
    }
}
export class AspectRatio extends ZacBuilder<native.AspectRatio> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        aspectRatio: ZacBuilder<number>,
        child?: ZacBuilder<native.Widget>
    }) {
        return new AspectRatio({
            builder: 'f:1:AspectRatio',
            ...data
        })
    }
}
export class Axis extends ZacBuilder<native.Axis> {
    static horizontal() {
        return new Axis({
            builder: 'f:1:Axis.horizontal'

        })
    }
    static vertical() {
        return new Axis({
            builder: 'f:1:Axis.vertical'

        })
    }
}
export class BlendMode extends ZacBuilder<native.BlendMode> {
    static clear() {
        return new BlendMode({
            builder: 'f:1:BlendMode.clear'

        })
    }
    static color() {
        return new BlendMode({
            builder: 'f:1:BlendMode.color'

        })
    }
    static colorBurn() {
        return new BlendMode({
            builder: 'f:1:BlendMode.colorBurn'

        })
    }
    static colorDodge() {
        return new BlendMode({
            builder: 'f:1:BlendMode.colorDodge'

        })
    }
    static darken() {
        return new BlendMode({
            builder: 'f:1:BlendMode.darken'

        })
    }
    static difference() {
        return new BlendMode({
            builder: 'f:1:BlendMode.difference'

        })
    }
    static dst() {
        return new BlendMode({
            builder: 'f:1:BlendMode.dst'

        })
    }
    static dstATop() {
        return new BlendMode({
            builder: 'f:1:BlendMode.dstATop'

        })
    }
    static dstIn() {
        return new BlendMode({
            builder: 'f:1:BlendMode.dstIn'

        })
    }
    static dstOut() {
        return new BlendMode({
            builder: 'f:1:BlendMode.dstOut'

        })
    }
    static dstOver() {
        return new BlendMode({
            builder: 'f:1:BlendMode.dstOver'

        })
    }
    static exclusion() {
        return new BlendMode({
            builder: 'f:1:BlendMode.exclusion'

        })
    }
    static hardLight() {
        return new BlendMode({
            builder: 'f:1:BlendMode.hardLight'

        })
    }
    static hue() {
        return new BlendMode({
            builder: 'f:1:BlendMode.hue'

        })
    }
    static lighten() {
        return new BlendMode({
            builder: 'f:1:BlendMode.lighten'

        })
    }
    static luminosity() {
        return new BlendMode({
            builder: 'f:1:BlendMode.luminosity'

        })
    }
    static modulate() {
        return new BlendMode({
            builder: 'f:1:BlendMode.modulate'

        })
    }
    static multiply() {
        return new BlendMode({
            builder: 'f:1:BlendMode.multiply'

        })
    }
    static overlay() {
        return new BlendMode({
            builder: 'f:1:BlendMode.overlay'

        })
    }
    static plus() {
        return new BlendMode({
            builder: 'f:1:BlendMode.plus'

        })
    }
    static saturation() {
        return new BlendMode({
            builder: 'f:1:BlendMode.saturation'

        })
    }
    static screen() {
        return new BlendMode({
            builder: 'f:1:BlendMode.screen'

        })
    }
    static softLight() {
        return new BlendMode({
            builder: 'f:1:BlendMode.softLight'

        })
    }
    static src() {
        return new BlendMode({
            builder: 'f:1:BlendMode.src'

        })
    }
    static srcATop() {
        return new BlendMode({
            builder: 'f:1:BlendMode.srcATop'

        })
    }
    static srcIn() {
        return new BlendMode({
            builder: 'f:1:BlendMode.srcIn'

        })
    }
    static srcOut() {
        return new BlendMode({
            builder: 'f:1:BlendMode.srcOut'

        })
    }
    static srcOver() {
        return new BlendMode({
            builder: 'f:1:BlendMode.srcOver'

        })
    }
    static xor() {
        return new BlendMode({
            builder: 'f:1:BlendMode.xor'

        })
    }
}
export class BlurStyle extends ZacBuilder<native.BlurStyle> {
    static inner() {
        return new BlurStyle({
            builder: 'f:1:BlurStyle.inner'

        })
    }
    static normal() {
        return new BlurStyle({
            builder: 'f:1:BlurStyle.normal'

        })
    }
    static outer() {
        return new BlurStyle({
            builder: 'f:1:BlurStyle.outer'

        })
    }
    static solid() {
        return new BlurStyle({
            builder: 'f:1:BlurStyle.solid'

        })
    }
}
export class Border extends ZacBuilder<native.Border> {
    static new(data?: {
        top?: ZacBuilder<native.BorderSide>,
        right?: ZacBuilder<native.BorderSide>,
        bottom?: ZacBuilder<native.BorderSide>,
        left?: ZacBuilder<native.BorderSide>
    }) {
        return new Border({
            builder: 'f:1:Border',
            ...data
        })
    }
    static all(data?: {
        color?: ZacBuilder<native.Color>,
        width?: ZacBuilder<number>,
        style?: ZacBuilder<native.BorderStyle>
    }) {
        return new Border({
            builder: 'f:1:Border.all',
            ...data
        })
    }
}
export class BorderDirectional extends ZacBuilder<native.BorderDirectional> {
    static new(data?: {
        top?: ZacBuilder<native.BorderSide>,
        start?: ZacBuilder<native.BorderSide>,
        bottom?: ZacBuilder<native.BorderSide>,
        end?: ZacBuilder<native.BorderSide>
    }) {
        return new BorderDirectional({
            builder: 'f:1:BorderDirectional',
            ...data
        })
    }
}
export class BorderRadius extends ZacBuilder<native.BorderRadius> {
    static all(data: { radius: Radius }) {
        return new BorderRadius({
            builder: 'f:1:BorderRadius.all',
            ...data
        })
    }
    static circular(data: { radius: ZacBuilder<number> }) {
        return new BorderRadius({
            builder: 'f:1:BorderRadius.circular',
            ...data
        })
    }
    static horizontal(data?: {
        left?: ZacBuilder<native.Radius>,
        right?: ZacBuilder<native.Radius>
    }) {
        return new BorderRadius({
            builder: 'f:1:BorderRadius.horizontal',
            ...data
        })
    }
}
export class BorderSide extends ZacBuilder<native.BorderSide> {
    static new(data?: {
        color?: ZacBuilder<native.Color>,
        width?: ZacBuilder<number>,
        style?: ZacBuilder<native.BorderStyle>
    }) {
        return new BorderSide({
            builder: 'f:1:BorderSide',
            ...data
        })
    }
}
export class BorderStyle extends ZacBuilder<native.BorderStyle> {
    static none() {
        return new BorderStyle({
            builder: 'f:1:BorderStyle.none'

        })
    }
    static solid() {
        return new BorderStyle({
            builder: 'f:1:BorderStyle.solid'

        })
    }
}
export class BoxConstraints extends ZacBuilder<native.BoxConstraints> {
    static new(data?: {
        minWidth?: ZacBuilder<number>,
        maxWidth?: ZacBuilder<number>,
        minHeight?: ZacBuilder<number>,
        maxHeight?: ZacBuilder<number>
    }) {
        return new BoxConstraints({
            builder: 'f:1:BoxConstraints',
            ...data
        })
    }
    static expand(data?: {
        width?: ZacBuilder<number>,
        height?: ZacBuilder<number>
    }) {
        return new BoxConstraints({
            builder: 'f:1:BoxConstraints.expand',
            ...data
        })
    }
    static loose(data: { size: ZacBuilder<native.Size> }) {
        return new BoxConstraints({
            builder: 'f:1:BoxConstraints.loose',
            ...data
        })
    }
    static tight(data: { size: ZacBuilder<native.Size> }) {
        return new BoxConstraints({
            builder: 'f:1:BoxConstraints.tight',
            ...data
        })
    }
    static tightFor(data?: {
        width?: ZacBuilder<number>,
        height?: ZacBuilder<number>
    }) {
        return new BoxConstraints({
            builder: 'f:1:BoxConstraints.tightFor',
            ...data
        })
    }
    static tightForFinite(data?: {
        width?: ZacBuilder<number>,
        height?: ZacBuilder<number>
    }) {
        return new BoxConstraints({
            builder: 'f:1:BoxConstraints.tightForFinite',
            ...data
        })
    }
}
export class BoxDecoration extends ZacBuilder<native.BoxDecoration> {
    static new(data?: {
        color?: ZacBuilder<native.Color>,
        border?: ZacBuilder<native.BoxBorder>,
        borderRadius?: ZacBuilder<native.BorderRadiusGeometry>,
        boxShadow?: Array<BoxShadow>,
        shape?: ZacBuilder<native.BoxShape>,
        backgroundBlendMode?: ZacBuilder<native.BlendMode>
    }) {
        return new BoxDecoration({
            builder: 'f:1:BoxDecoration',
            ...data
        })
    }
}
export class BoxFit extends ZacBuilder<native.BoxFit> {
    static contain() {
        return new BoxFit({
            builder: 'f:1:BoxFit.contain'

        })
    }
    static cover() {
        return new BoxFit({
            builder: 'f:1:BoxFit.cover'

        })
    }
    static fill() {
        return new BoxFit({
            builder: 'f:1:BoxFit.fill'

        })
    }
    static fitHeight() {
        return new BoxFit({
            builder: 'f:1:BoxFit.fitHeight'

        })
    }
    static fitWidth() {
        return new BoxFit({
            builder: 'f:1:BoxFit.fitWidth'

        })
    }
    static none() {
        return new BoxFit({
            builder: 'f:1:BoxFit.none'

        })
    }
    static scaleDown() {
        return new BoxFit({
            builder: 'f:1:BoxFit.scaleDown'

        })
    }
}
export class BoxHeightStyle extends ZacBuilder<native.BoxHeightStyle> {
    static includeLineSpacingBottom() {
        return new BoxHeightStyle({
            builder: 'f:1:BoxHeightStyle.includeLineSpacingBottom'

        })
    }
    static includeLineSpacingMiddle() {
        return new BoxHeightStyle({
            builder: 'f:1:BoxHeightStyle.includeLineSpacingMiddle'

        })
    }
    static includeLineSpacingTop() {
        return new BoxHeightStyle({
            builder: 'f:1:BoxHeightStyle.includeLineSpacingTop'

        })
    }
    static max() {
        return new BoxHeightStyle({
            builder: 'f:1:BoxHeightStyle.max'

        })
    }
    static strut() {
        return new BoxHeightStyle({
            builder: 'f:1:BoxHeightStyle.strut'

        })
    }
    static tight() {
        return new BoxHeightStyle({
            builder: 'f:1:BoxHeightStyle.tight'

        })
    }
}
export class BoxShadow extends ZacBuilder<native.BoxShadow> {
    static new(data?: {
        color?: ZacBuilder<native.Color>,
        offset?: ZacBuilder<native.Offset>,
        blurRadius?: ZacBuilder<number>,
        spreadRadius?: ZacBuilder<number>,
        blurStyle?: BlurStyle
    }) {
        return new BoxShadow({
            builder: 'f:1:BoxShadow',
            ...data
        })
    }
}
export class BoxShape extends ZacBuilder<native.BoxShape> {
    static circle() {
        return new BoxShape({
            builder: 'f:1:BoxShape.circle'

        })
    }
    static rectangle() {
        return new BoxShape({
            builder: 'f:1:BoxShape.rectangle'

        })
    }
}
export class BoxWidthStyle extends ZacBuilder<native.BoxWidthStyle> {
    static max() {
        return new BoxWidthStyle({
            builder: 'f:1:BoxWidthStyle.max'

        })
    }
    static tight() {
        return new BoxWidthStyle({
            builder: 'f:1:BoxWidthStyle.tight'

        })
    }
}
export class Brightness extends ZacBuilder<native.Brightness> {
    static dark() {
        return new Brightness({
            builder: 'f:1:Brightness.dark'

        })
    }
    static light() {
        return new Brightness({
            builder: 'f:1:Brightness.light'

        })
    }
}
export class Builder extends ZacBuilder<native.Builder> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        child: ZacBuilder<native.Widget>
    }) {
        return new Builder({
            builder: 'f:1:Builder',
            ...data
        })
    }
}
export class ButtonBar extends ZacBuilder<native.ButtonBar> {
    static new(data?: {
        key?: ZacBuilder<native.Key>,
        alignment?: ZacBuilder<native.MainAxisAlignment>,
        mainAxisSize?: ZacBuilder<native.MainAxisSize>,
        buttonMinWidth?: ZacBuilder<number>,
        buttonHeight?: ZacBuilder<number>,
        buttonPadding?: ZacBuilder<native.EdgeInsetsGeometry>,
        buttonAlignedDropdown?: ZacBuilder<boolean>,
        overflowDirection?: ZacBuilder<native.VerticalDirection>,
        overflowButtonSpacing?: ZacBuilder<number>,
        children?: ZacListBuilder<native.Widget>
    }) {
        return new ButtonBar({
            builder: 'f:1:ButtonBar',
            ...data
        })
    }
}
export class Card extends ZacBuilder<native.Card> {
    static new(data?: {
        key?: ZacBuilder<native.Key>,
        color?: ZacBuilder<native.Color>,
        shadowColor?: ZacBuilder<native.Color>,
        elevation?: ZacBuilder<number>,
        shape?: ZacBuilder<native.ShapeBorder>,
        borderOnForeground?: ZacBuilder<boolean>,
        margin?: ZacBuilder<native.EdgeInsetsGeometry>,
        clipBehavior?: ZacBuilder<native.Clip>,
        child?: ZacBuilder<native.Widget>,
        semanticContainer?: ZacBuilder<boolean>
    }) {
        return new Card({
            builder: 'f:1:Card',
            ...data
        })
    }
}
export class Center extends ZacBuilder<native.Center> {
    static new(data?: {
        key?: ZacBuilder<native.Key>,
        widthFactor?: ZacBuilder<number>,
        heightFactor?: ZacBuilder<number>,
        child?: ZacBuilder<native.Widget>
    }) {
        return new Center({
            builder: 'f:1:Center',
            ...data
        })
    }
}
export class CircleBorder extends ZacBuilder<native.CircleBorder> {
    static new(data?: { side?: ZacBuilder<native.BorderSide> }) {
        return new CircleBorder({
            builder: 'f:1:CircleBorder',
            ...data
        })
    }
}
export class Clip extends ZacBuilder<native.Clip> {
    static none() {
        return new Clip({
            builder: 'f:1:Clip.none'

        })
    }
    static antiAlias() {
        return new Clip({
            builder: 'f:1:Clip.antiAlias'

        })
    }
    static hardEdge() {
        return new Clip({
            builder: 'f:1:Clip.hardEdge'

        })
    }
}
export class ClipOval extends ZacBuilder<native.ClipOval> {
    static new(data?: {
        key?: ZacBuilder<native.Key>,
        child?: ZacBuilder<native.Widget>,
        clipBehavior?: ZacBuilder<native.Clip>
    }) {
        return new ClipOval({
            builder: 'f:1:ClipOval',
            ...data
        })
    }
}
export class ClipRect extends ZacBuilder<native.ClipRect> {
    static new(data?: {
        key?: ZacBuilder<native.Key>,
        child?: ZacBuilder<native.Widget>,
        clipBehavior?: ZacBuilder<native.Clip>
    }) {
        return new ClipRect({
            builder: 'f:1:ClipRect',
            ...data
        })
    }
}
export class Color extends ZacBuilder<native.Color> {
    static fromARGB(data: {
        a: number,
        r: number,
        g: number,
        b: number
    }) {
        return new Color({
            builder: 'f:1:Color.fromARGB',
            ...data
        })
    }
    static fromRGBO(data: {
        r: number,
        g: number,
        b: number,
        opacity: ZacBuilder<number>
    }) {
        return new Color({
            builder: 'f:1:Color.fromRGBO',
            ...data
        })
    }
}
export class Column extends ZacBuilder<native.Column> {
    static new(data?: {
        key?: ZacBuilder<native.Key>,
        mainAxisAlignment?: ZacBuilder<native.MainAxisAlignment>,
        mainAxisSize?: ZacBuilder<native.MainAxisSize>,
        crossAxisAlignment?: ZacBuilder<native.CrossAxisAlignment>,
        textDirection?: ZacBuilder<native.TextDirection>,
        verticalDirection?: ZacBuilder<native.VerticalDirection>,
        textBaseline?: ZacBuilder<native.TextBaseline>,
        children?: ZacListBuilder<native.Widget>
    }) {
        return new Column({
            builder: 'f:1:Column',
            ...data
        })
    }
}
export class ConstrainedBox extends ZacBuilder<native.ConstrainedBox> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        constraints: ZacBuilder<native.BoxConstraints>,
        child?: ZacBuilder<native.Widget>
    }) {
        return new ConstrainedBox({
            builder: 'f:1:ConstrainedBox',
            ...data
        })
    }
}
export class Container extends ZacBuilder<native.Container> {
    static new(data?: {
        key?: ZacBuilder<native.Key>,
        child?: ZacBuilder<native.Widget>,
        color?: ZacBuilder<native.Color>,
        margin?: ZacBuilder<native.EdgeInsetsGeometry>,
        padding?: ZacBuilder<native.EdgeInsetsGeometry>,
        alignment?: ZacBuilder<native.AlignmentGeometry>,
        decoration?: ZacBuilder<native.Decoration>
    }) {
        return new Container({
            builder: 'f:1:Container',
            ...data
        })
    }
}
export class CrossAxisAlignment extends ZacBuilder<native.CrossAxisAlignment> {
    static baseline() {
        return new CrossAxisAlignment({
            builder: 'f:1:CrossAxisAlignment.baseline'

        })
    }
    static center() {
        return new CrossAxisAlignment({
            builder: 'f:1:CrossAxisAlignment.center'

        })
    }
    static end() {
        return new CrossAxisAlignment({
            builder: 'f:1:CrossAxisAlignment.end'

        })
    }
    static start() {
        return new CrossAxisAlignment({
            builder: 'f:1:CrossAxisAlignment.start'

        })
    }
    static stretch() {
        return new CrossAxisAlignment({
            builder: 'f:1:CrossAxisAlignment.stretch'

        })
    }
}
export class CustomScrollView extends ZacBuilder<native.CustomScrollView> {
    static new(data?: {
        key?: ZacBuilder<native.Key>,
        scrollDirection?: Axis,
        reverse?: ZacBuilder<boolean>,
        controller?: ZacBuilder<native.ScrollController>,
        primary?: ZacBuilder<boolean>,
        physics?: ScrollPhysics,
        shrinkWrap?: ZacBuilder<boolean>,
        center?: ZacBuilder<native.Key>,
        anchor?: ZacBuilder<number>,
        cacheExtent?: ZacBuilder<number>,
        slivers?: ZacListBuilder<native.Widget>,
        semanticChildCount?: ZacBuilder<number>,
        keyboardDismissBehavior?: ScrollViewKeyboardDismissBehavior,
        restorationId?: ZacBuilder<string>,
        clipBehavior?: ZacBuilder<native.Clip>
    }) {
        return new CustomScrollView({
            builder: 'f:1:CustomScrollView',
            ...data
        })
    }
}
export class DecoratedBox extends ZacBuilder<native.DecoratedBox> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        child?: ZacBuilder<native.Widget>,
        decoration: ZacBuilder<native.Decoration>,
        position?: ZacBuilder<native.DecorationPosition>
    }) {
        return new DecoratedBox({
            builder: 'f:1:DecoratedBox',
            ...data
        })
    }
}
export class DecorationPosition extends ZacBuilder<native.DecorationPosition> {
    static background() {
        return new DecorationPosition({
            builder: 'f:1:DecorationPosition.background'

        })
    }
    static foreground() {
        return new DecorationPosition({
            builder: 'f:1:DecorationPosition.foreground'

        })
    }
}
export class Dialogs extends ZacBuilder<native.Widget> {
    static dialog(data?: {
        key?: ZacBuilder<native.Key>,
        backgroundColor?: ZacBuilder<native.Color>,
        elevation?: ZacBuilder<number>,
        insetPadding?: ZacBuilder<native.EdgeInsets>,
        clipBehavior?: ZacBuilder<native.Clip>,
        shape?: ZacBuilder<native.ShapeBorder>,
        alignment?: ZacBuilder<native.AlignmentGeometry>,
        child?: ZacBuilder<native.Widget>
    }) {
        return new Dialogs({
            builder: 'f:1:Dialog',
            ...data
        })
    }
    static alertDialog(data?: {
        key?: ZacBuilder<native.Key>,
        title?: ZacBuilder<native.Widget>,
        content?: ZacBuilder<native.Widget>,
        actions?: ZacListBuilder<native.Widget>,
        titlePadding?: ZacBuilder<native.EdgeInsetsGeometry>,
        titleTextStyle?: ZacBuilder<native.TextStyle>,
        contentPadding?: ZacBuilder<native.EdgeInsetsGeometry>,
        contentTextStyle?: ZacBuilder<native.TextStyle>,
        actionsPadding?: ZacBuilder<native.EdgeInsetsGeometry>,
        actionsAlignment?: ZacBuilder<native.MainAxisAlignment>,
        actionsOverflowDirection?: ZacBuilder<native.VerticalDirection>,
        actionsOverflowButtonSpacing?: ZacBuilder<number>,
        buttonPadding?: ZacBuilder<native.EdgeInsetsGeometry>,
        backgroundColor?: ZacBuilder<native.Color>,
        elevation?: ZacBuilder<number>,
        semanticLabel?: ZacBuilder<string>,
        insetPadding?: ZacBuilder<native.EdgeInsets>,
        clipBehavior?: ZacBuilder<native.Clip>,
        shape?: ZacBuilder<native.ShapeBorder>,
        alignment?: ZacBuilder<native.AlignmentGeometry>,
        scrollable?: ZacBuilder<boolean>
    }) {
        return new Dialogs({
            builder: 'f:1:AlertDialog',
            ...data
        })
    }
    static simpleDialog(data?: {
        key?: ZacBuilder<native.Key>,
        title?: ZacBuilder<native.Widget>,
        children?: ZacListBuilder<native.Widget>,
        titlePadding?: ZacBuilder<native.EdgeInsetsGeometry>,
        titleTextStyle?: ZacBuilder<native.TextStyle>,
        contentPadding?: ZacBuilder<native.EdgeInsetsGeometry>,
        backgroundColor?: ZacBuilder<native.Color>,
        elevation?: ZacBuilder<number>,
        semanticLabel?: ZacBuilder<string>,
        insetPadding?: ZacBuilder<native.EdgeInsets>,
        clipBehavior?: ZacBuilder<native.Clip>,
        shape?: ZacBuilder<native.ShapeBorder>,
        alignment?: ZacBuilder<native.AlignmentGeometry>
    }) {
        return new Dialogs({
            builder: 'f:1:SimpleDialog',
            ...data
        })
    }
    static simpleDialogOption(data?: {
        key?: ZacBuilder<native.Key>,
        child?: ZacBuilder<native.Widget>,
        onPressed?: ZacBuilder<Array<ZacAction>>,
        padding?: ZacBuilder<native.EdgeInsets>
    }) {
        return new Dialogs({
            builder: 'f:1:SimpleDialogOption',
            ...data
        })
    }
}
export class Divider extends ZacBuilder<native.Divider> {
    static new(data?: {
        key?: ZacBuilder<native.Key>,
        height?: ZacBuilder<number>,
        thickness?: ZacBuilder<number>,
        indent?: ZacBuilder<number>,
        endIndent?: ZacBuilder<number>,
        color?: ZacBuilder<native.Color>
    }) {
        return new Divider({
            builder: 'f:1:Divider',
            ...data
        })
    }
}
export class Drawer extends ZacBuilder<native.Drawer> {
    static new(data?: {
        key?: ZacBuilder<native.Key>,
        backgroundColor?: ZacBuilder<native.Color>,
        elevation?: ZacBuilder<number>,
        shape?: ZacBuilder<native.ShapeBorder>,
        child?: ZacBuilder<native.Widget>,
        semanticLabel?: ZacBuilder<string>
    }) {
        return new Drawer({
            builder: 'f:1:Drawer',
            ...data
        })
    }
}
export class EdgeInsets extends ZacBuilder<native.EdgeInsets> {
    static all(data: { value: ZacBuilder<number> }) {
        return new EdgeInsets({
            builder: 'f:1:EdgeInsets.all',
            ...data
        })
    }
    static symmetric(data?: {
        vertical?: ZacBuilder<number>,
        horizontal?: ZacBuilder<number>
    }) {
        return new EdgeInsets({
            builder: 'f:1:EdgeInsets.symmetric',
            ...data
        })
    }
    static only(data?: {
        left?: ZacBuilder<number>,
        top?: ZacBuilder<number>,
        right?: ZacBuilder<number>,
        bottom?: ZacBuilder<number>
    }) {
        return new EdgeInsets({
            builder: 'f:1:EdgeInsets.only',
            ...data
        })
    }
}
export class EdgeInsetsDirectional extends ZacBuilder<native.EdgeInsetsDirectional> {
    static all(data: { value: ZacBuilder<number> }) {
        return new EdgeInsetsDirectional({
            builder: 'f:1:EdgeInsetsDirectional.all',
            ...data
        })
    }
    static only(data?: {
        start?: ZacBuilder<number>,
        top?: ZacBuilder<number>,
        end?: ZacBuilder<number>,
        bottom?: ZacBuilder<number>
    }) {
        return new EdgeInsetsDirectional({
            builder: 'f:1:EdgeInsetsDirectional.only',
            ...data
        })
    }
}
export class ElevatedButton extends ZacBuilder<native.ElevatedButton> {
    static new(data?: {
        key?: ZacBuilder<native.Key>,
        child?: ZacBuilder<native.Widget>,
        onPressed?: ZacBuilder<Array<ZacAction>>,
        onLongPress?: ZacBuilder<Array<ZacAction>>,
        autofocus?: ZacBuilder<boolean>,
        clipBehavior?: ZacBuilder<native.Clip>
    }) {
        return new ElevatedButton({
            builder: 'f:1:ElevatedButton',
            ...data
        })
    }
    static icon(data: {
        key?: ZacBuilder<native.Key>,
        icon: ZacBuilder<native.Widget>,
        label: ZacBuilder<native.Widget>,
        onPressed?: ZacBuilder<Array<ZacAction>>,
        onLongPress?: ZacBuilder<Array<ZacAction>>,
        autofocus?: ZacBuilder<boolean>,
        clipBehavior?: ZacBuilder<native.Clip>
    }) {
        return new ElevatedButton({
            builder: 'f:1:ElevatedButton.icon',
            ...data
        })
    }
}
export class Expanded extends ZacBuilder<native.Expanded> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        flex?: ZacBuilder<number>,
        child: ZacBuilder<native.Widget>
    }) {
        return new Expanded({
            builder: 'f:1:Expanded',
            ...data
        })
    }
}
export class FilterQuality extends ZacBuilder<native.FilterQuality> {
    static high() {
        return new FilterQuality({
            builder: 'f:1:FilterQuality.high'

        })
    }
    static low() {
        return new FilterQuality({
            builder: 'f:1:FilterQuality.low'

        })
    }
    static medium() {
        return new FilterQuality({
            builder: 'f:1:FilterQuality.medium'

        })
    }
    static none() {
        return new FilterQuality({
            builder: 'f:1:FilterQuality.none'

        })
    }
}
export class FittedBox extends ZacBuilder<native.FittedBox> {
    static new(data?: {
        key?: ZacBuilder<native.Key>,
        fit?: ZacBuilder<native.BoxFit>,
        alignment?: ZacBuilder<native.AlignmentGeometry>,
        clipBehavior?: ZacBuilder<native.Clip>,
        child?: ZacBuilder<native.Widget>
    }) {
        return new FittedBox({
            builder: 'f:1:FittedBox',
            ...data
        })
    }
}
export class FlexFit extends ZacBuilder<native.FlexFit> {
    static tight() {
        return new FlexFit({
            builder: 'f:1:FlexFit.tight'

        })
    }
    static loose() {
        return new FlexFit({
            builder: 'f:1:FlexFit.loose'

        })
    }
}
export class Flexible extends ZacBuilder<native.Flexible> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        flex?: ZacBuilder<number>,
        fit?: ZacBuilder<native.FlexFit>,
        child: ZacBuilder<native.Widget>
    }) {
        return new Flexible({
            builder: 'f:1:Flexible',
            ...data
        })
    }
}
export class FontFeature extends ZacBuilder<native.FontFeature> {
    static new(data: {
        feature: string,
        value?: ZacBuilder<number>
    }) {
        return new FontFeature({
            builder: 'f:1:FontFeature',
            ...data
        })
    }
    static alternative(data: { value: number }) {
        return new FontFeature({
            builder: 'f:1:FontFeature.alternative',
            ...data
        })
    }
    static alternativeFractions() {
        return new FontFeature({
            builder: 'f:1:FontFeature.alternativeFractions'

        })
    }
    static caseSensitiveForms() {
        return new FontFeature({
            builder: 'f:1:FontFeature.caseSensitiveForms'

        })
    }
    static characterVariant(data: { value: number }) {
        return new FontFeature({
            builder: 'f:1:FontFeature.characterVariant',
            ...data
        })
    }
    static contextualAlternates() {
        return new FontFeature({
            builder: 'f:1:FontFeature.contextualAlternates'

        })
    }
    static denominator() {
        return new FontFeature({
            builder: 'f:1:FontFeature.denominator'

        })
    }
    static disable(data: { feature: string }) {
        return new FontFeature({
            builder: 'f:1:FontFeature.disable',
            ...data
        })
    }
    static enable(data: { feature: string }) {
        return new FontFeature({
            builder: 'f:1:FontFeature.enable',
            ...data
        })
    }
    static fractions() {
        return new FontFeature({
            builder: 'f:1:FontFeature.fractions'

        })
    }
    static historicalForms() {
        return new FontFeature({
            builder: 'f:1:FontFeature.historicalForms'

        })
    }
    static historicalLigatures() {
        return new FontFeature({
            builder: 'f:1:FontFeature.historicalLigatures'

        })
    }
    static liningFigures() {
        return new FontFeature({
            builder: 'f:1:FontFeature.liningFigures'

        })
    }
    static localeAware(data?: { enable?: ZacBuilder<boolean> }) {
        return new FontFeature({
            builder: 'f:1:FontFeature.localeAware',
            ...data
        })
    }
    static notationalForms(data?: { value?: ZacBuilder<number> }) {
        return new FontFeature({
            builder: 'f:1:FontFeature.notationalForms',
            ...data
        })
    }
    static numerators() {
        return new FontFeature({
            builder: 'f:1:FontFeature.numerators'

        })
    }
    static oldstyleFigures() {
        return new FontFeature({
            builder: 'f:1:FontFeature.oldstyleFigures'

        })
    }
    static ordinalForms() {
        return new FontFeature({
            builder: 'f:1:FontFeature.ordinalForms'

        })
    }
    static proportionalFigures() {
        return new FontFeature({
            builder: 'f:1:FontFeature.proportionalFigures'

        })
    }
    static randomize() {
        return new FontFeature({
            builder: 'f:1:FontFeature.randomize'

        })
    }
    static scientificInferiors() {
        return new FontFeature({
            builder: 'f:1:FontFeature.scientificInferiors'

        })
    }
    static slashedZero() {
        return new FontFeature({
            builder: 'f:1:FontFeature.slashedZero'

        })
    }
    static stylisticAlternates() {
        return new FontFeature({
            builder: 'f:1:FontFeature.stylisticAlternates'

        })
    }
    static stylisticSet(data: { value: number }) {
        return new FontFeature({
            builder: 'f:1:FontFeature.stylisticSet',
            ...data
        })
    }
    static subscripts() {
        return new FontFeature({
            builder: 'f:1:FontFeature.subscripts'

        })
    }
    static superscripts() {
        return new FontFeature({
            builder: 'f:1:FontFeature.superscripts'

        })
    }
    static swash(data?: { value?: ZacBuilder<number> }) {
        return new FontFeature({
            builder: 'f:1:FontFeature.swash',
            ...data
        })
    }
    static tabularFigures() {
        return new FontFeature({
            builder: 'f:1:FontFeature.tabularFigures'

        })
    }
}
export class FontStyle extends ZacBuilder<native.FontStyle> {
    static italic() {
        return new FontStyle({
            builder: 'f:1:FontStyle.italic'

        })
    }
    static normal() {
        return new FontStyle({
            builder: 'f:1:FontStyle.normal'

        })
    }
}
export class FontWeight extends ZacBuilder<native.FontWeight> {
    static bold() {
        return new FontWeight({
            builder: 'f:1:FontWeight.bold'

        })
    }
    static normal() {
        return new FontWeight({
            builder: 'f:1:FontWeight.normal'

        })
    }
    static w100() {
        return new FontWeight({
            builder: 'f:1:FontWeight.w100'

        })
    }
    static w200() {
        return new FontWeight({
            builder: 'f:1:FontWeight.w200'

        })
    }
    static w300() {
        return new FontWeight({
            builder: 'f:1:FontWeight.w300'

        })
    }
    static w400() {
        return new FontWeight({
            builder: 'f:1:FontWeight.w400'

        })
    }
    static w500() {
        return new FontWeight({
            builder: 'f:1:FontWeight.w500'

        })
    }
    static w600() {
        return new FontWeight({
            builder: 'f:1:FontWeight.w600'

        })
    }
    static w700() {
        return new FontWeight({
            builder: 'f:1:FontWeight.w700'

        })
    }
    static w800() {
        return new FontWeight({
            builder: 'f:1:FontWeight.w800'

        })
    }
    static w900() {
        return new FontWeight({
            builder: 'f:1:FontWeight.w900'

        })
    }
}
export class FractionalOffset extends ZacBuilder<native.FractionalOffset> {
    static new(data: {
        dx: ZacBuilder<number>,
        dy: ZacBuilder<number>
    }) {
        return new FractionalOffset({
            builder: 'f:1:FractionalOffset',
            ...data
        })
    }
}
export class FractionalTranslation extends ZacBuilder<native.FractionalTranslation> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        child?: ZacBuilder<native.Widget>,
        translation: Offset,
        transformHitTests?: ZacBuilder<boolean>
    }) {
        return new FractionalTranslation({
            builder: 'f:1:FractionalTranslation',
            ...data
        })
    }
}
export class FractionallySizedBox extends ZacBuilder<native.FractionallySizedBox> {
    static new(data?: {
        key?: ZacBuilder<native.Key>,
        child?: ZacBuilder<native.Widget>,
        alignment?: ZacBuilder<native.AlignmentGeometry>,
        widthFactor?: ZacBuilder<number>,
        heightFactor?: ZacBuilder<number>
    }) {
        return new FractionallySizedBox({
            builder: 'f:1:FractionallySizedBox',
            ...data
        })
    }
}
export class GestureDetector extends ZacBuilder<native.GestureDetector> {
    static new(data?: {
        key?: ZacBuilder<native.Key>,
        child?: ZacBuilder<native.Widget>,
        onTap?: ZacBuilder<Array<ZacAction>>,
        onSecondaryTap?: ZacBuilder<Array<ZacAction>>,
        onDoubleTap?: ZacBuilder<Array<ZacAction>>,
        onLongPress?: ZacBuilder<Array<ZacAction>>,
        onSecondaryLongPress?: ZacBuilder<Array<ZacAction>>,
        onTertiaryLongPress?: ZacBuilder<Array<ZacAction>>,
        behavior?: HitTestBehavior,
        excludeFromSemantics?: ZacBuilder<boolean>
    }) {
        return new GestureDetector({
            builder: 'f:1:GestureDetector',
            ...data
        })
    }
}
export class GlobalKeyNavigatorStateProvider extends ZacBuilder<native.Widget> {
    static new(data: {
        debugLabel?: ZacBuilder<string>,
        family: any,
        child: ZacBuilder<native.Widget>
    }) {
        return new GlobalKeyNavigatorStateProvider({
            builder: 'z:1:GlobalKey<NavigatorState>.provide',
            ...data
        })
    }
}
export class GlobalKeyScaffoldMessengerStateProvider extends ZacBuilder<native.Widget> {
    static new(data: {
        debugLabel?: ZacBuilder<string>,
        family: any,
        child: ZacBuilder<native.Widget>
    }) {
        return new GlobalKeyScaffoldMessengerStateProvider({
            builder: 'z:1:GlobalKey<ScaffoldMessengerState>.provide',
            ...data
        })
    }
}
export class GridView extends ZacBuilder<native.GridView> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        scrollDirection?: ZacBuilder<native.Axis>,
        reverse?: ZacBuilder<boolean>,
        controller?: ZacBuilder<native.ScrollController>,
        primary?: ZacBuilder<boolean>,
        shrinkWrap?: ZacBuilder<boolean>,
        padding?: ZacBuilder<native.EdgeInsetsGeometry>,
        gridDelegate: ZacBuilder<native.SliverGridDelegate>,
        addAutomaticKeepAlives?: ZacBuilder<boolean>,
        addRepaintBoundaries?: ZacBuilder<boolean>,
        addSemanticIndexes?: ZacBuilder<boolean>,
        cacheExtent?: ZacBuilder<number>,
        children?: ZacListBuilder<native.Widget>,
        semanticChildCount?: ZacBuilder<number>,
        clipBehavior?: ZacBuilder<native.Clip>,
        keyboardDismissBehavior?: ZacBuilder<native.ScrollViewKeyboardDismissBehavior>,
        restorationId?: ZacBuilder<string>
    }) {
        return new GridView({
            builder: 'f:1:GridView',
            ...data
        })
    }
}
export class HitTestBehavior extends ZacBuilder<native.HitTestBehavior> {
    static deferToChild() {
        return new HitTestBehavior({
            builder: 'f:1:HitTestBehavior.deferToChild'

        })
    }
    static opaque() {
        return new HitTestBehavior({
            builder: 'f:1:HitTestBehavior.opaque'

        })
    }
    static translucent() {
        return new HitTestBehavior({
            builder: 'f:1:HitTestBehavior.translucent'

        })
    }
}
export class Icon extends ZacBuilder<native.Icon> {
    static new(data: {
        icon: IconData,
        key?: ZacBuilder<native.Key>,
        size?: ZacBuilder<number>,
        color?: ZacBuilder<native.Color>,
        semanticLabel?: ZacBuilder<string>,
        textDirection?: ZacBuilder<native.TextDirection>
    }) {
        return new Icon({
            builder: 'f:1:Icon',
            ...data
        })
    }
}
export class IconData extends ZacBuilder<native.IconData> {
    static new(data: {
        codePoint: ZacBuilder<number>,
        fontFamily?: ZacBuilder<string>,
        fontPackage?: ZacBuilder<string>,
        matchTextDirection?: ZacBuilder<boolean>
    }) {
        return new IconData({
            builder: 'f:1:IconData',
            ...data
        })
    }
}
export class IconThemeData extends ZacBuilder<native.IconThemeData> {
    static new(data?: {
        color?: ZacBuilder<native.Color>,
        opacity?: ZacBuilder<number>,
        size?: ZacBuilder<number>
    }) {
        return new IconThemeData({
            builder: 'f:1:IconThemeData',
            ...data
        })
    }
}
export class IgnorePointer extends ZacBuilder<native.IgnorePointer> {
    static new(data?: {
        key?: ZacBuilder<native.Key>,
        ignoring?: ZacBuilder<boolean>,
        ignoringSemantics?: ZacBuilder<boolean>,
        child?: ZacBuilder<native.Widget>
    }) {
        return new IgnorePointer({
            builder: 'f:1:IgnorePointer',
            ...data
        })
    }
}
export class Image extends ZacBuilder<native.Image> {
    static network(data: {
        src: ZacBuilder<string>,
        key?: ZacBuilder<native.Key>,
        scale?: ZacBuilder<number>,
        semanticLabel?: ZacBuilder<string>,
        excludeFromSemantics?: ZacBuilder<boolean>,
        width?: ZacBuilder<number>,
        height?: ZacBuilder<number>,
        color?: ZacBuilder<native.Color>,
        colorBlendMode?: ZacBuilder<native.BlendMode>,
        fit?: ZacBuilder<native.BoxFit>,
        alignment?: ZacBuilder<native.AlignmentGeometry>,
        repeat?: ZacBuilder<native.ImageRepeat>,
        centerSlice?: ZacBuilder<native.Rect>,
        matchTextDirection?: ZacBuilder<boolean>,
        gaplessPlayback?: ZacBuilder<boolean>,
        filterQuality?: ZacBuilder<native.FilterQuality>,
        isAntiAlias?: ZacBuilder<boolean>,
        headers?: Record<string, string>,
        cacheWidth?: ZacBuilder<number>,
        cacheHeight?: ZacBuilder<number>
    }) {
        return new Image({
            builder: 'f:1:Image.network',
            ...data
        })
    }
    static asset(data: {
        name: ZacBuilder<string>,
        key?: ZacBuilder<native.Key>,
        semanticLabel?: ZacBuilder<string>,
        excludeFromSemantics?: ZacBuilder<boolean>,
        scale?: ZacBuilder<number>,
        width?: ZacBuilder<number>,
        height?: ZacBuilder<number>,
        color?: ZacBuilder<native.Color>,
        colorBlendMode?: ZacBuilder<native.BlendMode>,
        fit?: ZacBuilder<native.BoxFit>,
        alignment?: ZacBuilder<native.AlignmentGeometry>,
        repeat?: ZacBuilder<native.ImageRepeat>,
        centerSlice?: ZacBuilder<native.Rect>,
        matchTextDirection?: ZacBuilder<boolean>,
        gaplessPlayback?: ZacBuilder<boolean>,
        isAntiAlias?: ZacBuilder<boolean>,
        package?: ZacBuilder<string>,
        filterQuality?: ZacBuilder<native.FilterQuality>,
        cacheWidth?: ZacBuilder<number>,
        cacheHeight?: ZacBuilder<number>
    }) {
        return new Image({
            builder: 'f:1:Image.asset',
            ...data
        })
    }
}
export class ImageRepeat extends ZacBuilder<native.ImageRepeat> {
    static noRepeat() {
        return new ImageRepeat({
            builder: 'f:1:ImageRepeat.noRepeat'

        })
    }
    static repeat() {
        return new ImageRepeat({
            builder: 'f:1:ImageRepeat.repeat'

        })
    }
    static repeatX() {
        return new ImageRepeat({
            builder: 'f:1:ImageRepeat.repeatX'

        })
    }
    static repeatY() {
        return new ImageRepeat({
            builder: 'f:1:ImageRepeat.repeatY'

        })
    }
}
export class IndexedStack extends ZacBuilder<native.IndexedStack> {
    static new(data?: {
        key?: ZacBuilder<native.Key>,
        alignment?: ZacBuilder<native.AlignmentGeometry>,
        textDirection?: ZacBuilder<native.TextDirection>,
        sizing?: ZacBuilder<native.StackFit>,
        index?: ZacBuilder<number>,
        children?: ZacListBuilder<native.Widget>
    }) {
        return new IndexedStack({
            builder: 'f:1:IndexedStack',
            ...data
        })
    }
}
export class InputDecoration extends ZacBuilder<native.InputDecoration> {
    static new(data?: {
        icon?: ZacBuilder<native.Widget>,
        iconColor?: ZacBuilder<native.Color>,
        label?: ZacBuilder<native.Widget>,
        labelText?: ZacBuilder<string>,
        labelStyle?: ZacBuilder<native.TextStyle>,
        floatingLabelStyle?: ZacBuilder<native.TextStyle>,
        helperText?: ZacBuilder<string>,
        helperStyle?: ZacBuilder<native.TextStyle>,
        helperMaxLines?: ZacBuilder<number>,
        hintText?: ZacBuilder<string>,
        hintStyle?: ZacBuilder<native.TextStyle>,
        hintTextDirection?: ZacBuilder<native.TextDirection>,
        hintMaxLines?: ZacBuilder<number>,
        errorText?: ZacBuilder<string>,
        errorStyle?: ZacBuilder<native.TextStyle>,
        errorMaxLines?: ZacBuilder<number>,
        isCollapsed?: ZacBuilder<boolean>,
        isDense?: ZacBuilder<boolean>,
        contentPadding?: ZacBuilder<native.EdgeInsetsGeometry>,
        prefixIcon?: ZacBuilder<native.Widget>,
        prefixIconConstraints?: ZacBuilder<native.BoxConstraints>,
        prefix?: ZacBuilder<native.Widget>,
        prefixText?: ZacBuilder<string>,
        prefixStyle?: ZacBuilder<native.TextStyle>,
        prefixIconColor?: ZacBuilder<native.Color>,
        suffixIcon?: ZacBuilder<native.Widget>,
        suffix?: ZacBuilder<native.Widget>,
        suffixText?: ZacBuilder<string>,
        suffixStyle?: ZacBuilder<native.TextStyle>,
        suffixIconColor?: ZacBuilder<native.Color>,
        suffixIconConstraints?: ZacBuilder<native.BoxConstraints>,
        counter?: ZacBuilder<native.Widget>,
        counterText?: ZacBuilder<string>,
        counterStyle?: ZacBuilder<native.TextStyle>,
        filled?: ZacBuilder<boolean>,
        fillColor?: ZacBuilder<native.Color>,
        focusColor?: ZacBuilder<native.Color>,
        hoverColor?: ZacBuilder<native.Color>,
        errorBorder?: ZacBuilder<native.InputBorder>,
        focusedBorder?: ZacBuilder<native.InputBorder>,
        focusedErrorBorder?: ZacBuilder<native.InputBorder>,
        disabledBorder?: ZacBuilder<native.InputBorder>,
        enabledBorder?: ZacBuilder<native.InputBorder>,
        border?: ZacBuilder<native.InputBorder>,
        enabled?: ZacBuilder<boolean>,
        semanticCounterText?: ZacBuilder<string>,
        alignLabelWithHint?: ZacBuilder<boolean>,
        constraints?: ZacBuilder<native.BoxConstraints>
    }) {
        return new InputDecoration({
            builder: 'f:1:InputDecoration',
            ...data
        })
    }
}
export class InteractiveViewer extends ZacBuilder<native.InteractiveViewer> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        child: ZacBuilder<native.Widget>,
        clipBehavior?: ZacBuilder<native.Clip>,
        alignPanAxis?: ZacBuilder<boolean>,
        boundaryMargin?: ZacBuilder<native.EdgeInsets>,
        constrained?: ZacBuilder<boolean>,
        maxScale?: ZacBuilder<number>,
        minScale?: ZacBuilder<number>,
        onInteractionEnd?: ZacBuilder<Array<ZacAction>>,
        onInteractionStart?: ZacBuilder<Array<ZacAction>>,
        onInteractionUpdate?: ZacBuilder<Array<ZacAction>>,
        panEnabled?: ZacBuilder<boolean>,
        scaleEnabled?: ZacBuilder<boolean>
    }) {
        return new InteractiveViewer({
            builder: 'f:1:InteractiveViewer',
            ...data
        })
    }
}
export class IntrinsicHeight extends ZacBuilder<native.IntrinsicHeight> {
    static new(data?: {
        key?: ZacBuilder<native.Key>,
        child?: ZacBuilder<native.Widget>
    }) {
        return new IntrinsicHeight({
            builder: 'f:1:IntrinsicHeight',
            ...data
        })
    }
}
export class IntrinsicWidth extends ZacBuilder<native.IntrinsicWidth> {
    static new(data?: {
        key?: ZacBuilder<native.Key>,
        child?: ZacBuilder<native.Widget>
    }) {
        return new IntrinsicWidth({
            builder: 'f:1:IntrinsicWidth',
            ...data
        })
    }
}
export class LimitedBox extends ZacBuilder<native.LimitedBox> {
    static new(data?: {
        key?: ZacBuilder<native.Key>,
        maxWidth?: ZacBuilder<number>,
        maxHeight?: ZacBuilder<number>,
        child?: ZacBuilder<native.Widget>
    }) {
        return new LimitedBox({
            builder: 'f:1:LimitedBox',
            ...data
        })
    }
}
export class ListTile extends ZacBuilder<native.ListTile> {
    static new(data?: {
        key?: ZacBuilder<native.Key>,
        leading?: ZacBuilder<native.Widget>,
        title?: ZacBuilder<native.Widget>,
        subtitle?: ZacBuilder<native.Widget>,
        trailing?: ZacBuilder<native.Widget>,
        isThreeLine?: ZacBuilder<boolean>,
        dense?: ZacBuilder<boolean>,
        shape?: ZacBuilder<native.ShapeBorder>,
        selectedColor?: ZacBuilder<native.Color>,
        iconColor?: ZacBuilder<native.Color>,
        textColor?: ZacBuilder<native.Color>,
        contentPadding?: ZacBuilder<native.EdgeInsetsGeometry>,
        enabled?: ZacBuilder<boolean>,
        onTap?: ZacBuilder<Array<ZacAction>>,
        onLongPress?: ZacBuilder<Array<ZacAction>>,
        selected?: ZacBuilder<boolean>,
        focusColor?: ZacBuilder<native.Color>,
        hoverColor?: ZacBuilder<native.Color>,
        autofocus?: ZacBuilder<boolean>,
        tileColor?: ZacBuilder<native.Color>,
        selectedTileColor?: ZacBuilder<native.Color>,
        enableFeedback?: ZacBuilder<boolean>,
        horizontalTitleGap?: ZacBuilder<number>,
        minVerticalPadding?: ZacBuilder<number>,
        minLeadingWidth?: ZacBuilder<number>
    }) {
        return new ListTile({
            builder: 'f:1:ListTile',
            ...data
        })
    }
}
export class ListView extends ZacBuilder<native.ListView> {
    static new(data?: {
        key?: ZacBuilder<native.Key>,
        scrollDirection?: ZacBuilder<native.Axis>,
        reverse?: ZacBuilder<boolean>,
        controller?: ZacBuilder<native.ScrollController>,
        primary?: ZacBuilder<boolean>,
        physics?: ZacBuilder<native.ScrollPhysics>,
        shrinkWrap?: ZacBuilder<boolean>,
        padding?: ZacBuilder<native.EdgeInsetsGeometry>,
        itemExtent?: ZacBuilder<number>,
        prototypeItem?: ZacBuilder<native.Widget>,
        addAutomaticKeepAlives?: ZacBuilder<boolean>,
        addRepaintBoundaries?: ZacBuilder<boolean>,
        addSemanticIndexes?: ZacBuilder<boolean>,
        cacheExtent?: ZacBuilder<number>,
        children?: ZacListBuilder<native.Widget>,
        semanticChildCount?: ZacBuilder<number>,
        keyboardDismissBehavior?: ZacBuilder<native.ScrollViewKeyboardDismissBehavior>,
        restorationId?: ZacBuilder<string>,
        clipBehavior?: ZacBuilder<native.Clip>
    }) {
        return new ListView({
            builder: 'f:1:ListView',
            ...data
        })
    }
}
export class Locale extends ZacBuilder<native.Locale> {
    static new(data: {
        languageCode: string,
        countryCode?: string
    }) {
        return new Locale({
            builder: 'f:1:Locale',
            ...data
        })
    }
}
export class MainAxisAlignment extends ZacBuilder<native.MainAxisAlignment> {
    static start() {
        return new MainAxisAlignment({
            builder: 'f:1:MainAxisAlignment.start'

        })
    }
    static end() {
        return new MainAxisAlignment({
            builder: 'f:1:MainAxisAlignment.end'

        })
    }
    static center() {
        return new MainAxisAlignment({
            builder: 'f:1:MainAxisAlignment.center'

        })
    }
    static spaceBetween() {
        return new MainAxisAlignment({
            builder: 'f:1:MainAxisAlignment.spaceBetween'

        })
    }
    static spaceAround() {
        return new MainAxisAlignment({
            builder: 'f:1:MainAxisAlignment.spaceAround'

        })
    }
    static spaceEvenly() {
        return new MainAxisAlignment({
            builder: 'f:1:MainAxisAlignment.spaceEvenly'

        })
    }
}
export class MainAxisSize extends ZacBuilder<native.MainAxisSize> {
    static min() {
        return new MainAxisSize({
            builder: 'f:1:MainAxisSize.min'

        })
    }
    static max() {
        return new MainAxisSize({
            builder: 'f:1:MainAxisSize.max'

        })
    }
}
export class Material extends ZacBuilder<native.Material> {
    static new(data?: {
        key?: ZacBuilder<native.Key>,
        child?: ZacBuilder<native.Widget>,
        elevation?: ZacBuilder<number>,
        color?: ZacBuilder<native.Color>,
        shadowColor?: ZacBuilder<native.Color>,
        textStyle?: ZacBuilder<native.TextStyle>,
        borderRadius?: ZacBuilder<native.BorderRadiusGeometry>,
        shape?: ZacBuilder<native.ShapeBorder>,
        borderOnForeground?: ZacBuilder<boolean>,
        clipBehavior?: ZacBuilder<native.Clip>
    }) {
        return new Material({
            builder: 'f:1:Material',
            ...data
        })
    }
}
export class MaterialApp extends ZacBuilder<native.MaterialApp> {
    static new(data?: {
        key?: ZacBuilder<native.Key>,
        navigatorKey?: ZacBuilder<native.GlobalKey>,
        scaffoldMessengerKey?: ZacBuilder<native.GlobalKey>,
        home?: ZacBuilder<native.Widget>,
        initialRoute?: ZacBuilder<string>,
        onGenerateRoute?: RouteFactory,
        onUnknownRoute?: RouteFactory,
        title?: ZacBuilder<string>,
        color?: ZacBuilder<native.Color>,
        locale?: ZacBuilder<native.Locale>,
        debugShowMaterialGrid?: ZacBuilder<boolean>,
        showPerformanceOverlay?: ZacBuilder<boolean>,
        checkerboardRasterCacheImages?: ZacBuilder<boolean>,
        checkerboardOffscreenLayers?: ZacBuilder<boolean>,
        showSemanticsDebugger?: ZacBuilder<boolean>,
        debugShowCheckedModeBanner?: ZacBuilder<boolean>,
        restorationScopeId?: ZacBuilder<string>,
        useInheritedMediaQuery?: ZacBuilder<boolean>
    }) {
        return new MaterialApp({
            builder: 'f:1:MaterialApp',
            ...data
        })
    }
}
export class MaterialBanner extends ZacBuilder<native.MaterialBanner> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        content: ZacBuilder<native.Widget>,
        contentTextStyle?: ZacBuilder<native.TextStyle>,
        actions: ZacListBuilder<native.Widget>,
        elevation?: ZacBuilder<number>,
        leading: ZacBuilder<native.Widget>,
        backgroundColor?: ZacBuilder<native.Color>,
        padding?: ZacBuilder<native.EdgeInsetsGeometry>,
        leadingPadding?: ZacBuilder<native.EdgeInsetsGeometry>,
        forceActionsBelow?: ZacBuilder<boolean>,
        onVisible?: ZacBuilder<Array<ZacAction>>
    }) {
        return new MaterialBanner({
            builder: 'f:1:MaterialBanner',
            ...data
        })
    }
}
export class MaterialPageRoute extends ZacBuilder<native.Route> {
    static new(data: {
        settings?: ZacBuilder<native.RouteSettings>,
        maintainState?: ZacBuilder<boolean>,
        fullscreenDialog?: ZacBuilder<boolean>,
        child: ZacBuilder<native.Widget>,
        nameOfSharedArguments?: ZacBuilder<string>
    }) {
        return new MaterialPageRoute({
            builder: 'f:1:MaterialPageRoute',
            ...data
        })
    }
}
export class Navigator extends ZacBuilder<native.Navigator> {
    static new(data?: {
        key?: ZacBuilder<native.Key>,
        onGenerateRoute?: RouteFactory,
        onUnknownRoute?: RouteFactory,
        initialRoute?: ZacBuilder<string>,
        requestFocus?: ZacBuilder<boolean>
    }) {
        return new Navigator({
            builder: 'f:1:Navigator',
            ...data
        })
    }
}
export class NavigatorState extends ZacBuilder<native.NavigatorState> {
    static closest() {
        return new NavigatorState({
            builder: 'f:1:NavigatorState.closest'

        })
    }
    static root() {
        return new NavigatorState({
            builder: 'f:1:NavigatorState.root'

        })
    }
    static shared(data: { value: ZacBuilder<native.GlobalKey> }) {
        return new NavigatorState({
            builder: 'z:1:NavigatorState.shared',
            ...data
        })
    }
}
export class Offset extends ZacBuilder<native.Offset> {
    static new(data: {
        dx: ZacBuilder<number>,
        dy: ZacBuilder<number>
    }) {
        return new Offset({
            builder: 'f:1:Offset',
            ...data
        })
    }
    static fromDirection(data: {
        direction: ZacBuilder<number>,
        distance?: ZacBuilder<number>
    }) {
        return new Offset({
            builder: 'f:1:Offset.fromDirection',
            ...data
        })
    }
}
export class Offstage extends ZacBuilder<native.Offstage> {
    static new(data?: {
        key?: ZacBuilder<native.Key>,
        offstage?: ZacBuilder<boolean>,
        child?: ZacBuilder<native.Widget>
    }) {
        return new Offstage({
            builder: 'f:1:Offstage',
            ...data
        })
    }
}
export class Opacity extends ZacBuilder<native.Opacity> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        opacity: ZacBuilder<number>,
        alwaysIncludeSemantics?: ZacBuilder<boolean>,
        child?: ZacBuilder<native.Widget>
    }) {
        return new Opacity({
            builder: 'f:1:Opacity',
            ...data
        })
    }
}
export class OutlineInputBorder extends ZacBuilder<native.OutlineInputBorder> {
    static new(data?: {
        borderSide?: ZacBuilder<native.BorderSide>,
        borderRadius?: ZacBuilder<native.BorderRadius>,
        gapPadding?: ZacBuilder<number>
    }) {
        return new OutlineInputBorder({
            builder: 'f:1:OutlineInputBorder',
            ...data
        })
    }
}
export class OutlinedButton extends ZacBuilder<native.OutlinedButton> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        child: ZacBuilder<native.Widget>,
        onPressed?: ZacBuilder<Array<ZacAction>>,
        onLongPress?: ZacBuilder<Array<ZacAction>>,
        autofocus?: ZacBuilder<boolean>,
        clipBehavior?: ZacBuilder<native.Clip>
    }) {
        return new OutlinedButton({
            builder: 'f:1:OutlinedButton',
            ...data
        })
    }
    static icon(data: {
        key?: ZacBuilder<native.Key>,
        icon: ZacBuilder<native.Widget>,
        label: ZacBuilder<native.Widget>,
        onPressed?: ZacBuilder<Array<ZacAction>>,
        onLongPress?: ZacBuilder<Array<ZacAction>>,
        autofocus?: ZacBuilder<boolean>,
        clipBehavior?: ZacBuilder<native.Clip>
    }) {
        return new OutlinedButton({
            builder: 'f:1:OutlinedButton.icon',
            ...data
        })
    }
}
export class OverflowBox extends ZacBuilder<native.OverflowBox> {
    static new(data?: {
        key?: ZacBuilder<native.Key>,
        alignment?: ZacBuilder<native.AlignmentGeometry>,
        minWidth?: ZacBuilder<number>,
        maxWidth?: ZacBuilder<number>,
        minHeight?: ZacBuilder<number>,
        maxHeight?: ZacBuilder<number>,
        child?: ZacBuilder<native.Widget>
    }) {
        return new OverflowBox({
            builder: 'f:1:OverflowBox',
            ...data
        })
    }
}
export class Padding extends ZacBuilder<native.Padding> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        padding: ZacBuilder<native.EdgeInsetsGeometry>,
        child?: ZacBuilder<native.Widget>
    }) {
        return new Padding({
            builder: 'f:1:Padding',
            ...data
        })
    }
}
export class PageRouteBuilder extends ZacBuilder<native.Route> {
    static new(data: {
        settings?: ZacBuilder<native.RouteSettings>,
        opaque?: ZacBuilder<boolean>,
        barrierDismissible?: ZacBuilder<boolean>,
        barrierColor?: ZacBuilder<native.Color>,
        barrierLabel?: ZacBuilder<string>,
        maintainState?: ZacBuilder<boolean>,
        fullscreenDialog?: ZacBuilder<boolean>,
        child: ZacBuilder<native.Widget>,
        nameOfSharedArguments?: ZacBuilder<string>
    }) {
        return new PageRouteBuilder({
            builder: 'f:1:PageRouteBuilder',
            ...data
        })
    }
}
export class Positioned extends ZacBuilder<native.Positioned> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        left?: ZacBuilder<number>,
        top?: ZacBuilder<number>,
        right?: ZacBuilder<number>,
        bottom?: ZacBuilder<number>,
        width?: ZacBuilder<number>,
        height?: ZacBuilder<number>,
        child: ZacBuilder<native.Widget>
    }) {
        return new Positioned({
            builder: 'f:1:Positioned',
            ...data
        })
    }
    static directional(data: {
        key?: ZacBuilder<native.Key>,
        textDirection: ZacBuilder<native.TextDirection>,
        start?: ZacBuilder<number>,
        top?: ZacBuilder<number>,
        end?: ZacBuilder<number>,
        bottom?: ZacBuilder<number>,
        width?: ZacBuilder<number>,
        height?: ZacBuilder<number>,
        child: ZacBuilder<native.Widget>
    }) {
        return new Positioned({
            builder: 'f:1:Positioned.directional',
            ...data
        })
    }
    static fill(data: {
        key?: ZacBuilder<native.Key>,
        left?: ZacBuilder<number>,
        top?: ZacBuilder<number>,
        right?: ZacBuilder<number>,
        bottom?: ZacBuilder<number>,
        child: ZacBuilder<native.Widget>
    }) {
        return new Positioned({
            builder: 'f:1:Positioned.fill',
            ...data
        })
    }
}
export class ProgressIndicator extends ZacBuilder<native.ProgressIndicator> {
    static linear(data?: {
        key?: ZacBuilder<native.Key>,
        value?: ZacBuilder<number>,
        backgroundColor?: ZacBuilder<native.Color>,
        color?: ZacBuilder<native.Color>,
        minHeight?: ZacBuilder<number>,
        semanticsLabel?: ZacBuilder<string>,
        semanticsValue?: ZacBuilder<string>
    }) {
        return new ProgressIndicator({
            builder: 'f:1:LinearProgressIndicator',
            ...data
        })
    }
    static circular(data?: {
        key?: ZacBuilder<native.Key>,
        value?: ZacBuilder<number>,
        backgroundColor?: ZacBuilder<native.Color>,
        color?: ZacBuilder<native.Color>,
        strokeWidth?: ZacBuilder<number>,
        semanticsLabel?: ZacBuilder<string>,
        semanticsValue?: ZacBuilder<string>
    }) {
        return new ProgressIndicator({
            builder: 'f:1:CircularProgressIndicator',
            ...data
        })
    }
}
export class Radius extends ZacBuilder<native.Radius> {
    static circular(data: { radius: ZacBuilder<number> }) {
        return new Radius({
            builder: 'f:1:Radius.circular',
            ...data
        })
    }
    static elliptical(data: {
        x: ZacBuilder<number>,
        y: ZacBuilder<number>
    }) {
        return new Radius({
            builder: 'f:1:Radius.elliptical',
            ...data
        })
    }
}
export class Rect extends ZacBuilder<native.Rect> {
    static fromCenter(data: {
        center: Offset,
        width: ZacBuilder<number>,
        height: ZacBuilder<number>
    }) {
        return new Rect({
            builder: 'f:1:Rect.fromCenter',
            ...data
        })
    }
    static fromCircle(data: {
        center: Offset,
        radius: ZacBuilder<number>
    }) {
        return new Rect({
            builder: 'f:1:Rect.fromCircle',
            ...data
        })
    }
    static fromLTRB(data: {
        left: ZacBuilder<number>,
        top: ZacBuilder<number>,
        right: ZacBuilder<number>,
        bottom: ZacBuilder<number>
    }) {
        return new Rect({
            builder: 'f:1:Rect.fromLTRB',
            ...data
        })
    }
    static fromLTWH(data: {
        left: ZacBuilder<number>,
        top: ZacBuilder<number>,
        width: ZacBuilder<number>,
        height: ZacBuilder<number>
    }) {
        return new Rect({
            builder: 'f:1:Rect.fromLTWH',
            ...data
        })
    }
    static fromPoints(data: {
        a: Offset,
        b: Offset
    }) {
        return new Rect({
            builder: 'f:1:Rect.fromPoints',
            ...data
        })
    }
}
export class RefreshIndicator extends ZacBuilder<native.RefreshIndicator> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        child: ZacBuilder<native.Widget>,
        displacement?: ZacBuilder<number>,
        edgeOffset?: ZacBuilder<number>,
        onRefresh: ZacBuilder<Array<ZacAction>>,
        color?: ZacBuilder<native.Color>,
        backgroundColor?: ZacBuilder<native.Color>,
        semanticsLabel?: ZacBuilder<string>,
        semanticsValue?: ZacBuilder<string>,
        strokeWidth?: ZacBuilder<number>,
        triggerMode?: ZacBuilder<native.RefreshIndicatorTriggerMode>
    }) {
        return new RefreshIndicator({
            builder: 'f:1:RefreshIndicator',
            ...data
        })
    }
}
export class RefreshIndicatorTriggerMode extends ZacBuilder<native.RefreshIndicatorTriggerMode> {
    static onEdge() {
        return new RefreshIndicatorTriggerMode({
            builder: 'f:1:RefreshIndicatorTriggerMode.onEdge'

        })
    }
    static anywhere() {
        return new RefreshIndicatorTriggerMode({
            builder: 'f:1:RefreshIndicatorTriggerMode.anywhere'

        })
    }
}
export class RotatedBox extends ZacBuilder<native.RotatedBox> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        child?: ZacBuilder<native.Widget>,
        quarterTurns: number
    }) {
        return new RotatedBox({
            builder: 'f:1:RotatedBox',
            ...data
        })
    }
}
export class RoundedRectangleBorder extends ZacBuilder<native.ShapeBorder> {
    static new(data?: {
        side?: ZacBuilder<native.BorderSide>,
        borderRadius?: ZacBuilder<native.BorderRadiusGeometry>
    }) {
        return new RoundedRectangleBorder({
            builder: 'f:1:RoundedRectangleBorder',
            ...data
        })
    }
}
export class RouteFactory extends ZacBuilder<native.RouteFactory> {
    static new(data: {
        routes: Record<string, ZacBuilder<native.Route>>,
        familyNameOfArguments: Record<string, string>
    }) {
        return new RouteFactory({
            builder: 'f:1:RouteFactory',
            ...data
        })
    }
}
export class RouteSettings extends ZacBuilder<native.RouteSettings> {
    static new(data?: {
        name?: ZacBuilder<string>,
        arguments?: ZacBuilder<any>
    }) {
        return new RouteSettings({
            builder: 'f:1:RouteSettings',
            ...data
        })
    }
}
export class Row extends ZacBuilder<native.Row> {
    static new(data?: {
        key?: ZacBuilder<native.Key>,
        mainAxisAlignment?: ZacBuilder<native.MainAxisAlignment>,
        mainAxisSize?: ZacBuilder<native.MainAxisSize>,
        crossAxisAlignment?: ZacBuilder<native.CrossAxisAlignment>,
        textDirection?: ZacBuilder<native.TextDirection>,
        verticalDirection?: ZacBuilder<native.VerticalDirection>,
        textBaseline?: ZacBuilder<native.TextBaseline>,
        children?: ZacListBuilder<native.Widget>
    }) {
        return new Row({
            builder: 'f:1:Row',
            ...data
        })
    }
}
export class SafeArea extends ZacBuilder<native.SafeArea> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        left?: ZacBuilder<boolean>,
        top?: ZacBuilder<boolean>,
        right?: ZacBuilder<boolean>,
        bottom?: ZacBuilder<boolean>,
        minimum?: ZacBuilder<native.EdgeInsets>,
        maintainBottomViewPadding?: ZacBuilder<boolean>,
        child: ZacBuilder<native.Widget>
    }) {
        return new SafeArea({
            builder: 'f:1:SafeArea',
            ...data
        })
    }
}
export class Scaffold extends ZacBuilder<native.Scaffold> {
    static new(data?: {
        key?: ZacBuilder<native.Key>,
        appBar?: ZacBuilder<native.Widget>,
        body?: ZacBuilder<native.Widget>,
        floatingActionButton?: ZacBuilder<native.Widget>,
        persistentFooterButtons?: ZacListBuilder<native.Widget>,
        drawer?: ZacBuilder<native.Widget>,
        endDrawer?: ZacBuilder<native.Widget>,
        bottomNavigationBar?: ZacBuilder<native.Widget>,
        bottomSheet?: ZacBuilder<native.Widget>,
        backgroundColor?: ZacBuilder<native.Color>,
        resizeToAvoidBottomInset?: ZacBuilder<boolean>,
        primary?: ZacBuilder<boolean>,
        extendBody?: ZacBuilder<boolean>,
        extendBodyBehindAppBar?: ZacBuilder<boolean>,
        drawerScrimColor?: ZacBuilder<native.Color>,
        drawerEdgeDragWidth?: ZacBuilder<number>,
        drawerEnableOpenDragGesture?: ZacBuilder<boolean>,
        endDrawerEnableOpenDragGesture?: ZacBuilder<boolean>,
        restorationId?: ZacBuilder<string>
    }) {
        return new Scaffold({
            builder: 'f:1:Scaffold',
            ...data
        })
    }
}
export class ScrollController extends ZacBuilder<native.Widget> {
    static new(data: {
        initialScrollOffset?: ZacBuilder<number>,
        keepScrollOffset?: ZacBuilder<boolean>,
        debugLabel?: ZacBuilder<string>,
        family?: any,
        child: ZacBuilder<native.Widget>
    }) {
        return new ScrollController({
            builder: 'z:1:ScrollController.provide',
            ...data
        })
    }
}
export class ScrollPhysics extends ZacBuilder<native.ScrollPhysics> {
    static alwaysScrollable(data?: { parent?: ScrollPhysics }) {
        return new ScrollPhysics({
            builder: 'f:1:AlwaysScrollableScrollPhysics',
            ...data
        })
    }
    static bouncingScroll(data?: { parent?: ScrollPhysics }) {
        return new ScrollPhysics({
            builder: 'f:1:BouncingScrollPhysics',
            ...data
        })
    }
    static clampingScrollPhysics(data?: { parent?: ScrollPhysics }) {
        return new ScrollPhysics({
            builder: 'f:1:ClampingScrollPhysics',
            ...data
        })
    }
}
export class ScrollViewKeyboardDismissBehavior extends ZacBuilder<native.ScrollViewKeyboardDismissBehavior> {
    static manual() {
        return new ScrollViewKeyboardDismissBehavior({
            builder: 'f:1:ScrollViewKeyboardDismissBehavior.manual'

        })
    }
    static onDrag() {
        return new ScrollViewKeyboardDismissBehavior({
            builder: 'f:1:ScrollViewKeyboardDismissBehavior.onDrag'

        })
    }
}
export class SelectableText extends ZacBuilder<native.SelectableText> {
    static new(data: {
        data: string,
        key?: ZacBuilder<native.Key>,
        style?: ZacBuilder<native.TextStyle>,
        strutStyle?: ZacBuilder<native.StrutStyle>,
        textAlign?: ZacBuilder<native.TextAlign>,
        textDirection?: ZacBuilder<native.TextDirection>,
        textScaleFactor?: ZacBuilder<number>,
        showCursor?: ZacBuilder<boolean>,
        autofocus?: ZacBuilder<boolean>,
        minLines?: ZacBuilder<number>,
        maxLines?: ZacBuilder<number>,
        cursorWidth?: ZacBuilder<number>,
        cursorHeight?: ZacBuilder<number>,
        cursorRadius?: ZacBuilder<native.Radius>,
        cursorColor?: ZacBuilder<native.Color>,
        enableInteractiveSelection?: ZacBuilder<boolean>,
        semanticsLabel?: ZacBuilder<string>,
        textHeightBehavior?: ZacBuilder<native.TextHeightBehavior>,
        textWidthBasis?: ZacBuilder<native.TextWidthBasis>
    }) {
        return new SelectableText({
            builder: 'f:1:SelectableText',
            ...data
        })
    }
}
export class Shadow extends ZacBuilder<native.Shadow> {
    static new(data?: {
        color?: ZacBuilder<native.Color>,
        offset?: ZacBuilder<native.Offset>,
        blurRadius?: ZacBuilder<number>
    }) {
        return new Shadow({
            builder: 'f:1:Shadow',
            ...data
        })
    }
}
export class ShapeDecoration extends ZacBuilder<native.ShapeDecoration> {
    static new(data: {
        color?: ZacBuilder<native.Color>,
        image?: ZacBuilder<native.DecorationImage>,
        gradient?: ZacBuilder<native.Gradient>,
        shadows?: Array<BoxShadow>,
        shape: ZacBuilder<native.ShapeBorder>
    }) {
        return new ShapeDecoration({
            builder: 'f:1:ShapeDecoration',
            ...data
        })
    }
}
export class SingleChildScrollView extends ZacBuilder<native.SingleChildScrollView> {
    static new(data?: {
        key?: ZacBuilder<native.Key>,
        scrollDirection?: ZacBuilder<native.Axis>,
        reverse?: ZacBuilder<boolean>,
        padding?: ZacBuilder<native.EdgeInsetsGeometry>,
        primary?: ZacBuilder<boolean>,
        controller?: ZacBuilder<native.ScrollController>,
        child?: ZacBuilder<native.Widget>,
        clipBehavior?: ZacBuilder<native.Clip>,
        restorationId?: ZacBuilder<string>,
        keyboardDismissBehavior?: ZacBuilder<native.ScrollViewKeyboardDismissBehavior>
    }) {
        return new SingleChildScrollView({
            builder: 'f:1:SingleChildScrollView',
            ...data
        })
    }
}
export class Size extends ZacBuilder<native.Size> {
    static new(data: {
        width: ZacBuilder<number>,
        height: ZacBuilder<number>
    }) {
        return new Size({
            builder: 'f:1:Size',
            ...data
        })
    }
}
export class SizedBox extends ZacBuilder<native.SizedBox> {
    static new(data?: {
        key?: ZacBuilder<native.Key>,
        width?: ZacBuilder<number>,
        height?: ZacBuilder<number>,
        child?: ZacBuilder<native.Widget>
    }) {
        return new SizedBox({
            builder: 'f:1:SizedBox',
            ...data
        })
    }
    static expand(data?: {
        key?: ZacBuilder<native.Key>,
        child?: ZacBuilder<native.Widget>
    }) {
        return new SizedBox({
            builder: 'f:1:SizedBox.expand',
            ...data
        })
    }
    static fromSize(data?: {
        key?: ZacBuilder<native.Key>,
        child?: ZacBuilder<native.Widget>,
        size?: ZacBuilder<native.Size>
    }) {
        return new SizedBox({
            builder: 'f:1:SizedBox.fromSize',
            ...data
        })
    }
    static shrink(data?: {
        key?: ZacBuilder<native.Key>,
        child?: ZacBuilder<native.Widget>
    }) {
        return new SizedBox({
            builder: 'f:1:SizedBox.shrink',
            ...data
        })
    }
    static square(data?: {
        key?: ZacBuilder<native.Key>,
        child?: ZacBuilder<native.Widget>,
        dimension?: ZacBuilder<number>
    }) {
        return new SizedBox({
            builder: 'f:1:SizedBox.square',
            ...data
        })
    }
}
export class SizedOverflowBox extends ZacBuilder<native.SizedOverflowBox> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        size: ZacBuilder<native.Size>,
        alignment?: ZacBuilder<native.AlignmentGeometry>,
        child?: ZacBuilder<native.Widget>
    }) {
        return new SizedOverflowBox({
            builder: 'f:1:SizedOverflowBox',
            ...data
        })
    }
}
export class SliverChildDelegate extends ZacBuilder<native.SliverChildDelegate> {
    static list(data: {
        children: ZacListBuilder<native.Widget>,
        addAutomaticKeepAlives?: ZacBuilder<boolean>,
        addRepaintBoundaries?: ZacBuilder<boolean>,
        addSemanticIndexes?: ZacBuilder<boolean>,
        semanticIndexOffset?: ZacBuilder<number>
    }) {
        return new SliverChildDelegate({
            builder: 'f:1:SliverChildListDelegate',
            ...data
        })
    }
    static listFixed(data: {
        children: ZacListBuilder<native.Widget>,
        addAutomaticKeepAlives?: ZacBuilder<boolean>,
        addRepaintBoundaries?: ZacBuilder<boolean>,
        addSemanticIndexes?: ZacBuilder<boolean>,
        semanticIndexOffset?: ZacBuilder<number>
    }) {
        return new SliverChildDelegate({
            builder: 'f:1:SliverChildListDelegate.fixed',
            ...data
        })
    }
}
export class SliverGrid extends ZacBuilder<native.SliverGrid> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        delegate: SliverChildDelegate,
        gridDelegate: SliverGridDelegate
    }) {
        return new SliverGrid({
            builder: 'f:1:SliverGrid',
            ...data
        })
    }
}
export class SliverGridDelegate extends ZacBuilder<native.SliverGridDelegate> {
    static withFixedCrossAxisCount(data: {
        crossAxisCount: number,
        mainAxisSpacing?: ZacBuilder<number>,
        crossAxisSpacing?: ZacBuilder<number>,
        childAspectRatio?: ZacBuilder<number>,
        mainAxisExtent?: ZacBuilder<number>
    }) {
        return new SliverGridDelegate({
            builder: 'f:1:SliverGridDelegateWithFixedCrossAxisCount',
            ...data
        })
    }
    static withMaxCrossAxisExtent(data: {
        maxCrossAxisExtent: ZacBuilder<number>,
        mainAxisSpacing?: ZacBuilder<number>,
        crossAxisSpacing?: ZacBuilder<number>,
        childAspectRatio?: ZacBuilder<number>,
        mainAxisExtent?: ZacBuilder<number>
    }) {
        return new SliverGridDelegate({
            builder: 'f:1:SliverGridDelegateWithMaxCrossAxisExtent',
            ...data
        })
    }
}
export class SliverList extends ZacBuilder<native.SliverList> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        delegate: SliverChildDelegate
    }) {
        return new SliverList({
            builder: 'f:1:SliverList',
            ...data
        })
    }
}
export class SliverPadding extends ZacBuilder<native.SliverPadding> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        sliver?: ZacBuilder<native.Widget>,
        padding: ZacBuilder<native.EdgeInsetsGeometry>
    }) {
        return new SliverPadding({
            builder: 'f:1:SliverPadding',
            ...data
        })
    }
}
export class SliverToBoxAdapter extends ZacBuilder<native.SliverToBoxAdapter> {
    static new(data?: {
        key?: ZacBuilder<native.Key>,
        child?: ZacBuilder<native.Widget>
    }) {
        return new SliverToBoxAdapter({
            builder: 'f:1:SliverToBoxAdapter',
            ...data
        })
    }
}
export class SmartDashesType extends ZacBuilder<native.SmartDashesType> {
    static disabled() {
        return new SmartDashesType({
            builder: 'f:1:SmartDashesType.disabled'

        })
    }
    static enabled() {
        return new SmartDashesType({
            builder: 'f:1:SmartDashesType.enabled'

        })
    }
}
export class SmartQuotesType extends ZacBuilder<native.SmartQuotesType> {
    static disabled() {
        return new SmartQuotesType({
            builder: 'f:1:SmartQuotesType.disabled'

        })
    }
    static enabled() {
        return new SmartQuotesType({
            builder: 'f:1:SmartQuotesType.enabled'

        })
    }
}
export class SnackBar extends ZacBuilder<native.SnackBar> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        content: ZacBuilder<native.Widget>,
        backgroundColor?: ZacBuilder<native.Color>,
        elevation?: ZacBuilder<number>,
        margin?: ZacBuilder<native.EdgeInsetsGeometry>,
        padding?: ZacBuilder<native.EdgeInsetsGeometry>,
        width?: ZacBuilder<number>,
        shape?: ZacBuilder<native.ShapeBorder>,
        behavior?: SnackBarBehavior,
        action?: SnackBarAction,
        onVisible?: ZacBuilder<Array<ZacAction>>
    }) {
        return new SnackBar({
            builder: 'f:1:SnackBar',
            ...data
        })
    }
}
export class SnackBarAction extends ZacBuilder<native.SnackBarAction> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        textColor?: ZacBuilder<native.Color>,
        disabledTextColor?: ZacBuilder<native.Color>,
        label: string,
        onPressed: ZacBuilder<Array<ZacAction>>
    }) {
        return new SnackBarAction({
            builder: 'f:1:SnackBarAction',
            ...data
        })
    }
}
export class SnackBarBehavior extends ZacBuilder<native.SnackBarBehavior> {
    static fixed() {
        return new SnackBarBehavior({
            builder: 'f:1:SnackBarBehavior.fixed'

        })
    }
    static floating() {
        return new SnackBarBehavior({
            builder: 'f:1:SnackBarBehavior.floating'

        })
    }
}
export class Spacer extends ZacBuilder<native.Spacer> {
    static new(data?: {
        key?: ZacBuilder<native.Key>,
        flex?: ZacBuilder<number>
    }) {
        return new Spacer({
            builder: 'f:1:Spacer',
            ...data
        })
    }
}
export class Stack extends ZacBuilder<native.Stack> {
    static new(data?: {
        key?: ZacBuilder<native.Key>,
        alignment?: ZacBuilder<native.AlignmentGeometry>,
        textDirection?: ZacBuilder<native.TextDirection>,
        fit?: ZacBuilder<native.StackFit>,
        clipBehavior?: ZacBuilder<native.Clip>,
        children?: ZacListBuilder<native.Widget>
    }) {
        return new Stack({
            builder: 'f:1:Stack',
            ...data
        })
    }
}
export class StackFit extends ZacBuilder<native.StackFit> {
    static expand() {
        return new StackFit({
            builder: 'f:1:StackFit.expand'

        })
    }
    static loose() {
        return new StackFit({
            builder: 'f:1:StackFit.loose'

        })
    }
    static passthrough() {
        return new StackFit({
            builder: 'f:1:StackFit.passthrough'

        })
    }
}
export class StrutStyle extends ZacBuilder<native.StrutStyle> {
    static new(data?: {
        fontFamily?: ZacBuilder<string>,
        fontFamilyFallback?: Array<string>,
        fontSize?: ZacBuilder<number>,
        height?: ZacBuilder<number>,
        leadingDistribution?: ZacBuilder<native.TextLeadingDistribution>,
        leading?: ZacBuilder<number>,
        fontWeight?: ZacBuilder<native.FontWeight>,
        fontStyle?: ZacBuilder<native.FontStyle>,
        forceStrutHeight?: ZacBuilder<boolean>,
        debugLabel?: ZacBuilder<string>,
        package?: ZacBuilder<string>
    }) {
        return new StrutStyle({
            builder: 'f:1:StrutStyle',
            ...data
        })
    }
    static fromTextStyle(data: {
        textStyle: TextStyle,
        fontFamily?: ZacBuilder<string>,
        fontFamilyFallback?: Array<string>,
        fontSize?: ZacBuilder<number>,
        height?: ZacBuilder<number>,
        leadingDistribution?: ZacBuilder<native.TextLeadingDistribution>,
        leading?: ZacBuilder<number>,
        fontWeight?: ZacBuilder<native.FontWeight>,
        fontStyle?: ZacBuilder<native.FontStyle>,
        forceStrutHeight?: ZacBuilder<boolean>,
        debugLabel?: ZacBuilder<string>,
        package?: ZacBuilder<string>
    }) {
        return new StrutStyle({
            builder: 'f:1:StrutStyle.fromTextStyle',
            ...data
        })
    }
}
export class SystemUiOverlayStyle extends ZacBuilder<native.SystemUiOverlayStyle> {
    static new(data?: {
        systemNavigationBarColor?: ZacBuilder<native.Color>,
        systemNavigationBarDividerColor?: ZacBuilder<native.Color>,
        systemNavigationBarIconBrightness?: ZacBuilder<native.Brightness>,
        systemNavigationBarContrastEnforced?: ZacBuilder<boolean>,
        statusBarColor?: ZacBuilder<native.Color>,
        statusBarBrightness?: ZacBuilder<native.Brightness>,
        statusBarIconBrightness?: ZacBuilder<native.Brightness>,
        systemStatusBarContrastEnforced?: ZacBuilder<boolean>
    }) {
        return new SystemUiOverlayStyle({
            builder: 'f:1:SystemUiOverlayStyle',
            ...data
        })
    }
}
export class Text extends ZacBuilder<native.Text> {
    static new(data: {
        data: ZacBuilder<string>,
        key?: ZacBuilder<native.Key>,
        style?: ZacBuilder<native.TextStyle>,
        strutStyle?: ZacBuilder<native.StrutStyle>,
        textAlign?: ZacBuilder<native.TextAlign>,
        textDirection?: ZacBuilder<native.TextDirection>,
        locale?: ZacBuilder<native.Locale>,
        softWrap?: ZacBuilder<boolean>,
        overflow?: ZacBuilder<native.TextOverflow>,
        textScaleFactor?: ZacBuilder<number>,
        maxLines?: ZacBuilder<number>,
        semanticsLabel?: ZacBuilder<string>,
        textWidthBasis?: ZacBuilder<native.TextWidthBasis>,
        textHeightBehavior?: ZacBuilder<native.TextHeightBehavior>
    }) {
        return new Text({
            builder: 'f:1:Text',
            ...data
        })
    }
}
export class TextAlign extends ZacBuilder<native.TextAlign> {
    static center() {
        return new TextAlign({
            builder: 'f:1:TextAlign.center'

        })
    }
    static end() {
        return new TextAlign({
            builder: 'f:1:TextAlign.end'

        })
    }
    static justify() {
        return new TextAlign({
            builder: 'f:1:TextAlign.justify'

        })
    }
    static left() {
        return new TextAlign({
            builder: 'f:1:TextAlign.left'

        })
    }
    static right() {
        return new TextAlign({
            builder: 'f:1:TextAlign.right'

        })
    }
    static start() {
        return new TextAlign({
            builder: 'f:1:TextAlign.start'

        })
    }
}
export class TextAlignVertical extends ZacBuilder<native.TextAlignVertical> {
    static new(data: { y: ZacBuilder<number> }) {
        return new TextAlignVertical({
            builder: 'f:1:TextAlignVertical',
            ...data
        })
    }
    static bottom() {
        return new TextAlignVertical({
            builder: 'f:1:TextAlignVertical.bottom'

        })
    }
    static center() {
        return new TextAlignVertical({
            builder: 'f:1:TextAlignVertical.center'

        })
    }
    static top() {
        return new TextAlignVertical({
            builder: 'f:1:TextAlignVertical.top'

        })
    }
}
export class TextBaseline extends ZacBuilder<native.TextBaseline> {
    static alphabetic() {
        return new TextBaseline({
            builder: 'f:1:TextBaseline.alphabetic'

        })
    }
    static ideographic() {
        return new TextBaseline({
            builder: 'f:1:TextBaseline.ideographic'

        })
    }
}
export class TextButton extends ZacBuilder<native.TextButton> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        child: ZacBuilder<native.Widget>,
        onPressed?: ZacBuilder<Array<ZacAction>>,
        onLongPress?: ZacBuilder<Array<ZacAction>>,
        autofocus?: ZacBuilder<boolean>,
        clipBehavior?: ZacBuilder<native.Clip>
    }) {
        return new TextButton({
            builder: 'f:1:TextButton',
            ...data
        })
    }
    static icon(data: {
        key?: ZacBuilder<native.Key>,
        icon: ZacBuilder<native.Widget>,
        label: ZacBuilder<native.Widget>,
        onPressed?: ZacBuilder<Array<ZacAction>>,
        onLongPress?: ZacBuilder<Array<ZacAction>>,
        autofocus?: ZacBuilder<boolean>,
        clipBehavior?: ZacBuilder<native.Clip>
    }) {
        return new TextButton({
            builder: 'f:1:TextButton.icon',
            ...data
        })
    }
}
export class TextCapitalization extends ZacBuilder<native.TextCapitalization> {
    static characters() {
        return new TextCapitalization({
            builder: 'f:1:TextCapitalization.characters'

        })
    }
    static none() {
        return new TextCapitalization({
            builder: 'f:1:TextCapitalization.none'

        })
    }
    static sentences() {
        return new TextCapitalization({
            builder: 'f:1:TextCapitalization.sentences'

        })
    }
    static words() {
        return new TextCapitalization({
            builder: 'f:1:TextCapitalization.words'

        })
    }
}
export class TextDecoration extends ZacBuilder<native.TextDecoration> {
    static lineThrough() {
        return new TextDecoration({
            builder: 'f:1:TextDecoration.lineThrough'

        })
    }
    static none() {
        return new TextDecoration({
            builder: 'f:1:TextDecoration.none'

        })
    }
    static overline() {
        return new TextDecoration({
            builder: 'f:1:TextDecoration.overline'

        })
    }
    static underline() {
        return new TextDecoration({
            builder: 'f:1:TextDecoration.underline'

        })
    }
}
export class TextDecorationStyle extends ZacBuilder<native.TextDecorationStyle> {
    static dashed() {
        return new TextDecorationStyle({
            builder: 'f:1:TextDecorationStyle.dashed'

        })
    }
    static dotted() {
        return new TextDecorationStyle({
            builder: 'f:1:TextDecorationStyle.dotted'

        })
    }
    static double() {
        return new TextDecorationStyle({
            builder: 'f:1:TextDecorationStyle.double'

        })
    }
    static solid() {
        return new TextDecorationStyle({
            builder: 'f:1:TextDecorationStyle.solid'

        })
    }
    static wavy() {
        return new TextDecorationStyle({
            builder: 'f:1:TextDecorationStyle.wavy'

        })
    }
}
export class TextDirection extends ZacBuilder<native.TextDirection> {
    static rtl() {
        return new TextDirection({
            builder: 'f:1:TextDirection.rtl'

        })
    }
    static ltr() {
        return new TextDirection({
            builder: 'f:1:TextDirection.ltr'

        })
    }
}
export class TextField extends ZacBuilder<native.TextField> {
    static new(data?: {
        key?: ZacBuilder<native.Key>,
        decoration?: ZacBuilder<native.InputDecoration>,
        keyboardType?: ZacBuilder<native.TextInputType>,
        textInputAction?: ZacBuilder<native.TextInputAction>,
        textCapitalization?: ZacBuilder<native.TextCapitalization>,
        style?: ZacBuilder<native.TextStyle>,
        strutStyle?: ZacBuilder<native.StrutStyle>,
        textAlign?: ZacBuilder<native.TextAlign>,
        textAlignVertical?: ZacBuilder<native.TextAlignVertical>,
        textDirection?: ZacBuilder<native.TextDirection>,
        readOnly?: ZacBuilder<boolean>,
        showCursor?: ZacBuilder<boolean>,
        autofocus?: ZacBuilder<boolean>,
        obscuringCharacter?: ZacBuilder<string>,
        obscureText?: ZacBuilder<boolean>,
        autocorrect?: ZacBuilder<boolean>,
        smartDashesType?: ZacBuilder<native.SmartDashesType>,
        smartQuotesType?: ZacBuilder<native.SmartQuotesType>,
        enableSuggestions?: ZacBuilder<boolean>,
        maxLines?: ZacBuilder<number>,
        minLines?: ZacBuilder<number>,
        expands?: ZacBuilder<boolean>,
        maxLength?: ZacBuilder<number>,
        onChanged?: ZacBuilder<Array<ZacAction>>,
        onEditingComplete?: ZacBuilder<Array<ZacAction>>,
        onSubmitted?: ZacBuilder<Array<ZacAction>>,
        enabled?: ZacBuilder<boolean>,
        cursorWidth?: ZacBuilder<number>,
        cursorHeight?: ZacBuilder<number>,
        cursorRadius?: ZacBuilder<native.Radius>,
        cursorColor?: ZacBuilder<native.Color>,
        selectionHeightStyle?: ZacBuilder<native.BoxHeightStyle>,
        selectionWidthStyle?: ZacBuilder<native.BoxWidthStyle>,
        keyboardAppearance?: ZacBuilder<native.Brightness>,
        scrollPadding?: ZacBuilder<native.EdgeInsets>,
        enableInteractiveSelection?: ZacBuilder<boolean>,
        onTap?: ZacBuilder<Array<ZacAction>>,
        scrollController?: ZacBuilder<native.ScrollController>,
        clipBehavior?: ZacBuilder<native.Clip>,
        restorationId?: ZacBuilder<string>,
        enableIMEPersonalizedLearning?: ZacBuilder<boolean>
    }) {
        return new TextField({
            builder: 'f:1:TextField',
            ...data
        })
    }
}
export class TextHeightBehavior extends ZacBuilder<native.TextHeightBehavior> {
    static new(data?: {
        applyHeightToFirstAscent?: ZacBuilder<boolean>,
        applyHeightToLastDescent?: ZacBuilder<boolean>,
        leadingDistribution?: ZacBuilder<native.TextLeadingDistribution>
    }) {
        return new TextHeightBehavior({
            builder: 'f:1:TextHeightBehavior',
            ...data
        })
    }
}
export class TextInputAction extends ZacBuilder<native.TextInputAction> {
    static continueAction() {
        return new TextInputAction({
            builder: 'f:1:TextInputAction.continueAction'

        })
    }
    static done() {
        return new TextInputAction({
            builder: 'f:1:TextInputAction.done'

        })
    }
    static emergencyCall() {
        return new TextInputAction({
            builder: 'f:1:TextInputAction.emergencyCall'

        })
    }
    static go() {
        return new TextInputAction({
            builder: 'f:1:TextInputAction.go'

        })
    }
    static join() {
        return new TextInputAction({
            builder: 'f:1:TextInputAction.join'

        })
    }
    static newline() {
        return new TextInputAction({
            builder: 'f:1:TextInputAction.newline'

        })
    }
    static next() {
        return new TextInputAction({
            builder: 'f:1:TextInputAction.next'

        })
    }
    static none() {
        return new TextInputAction({
            builder: 'f:1:TextInputAction.none'

        })
    }
    static previous() {
        return new TextInputAction({
            builder: 'f:1:TextInputAction.previous'

        })
    }
    static route() {
        return new TextInputAction({
            builder: 'f:1:TextInputAction.route'

        })
    }
    static search() {
        return new TextInputAction({
            builder: 'f:1:TextInputAction.search'

        })
    }
    static send() {
        return new TextInputAction({
            builder: 'f:1:TextInputAction.send'

        })
    }
    static unspecified() {
        return new TextInputAction({
            builder: 'f:1:TextInputAction.unspecified'

        })
    }
}
export class TextInputType extends ZacBuilder<native.TextInputType> {
    static datetime() {
        return new TextInputType({
            builder: 'f:1:TextInputType.datetime'

        })
    }
    static emailAddress() {
        return new TextInputType({
            builder: 'f:1:TextInputType.emailAddress'

        })
    }
    static multiline() {
        return new TextInputType({
            builder: 'f:1:TextInputType.multiline'

        })
    }
    static name_() {
        return new TextInputType({
            builder: 'f:1:TextInputType.name'

        })
    }
    static none() {
        return new TextInputType({
            builder: 'f:1:TextInputType.none'

        })
    }
    static number() {
        return new TextInputType({
            builder: 'f:1:TextInputType.number'

        })
    }
    static phone() {
        return new TextInputType({
            builder: 'f:1:TextInputType.phone'

        })
    }
    static streetAddress() {
        return new TextInputType({
            builder: 'f:1:TextInputType.streetAddress'

        })
    }
    static text() {
        return new TextInputType({
            builder: 'f:1:TextInputType.text'

        })
    }
    static url() {
        return new TextInputType({
            builder: 'f:1:TextInputType.url'

        })
    }
    static visiblePassword() {
        return new TextInputType({
            builder: 'f:1:TextInputType.visiblePassword'

        })
    }
}
export class TextLeadingDistribution extends ZacBuilder<native.TextLeadingDistribution> {
    static even() {
        return new TextLeadingDistribution({
            builder: 'f:1:TextLeadingDistribution.even'

        })
    }
    static proportional() {
        return new TextLeadingDistribution({
            builder: 'f:1:TextLeadingDistribution.proportional'

        })
    }
}
export class TextOverflow extends ZacBuilder<native.TextOverflow> {
    static clip() {
        return new TextOverflow({
            builder: 'f:1:TextOverflow.clip'

        })
    }
    static ellipsis() {
        return new TextOverflow({
            builder: 'f:1:TextOverflow.ellipsis'

        })
    }
    static fade() {
        return new TextOverflow({
            builder: 'f:1:TextOverflow.fade'

        })
    }
    static visible() {
        return new TextOverflow({
            builder: 'f:1:TextOverflow.visible'

        })
    }
}
export class TextStyle extends ZacBuilder<native.TextStyle> {
    static new(data?: {
        inherit?: ZacBuilder<boolean>,
        color?: ZacBuilder<native.Color>,
        backgroundColor?: ZacBuilder<native.Color>,
        fontSize?: ZacBuilder<number>,
        fontWeight?: ZacBuilder<native.FontWeight>,
        fontStyle?: ZacBuilder<native.FontStyle>,
        letterSpacing?: ZacBuilder<number>,
        wordSpacing?: ZacBuilder<number>,
        textBaseline?: ZacBuilder<native.TextBaseline>,
        height?: ZacBuilder<number>,
        leadingDistribution?: ZacBuilder<native.TextLeadingDistribution>,
        locale?: ZacBuilder<native.Locale>,
        shadows?: ZacListBuilder<native.Shadow>,
        fontFeatures?: ZacListBuilder<native.FontFeature>,
        decoration?: ZacBuilder<native.TextDecoration>,
        decorationColor?: ZacBuilder<native.Color>,
        decorationStyle?: ZacBuilder<native.TextDecorationStyle>,
        decorationThickness?: ZacBuilder<number>,
        debugLabel?: ZacBuilder<string>,
        fontFamily?: ZacBuilder<string>,
        fontFamilyFallback?: ZacListBuilder<string>,
        package?: ZacBuilder<string>,
        overflow?: ZacBuilder<native.TextOverflow>
    }) {
        return new TextStyle({
            builder: 'f:1:TextStyle',
            ...data
        })
    }
}
export class TextWidthBasis extends ZacBuilder<native.TextWidthBasis> {
    static longestLine() {
        return new TextWidthBasis({
            builder: 'f:1:TextWidthBasis.longestLine'

        })
    }
    static parent() {
        return new TextWidthBasis({
            builder: 'f:1:TextWidthBasis.parent'

        })
    }
}
export class UnconstrainedBox extends ZacBuilder<native.UnconstrainedBox> {
    static new(data?: {
        key?: ZacBuilder<native.Key>,
        child?: ZacBuilder<native.Widget>,
        textDirection?: ZacBuilder<native.TextDirection>,
        alignment?: ZacBuilder<native.AlignmentGeometry>,
        constrainedAxis?: ZacBuilder<native.Axis>,
        clipBehavior?: ZacBuilder<native.Clip>
    }) {
        return new UnconstrainedBox({
            builder: 'f:1:UnconstrainedBox',
            ...data
        })
    }
}
export class UnderlineInputBorder extends ZacBuilder<native.UnderlineInputBorder> {
    static new(data?: {
        borderSide?: ZacBuilder<native.BorderSide>,
        borderRadius?: ZacBuilder<native.BorderRadius>
    }) {
        return new UnderlineInputBorder({
            builder: 'f:1:UnderlineInputBorder',
            ...data
        })
    }
}
export class ValueKey extends ZacBuilder<native.ValueKey> {
    static new(data: { value: string }) {
        return new ValueKey({
            builder: 'f:1:ValueKey',
            ...data
        })
    }
}
export class VerticalDirection extends ZacBuilder<native.VerticalDirection> {
    static up() {
        return new VerticalDirection({
            builder: 'f:1:VerticalDirection.up'

        })
    }
    static down() {
        return new VerticalDirection({
            builder: 'f:1:VerticalDirection.down'

        })
    }
}
export class Wrap extends ZacBuilder<native.Wrap> {
    static new(data?: {
        key?: ZacBuilder<native.Key>,
        direction?: ZacBuilder<native.Axis>,
        alignment?: ZacBuilder<native.WrapAlignment>,
        spacing?: ZacBuilder<number>,
        runSpacing?: ZacBuilder<number>,
        runAlignment?: ZacBuilder<native.WrapAlignment>,
        crossAxisAlignment?: ZacBuilder<native.WrapCrossAlignment>,
        textDirection?: ZacBuilder<native.TextDirection>,
        verticalDirection?: ZacBuilder<native.VerticalDirection>,
        clipBehavior?: ZacBuilder<native.Clip>,
        children?: ZacListBuilder<native.Widget>
    }) {
        return new Wrap({
            builder: 'f:1:Wrap',
            ...data
        })
    }
}
export class WrapAlignment extends ZacBuilder<native.WrapAlignment> {
    static start() {
        return new WrapAlignment({
            builder: 'f:1:WrapAlignment.start'

        })
    }
    static end() {
        return new WrapAlignment({
            builder: 'f:1:WrapAlignment.end'

        })
    }
    static center() {
        return new WrapAlignment({
            builder: 'f:1:WrapAlignment.center'

        })
    }
    static spaceBetween() {
        return new WrapAlignment({
            builder: 'f:1:WrapAlignment.spaceBetween'

        })
    }
    static spaceAround() {
        return new WrapAlignment({
            builder: 'f:1:WrapAlignment.spaceAround'

        })
    }
    static spaceEvenly() {
        return new WrapAlignment({
            builder: 'f:1:WrapAlignment.spaceEvenly'

        })
    }
}
export class WrapCrossAlignment extends ZacBuilder<native.WrapCrossAlignment> {
    static center() {
        return new WrapCrossAlignment({
            builder: 'f:1:WrapCrossAlignment.center'

        })
    }
    static end() {
        return new WrapCrossAlignment({
            builder: 'f:1:WrapCrossAlignment.end'

        })
    }
    static start() {
        return new WrapCrossAlignment({
            builder: 'f:1:WrapCrossAlignment.start'

        })
    }
}
export class SharedValueProviderBuilder extends ZacBuilder<native.Widget> {
    static provideInt(data: {
        key?: ZacBuilder<native.Key>,
        value: number,
        family: string,
        child: ZacBuilder<native.Widget>,
        autoCreate?: boolean
    }) {
        return new SharedValueProviderBuilder({
            builder: 'z:1:int.provide',
            ...data
        })
    }
    static provideDouble(data: {
        key?: ZacBuilder<native.Key>,
        value: number,
        family: string,
        child: ZacBuilder<native.Widget>,
        autoCreate?: boolean
    }) {
        return new SharedValueProviderBuilder({
            builder: 'z:1:double.provide',
            ...data
        })
    }
    static provideString(data: {
        key?: ZacBuilder<native.Key>,
        value: string,
        family: string,
        child: ZacBuilder<native.Widget>,
        autoCreate?: boolean
    }) {
        return new SharedValueProviderBuilder({
            builder: 'z:1:String.provide',
            ...data
        })
    }
    static provideBool(data: {
        key?: ZacBuilder<native.Key>,
        value: boolean,
        family: string,
        child: ZacBuilder<native.Widget>,
        autoCreate?: boolean
    }) {
        return new SharedValueProviderBuilder({
            builder: 'z:1:bool.provide',
            ...data
        })
    }
    static provideObject(data: {
        key?: ZacBuilder<native.Key>,
        value: any,
        family: string,
        child: ZacBuilder<native.Widget>,
        transformer?: ZacBuilder<Array<ZacTransformer>>,
        autoCreate?: boolean
    }) {
        return new SharedValueProviderBuilder({
            builder: 'z:1:Object.provide',
            ...data
        })
    }
    static provideNull(data: {
        key?: ZacBuilder<native.Key>,
        family: string,
        child: ZacBuilder<native.Widget>,
        autoCreate?: boolean
    }) {
        return new SharedValueProviderBuilder({
            builder: 'z:1:null.provide',
            ...data
        })
    }
    static provideWidget(data: {
        key?: ZacBuilder<native.Key>,
        value: ZacBuilder<native.Widget>,
        family: string,
        child: ZacBuilder<native.Widget>,
        autoCreate?: boolean
    }) {
        return new SharedValueProviderBuilder({
            builder: 'z:1:Widget.provide',
            ...data
        })
    }
    static provideWidgets(data: {
        key?: ZacBuilder<native.Key>,
        value: ZacListBuilder<native.Widget>,
        family: string,
        child: ZacBuilder<native.Widget>,
        autoCreate?: boolean
    }) {
        return new SharedValueProviderBuilder({
            builder: 'z:1:List<Widget>.provide',
            ...data
        })
    }
    static provideWidgetsMap(data: {
        key?: ZacBuilder<native.Key>,
        value: ZacMapBuilder<native.Widget>,
        family: string,
        child: ZacBuilder<native.Widget>,
        autoCreate?: boolean
    }) {
        return new SharedValueProviderBuilder({
            builder: 'z:1:Map<String, Widget>.provide',
            ...data
        })
    }
    static provideAnyBuilder(data: {
        key?: ZacBuilder<native.Key>,
        value: ZacBuilder<any>,
        family: string,
        child: ZacBuilder<native.Widget>,
        autoCreate?: boolean
    }) {
        return new SharedValueProviderBuilder({
            builder: 'z:1:ZacBuilder<Object>.provide',
            ...data
        })
    }
}
export class ZacActions extends ZacBuilder<Array<ZacAction>> {
    static new(data: { actions: Array<ZacAction> }) {
        return new ZacActions({
            builder: 'z:1:Actions',
            ...data
        })
    }
}
export class ZacCompleterVoidProvider extends ZacBuilder<native.Widget> {
    static new(data: {
        family: any,
        child: ZacBuilder<native.Widget>
    }) {
        return new ZacCompleterVoidProvider({
            builder: 'z:1:Completer<void>.provide',
            ...data
        })
    }
}
export class ZacExecuteActionsBuilder extends ZacBuilder<native.Widget> {
    static once(data: {
        actions: ZacBuilder<Array<ZacAction>>,
        child?: ZacBuilder<native.Widget>
    }) {
        return new ZacExecuteActionsBuilder({
            builder: 'z:1:ExecuteActions.once',
            ...data
        })
    }
    static listen(data: {
        actions: ZacBuilder<Array<ZacAction>>,
        family: any,
        child?: ZacBuilder<native.Widget>
    }) {
        return new ZacExecuteActionsBuilder({
            builder: 'z:1:ExecuteActions.listen',
            ...data
        })
    }
}
export class ZacStateMachineBuildStateBuilder extends ZacBuilder<native.Widget> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        family: ZacBuilder<string>,
        states: Array<string>,
        unmappedStateWidget?: ZacBuilder<native.Widget>
    }) {
        return new ZacStateMachineBuildStateBuilder({
            builder: 'z:1:StateMachine:BuildState',
            ...data
        })
    }
}
export class ZacStateMachineProviderBuilder extends ZacBuilder<native.Widget> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        family: ZacBuilder<string>,
        initialState: ZacBuilder<string>,
        states: Record<string, ZacStateConfig>,
        child: ZacBuilder<native.Widget>,
        initialContext?: ZacBuilder<any>
    }) {
        return new ZacStateMachineProviderBuilder({
            builder: 'z:1:StateMachine.provide',
            ...data
        })
    }
}
export class ZacTransformers extends ZacBuilder<Array<ZacTransformer>> {
    static new(data: { transformers: Array<ZacTransformer> }) {
        return new ZacTransformers({
            builder: 'z:1:Transformers',
            ...data
        })
    }
}
export class ZacUpdateContextBuilder extends ZacBuilder<native.Widget> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        child: ZacBuilder<native.Widget>
    }) {
        return new ZacUpdateContextBuilder({
            builder: 'z:1:UpdateContext',
            ...data
        })
    }
}
export class ZacWidgetBuilder extends ZacBuilder<native.Widget> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        data: any
    }) {
        return new ZacWidgetBuilder({
            builder: 'z:1:Widget',
            ...data
        })
    }
    static isolate(data: {
        key?: ZacBuilder<native.Key>,
        data: any,
        errorChild?: ZacBuilder<native.Widget>
    }) {
        return new ZacWidgetBuilder({
            builder: 'z:1:Widget.isolate',
            ...data
        })
    }
}
export class BoolTransformer extends ZacTransformer {
    static negate() {
        return new BoolTransformer({
            builder: 'z:1:Transformer:Bool.negate'

        })
    }
}
export class ConvertTransformer extends ZacTransformer {
    static new() {
        return new ConvertTransformer({
            builder: 'z:1:Transformer:Converter'

        })
    }
}
export class IntTransformer extends ZacTransformer {
    static parse() {
        return new IntTransformer({
            builder: 'z:1:Transformer:int.parse'

        })
    }
    static tryParse() {
        return new IntTransformer({
            builder: 'z:1:Transformer:int.tryParse'

        })
    }
}
export class IterableTransformer extends ZacTransformer {
    static map(data: { transformer: ZacBuilder<Array<ZacTransformer>> }) {
        return new IterableTransformer({
            builder: 'z:1:Transformer:Iterable.map',
            ...data
        })
    }
    static single() {
        return new IterableTransformer({
            builder: 'z:1:Transformer:Iterable.single'

        })
    }
    static first() {
        return new IterableTransformer({
            builder: 'z:1:Transformer:Iterable.first'

        })
    }
    static last() {
        return new IterableTransformer({
            builder: 'z:1:Transformer:Iterable.last'

        })
    }
    static length_() {
        return new IterableTransformer({
            builder: 'z:1:Transformer:Iterable.length'

        })
    }
    static isEmpty() {
        return new IterableTransformer({
            builder: 'z:1:Transformer:Iterable.isEmpty'

        })
    }
    static isNotEmpty() {
        return new IterableTransformer({
            builder: 'z:1:Transformer:Iterable.isNotEmpty'

        })
    }
    static toList() {
        return new IterableTransformer({
            builder: 'z:1:Transformer:Iterable.toList'

        })
    }
    static toSet() {
        return new IterableTransformer({
            builder: 'z:1:Transformer:Iterable.toSet'

        })
    }
    static toString() {
        return new IterableTransformer({
            builder: 'z:1:Transformer:Iterable.toString'

        })
    }
    static join(data?: { separator?: string }) {
        return new IterableTransformer({
            builder: 'z:1:Transformer:Iterable.join',
            ...data
        })
    }
    static contains(data: { element: ZacBuilder<any> }) {
        return new IterableTransformer({
            builder: 'z:1:Transformer:Iterable.contains',
            ...data
        })
    }
    static elementAt(data: { index: number }) {
        return new IterableTransformer({
            builder: 'z:1:Transformer:Iterable.elementAt',
            ...data
        })
    }
    static skip(data: { count: number }) {
        return new IterableTransformer({
            builder: 'z:1:Transformer:Iterable.skip',
            ...data
        })
    }
    static take(data: { count: number }) {
        return new IterableTransformer({
            builder: 'z:1:Transformer:Iterable.take',
            ...data
        })
    }
}
export class JsonTransformer extends ZacTransformer {
    static encode() {
        return new JsonTransformer({
            builder: 'z:1:Transformer:Json.encode'

        })
    }
    static decode() {
        return new JsonTransformer({
            builder: 'z:1:Transformer:Json.decode'

        })
    }
}
export class ListTransformer extends ZacTransformer {
    static reversed() {
        return new ListTransformer({
            builder: 'z:1:Transformer:List.reversed'

        })
    }
    static add(data: { value: ZacBuilder<any> }) {
        return new ListTransformer({
            builder: 'z:1:Transformer:List.add',
            ...data
        })
    }
}
export class MapTransformer extends ZacTransformer {
    static values() {
        return new MapTransformer({
            builder: 'z:1:Transformer:Map.values'

        })
    }
    static keys() {
        return new MapTransformer({
            builder: 'z:1:Transformer:Map.keys'

        })
    }
    static entries() {
        return new MapTransformer({
            builder: 'z:1:Transformer:Map.entries'

        })
    }
    static length_() {
        return new MapTransformer({
            builder: 'z:1:Transformer:Map.length'

        })
    }
    static isEmpty() {
        return new MapTransformer({
            builder: 'z:1:Transformer:Map.isEmpty'

        })
    }
    static isNotEmpty() {
        return new MapTransformer({
            builder: 'z:1:Transformer:Map.isNotEmpty'

        })
    }
    static containsKey(data: { key: ZacBuilder<any> }) {
        return new MapTransformer({
            builder: 'z:1:Transformer:Map.containsKey',
            ...data
        })
    }
    static containsValue(data: { value: ZacBuilder<any> }) {
        return new MapTransformer({
            builder: 'z:1:Transformer:Map.containsValue',
            ...data
        })
    }
    static mapper(data?: {
        keyTransformer?: ZacBuilder<Array<ZacTransformer>>,
        valueTransformer?: ZacBuilder<Array<ZacTransformer>>
    }) {
        return new MapTransformer({
            builder: 'z:1:Transformer:Map.map',
            ...data
        })
    }
    static fromObjectObject() {
        return new MapTransformer({
            builder: 'z:1:Transformer:Map<Object, Object>.from'

        })
    }
    static fromStringObject() {
        return new MapTransformer({
            builder: 'z:1:Transformer:Map<String, Object>.from'

        })
    }
    static fromStringNullObject() {
        return new MapTransformer({
            builder: 'z:1:Transformer:Map<String, Object?>.from'

        })
    }
    static key(data: { key: ZacBuilder<string> }) {
        return new MapTransformer({
            builder: 'z:1:Transformer:Map[key]',
            ...data
        })
    }
    static setValueForKey(data: {
        value: ZacBuilder<any>,
        key: ZacBuilder<string>
    }) {
        return new MapTransformer({
            builder: 'z:1:Transformer:Map.setValueForKey',
            ...data
        })
    }
}
export class NumTransformer extends ZacTransformer {
    static toDouble() {
        return new NumTransformer({
            builder: 'z:1:Transformer:num.toDouble'

        })
    }
    static toInt() {
        return new NumTransformer({
            builder: 'z:1:Transformer:num.toInt'

        })
    }
    static abs() {
        return new NumTransformer({
            builder: 'z:1:Transformer:num.abs'

        })
    }
    static ceil() {
        return new NumTransformer({
            builder: 'z:1:Transformer:num.ceil'

        })
    }
    static ceilToDouble() {
        return new NumTransformer({
            builder: 'z:1:Transformer:num.ceilToDouble'

        })
    }
    static floor() {
        return new NumTransformer({
            builder: 'z:1:Transformer:num.floor'

        })
    }
    static floorToDouble() {
        return new NumTransformer({
            builder: 'z:1:Transformer:num.floorToDouble'

        })
    }
    static round() {
        return new NumTransformer({
            builder: 'z:1:Transformer:num.round'

        })
    }
    static roundToDouble() {
        return new NumTransformer({
            builder: 'z:1:Transformer:num.roundToDouble'

        })
    }
    static isFinite() {
        return new NumTransformer({
            builder: 'z:1:Transformer:num.isFinite'

        })
    }
    static isInfinite() {
        return new NumTransformer({
            builder: 'z:1:Transformer:num.isInfinite'

        })
    }
    static isNan() {
        return new NumTransformer({
            builder: 'z:1:Transformer:num.isNan'

        })
    }
    static isNegative() {
        return new NumTransformer({
            builder: 'z:1:Transformer:num.isNegative'

        })
    }
}
export class ObjectTransformer extends ZacTransformer {
    static isList() {
        return new ObjectTransformer({
            builder: 'z:1:Transformer:Object.isList'

        })
    }
    static isMap() {
        return new ObjectTransformer({
            builder: 'z:1:Transformer:Object.isMap'

        })
    }
    static isBool() {
        return new ObjectTransformer({
            builder: 'z:1:Transformer:Object.isBool'

        })
    }
    static isString() {
        return new ObjectTransformer({
            builder: 'z:1:Transformer:Object.isString'

        })
    }
    static isDouble() {
        return new ObjectTransformer({
            builder: 'z:1:Transformer:Object.isDouble'

        })
    }
    static isInt() {
        return new ObjectTransformer({
            builder: 'z:1:Transformer:Object.isInt'

        })
    }
    static isNull() {
        return new ObjectTransformer({
            builder: 'z:1:Transformer:Object.isNull'

        })
    }
    static equals(data: { other: any }) {
        return new ObjectTransformer({
            builder: 'z:1:Transformer:Object.equals',
            ...data
        })
    }
    static toString() {
        return new ObjectTransformer({
            builder: 'z:1:Transformer:Object.toString'

        })
    }
    static runtimeType() {
        return new ObjectTransformer({
            builder: 'z:1:Transformer:Object.runtimeType'

        })
    }
    static hashCode() {
        return new ObjectTransformer({
            builder: 'z:1:Transformer:Object.hashCode'

        })
    }
    static equalsSharedValue(data: { value: ZacBuilder<any> }) {
        return new ObjectTransformer({
            builder: 'z:1:Transformer:Object.equalsSharedValue',
            ...data
        })
    }
}
export class StringTransformer extends ZacTransformer {
    static length_() {
        return new StringTransformer({
            builder: 'z:1:Transformer:String.length'

        })
    }
    static split(data: { pattern: ZacBuilder<string> }) {
        return new StringTransformer({
            builder: 'z:1:Transformer:String.split',
            ...data
        })
    }
    static isEmpty() {
        return new StringTransformer({
            builder: 'z:1:Transformer:String.isEmpty'

        })
    }
    static isNotEmpty() {
        return new StringTransformer({
            builder: 'z:1:Transformer:String.isNotEmpty'

        })
    }
    static replaceAll(data: {
        from: ZacBuilder<string>,
        replace: ZacBuilder<string>
    }) {
        return new StringTransformer({
            builder: 'z:1:Transformer:String.replaceAll',
            ...data
        })
    }
}
export class ZacStateMachineTransformer extends ZacTransformer {
    static pickState() {
        return new ZacStateMachineTransformer({
            builder: 'z:1:StateMachine:Transformer.pickState'

        })
    }
    static pickContext() {
        return new ZacStateMachineTransformer({
            builder: 'z:1:StateMachine:Transformer.pickContext'

        })
    }
}
export class DialogActions extends ZacAction {
    static showDialog(data: {
        child: ZacBuilder<native.Widget>,
        barrierDismissible?: ZacBuilder<boolean>,
        barrierColor?: ZacBuilder<native.Color>,
        barrierLabel?: ZacBuilder<string>,
        useSafeArea?: ZacBuilder<boolean>,
        useRootNavigator?: ZacBuilder<boolean>,
        routeSettings?: ZacBuilder<native.RouteSettings>
    }) {
        return new DialogActions({
            builder: 'f:1:showDialog',
            ...data
        })
    }
}
export class NavigatorActions extends ZacAction {
    static push(data: {
        route: ZacBuilder<native.Route>,
        navigatorState?: ZacBuilder<native.NavigatorState>
    }) {
        return new NavigatorActions({
            builder: 'f:1:Navigator.push',
            ...data
        })
    }
    static pushNamed(data: {
        routeName: ZacBuilder<string>,
        arguments?: any,
        navigatorState?: ZacBuilder<native.NavigatorState>
    }) {
        return new NavigatorActions({
            builder: 'f:1:Navigator.pushNamed',
            ...data
        })
    }
    static pop(data?: {
        actions?: ZacBuilder<Array<ZacAction>>,
        navigatorState?: ZacBuilder<native.NavigatorState>
    }) {
        return new NavigatorActions({
            builder: 'f:1:Navigator.pop',
            ...data
        })
    }
    static maybePop(data?: {
        actions?: ZacBuilder<Array<ZacAction>>,
        navigatorState?: ZacBuilder<native.NavigatorState>
    }) {
        return new NavigatorActions({
            builder: 'f:1:Navigator.maybePop',
            ...data
        })
    }
    static pushReplacement(data: {
        route: ZacBuilder<native.Route>,
        result?: ZacBuilder<Array<ZacAction>>,
        navigatorState?: ZacBuilder<native.NavigatorState>
    }) {
        return new NavigatorActions({
            builder: 'f:1:Navigator.pushReplacement',
            ...data
        })
    }
    static pushReplacementNamed(data: {
        routeName: ZacBuilder<string>,
        arguments?: any,
        navigatorState?: ZacBuilder<native.NavigatorState>,
        result?: ZacBuilder<Array<ZacAction>>
    }) {
        return new NavigatorActions({
            builder: 'f:1:Navigator.pushReplacementNamed',
            ...data
        })
    }
    static popUntilRouteName(data: {
        routeName: ZacBuilder<string>,
        navigatorState?: ZacBuilder<native.NavigatorState>
    }) {
        return new NavigatorActions({
            builder: 'z:1:Navigator.popUntilRouteName',
            ...data
        })
    }
}
export class ScaffoldActions extends ZacAction {
    static openDrawer() {
        return new ScaffoldActions({
            builder: 'f:1:Scaffold.openDrawer'

        })
    }
    static openEndDrawer() {
        return new ScaffoldActions({
            builder: 'f:1:Scaffold.openEndDrawer'

        })
    }
    static showBodyScrim(data: {
        value: boolean,
        opacity: ZacBuilder<number>
    }) {
        return new ScaffoldActions({
            builder: 'f:1:Scaffold.showBodyScrim',
            ...data
        })
    }
    static showBottomSheet(data: {
        child: ZacBuilder<native.Widget>,
        backgroundColor?: ZacBuilder<native.Color>,
        elevation?: ZacBuilder<number>,
        shape?: ZacBuilder<native.ShapeBorder>,
        clipBehavior?: ZacBuilder<native.Clip>,
        constraints?: BoxConstraints,
        enableDrag?: ZacBuilder<boolean>
    }) {
        return new ScaffoldActions({
            builder: 'f:1:Scaffold.showBottomSheet',
            ...data
        })
    }
}
export class ScaffoldMessenger extends ZacAction {
    static showSnackBar(data: { snackBar: SnackBar }) {
        return new ScaffoldMessenger({
            builder: 'f:1:ScaffoldMessenger.showSnackBar',
            ...data
        })
    }
    static hideCurrentSnackBar() {
        return new ScaffoldMessenger({
            builder: 'f:1:ScaffoldMessenger.hideCurrentSnackBar'

        })
    }
    static removeCurrentSnackBar() {
        return new ScaffoldMessenger({
            builder: 'f:1:ScaffoldMessenger.removeCurrentSnackBar'

        })
    }
    static showMaterialBanner(data: { materialBanner: MaterialBanner }) {
        return new ScaffoldMessenger({
            builder: 'f:1:ScaffoldMessenger.showMaterialBanner',
            ...data
        })
    }
    static hideCurrentMaterialBanner() {
        return new ScaffoldMessenger({
            builder: 'f:1:ScaffoldMessenger.hideCurrentMaterialBanner'

        })
    }
    static removeCurrentMaterialBanner() {
        return new ScaffoldMessenger({
            builder: 'f:1:ScaffoldMessenger.removeCurrentMaterialBanner'

        })
    }
}
export class SharedValueActions extends ZacAction {
    static update(data: {
        family: any,
        transformer?: ZacBuilder<Array<ZacTransformer>>,
        ifNoPayloadTakeCurrent?: boolean
    }) {
        return new SharedValueActions({
            builder: 'z:1:SharedValue.update',
            ...data
        })
    }
    static invalidate(data: { family: any }) {
        return new SharedValueActions({
            builder: 'z:1:SharedValue.invalidate',
            ...data
        })
    }
}
export class ZacCompleterActions extends ZacAction {
    static completeVoid(data: { completer: ZacBuilder<native.Completer> }) {
        return new ZacCompleterActions({
            builder: 'z:1:Completer<void>.complete',
            ...data
        })
    }
}
export class ZacControlFlowAction extends ZacAction {
    static ifCond(data: {
        condition: ZacBuilder<Array<ZacTransformer>>,
        ifTrue: ZacBuilder<Array<ZacAction>>,
        ifFalse?: ZacBuilder<Array<ZacAction>>
    }) {
        return new ZacControlFlowAction({
            builder: 'z:1:ControlFlowAction.if',
            ...data
        })
    }
}
export class ZacStateMachineActions extends ZacAction {
    static send(data: {
        family: any,
        event: ZacBuilder<string>
    }) {
        return new ZacStateMachineActions({
            builder: 'z:1:StateMachine:Action.send',
            ...data
        })
    }
    static trySend(data: {
        family: any,
        event: ZacBuilder<string>
    }) {
        return new ZacStateMachineActions({
            builder: 'z:1:StateMachine:Action.trySend',
            ...data
        })
    }
}
export class ZacValueActions extends ZacAction {
    static asPayload(data: {
        value: ZacBuilder<any>,
        actions: ZacActions
    }) {
        return new ZacValueActions({
            builder: 'z:1:ZacValue.asActionPayload',
            ...data
        })
    }
}
