/* eslint-disable @typescript-eslint/no-explicit-any */
import { ConsumeSharedValue, ZacConvertable, ZacBuilder, ZacListBuilder, ZacMapBuilder, ZacTransformer, ZacAction, DartDateTime } from 'base';
import * as native from 'generated.nativetypes';

export class SharedValueConsumeType extends ZacConvertable {
    static watch(data: { select?: ZacBuilder<Array<ZacTransformer>> }) {
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
        on: Array<ZacTransition>
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
export class FlutterAlign extends ZacBuilder<native.Align> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        alignment?: ZacBuilder<native.AlignmentGeometry>,
        widthFactor?: ZacBuilder<number>,
        heightFactor?: ZacBuilder<number>,
        child?: ZacBuilder<native.Widget>
    }) {
        return new FlutterAlign({
            builder: 'f:1:Align',
            ...data
        })
    }
}
export class FlutterAlignment extends ZacBuilder<native.Alignment> {
    static new(data: {
        x: ZacBuilder<number>,
        y: ZacBuilder<number>
    }) {
        return new FlutterAlignment({
            builder: 'f:1:Alignment',
            ...data
        })
    }
    static bottomCenter() {
        return new FlutterAlignment({
            builder: 'f:1:Alignment.bottomCenter'

        })
    }
    static bottomLeft() {
        return new FlutterAlignment({
            builder: 'f:1:Alignment.bottomLeft'

        })
    }
    static bottomRight() {
        return new FlutterAlignment({
            builder: 'f:1:Alignment.bottomRight'

        })
    }
    static center() {
        return new FlutterAlignment({
            builder: 'f:1:Alignment.center'

        })
    }
    static centerLeft() {
        return new FlutterAlignment({
            builder: 'f:1:Alignment.centerLeft'

        })
    }
    static centerRight() {
        return new FlutterAlignment({
            builder: 'f:1:Alignment.centerRight'

        })
    }
    static topCenter() {
        return new FlutterAlignment({
            builder: 'f:1:Alignment.topCenter'

        })
    }
    static topLeft() {
        return new FlutterAlignment({
            builder: 'f:1:Alignment.topLeft'

        })
    }
    static topRight() {
        return new FlutterAlignment({
            builder: 'f:1:Alignment.topRight'

        })
    }
}
export class FlutterAlignmentDirectional extends ZacBuilder<native.AlignmentDirectional> {
    static new(data: {
        start: ZacBuilder<number>,
        y: ZacBuilder<number>
    }) {
        return new FlutterAlignmentDirectional({
            builder: 'f:1:AlignmentDirectional',
            ...data
        })
    }
    static bottomCenter() {
        return new FlutterAlignmentDirectional({
            builder: 'f:1:AlignmentDirectional.bottomCenter'

        })
    }
    static bottomStart() {
        return new FlutterAlignmentDirectional({
            builder: 'f:1:AlignmentDirectional.bottomStart'

        })
    }
    static bottomEnd() {
        return new FlutterAlignmentDirectional({
            builder: 'f:1:AlignmentDirectional.bottomEnd'

        })
    }
    static center() {
        return new FlutterAlignmentDirectional({
            builder: 'f:1:AlignmentDirectional.center'

        })
    }
    static centerStart() {
        return new FlutterAlignmentDirectional({
            builder: 'f:1:AlignmentDirectional.centerStart'

        })
    }
    static centerEnd() {
        return new FlutterAlignmentDirectional({
            builder: 'f:1:AlignmentDirectional.centerEnd'

        })
    }
    static topCenter() {
        return new FlutterAlignmentDirectional({
            builder: 'f:1:AlignmentDirectional.topCenter'

        })
    }
    static topStart() {
        return new FlutterAlignmentDirectional({
            builder: 'f:1:AlignmentDirectional.topStart'

        })
    }
    static topEnd() {
        return new FlutterAlignmentDirectional({
            builder: 'f:1:AlignmentDirectional.topEnd'

        })
    }
}
export class FlutterAppBar extends ZacBuilder<native.AppBar> {
    static new(data: {
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
        return new FlutterAppBar({
            builder: 'f:1:AppBar',
            ...data
        })
    }
}
export class FlutterAspectRatio extends ZacBuilder<native.AspectRatio> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        aspectRatio: ZacBuilder<number>,
        child?: ZacBuilder<native.Widget>
    }) {
        return new FlutterAspectRatio({
            builder: 'f:1:AspectRatio',
            ...data
        })
    }
}
export class FlutterAxis extends ZacBuilder<native.Axis> {
    static horizontal() {
        return new FlutterAxis({
            builder: 'f:1:Axis.horizontal'

        })
    }
    static vertical() {
        return new FlutterAxis({
            builder: 'f:1:Axis.vertical'

        })
    }
}
export class FlutterBlendMode extends ZacBuilder<native.BlendMode> {
    static clear() {
        return new FlutterBlendMode({
            builder: 'f:1:BlendMode.clear'

        })
    }
    static color() {
        return new FlutterBlendMode({
            builder: 'f:1:BlendMode.color'

        })
    }
    static colorBurn() {
        return new FlutterBlendMode({
            builder: 'f:1:BlendMode.colorBurn'

        })
    }
    static colorDodge() {
        return new FlutterBlendMode({
            builder: 'f:1:BlendMode.colorDodge'

        })
    }
    static darken() {
        return new FlutterBlendMode({
            builder: 'f:1:BlendMode.darken'

        })
    }
    static difference() {
        return new FlutterBlendMode({
            builder: 'f:1:BlendMode.difference'

        })
    }
    static dst() {
        return new FlutterBlendMode({
            builder: 'f:1:BlendMode.dst'

        })
    }
    static dstATop() {
        return new FlutterBlendMode({
            builder: 'f:1:BlendMode.dstATop'

        })
    }
    static dstIn() {
        return new FlutterBlendMode({
            builder: 'f:1:BlendMode.dstIn'

        })
    }
    static dstOut() {
        return new FlutterBlendMode({
            builder: 'f:1:BlendMode.dstOut'

        })
    }
    static dstOver() {
        return new FlutterBlendMode({
            builder: 'f:1:BlendMode.dstOver'

        })
    }
    static exclusion() {
        return new FlutterBlendMode({
            builder: 'f:1:BlendMode.exclusion'

        })
    }
    static hardLight() {
        return new FlutterBlendMode({
            builder: 'f:1:BlendMode.hardLight'

        })
    }
    static hue() {
        return new FlutterBlendMode({
            builder: 'f:1:BlendMode.hue'

        })
    }
    static lighten() {
        return new FlutterBlendMode({
            builder: 'f:1:BlendMode.lighten'

        })
    }
    static luminosity() {
        return new FlutterBlendMode({
            builder: 'f:1:BlendMode.luminosity'

        })
    }
    static modulate() {
        return new FlutterBlendMode({
            builder: 'f:1:BlendMode.modulate'

        })
    }
    static multiply() {
        return new FlutterBlendMode({
            builder: 'f:1:BlendMode.multiply'

        })
    }
    static overlay() {
        return new FlutterBlendMode({
            builder: 'f:1:BlendMode.overlay'

        })
    }
    static plus() {
        return new FlutterBlendMode({
            builder: 'f:1:BlendMode.plus'

        })
    }
    static saturation() {
        return new FlutterBlendMode({
            builder: 'f:1:BlendMode.saturation'

        })
    }
    static screen() {
        return new FlutterBlendMode({
            builder: 'f:1:BlendMode.screen'

        })
    }
    static softLight() {
        return new FlutterBlendMode({
            builder: 'f:1:BlendMode.softLight'

        })
    }
    static src() {
        return new FlutterBlendMode({
            builder: 'f:1:BlendMode.src'

        })
    }
    static srcATop() {
        return new FlutterBlendMode({
            builder: 'f:1:BlendMode.srcATop'

        })
    }
    static srcIn() {
        return new FlutterBlendMode({
            builder: 'f:1:BlendMode.srcIn'

        })
    }
    static srcOut() {
        return new FlutterBlendMode({
            builder: 'f:1:BlendMode.srcOut'

        })
    }
    static srcOver() {
        return new FlutterBlendMode({
            builder: 'f:1:BlendMode.srcOver'

        })
    }
    static xor() {
        return new FlutterBlendMode({
            builder: 'f:1:BlendMode.xor'

        })
    }
}
export class FlutterBlurStyle extends ZacBuilder<native.BlurStyle> {
    static inner() {
        return new FlutterBlurStyle({
            builder: 'f:1:BlurStyle.inner'

        })
    }
    static normal() {
        return new FlutterBlurStyle({
            builder: 'f:1:BlurStyle.normal'

        })
    }
    static outer() {
        return new FlutterBlurStyle({
            builder: 'f:1:BlurStyle.outer'

        })
    }
    static solid() {
        return new FlutterBlurStyle({
            builder: 'f:1:BlurStyle.solid'

        })
    }
}
export class FlutterBorder extends ZacBuilder<native.Border> {
    static new(data: {
        top?: ZacBuilder<native.BorderSide>,
        right?: ZacBuilder<native.BorderSide>,
        bottom?: ZacBuilder<native.BorderSide>,
        left?: ZacBuilder<native.BorderSide>
    }) {
        return new FlutterBorder({
            builder: 'f:1:Border',
            ...data
        })
    }
    static all(data: {
        color?: ZacBuilder<native.Color>,
        width?: ZacBuilder<number>,
        style?: ZacBuilder<native.BorderStyle>
    }) {
        return new FlutterBorder({
            builder: 'f:1:Border.all',
            ...data
        })
    }
}
export class FlutterBorderDirectional extends ZacBuilder<native.BorderDirectional> {
    static new(data: {
        top?: ZacBuilder<native.BorderSide>,
        start?: ZacBuilder<native.BorderSide>,
        bottom?: ZacBuilder<native.BorderSide>,
        end?: ZacBuilder<native.BorderSide>
    }) {
        return new FlutterBorderDirectional({
            builder: 'f:1:BorderDirectional',
            ...data
        })
    }
}
export class FlutterBorderRadius extends ZacBuilder<native.BorderRadius> {
    static all(data: { radius: FlutterRadius }) {
        return new FlutterBorderRadius({
            builder: 'f:1:BorderRadius.all',
            ...data
        })
    }
    static circular(data: { radius: ZacBuilder<number> }) {
        return new FlutterBorderRadius({
            builder: 'f:1:BorderRadius.circular',
            ...data
        })
    }
    static horizontal(data: {
        left?: ZacBuilder<native.Radius>,
        right?: ZacBuilder<native.Radius>
    }) {
        return new FlutterBorderRadius({
            builder: 'f:1:BorderRadius.horizontal',
            ...data
        })
    }
}
export class FlutterBorderSide extends ZacBuilder<native.BorderSide> {
    static new(data: {
        color?: ZacBuilder<native.Color>,
        width?: ZacBuilder<number>,
        style?: ZacBuilder<native.BorderStyle>
    }) {
        return new FlutterBorderSide({
            builder: 'f:1:BorderSide',
            ...data
        })
    }
}
export class FlutterBorderStyle extends ZacBuilder<native.BorderStyle> {
    static none() {
        return new FlutterBorderStyle({
            builder: 'f:1:BorderStyle.none'

        })
    }
    static solid() {
        return new FlutterBorderStyle({
            builder: 'f:1:BorderStyle.solid'

        })
    }
}
export class FlutterBoxConstraints extends ZacBuilder<native.BoxConstraints> {
    static new(data: {
        minWidth?: ZacBuilder<number>,
        maxWidth?: ZacBuilder<number>,
        minHeight?: ZacBuilder<number>,
        maxHeight?: ZacBuilder<number>
    }) {
        return new FlutterBoxConstraints({
            builder: 'f:1:BoxConstraints',
            ...data
        })
    }
    static expand(data: {
        width?: ZacBuilder<number>,
        height?: ZacBuilder<number>
    }) {
        return new FlutterBoxConstraints({
            builder: 'f:1:BoxConstraints.expand',
            ...data
        })
    }
    static loose(data: { size: ZacBuilder<native.Size> }) {
        return new FlutterBoxConstraints({
            builder: 'f:1:BoxConstraints.loose',
            ...data
        })
    }
    static tight(data: { size: ZacBuilder<native.Size> }) {
        return new FlutterBoxConstraints({
            builder: 'f:1:BoxConstraints.tight',
            ...data
        })
    }
    static tightFor(data: {
        width?: ZacBuilder<number>,
        height?: ZacBuilder<number>
    }) {
        return new FlutterBoxConstraints({
            builder: 'f:1:BoxConstraints.tightFor',
            ...data
        })
    }
    static tightForFinite(data: {
        width?: ZacBuilder<number>,
        height?: ZacBuilder<number>
    }) {
        return new FlutterBoxConstraints({
            builder: 'f:1:BoxConstraints.tightForFinite',
            ...data
        })
    }
}
export class FlutterBoxDecoration extends ZacBuilder<native.BoxDecoration> {
    static new(data: {
        color?: ZacBuilder<native.Color>,
        border?: ZacBuilder<native.BoxBorder>,
        borderRadius?: ZacBuilder<native.BorderRadiusGeometry>,
        boxShadow?: Array<FlutterBoxShadow>,
        shape?: ZacBuilder<native.BoxShape>,
        backgroundBlendMode?: ZacBuilder<native.BlendMode>
    }) {
        return new FlutterBoxDecoration({
            builder: 'f:1:BoxDecoration',
            ...data
        })
    }
}
export class FlutterBoxFit extends ZacBuilder<native.BoxFit> {
    static contain() {
        return new FlutterBoxFit({
            builder: 'f:1:BoxFit.contain'

        })
    }
    static cover() {
        return new FlutterBoxFit({
            builder: 'f:1:BoxFit.cover'

        })
    }
    static fill() {
        return new FlutterBoxFit({
            builder: 'f:1:BoxFit.fill'

        })
    }
    static fitHeight() {
        return new FlutterBoxFit({
            builder: 'f:1:BoxFit.fitHeight'

        })
    }
    static fitWidth() {
        return new FlutterBoxFit({
            builder: 'f:1:BoxFit.fitWidth'

        })
    }
    static none() {
        return new FlutterBoxFit({
            builder: 'f:1:BoxFit.none'

        })
    }
    static scaleDown() {
        return new FlutterBoxFit({
            builder: 'f:1:BoxFit.scaleDown'

        })
    }
}
export class FlutterBoxHeightStyle extends ZacBuilder<native.BoxHeightStyle> {
    static includeLineSpacingBottom() {
        return new FlutterBoxHeightStyle({
            builder: 'f:1:BoxHeightStyle.includeLineSpacingBottom'

        })
    }
    static includeLineSpacingMiddle() {
        return new FlutterBoxHeightStyle({
            builder: 'f:1:BoxHeightStyle.includeLineSpacingMiddle'

        })
    }
    static includeLineSpacingTop() {
        return new FlutterBoxHeightStyle({
            builder: 'f:1:BoxHeightStyle.includeLineSpacingTop'

        })
    }
    static max() {
        return new FlutterBoxHeightStyle({
            builder: 'f:1:BoxHeightStyle.max'

        })
    }
    static strut() {
        return new FlutterBoxHeightStyle({
            builder: 'f:1:BoxHeightStyle.strut'

        })
    }
    static tight() {
        return new FlutterBoxHeightStyle({
            builder: 'f:1:BoxHeightStyle.tight'

        })
    }
}
export class FlutterBoxShadow extends ZacBuilder<native.BoxShadow> {
    static new(data: {
        color?: ZacBuilder<native.Color>,
        offset?: ZacBuilder<native.Offset>,
        blurRadius?: ZacBuilder<number>,
        spreadRadius?: ZacBuilder<number>,
        blurStyle?: FlutterBlurStyle
    }) {
        return new FlutterBoxShadow({
            builder: 'f:1:BoxShadow',
            ...data
        })
    }
}
export class FlutterBoxShape extends ZacBuilder<native.BoxShape> {
    static circle() {
        return new FlutterBoxShape({
            builder: 'f:1:BoxShape.circle'

        })
    }
    static rectangle() {
        return new FlutterBoxShape({
            builder: 'f:1:BoxShape.rectangle'

        })
    }
}
export class FlutterBoxWidthStyle extends ZacBuilder<native.BoxWidthStyle> {
    static max() {
        return new FlutterBoxWidthStyle({
            builder: 'f:1:BoxWidthStyle.max'

        })
    }
    static tight() {
        return new FlutterBoxWidthStyle({
            builder: 'f:1:BoxWidthStyle.tight'

        })
    }
}
export class FlutterBrightness extends ZacBuilder<native.Brightness> {
    static dark() {
        return new FlutterBrightness({
            builder: 'f:1:Brightness.dark'

        })
    }
    static light() {
        return new FlutterBrightness({
            builder: 'f:1:Brightness.light'

        })
    }
}
export class FlutterBuilder extends ZacBuilder<native.Builder> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        child: ZacBuilder<native.Widget>
    }) {
        return new FlutterBuilder({
            builder: 'f:1:Builder',
            ...data
        })
    }
}
export class FlutterButtonBar extends ZacBuilder<native.ButtonBar> {
    static new(data: {
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
        return new FlutterButtonBar({
            builder: 'f:1:ButtonBar',
            ...data
        })
    }
}
export class FlutterCard extends ZacBuilder<native.Card> {
    static new(data: {
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
        return new FlutterCard({
            builder: 'f:1:Card',
            ...data
        })
    }
}
export class FlutterCenter extends ZacBuilder<native.Center> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        widthFactor?: ZacBuilder<number>,
        heightFactor?: ZacBuilder<number>,
        child?: ZacBuilder<native.Widget>
    }) {
        return new FlutterCenter({
            builder: 'f:1:Center',
            ...data
        })
    }
}
export class FlutterCircleBorder extends ZacBuilder<native.CircleBorder> {
    static new(data: { side?: ZacBuilder<native.BorderSide> }) {
        return new FlutterCircleBorder({
            builder: 'f:1:CircleBorder',
            ...data
        })
    }
}
export class FlutterClip extends ZacBuilder<native.Clip> {
    static none() {
        return new FlutterClip({
            builder: 'f:1:Clip.none'

        })
    }
    static antiAlias() {
        return new FlutterClip({
            builder: 'f:1:Clip.antiAlias'

        })
    }
    static hardEdge() {
        return new FlutterClip({
            builder: 'f:1:Clip.hardEdge'

        })
    }
}
export class FlutterClipOval extends ZacBuilder<native.ClipOval> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        child?: ZacBuilder<native.Widget>,
        clipBehavior?: ZacBuilder<native.Clip>
    }) {
        return new FlutterClipOval({
            builder: 'f:1:ClipOval',
            ...data
        })
    }
}
export class FlutterClipRect extends ZacBuilder<native.ClipRect> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        child?: ZacBuilder<native.Widget>,
        clipBehavior?: ZacBuilder<native.Clip>
    }) {
        return new FlutterClipRect({
            builder: 'f:1:ClipRect',
            ...data
        })
    }
}
export class FlutterColor extends ZacBuilder<native.Color> {
    static fromARGB(data: {
        a: number,
        r: number,
        g: number,
        b: number
    }) {
        return new FlutterColor({
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
        return new FlutterColor({
            builder: 'f:1:Color.fromRGBO',
            ...data
        })
    }
}
export class FlutterColumn extends ZacBuilder<native.Column> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        mainAxisAlignment?: ZacBuilder<native.MainAxisAlignment>,
        mainAxisSize?: ZacBuilder<native.MainAxisSize>,
        crossAxisAlignment?: ZacBuilder<native.CrossAxisAlignment>,
        textDirection?: ZacBuilder<native.TextDirection>,
        verticalDirection?: ZacBuilder<native.VerticalDirection>,
        textBaseline?: ZacBuilder<native.TextBaseline>,
        children?: ZacListBuilder<native.Widget>
    }) {
        return new FlutterColumn({
            builder: 'f:1:Column',
            ...data
        })
    }
}
export class FlutterConstrainedBox extends ZacBuilder<native.ConstrainedBox> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        constraints: ZacBuilder<native.BoxConstraints>,
        child?: ZacBuilder<native.Widget>
    }) {
        return new FlutterConstrainedBox({
            builder: 'f:1:ConstrainedBox',
            ...data
        })
    }
}
export class FlutterContainer extends ZacBuilder<native.Container> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        child?: ZacBuilder<native.Widget>,
        color?: ZacBuilder<native.Color>,
        margin?: ZacBuilder<native.EdgeInsetsGeometry>,
        padding?: ZacBuilder<native.EdgeInsetsGeometry>,
        alignment?: ZacBuilder<native.AlignmentGeometry>,
        decoration?: ZacBuilder<native.Decoration>
    }) {
        return new FlutterContainer({
            builder: 'f:1:Container',
            ...data
        })
    }
}
export class FlutterCrossAxisAlignment extends ZacBuilder<native.CrossAxisAlignment> {
    static baseline() {
        return new FlutterCrossAxisAlignment({
            builder: 'f:1:CrossAxisAlignment.baseline'

        })
    }
    static center() {
        return new FlutterCrossAxisAlignment({
            builder: 'f:1:CrossAxisAlignment.center'

        })
    }
    static end() {
        return new FlutterCrossAxisAlignment({
            builder: 'f:1:CrossAxisAlignment.end'

        })
    }
    static start() {
        return new FlutterCrossAxisAlignment({
            builder: 'f:1:CrossAxisAlignment.start'

        })
    }
    static stretch() {
        return new FlutterCrossAxisAlignment({
            builder: 'f:1:CrossAxisAlignment.stretch'

        })
    }
}
export class FlutterCustomScrollView extends ZacBuilder<native.CustomScrollView> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        scrollDirection?: FlutterAxis,
        reverse?: ZacBuilder<boolean>,
        controller?: ZacBuilder<native.ScrollController>,
        primary?: ZacBuilder<boolean>,
        physics?: FlutterScrollPhysics,
        shrinkWrap?: ZacBuilder<boolean>,
        center?: ZacBuilder<native.Key>,
        anchor?: ZacBuilder<number>,
        cacheExtent?: ZacBuilder<number>,
        slivers?: ZacListBuilder<native.Widget>,
        semanticChildCount?: ZacBuilder<number>,
        keyboardDismissBehavior?: FlutterScrollViewKeyboardDismissBehavior,
        restorationId?: ZacBuilder<string>,
        clipBehavior?: ZacBuilder<native.Clip>
    }) {
        return new FlutterCustomScrollView({
            builder: 'f:1:CustomScrollView',
            ...data
        })
    }
}
export class FlutterDecoratedBox extends ZacBuilder<native.DecoratedBox> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        child?: ZacBuilder<native.Widget>,
        decoration: ZacBuilder<native.Decoration>,
        position?: ZacBuilder<native.DecorationPosition>
    }) {
        return new FlutterDecoratedBox({
            builder: 'f:1:DecoratedBox',
            ...data
        })
    }
}
export class FlutterDecorationPosition extends ZacBuilder<native.DecorationPosition> {
    static background() {
        return new FlutterDecorationPosition({
            builder: 'f:1:DecorationPosition.background'

        })
    }
    static foreground() {
        return new FlutterDecorationPosition({
            builder: 'f:1:DecorationPosition.foreground'

        })
    }
}
export class FlutterDialogs extends ZacBuilder<native.Widget> {
    static dialog(data: {
        key?: ZacBuilder<native.Key>,
        backgroundColor?: ZacBuilder<native.Color>,
        elevation?: ZacBuilder<number>,
        insetPadding?: ZacBuilder<native.EdgeInsets>,
        clipBehavior?: ZacBuilder<native.Clip>,
        shape?: ZacBuilder<native.ShapeBorder>,
        alignment?: ZacBuilder<native.AlignmentGeometry>,
        child?: ZacBuilder<native.Widget>
    }) {
        return new FlutterDialogs({
            builder: 'f:1:Dialog',
            ...data
        })
    }
    static alertDialog(data: {
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
        return new FlutterDialogs({
            builder: 'f:1:AlertDialog',
            ...data
        })
    }
    static simpleDialog(data: {
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
        return new FlutterDialogs({
            builder: 'f:1:SimpleDialog',
            ...data
        })
    }
    static simpleDialogOption(data: {
        key?: ZacBuilder<native.Key>,
        child?: ZacBuilder<native.Widget>,
        onPressed?: ZacBuilder<Array<ZacAction>>,
        padding?: ZacBuilder<native.EdgeInsets>
    }) {
        return new FlutterDialogs({
            builder: 'f:1:SimpleDialogOption',
            ...data
        })
    }
}
export class FlutterDivider extends ZacBuilder<native.Divider> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        height?: ZacBuilder<number>,
        thickness?: ZacBuilder<number>,
        indent?: ZacBuilder<number>,
        endIndent?: ZacBuilder<number>,
        color?: ZacBuilder<native.Color>
    }) {
        return new FlutterDivider({
            builder: 'f:1:Divider',
            ...data
        })
    }
}
export class FlutterDrawer extends ZacBuilder<native.Drawer> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        backgroundColor?: ZacBuilder<native.Color>,
        elevation?: ZacBuilder<number>,
        shape?: ZacBuilder<native.ShapeBorder>,
        child?: ZacBuilder<native.Widget>,
        semanticLabel?: ZacBuilder<string>
    }) {
        return new FlutterDrawer({
            builder: 'f:1:Drawer',
            ...data
        })
    }
}
export class FlutterEdgeInsets extends ZacBuilder<native.EdgeInsets> {
    static all(data: { value: ZacBuilder<number> }) {
        return new FlutterEdgeInsets({
            builder: 'f:1:EdgeInsets.all',
            ...data
        })
    }
    static symmetric(data: {
        vertical?: ZacBuilder<number>,
        horizontal?: ZacBuilder<number>
    }) {
        return new FlutterEdgeInsets({
            builder: 'f:1:EdgeInsets.symmetric',
            ...data
        })
    }
    static only(data: {
        left?: ZacBuilder<number>,
        top?: ZacBuilder<number>,
        right?: ZacBuilder<number>,
        bottom?: ZacBuilder<number>
    }) {
        return new FlutterEdgeInsets({
            builder: 'f:1:EdgeInsets.only',
            ...data
        })
    }
}
export class FlutterEdgeInsetsDirectional extends ZacBuilder<native.EdgeInsetsDirectional> {
    static all(data: { value: ZacBuilder<number> }) {
        return new FlutterEdgeInsetsDirectional({
            builder: 'f:1:EdgeInsetsDirectional.all',
            ...data
        })
    }
    static only(data: {
        start?: ZacBuilder<number>,
        top?: ZacBuilder<number>,
        end?: ZacBuilder<number>,
        bottom?: ZacBuilder<number>
    }) {
        return new FlutterEdgeInsetsDirectional({
            builder: 'f:1:EdgeInsetsDirectional.only',
            ...data
        })
    }
}
export class FlutterElevatedButton extends ZacBuilder<native.ElevatedButton> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        child: ZacBuilder<native.Widget> | null,
        onPressed?: ZacBuilder<Array<ZacAction>>,
        onLongPress?: ZacBuilder<Array<ZacAction>>,
        autofocus?: ZacBuilder<boolean>,
        clipBehavior?: ZacBuilder<native.Clip>
    }) {
        return new FlutterElevatedButton({
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
        return new FlutterElevatedButton({
            builder: 'f:1:ElevatedButton.icon',
            ...data
        })
    }
}
export class FlutterExpanded extends ZacBuilder<native.Expanded> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        flex?: ZacBuilder<number>,
        child: ZacBuilder<native.Widget>
    }) {
        return new FlutterExpanded({
            builder: 'f:1:Expanded',
            ...data
        })
    }
}
export class FlutterFilterQuality extends ZacBuilder<native.FilterQuality> {
    static high() {
        return new FlutterFilterQuality({
            builder: 'f:1:FilterQuality.high'

        })
    }
    static low() {
        return new FlutterFilterQuality({
            builder: 'f:1:FilterQuality.low'

        })
    }
    static medium() {
        return new FlutterFilterQuality({
            builder: 'f:1:FilterQuality.medium'

        })
    }
    static none() {
        return new FlutterFilterQuality({
            builder: 'f:1:FilterQuality.none'

        })
    }
}
export class FlutterFittedBox extends ZacBuilder<native.FittedBox> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        fit?: ZacBuilder<native.BoxFit>,
        alignment?: ZacBuilder<native.AlignmentGeometry>,
        clipBehavior?: ZacBuilder<native.Clip>,
        child?: ZacBuilder<native.Widget>
    }) {
        return new FlutterFittedBox({
            builder: 'f:1:FittedBox',
            ...data
        })
    }
}
export class FlutterFlexFit extends ZacBuilder<native.FlexFit> {
    static tight() {
        return new FlutterFlexFit({
            builder: 'f:1:FlexFit.tight'

        })
    }
    static loose() {
        return new FlutterFlexFit({
            builder: 'f:1:FlexFit.loose'

        })
    }
}
export class FlutterFlexible extends ZacBuilder<native.Flexible> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        flex?: ZacBuilder<number>,
        fit?: ZacBuilder<native.FlexFit>,
        child: ZacBuilder<native.Widget>
    }) {
        return new FlutterFlexible({
            builder: 'f:1:Flexible',
            ...data
        })
    }
}
export class FlutterFontFeature extends ZacBuilder<native.FontFeature> {
    static new(data: {
        feature: string,
        value?: ZacBuilder<number>
    }) {
        return new FlutterFontFeature({
            builder: 'f:1:FontFeature',
            ...data
        })
    }
    static alternative(data: { value: number }) {
        return new FlutterFontFeature({
            builder: 'f:1:FontFeature.alternative',
            ...data
        })
    }
    static alternativeFractions() {
        return new FlutterFontFeature({
            builder: 'f:1:FontFeature.alternativeFractions'

        })
    }
    static caseSensitiveForms() {
        return new FlutterFontFeature({
            builder: 'f:1:FontFeature.caseSensitiveForms'

        })
    }
    static characterVariant(data: { value: number }) {
        return new FlutterFontFeature({
            builder: 'f:1:FontFeature.characterVariant',
            ...data
        })
    }
    static contextualAlternates() {
        return new FlutterFontFeature({
            builder: 'f:1:FontFeature.contextualAlternates'

        })
    }
    static denominator() {
        return new FlutterFontFeature({
            builder: 'f:1:FontFeature.denominator'

        })
    }
    static disable(data: { feature: string }) {
        return new FlutterFontFeature({
            builder: 'f:1:FontFeature.disable',
            ...data
        })
    }
    static enable(data: { feature: string }) {
        return new FlutterFontFeature({
            builder: 'f:1:FontFeature.enable',
            ...data
        })
    }
    static fractions() {
        return new FlutterFontFeature({
            builder: 'f:1:FontFeature.fractions'

        })
    }
    static historicalForms() {
        return new FlutterFontFeature({
            builder: 'f:1:FontFeature.historicalForms'

        })
    }
    static historicalLigatures() {
        return new FlutterFontFeature({
            builder: 'f:1:FontFeature.historicalLigatures'

        })
    }
    static liningFigures() {
        return new FlutterFontFeature({
            builder: 'f:1:FontFeature.liningFigures'

        })
    }
    static localeAware(data: { enable?: ZacBuilder<boolean> }) {
        return new FlutterFontFeature({
            builder: 'f:1:FontFeature.localeAware',
            ...data
        })
    }
    static notationalForms(data: { value?: ZacBuilder<number> }) {
        return new FlutterFontFeature({
            builder: 'f:1:FontFeature.notationalForms',
            ...data
        })
    }
    static numerators() {
        return new FlutterFontFeature({
            builder: 'f:1:FontFeature.numerators'

        })
    }
    static oldstyleFigures() {
        return new FlutterFontFeature({
            builder: 'f:1:FontFeature.oldstyleFigures'

        })
    }
    static ordinalForms() {
        return new FlutterFontFeature({
            builder: 'f:1:FontFeature.ordinalForms'

        })
    }
    static proportionalFigures() {
        return new FlutterFontFeature({
            builder: 'f:1:FontFeature.proportionalFigures'

        })
    }
    static randomize() {
        return new FlutterFontFeature({
            builder: 'f:1:FontFeature.randomize'

        })
    }
    static scientificInferiors() {
        return new FlutterFontFeature({
            builder: 'f:1:FontFeature.scientificInferiors'

        })
    }
    static slashedZero() {
        return new FlutterFontFeature({
            builder: 'f:1:FontFeature.slashedZero'

        })
    }
    static stylisticAlternates() {
        return new FlutterFontFeature({
            builder: 'f:1:FontFeature.stylisticAlternates'

        })
    }
    static stylisticSet(data: { value: number }) {
        return new FlutterFontFeature({
            builder: 'f:1:FontFeature.stylisticSet',
            ...data
        })
    }
    static subscripts() {
        return new FlutterFontFeature({
            builder: 'f:1:FontFeature.subscripts'

        })
    }
    static superscripts() {
        return new FlutterFontFeature({
            builder: 'f:1:FontFeature.superscripts'

        })
    }
    static swash(data: { value?: ZacBuilder<number> }) {
        return new FlutterFontFeature({
            builder: 'f:1:FontFeature.swash',
            ...data
        })
    }
    static tabularFigures() {
        return new FlutterFontFeature({
            builder: 'f:1:FontFeature.tabularFigures'

        })
    }
}
export class FlutterFontStyle extends ZacBuilder<native.FontStyle> {
    static italic() {
        return new FlutterFontStyle({
            builder: 'f:1:FontStyle.italic'

        })
    }
    static normal() {
        return new FlutterFontStyle({
            builder: 'f:1:FontStyle.normal'

        })
    }
}
export class FlutterFontWeight extends ZacBuilder<native.FontWeight> {
    static bold() {
        return new FlutterFontWeight({
            builder: 'f:1:FontWeight.bold'

        })
    }
    static normal() {
        return new FlutterFontWeight({
            builder: 'f:1:FontWeight.normal'

        })
    }
    static w100() {
        return new FlutterFontWeight({
            builder: 'f:1:FontWeight.w100'

        })
    }
    static w200() {
        return new FlutterFontWeight({
            builder: 'f:1:FontWeight.w200'

        })
    }
    static w300() {
        return new FlutterFontWeight({
            builder: 'f:1:FontWeight.w300'

        })
    }
    static w400() {
        return new FlutterFontWeight({
            builder: 'f:1:FontWeight.w400'

        })
    }
    static w500() {
        return new FlutterFontWeight({
            builder: 'f:1:FontWeight.w500'

        })
    }
    static w600() {
        return new FlutterFontWeight({
            builder: 'f:1:FontWeight.w600'

        })
    }
    static w700() {
        return new FlutterFontWeight({
            builder: 'f:1:FontWeight.w700'

        })
    }
    static w800() {
        return new FlutterFontWeight({
            builder: 'f:1:FontWeight.w800'

        })
    }
    static w900() {
        return new FlutterFontWeight({
            builder: 'f:1:FontWeight.w900'

        })
    }
}
export class FlutterFractionalOffset extends ZacBuilder<native.FractionalOffset> {
    static new(data: {
        dx: ZacBuilder<number>,
        dy: ZacBuilder<number>
    }) {
        return new FlutterFractionalOffset({
            builder: 'f:1:FractionalOffset',
            ...data
        })
    }
}
export class FlutterFractionalTranslation extends ZacBuilder<native.FractionalTranslation> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        child?: ZacBuilder<native.Widget>,
        translation: FlutterOffset,
        transformHitTests?: ZacBuilder<boolean>
    }) {
        return new FlutterFractionalTranslation({
            builder: 'f:1:FractionalTranslation',
            ...data
        })
    }
}
export class FlutterFractionallySizedBox extends ZacBuilder<native.FractionallySizedBox> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        child?: ZacBuilder<native.Widget>,
        alignment?: ZacBuilder<native.AlignmentGeometry>,
        widthFactor?: ZacBuilder<number>,
        heightFactor?: ZacBuilder<number>
    }) {
        return new FlutterFractionallySizedBox({
            builder: 'f:1:FractionallySizedBox',
            ...data
        })
    }
}
export class FlutterGestureDetector extends ZacBuilder<native.GestureDetector> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        child?: ZacBuilder<native.Widget>,
        onTap?: ZacBuilder<Array<ZacAction>>,
        onSecondaryTap?: ZacBuilder<Array<ZacAction>>,
        onDoubleTap?: ZacBuilder<Array<ZacAction>>,
        onLongPress?: ZacBuilder<Array<ZacAction>>,
        onSecondaryLongPress?: ZacBuilder<Array<ZacAction>>,
        onTertiaryLongPress?: ZacBuilder<Array<ZacAction>>,
        behavior?: FlutterHitTestBehavior,
        excludeFromSemantics?: ZacBuilder<boolean>
    }) {
        return new FlutterGestureDetector({
            builder: 'f:1:GestureDetector',
            ...data
        })
    }
}
export class FlutterGlobalKeyNavigatorStateProvider extends ZacBuilder<native.Widget> {
    static new(data: {
        debugLabel?: ZacBuilder<string>,
        family: any,
        child: ZacBuilder<native.Widget>
    }) {
        return new FlutterGlobalKeyNavigatorStateProvider({
            builder: 'z:1:GlobalKey<NavigatorState>.provide',
            ...data
        })
    }
}
export class FlutterGlobalKeyScaffoldMessengerStateProvider extends ZacBuilder<native.Widget> {
    static new(data: {
        debugLabel?: ZacBuilder<string>,
        family: any,
        child: ZacBuilder<native.Widget>
    }) {
        return new FlutterGlobalKeyScaffoldMessengerStateProvider({
            builder: 'z:1:GlobalKey<ScaffoldMessengerState>.provide',
            ...data
        })
    }
}
export class FlutterGridView extends ZacBuilder<native.GridView> {
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
        return new FlutterGridView({
            builder: 'f:1:GridView',
            ...data
        })
    }
}
export class FlutterHitTestBehavior extends ZacBuilder<native.HitTestBehavior> {
    static deferToChild() {
        return new FlutterHitTestBehavior({
            builder: 'f:1:HitTestBehavior.deferToChild'

        })
    }
    static opaque() {
        return new FlutterHitTestBehavior({
            builder: 'f:1:HitTestBehavior.opaque'

        })
    }
    static translucent() {
        return new FlutterHitTestBehavior({
            builder: 'f:1:HitTestBehavior.translucent'

        })
    }
}
export class FlutterIcon extends ZacBuilder<native.Icon> {
    static new(data: {
        icon: FlutterIconData | null,
        key?: ZacBuilder<native.Key>,
        size?: ZacBuilder<number>,
        color?: ZacBuilder<native.Color>,
        semanticLabel?: ZacBuilder<string>,
        textDirection?: ZacBuilder<native.TextDirection>
    }) {
        return new FlutterIcon({
            builder: 'f:1:Icon',
            ...data
        })
    }
}
export class FlutterIconData extends ZacBuilder<native.IconData> {
    static new(data: {
        codePoint: ZacBuilder<number>,
        fontFamily?: ZacBuilder<string>,
        fontPackage?: ZacBuilder<string>,
        matchTextDirection?: ZacBuilder<boolean>
    }) {
        return new FlutterIconData({
            builder: 'f:1:IconData',
            ...data
        })
    }
}
export class FlutterIconThemeData extends ZacBuilder<native.IconThemeData> {
    static new(data: {
        color?: ZacBuilder<native.Color>,
        opacity?: ZacBuilder<number>,
        size?: ZacBuilder<number>
    }) {
        return new FlutterIconThemeData({
            builder: 'f:1:IconThemeData',
            ...data
        })
    }
}
export class FlutterIgnorePointer extends ZacBuilder<native.IgnorePointer> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        ignoring?: ZacBuilder<boolean>,
        ignoringSemantics?: ZacBuilder<boolean>,
        child?: ZacBuilder<native.Widget>
    }) {
        return new FlutterIgnorePointer({
            builder: 'f:1:IgnorePointer',
            ...data
        })
    }
}
export class FlutterImage extends ZacBuilder<native.Image> {
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
        return new FlutterImage({
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
        return new FlutterImage({
            builder: 'f:1:Image.asset',
            ...data
        })
    }
}
export class FlutterImageRepeat extends ZacBuilder<native.ImageRepeat> {
    static noRepeat() {
        return new FlutterImageRepeat({
            builder: 'f:1:ImageRepeat.noRepeat'

        })
    }
    static repeat() {
        return new FlutterImageRepeat({
            builder: 'f:1:ImageRepeat.repeat'

        })
    }
    static repeatX() {
        return new FlutterImageRepeat({
            builder: 'f:1:ImageRepeat.repeatX'

        })
    }
    static repeatY() {
        return new FlutterImageRepeat({
            builder: 'f:1:ImageRepeat.repeatY'

        })
    }
}
export class FlutterIndexedStack extends ZacBuilder<native.IndexedStack> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        alignment?: ZacBuilder<native.AlignmentGeometry>,
        textDirection?: ZacBuilder<native.TextDirection>,
        sizing?: ZacBuilder<native.StackFit>,
        index?: ZacBuilder<number>,
        children?: ZacListBuilder<native.Widget>
    }) {
        return new FlutterIndexedStack({
            builder: 'f:1:IndexedStack',
            ...data
        })
    }
}
export class FlutterInputDecoration extends ZacBuilder<native.InputDecoration> {
    static new(data: {
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
        return new FlutterInputDecoration({
            builder: 'f:1:InputDecoration',
            ...data
        })
    }
}
export class FlutterInteractiveViewer extends ZacBuilder<native.InteractiveViewer> {
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
        return new FlutterInteractiveViewer({
            builder: 'f:1:InteractiveViewer',
            ...data
        })
    }
}
export class FlutterIntrinsicHeight extends ZacBuilder<native.IntrinsicHeight> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        child?: ZacBuilder<native.Widget>
    }) {
        return new FlutterIntrinsicHeight({
            builder: 'f:1:IntrinsicHeight',
            ...data
        })
    }
}
export class FlutterIntrinsicWidth extends ZacBuilder<native.IntrinsicWidth> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        child?: ZacBuilder<native.Widget>
    }) {
        return new FlutterIntrinsicWidth({
            builder: 'f:1:IntrinsicWidth',
            ...data
        })
    }
}
export class FlutterLimitedBox extends ZacBuilder<native.LimitedBox> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        maxWidth?: ZacBuilder<number>,
        maxHeight?: ZacBuilder<number>,
        child?: ZacBuilder<native.Widget>
    }) {
        return new FlutterLimitedBox({
            builder: 'f:1:LimitedBox',
            ...data
        })
    }
}
export class FlutterListTile extends ZacBuilder<native.ListTile> {
    static new(data: {
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
        return new FlutterListTile({
            builder: 'f:1:ListTile',
            ...data
        })
    }
}
export class FlutterListView extends ZacBuilder<native.ListView> {
    static new(data: {
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
        return new FlutterListView({
            builder: 'f:1:ListView',
            ...data
        })
    }
}
export class FlutterLocale extends ZacBuilder<native.Locale> {
    static new(data: {
        languageCode: string,
        countryCode?: string
    }) {
        return new FlutterLocale({
            builder: 'f:1:Locale',
            ...data
        })
    }
}
export class FlutterMainAxisAlignment extends ZacBuilder<native.MainAxisAlignment> {
    static start() {
        return new FlutterMainAxisAlignment({
            builder: 'f:1:MainAxisAlignment.start'

        })
    }
    static end() {
        return new FlutterMainAxisAlignment({
            builder: 'f:1:MainAxisAlignment.end'

        })
    }
    static center() {
        return new FlutterMainAxisAlignment({
            builder: 'f:1:MainAxisAlignment.center'

        })
    }
    static spaceBetween() {
        return new FlutterMainAxisAlignment({
            builder: 'f:1:MainAxisAlignment.spaceBetween'

        })
    }
    static spaceAround() {
        return new FlutterMainAxisAlignment({
            builder: 'f:1:MainAxisAlignment.spaceAround'

        })
    }
    static spaceEvenly() {
        return new FlutterMainAxisAlignment({
            builder: 'f:1:MainAxisAlignment.spaceEvenly'

        })
    }
}
export class FlutterMainAxisSize extends ZacBuilder<native.MainAxisSize> {
    static min() {
        return new FlutterMainAxisSize({
            builder: 'f:1:MainAxisSize.min'

        })
    }
    static max() {
        return new FlutterMainAxisSize({
            builder: 'f:1:MainAxisSize.max'

        })
    }
}
export class FlutterMaterial extends ZacBuilder<native.Material> {
    static new(data: {
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
        return new FlutterMaterial({
            builder: 'f:1:Material',
            ...data
        })
    }
}
export class FlutterMaterialApp extends ZacBuilder<native.MaterialApp> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        navigatorKey?: ZacBuilder<native.GlobalKey>,
        scaffoldMessengerKey?: ZacBuilder<native.GlobalKey>,
        home?: ZacBuilder<native.Widget>,
        initialRoute?: ZacBuilder<string>,
        onGenerateRoute?: FlutterRouteFactory,
        onUnknownRoute?: FlutterRouteFactory,
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
        return new FlutterMaterialApp({
            builder: 'f:1:MaterialApp',
            ...data
        })
    }
}
export class FlutterMaterialBanner extends ZacBuilder<native.MaterialBanner> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        content: ZacBuilder<native.Widget>,
        contentTextStyle?: ZacBuilder<native.TextStyle>,
        actions: ZacListBuilder<native.Widget>,
        elevation?: ZacBuilder<number>,
        leading: ZacBuilder<native.Widget> | null,
        backgroundColor?: ZacBuilder<native.Color>,
        padding?: ZacBuilder<native.EdgeInsetsGeometry>,
        leadingPadding?: ZacBuilder<native.EdgeInsetsGeometry>,
        forceActionsBelow?: ZacBuilder<boolean>,
        onVisible?: ZacBuilder<Array<ZacAction>>
    }) {
        return new FlutterMaterialBanner({
            builder: 'f:1:MaterialBanner',
            ...data
        })
    }
}
export class FlutterMaterialPageRoute extends ZacBuilder<native.Route> {
    static new(data: {
        settings?: ZacBuilder<native.RouteSettings>,
        maintainState?: ZacBuilder<boolean>,
        fullscreenDialog?: ZacBuilder<boolean>,
        child: ZacBuilder<native.Widget>,
        nameOfSharedArguments?: ZacBuilder<string>
    }) {
        return new FlutterMaterialPageRoute({
            builder: 'f:1:MaterialPageRoute',
            ...data
        })
    }
}
export class FlutterNavigator extends ZacBuilder<native.Navigator> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        onGenerateRoute?: FlutterRouteFactory,
        onUnknownRoute?: FlutterRouteFactory,
        initialRoute?: ZacBuilder<string>,
        requestFocus?: ZacBuilder<boolean>
    }) {
        return new FlutterNavigator({
            builder: 'f:1:Navigator',
            ...data
        })
    }
}
export class FlutterNavigatorState extends ZacBuilder<native.NavigatorState> {
    static closest() {
        return new FlutterNavigatorState({
            builder: 'f:1:NavigatorState.closest'

        })
    }
    static root() {
        return new FlutterNavigatorState({
            builder: 'f:1:NavigatorState.root'

        })
    }
    static shared(data: { value: ZacBuilder<native.GlobalKey> }) {
        return new FlutterNavigatorState({
            builder: 'z:1:NavigatorState.shared',
            ...data
        })
    }
}
export class FlutterOffset extends ZacBuilder<native.Offset> {
    static new(data: {
        dx: ZacBuilder<number>,
        dy: ZacBuilder<number>
    }) {
        return new FlutterOffset({
            builder: 'f:1:Offset',
            ...data
        })
    }
    static fromDirection(data: {
        direction: ZacBuilder<number>,
        distance?: ZacBuilder<number>
    }) {
        return new FlutterOffset({
            builder: 'f:1:Offset.fromDirection',
            ...data
        })
    }
}
export class FlutterOffstage extends ZacBuilder<native.Offstage> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        offstage?: ZacBuilder<boolean>,
        child?: ZacBuilder<native.Widget>
    }) {
        return new FlutterOffstage({
            builder: 'f:1:Offstage',
            ...data
        })
    }
}
export class FlutterOpacity extends ZacBuilder<native.Opacity> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        opacity: ZacBuilder<number>,
        alwaysIncludeSemantics?: ZacBuilder<boolean>,
        child?: ZacBuilder<native.Widget>
    }) {
        return new FlutterOpacity({
            builder: 'f:1:Opacity',
            ...data
        })
    }
}
export class FlutterOutlineInputBorder extends ZacBuilder<native.OutlineInputBorder> {
    static new(data: {
        borderSide?: ZacBuilder<native.BorderSide>,
        borderRadius?: ZacBuilder<native.BorderRadius>,
        gapPadding?: ZacBuilder<number>
    }) {
        return new FlutterOutlineInputBorder({
            builder: 'f:1:OutlineInputBorder',
            ...data
        })
    }
}
export class FlutterOutlinedButton extends ZacBuilder<native.OutlinedButton> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        child: ZacBuilder<native.Widget>,
        onPressed?: ZacBuilder<Array<ZacAction>>,
        onLongPress?: ZacBuilder<Array<ZacAction>>,
        autofocus?: ZacBuilder<boolean>,
        clipBehavior?: ZacBuilder<native.Clip>
    }) {
        return new FlutterOutlinedButton({
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
        return new FlutterOutlinedButton({
            builder: 'f:1:OutlinedButton.icon',
            ...data
        })
    }
}
export class FlutterOverflowBox extends ZacBuilder<native.OverflowBox> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        alignment?: ZacBuilder<native.AlignmentGeometry>,
        minWidth?: ZacBuilder<number>,
        maxWidth?: ZacBuilder<number>,
        minHeight?: ZacBuilder<number>,
        maxHeight?: ZacBuilder<number>,
        child?: ZacBuilder<native.Widget>
    }) {
        return new FlutterOverflowBox({
            builder: 'f:1:OverflowBox',
            ...data
        })
    }
}
export class FlutterPadding extends ZacBuilder<native.Padding> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        padding: ZacBuilder<native.EdgeInsetsGeometry>,
        child?: ZacBuilder<native.Widget>
    }) {
        return new FlutterPadding({
            builder: 'f:1:Padding',
            ...data
        })
    }
}
export class FlutterPageRouteBuilder extends ZacBuilder<native.Route> {
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
        return new FlutterPageRouteBuilder({
            builder: 'f:1:PageRouteBuilder',
            ...data
        })
    }
}
export class FlutterPositioned extends ZacBuilder<native.Positioned> {
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
        return new FlutterPositioned({
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
        return new FlutterPositioned({
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
        return new FlutterPositioned({
            builder: 'f:1:Positioned.fill',
            ...data
        })
    }
}
export class FlutterProgressIndicator extends ZacBuilder<native.ProgressIndicator> {
    static linear(data: {
        key?: ZacBuilder<native.Key>,
        value?: ZacBuilder<number>,
        backgroundColor?: ZacBuilder<native.Color>,
        color?: ZacBuilder<native.Color>,
        minHeight?: ZacBuilder<number>,
        semanticsLabel?: ZacBuilder<string>,
        semanticsValue?: ZacBuilder<string>
    }) {
        return new FlutterProgressIndicator({
            builder: 'f:1:LinearProgressIndicator',
            ...data
        })
    }
    static circular(data: {
        key?: ZacBuilder<native.Key>,
        value?: ZacBuilder<number>,
        backgroundColor?: ZacBuilder<native.Color>,
        color?: ZacBuilder<native.Color>,
        strokeWidth?: ZacBuilder<number>,
        semanticsLabel?: ZacBuilder<string>,
        semanticsValue?: ZacBuilder<string>
    }) {
        return new FlutterProgressIndicator({
            builder: 'f:1:CircularProgressIndicator',
            ...data
        })
    }
}
export class FlutterRadius extends ZacBuilder<native.Radius> {
    static circular(data: { radius: ZacBuilder<number> }) {
        return new FlutterRadius({
            builder: 'f:1:Radius.circular',
            ...data
        })
    }
    static elliptical(data: {
        x: ZacBuilder<number>,
        y: ZacBuilder<number>
    }) {
        return new FlutterRadius({
            builder: 'f:1:Radius.elliptical',
            ...data
        })
    }
}
export class FlutterRect extends ZacBuilder<native.Rect> {
    static fromCenter(data: {
        center: FlutterOffset,
        width: ZacBuilder<number>,
        height: ZacBuilder<number>
    }) {
        return new FlutterRect({
            builder: 'f:1:Rect.fromCenter',
            ...data
        })
    }
    static fromCircle(data: {
        center: FlutterOffset,
        radius: ZacBuilder<number>
    }) {
        return new FlutterRect({
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
        return new FlutterRect({
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
        return new FlutterRect({
            builder: 'f:1:Rect.fromLTWH',
            ...data
        })
    }
    static fromPoints(data: {
        a: FlutterOffset,
        b: FlutterOffset
    }) {
        return new FlutterRect({
            builder: 'f:1:Rect.fromPoints',
            ...data
        })
    }
}
export class FlutterRefreshIndicator extends ZacBuilder<native.RefreshIndicator> {
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
        return new FlutterRefreshIndicator({
            builder: 'f:1:RefreshIndicator',
            ...data
        })
    }
}
export class FlutterRefreshIndicatorTriggerMode extends ZacBuilder<native.RefreshIndicatorTriggerMode> {
    static onEdge() {
        return new FlutterRefreshIndicatorTriggerMode({
            builder: 'f:1:RefreshIndicatorTriggerMode.onEdge'

        })
    }
    static anywhere() {
        return new FlutterRefreshIndicatorTriggerMode({
            builder: 'f:1:RefreshIndicatorTriggerMode.anywhere'

        })
    }
}
export class FlutterRotatedBox extends ZacBuilder<native.RotatedBox> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        child?: ZacBuilder<native.Widget>,
        quarterTurns: number
    }) {
        return new FlutterRotatedBox({
            builder: 'f:1:RotatedBox',
            ...data
        })
    }
}
export class FlutterRoundedRectangleBorder extends ZacBuilder<native.ShapeBorder> {
    static new(data: {
        side?: ZacBuilder<native.BorderSide>,
        borderRadius?: ZacBuilder<native.BorderRadiusGeometry>
    }) {
        return new FlutterRoundedRectangleBorder({
            builder: 'f:1:RoundedRectangleBorder',
            ...data
        })
    }
}
export class FlutterRouteFactory extends ZacBuilder<native.RouteFactory> {
    static new(data: {
        routes: Record<string, ZacBuilder<native.Route>>,
        familyNameOfArguments: Record<string, string> | null
    }) {
        return new FlutterRouteFactory({
            builder: 'f:1:RouteFactory',
            ...data
        })
    }
}
export class FlutterRouteSettings extends ZacBuilder<native.RouteSettings> {
    static new(data: {
        name?: ZacBuilder<string>,
        arguments?: ZacBuilder<any>
    }) {
        return new FlutterRouteSettings({
            builder: 'f:1:RouteSettings',
            ...data
        })
    }
}
export class FlutterRow extends ZacBuilder<native.Row> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        mainAxisAlignment?: ZacBuilder<native.MainAxisAlignment>,
        mainAxisSize?: ZacBuilder<native.MainAxisSize>,
        crossAxisAlignment?: ZacBuilder<native.CrossAxisAlignment>,
        textDirection?: ZacBuilder<native.TextDirection>,
        verticalDirection?: ZacBuilder<native.VerticalDirection>,
        textBaseline?: ZacBuilder<native.TextBaseline>,
        children?: ZacListBuilder<native.Widget>
    }) {
        return new FlutterRow({
            builder: 'f:1:Row',
            ...data
        })
    }
}
export class FlutterSafeArea extends ZacBuilder<native.SafeArea> {
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
        return new FlutterSafeArea({
            builder: 'f:1:SafeArea',
            ...data
        })
    }
}
export class FlutterScaffold extends ZacBuilder<native.Scaffold> {
    static new(data: {
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
        return new FlutterScaffold({
            builder: 'f:1:Scaffold',
            ...data
        })
    }
}
export class FlutterScrollController extends ZacBuilder<native.Widget> {
    static new(data: {
        initialScrollOffset?: ZacBuilder<number>,
        keepScrollOffset?: ZacBuilder<boolean>,
        debugLabel?: ZacBuilder<string>,
        family?: any,
        child: ZacBuilder<native.Widget>
    }) {
        return new FlutterScrollController({
            builder: 'z:1:ScrollController.provide',
            ...data
        })
    }
}
export class FlutterScrollPhysics extends ZacBuilder<native.ScrollPhysics> {
    static alwaysScrollable(data: { parent?: FlutterScrollPhysics }) {
        return new FlutterScrollPhysics({
            builder: 'f:1:AlwaysScrollableScrollPhysics',
            ...data
        })
    }
    static bouncingScroll(data: { parent?: FlutterScrollPhysics }) {
        return new FlutterScrollPhysics({
            builder: 'f:1:BouncingScrollPhysics',
            ...data
        })
    }
    static clampingScrollPhysics(data: { parent?: FlutterScrollPhysics }) {
        return new FlutterScrollPhysics({
            builder: 'f:1:ClampingScrollPhysics',
            ...data
        })
    }
}
export class FlutterScrollViewKeyboardDismissBehavior extends ZacBuilder<native.ScrollViewKeyboardDismissBehavior> {
    static manual() {
        return new FlutterScrollViewKeyboardDismissBehavior({
            builder: 'f:1:ScrollViewKeyboardDismissBehavior.manual'

        })
    }
    static onDrag() {
        return new FlutterScrollViewKeyboardDismissBehavior({
            builder: 'f:1:ScrollViewKeyboardDismissBehavior.onDrag'

        })
    }
}
export class FlutterSelectableText extends ZacBuilder<native.SelectableText> {
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
        return new FlutterSelectableText({
            builder: 'f:1:SelectableText',
            ...data
        })
    }
}
export class FlutterShadow extends ZacBuilder<native.Shadow> {
    static new(data: {
        color?: ZacBuilder<native.Color>,
        offset?: ZacBuilder<native.Offset>,
        blurRadius?: ZacBuilder<number>
    }) {
        return new FlutterShadow({
            builder: 'f:1:Shadow',
            ...data
        })
    }
}
export class FlutterShapeDecoration extends ZacBuilder<native.ShapeDecoration> {
    static new(data: {
        color?: ZacBuilder<native.Color>,
        image?: ZacBuilder<native.DecorationImage>,
        gradient?: ZacBuilder<native.Gradient>,
        shadows?: Array<FlutterBoxShadow>,
        shape: ZacBuilder<native.ShapeBorder>
    }) {
        return new FlutterShapeDecoration({
            builder: 'f:1:ShapeDecoration',
            ...data
        })
    }
}
export class FlutterSingleChildScrollView extends ZacBuilder<native.SingleChildScrollView> {
    static new(data: {
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
        return new FlutterSingleChildScrollView({
            builder: 'f:1:SingleChildScrollView',
            ...data
        })
    }
}
export class FlutterSize extends ZacBuilder<native.Size> {
    static new(data: {
        width: ZacBuilder<number>,
        height: ZacBuilder<number>
    }) {
        return new FlutterSize({
            builder: 'f:1:Size',
            ...data
        })
    }
}
export class FlutterSizedBox extends ZacBuilder<native.SizedBox> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        width?: ZacBuilder<number>,
        height?: ZacBuilder<number>,
        child?: ZacBuilder<native.Widget>
    }) {
        return new FlutterSizedBox({
            builder: 'f:1:SizedBox',
            ...data
        })
    }
    static expand(data: {
        key?: ZacBuilder<native.Key>,
        child?: ZacBuilder<native.Widget>
    }) {
        return new FlutterSizedBox({
            builder: 'f:1:SizedBox.expand',
            ...data
        })
    }
    static fromSize(data: {
        key?: ZacBuilder<native.Key>,
        child?: ZacBuilder<native.Widget>,
        size?: ZacBuilder<native.Size>
    }) {
        return new FlutterSizedBox({
            builder: 'f:1:SizedBox.fromSize',
            ...data
        })
    }
    static shrink(data: {
        key?: ZacBuilder<native.Key>,
        child?: ZacBuilder<native.Widget>
    }) {
        return new FlutterSizedBox({
            builder: 'f:1:SizedBox.shrink',
            ...data
        })
    }
    static square(data: {
        key?: ZacBuilder<native.Key>,
        child?: ZacBuilder<native.Widget>,
        dimension?: ZacBuilder<number>
    }) {
        return new FlutterSizedBox({
            builder: 'f:1:SizedBox.square',
            ...data
        })
    }
}
export class FlutterSizedOverflowBox extends ZacBuilder<native.SizedOverflowBox> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        size: ZacBuilder<native.Size>,
        alignment?: ZacBuilder<native.AlignmentGeometry>,
        child?: ZacBuilder<native.Widget>
    }) {
        return new FlutterSizedOverflowBox({
            builder: 'f:1:SizedOverflowBox',
            ...data
        })
    }
}
export class FlutterSliverChildDelegate extends ZacBuilder<native.SliverChildDelegate> {
    static list(data: {
        children: ZacListBuilder<native.Widget>,
        addAutomaticKeepAlives?: ZacBuilder<boolean>,
        addRepaintBoundaries?: ZacBuilder<boolean>,
        addSemanticIndexes?: ZacBuilder<boolean>,
        semanticIndexOffset?: ZacBuilder<number>
    }) {
        return new FlutterSliverChildDelegate({
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
        return new FlutterSliverChildDelegate({
            builder: 'f:1:SliverChildListDelegate.fixed',
            ...data
        })
    }
}
export class FlutterSliverGrid extends ZacBuilder<native.SliverGrid> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        delegate: FlutterSliverChildDelegate,
        gridDelegate: FlutterSliverGridDelegate
    }) {
        return new FlutterSliverGrid({
            builder: 'f:1:SliverGrid',
            ...data
        })
    }
}
export class FlutterSliverGridDelegate extends ZacBuilder<native.SliverGridDelegate> {
    static withFixedCrossAxisCount(data: {
        crossAxisCount: number,
        mainAxisSpacing?: ZacBuilder<number>,
        crossAxisSpacing?: ZacBuilder<number>,
        childAspectRatio?: ZacBuilder<number>,
        mainAxisExtent?: ZacBuilder<number>
    }) {
        return new FlutterSliverGridDelegate({
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
        return new FlutterSliverGridDelegate({
            builder: 'f:1:SliverGridDelegateWithMaxCrossAxisExtent',
            ...data
        })
    }
}
export class FlutterSliverList extends ZacBuilder<native.SliverList> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        delegate: FlutterSliverChildDelegate
    }) {
        return new FlutterSliverList({
            builder: 'f:1:SliverList',
            ...data
        })
    }
}
export class FlutterSliverPadding extends ZacBuilder<native.SliverPadding> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        sliver?: ZacBuilder<native.Widget>,
        padding: ZacBuilder<native.EdgeInsetsGeometry>
    }) {
        return new FlutterSliverPadding({
            builder: 'f:1:SliverPadding',
            ...data
        })
    }
}
export class FlutterSliverToBoxAdapter extends ZacBuilder<native.SliverToBoxAdapter> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        child?: ZacBuilder<native.Widget>
    }) {
        return new FlutterSliverToBoxAdapter({
            builder: 'f:1:SliverToBoxAdapter',
            ...data
        })
    }
}
export class FlutterSmartDashesType extends ZacBuilder<native.SmartDashesType> {
    static disabled() {
        return new FlutterSmartDashesType({
            builder: 'f:1:SmartDashesType.disabled'

        })
    }
    static enabled() {
        return new FlutterSmartDashesType({
            builder: 'f:1:SmartDashesType.enabled'

        })
    }
}
export class FlutterSmartQuotesType extends ZacBuilder<native.SmartQuotesType> {
    static disabled() {
        return new FlutterSmartQuotesType({
            builder: 'f:1:SmartQuotesType.disabled'

        })
    }
    static enabled() {
        return new FlutterSmartQuotesType({
            builder: 'f:1:SmartQuotesType.enabled'

        })
    }
}
export class FlutterSnackBar extends ZacBuilder<native.SnackBar> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        content: ZacBuilder<native.Widget>,
        backgroundColor?: ZacBuilder<native.Color>,
        elevation?: ZacBuilder<number>,
        margin?: ZacBuilder<native.EdgeInsetsGeometry>,
        padding?: ZacBuilder<native.EdgeInsetsGeometry>,
        width?: ZacBuilder<number>,
        shape?: ZacBuilder<native.ShapeBorder>,
        behavior?: FlutterSnackBarBehavior,
        action?: FlutterSnackBarAction,
        onVisible?: ZacBuilder<Array<ZacAction>>
    }) {
        return new FlutterSnackBar({
            builder: 'f:1:SnackBar',
            ...data
        })
    }
}
export class FlutterSnackBarAction extends ZacBuilder<native.SnackBarAction> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        textColor?: ZacBuilder<native.Color>,
        disabledTextColor?: ZacBuilder<native.Color>,
        label: string,
        onPressed: ZacBuilder<Array<ZacAction>> | null
    }) {
        return new FlutterSnackBarAction({
            builder: 'f:1:SnackBarAction',
            ...data
        })
    }
}
export class FlutterSnackBarBehavior extends ZacBuilder<native.SnackBarBehavior> {
    static fixed() {
        return new FlutterSnackBarBehavior({
            builder: 'f:1:SnackBarBehavior.fixed'

        })
    }
    static floating() {
        return new FlutterSnackBarBehavior({
            builder: 'f:1:SnackBarBehavior.floating'

        })
    }
}
export class FlutterSpacer extends ZacBuilder<native.Spacer> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        flex?: ZacBuilder<number>
    }) {
        return new FlutterSpacer({
            builder: 'f:1:Spacer',
            ...data
        })
    }
}
export class FlutterStack extends ZacBuilder<native.Stack> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        alignment?: ZacBuilder<native.AlignmentGeometry>,
        textDirection?: ZacBuilder<native.TextDirection>,
        fit?: ZacBuilder<native.StackFit>,
        clipBehavior?: ZacBuilder<native.Clip>,
        children?: ZacListBuilder<native.Widget>
    }) {
        return new FlutterStack({
            builder: 'f:1:Stack',
            ...data
        })
    }
}
export class FlutterStackFit extends ZacBuilder<native.StackFit> {
    static expand() {
        return new FlutterStackFit({
            builder: 'f:1:StackFit.expand'

        })
    }
    static loose() {
        return new FlutterStackFit({
            builder: 'f:1:StackFit.loose'

        })
    }
    static passthrough() {
        return new FlutterStackFit({
            builder: 'f:1:StackFit.passthrough'

        })
    }
}
export class FlutterStrutStyle extends ZacBuilder<native.StrutStyle> {
    static new(data: {
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
        return new FlutterStrutStyle({
            builder: 'f:1:StrutStyle',
            ...data
        })
    }
    static fromTextStyle(data: {
        textStyle: FlutterTextStyle,
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
        return new FlutterStrutStyle({
            builder: 'f:1:StrutStyle.fromTextStyle',
            ...data
        })
    }
}
export class FlutterSystemUiOverlayStyle extends ZacBuilder<native.SystemUiOverlayStyle> {
    static new(data: {
        systemNavigationBarColor?: ZacBuilder<native.Color>,
        systemNavigationBarDividerColor?: ZacBuilder<native.Color>,
        systemNavigationBarIconBrightness?: ZacBuilder<native.Brightness>,
        systemNavigationBarContrastEnforced?: ZacBuilder<boolean>,
        statusBarColor?: ZacBuilder<native.Color>,
        statusBarBrightness?: ZacBuilder<native.Brightness>,
        statusBarIconBrightness?: ZacBuilder<native.Brightness>,
        systemStatusBarContrastEnforced?: ZacBuilder<boolean>
    }) {
        return new FlutterSystemUiOverlayStyle({
            builder: 'f:1:SystemUiOverlayStyle',
            ...data
        })
    }
}
export class FlutterText extends ZacBuilder<native.Text> {
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
        return new FlutterText({
            builder: 'f:1:Text',
            ...data
        })
    }
}
export class FlutterTextAlign extends ZacBuilder<native.TextAlign> {
    static center() {
        return new FlutterTextAlign({
            builder: 'f:1:TextAlign.center'

        })
    }
    static end() {
        return new FlutterTextAlign({
            builder: 'f:1:TextAlign.end'

        })
    }
    static justify() {
        return new FlutterTextAlign({
            builder: 'f:1:TextAlign.justify'

        })
    }
    static left() {
        return new FlutterTextAlign({
            builder: 'f:1:TextAlign.left'

        })
    }
    static right() {
        return new FlutterTextAlign({
            builder: 'f:1:TextAlign.right'

        })
    }
    static start() {
        return new FlutterTextAlign({
            builder: 'f:1:TextAlign.start'

        })
    }
}
export class FlutterTextAlignVertical extends ZacBuilder<native.TextAlignVertical> {
    static new(data: { y: ZacBuilder<number> }) {
        return new FlutterTextAlignVertical({
            builder: 'f:1:TextAlignVertical',
            ...data
        })
    }
    static bottom() {
        return new FlutterTextAlignVertical({
            builder: 'f:1:TextAlignVertical.bottom'

        })
    }
    static center() {
        return new FlutterTextAlignVertical({
            builder: 'f:1:TextAlignVertical.center'

        })
    }
    static top() {
        return new FlutterTextAlignVertical({
            builder: 'f:1:TextAlignVertical.top'

        })
    }
}
export class FlutterTextBaseline extends ZacBuilder<native.TextBaseline> {
    static alphabetic() {
        return new FlutterTextBaseline({
            builder: 'f:1:TextBaseline.alphabetic'

        })
    }
    static ideographic() {
        return new FlutterTextBaseline({
            builder: 'f:1:TextBaseline.ideographic'

        })
    }
}
export class FlutterTextButton extends ZacBuilder<native.TextButton> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        child: ZacBuilder<native.Widget>,
        onPressed?: ZacBuilder<Array<ZacAction>>,
        onLongPress?: ZacBuilder<Array<ZacAction>>,
        autofocus?: ZacBuilder<boolean>,
        clipBehavior?: ZacBuilder<native.Clip>
    }) {
        return new FlutterTextButton({
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
        return new FlutterTextButton({
            builder: 'f:1:TextButton.icon',
            ...data
        })
    }
}
export class FlutterTextCapitalization extends ZacBuilder<native.TextCapitalization> {
    static characters() {
        return new FlutterTextCapitalization({
            builder: 'f:1:TextCapitalization.characters'

        })
    }
    static none() {
        return new FlutterTextCapitalization({
            builder: 'f:1:TextCapitalization.none'

        })
    }
    static sentences() {
        return new FlutterTextCapitalization({
            builder: 'f:1:TextCapitalization.sentences'

        })
    }
    static words() {
        return new FlutterTextCapitalization({
            builder: 'f:1:TextCapitalization.words'

        })
    }
}
export class FlutterTextDecoration extends ZacBuilder<native.TextDecoration> {
    static lineThrough() {
        return new FlutterTextDecoration({
            builder: 'f:1:TextDecoration.lineThrough'

        })
    }
    static none() {
        return new FlutterTextDecoration({
            builder: 'f:1:TextDecoration.none'

        })
    }
    static overline() {
        return new FlutterTextDecoration({
            builder: 'f:1:TextDecoration.overline'

        })
    }
    static underline() {
        return new FlutterTextDecoration({
            builder: 'f:1:TextDecoration.underline'

        })
    }
}
export class FlutterTextDecorationStyle extends ZacBuilder<native.TextDecorationStyle> {
    static dashed() {
        return new FlutterTextDecorationStyle({
            builder: 'f:1:TextDecorationStyle.dashed'

        })
    }
    static dotted() {
        return new FlutterTextDecorationStyle({
            builder: 'f:1:TextDecorationStyle.dotted'

        })
    }
    static double() {
        return new FlutterTextDecorationStyle({
            builder: 'f:1:TextDecorationStyle.double'

        })
    }
    static solid() {
        return new FlutterTextDecorationStyle({
            builder: 'f:1:TextDecorationStyle.solid'

        })
    }
    static wavy() {
        return new FlutterTextDecorationStyle({
            builder: 'f:1:TextDecorationStyle.wavy'

        })
    }
}
export class FlutterTextDirection extends ZacBuilder<native.TextDirection> {
    static rtl() {
        return new FlutterTextDirection({
            builder: 'f:1:TextDirection.rtl'

        })
    }
    static ltr() {
        return new FlutterTextDirection({
            builder: 'f:1:TextDirection.ltr'

        })
    }
}
export class FlutterTextField extends ZacBuilder<native.TextField> {
    static new(data: {
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
        return new FlutterTextField({
            builder: 'f:1:TextField',
            ...data
        })
    }
}
export class FlutterTextHeightBehavior extends ZacBuilder<native.TextHeightBehavior> {
    static new(data: {
        applyHeightToFirstAscent?: ZacBuilder<boolean>,
        applyHeightToLastDescent?: ZacBuilder<boolean>,
        leadingDistribution?: ZacBuilder<native.TextLeadingDistribution>
    }) {
        return new FlutterTextHeightBehavior({
            builder: 'f:1:TextHeightBehavior',
            ...data
        })
    }
}
export class FlutterTextInputAction extends ZacBuilder<native.TextInputAction> {
    static continueAction() {
        return new FlutterTextInputAction({
            builder: 'f:1:TextInputAction.continueAction'

        })
    }
    static done() {
        return new FlutterTextInputAction({
            builder: 'f:1:TextInputAction.done'

        })
    }
    static emergencyCall() {
        return new FlutterTextInputAction({
            builder: 'f:1:TextInputAction.emergencyCall'

        })
    }
    static go() {
        return new FlutterTextInputAction({
            builder: 'f:1:TextInputAction.go'

        })
    }
    static join() {
        return new FlutterTextInputAction({
            builder: 'f:1:TextInputAction.join'

        })
    }
    static newline() {
        return new FlutterTextInputAction({
            builder: 'f:1:TextInputAction.newline'

        })
    }
    static next() {
        return new FlutterTextInputAction({
            builder: 'f:1:TextInputAction.next'

        })
    }
    static none() {
        return new FlutterTextInputAction({
            builder: 'f:1:TextInputAction.none'

        })
    }
    static previous() {
        return new FlutterTextInputAction({
            builder: 'f:1:TextInputAction.previous'

        })
    }
    static route() {
        return new FlutterTextInputAction({
            builder: 'f:1:TextInputAction.route'

        })
    }
    static search() {
        return new FlutterTextInputAction({
            builder: 'f:1:TextInputAction.search'

        })
    }
    static send() {
        return new FlutterTextInputAction({
            builder: 'f:1:TextInputAction.send'

        })
    }
    static unspecified() {
        return new FlutterTextInputAction({
            builder: 'f:1:TextInputAction.unspecified'

        })
    }
}
export class FlutterTextInputType extends ZacBuilder<native.TextInputType> {
    static datetime() {
        return new FlutterTextInputType({
            builder: 'f:1:TextInputType.datetime'

        })
    }
    static emailAddress() {
        return new FlutterTextInputType({
            builder: 'f:1:TextInputType.emailAddress'

        })
    }
    static multiline() {
        return new FlutterTextInputType({
            builder: 'f:1:TextInputType.multiline'

        })
    }
    static name_() {
        return new FlutterTextInputType({
            builder: 'f:1:TextInputType.name'

        })
    }
    static none() {
        return new FlutterTextInputType({
            builder: 'f:1:TextInputType.none'

        })
    }
    static number() {
        return new FlutterTextInputType({
            builder: 'f:1:TextInputType.number'

        })
    }
    static phone() {
        return new FlutterTextInputType({
            builder: 'f:1:TextInputType.phone'

        })
    }
    static streetAddress() {
        return new FlutterTextInputType({
            builder: 'f:1:TextInputType.streetAddress'

        })
    }
    static text() {
        return new FlutterTextInputType({
            builder: 'f:1:TextInputType.text'

        })
    }
    static url() {
        return new FlutterTextInputType({
            builder: 'f:1:TextInputType.url'

        })
    }
    static visiblePassword() {
        return new FlutterTextInputType({
            builder: 'f:1:TextInputType.visiblePassword'

        })
    }
}
export class FlutterTextLeadingDistribution extends ZacBuilder<native.TextLeadingDistribution> {
    static even() {
        return new FlutterTextLeadingDistribution({
            builder: 'f:1:TextLeadingDistribution.even'

        })
    }
    static proportional() {
        return new FlutterTextLeadingDistribution({
            builder: 'f:1:TextLeadingDistribution.proportional'

        })
    }
}
export class FlutterTextOverflow extends ZacBuilder<native.TextOverflow> {
    static clip() {
        return new FlutterTextOverflow({
            builder: 'f:1:TextOverflow.clip'

        })
    }
    static ellipsis() {
        return new FlutterTextOverflow({
            builder: 'f:1:TextOverflow.ellipsis'

        })
    }
    static fade() {
        return new FlutterTextOverflow({
            builder: 'f:1:TextOverflow.fade'

        })
    }
    static visible() {
        return new FlutterTextOverflow({
            builder: 'f:1:TextOverflow.visible'

        })
    }
}
export class FlutterTextStyle extends ZacBuilder<native.TextStyle> {
    static new(data: {
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
        return new FlutterTextStyle({
            builder: 'f:1:TextStyle',
            ...data
        })
    }
}
export class FlutterTextWidthBasis extends ZacBuilder<native.TextWidthBasis> {
    static longestLine() {
        return new FlutterTextWidthBasis({
            builder: 'f:1:TextWidthBasis.longestLine'

        })
    }
    static parent() {
        return new FlutterTextWidthBasis({
            builder: 'f:1:TextWidthBasis.parent'

        })
    }
}
export class FlutterUnconstrainedBox extends ZacBuilder<native.UnconstrainedBox> {
    static new(data: {
        key?: ZacBuilder<native.Key>,
        child?: ZacBuilder<native.Widget>,
        textDirection?: ZacBuilder<native.TextDirection>,
        alignment?: ZacBuilder<native.AlignmentGeometry>,
        constrainedAxis?: ZacBuilder<native.Axis>,
        clipBehavior?: ZacBuilder<native.Clip>
    }) {
        return new FlutterUnconstrainedBox({
            builder: 'f:1:UnconstrainedBox',
            ...data
        })
    }
}
export class FlutterUnderlineInputBorder extends ZacBuilder<native.UnderlineInputBorder> {
    static new(data: {
        borderSide?: ZacBuilder<native.BorderSide>,
        borderRadius?: ZacBuilder<native.BorderRadius>
    }) {
        return new FlutterUnderlineInputBorder({
            builder: 'f:1:UnderlineInputBorder',
            ...data
        })
    }
}
export class FlutterValueKey extends ZacBuilder<native.ValueKey> {
    static new(data: { value: string }) {
        return new FlutterValueKey({
            builder: 'f:1:ValueKey',
            ...data
        })
    }
}
export class FlutterVerticalDirection extends ZacBuilder<native.VerticalDirection> {
    static up() {
        return new FlutterVerticalDirection({
            builder: 'f:1:VerticalDirection.up'

        })
    }
    static down() {
        return new FlutterVerticalDirection({
            builder: 'f:1:VerticalDirection.down'

        })
    }
}
export class FlutterWrap extends ZacBuilder<native.Wrap> {
    static new(data: {
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
        return new FlutterWrap({
            builder: 'f:1:Wrap',
            ...data
        })
    }
}
export class FlutterWrapAlignment extends ZacBuilder<native.WrapAlignment> {
    static start() {
        return new FlutterWrapAlignment({
            builder: 'f:1:WrapAlignment.start'

        })
    }
    static end() {
        return new FlutterWrapAlignment({
            builder: 'f:1:WrapAlignment.end'

        })
    }
    static center() {
        return new FlutterWrapAlignment({
            builder: 'f:1:WrapAlignment.center'

        })
    }
    static spaceBetween() {
        return new FlutterWrapAlignment({
            builder: 'f:1:WrapAlignment.spaceBetween'

        })
    }
    static spaceAround() {
        return new FlutterWrapAlignment({
            builder: 'f:1:WrapAlignment.spaceAround'

        })
    }
    static spaceEvenly() {
        return new FlutterWrapAlignment({
            builder: 'f:1:WrapAlignment.spaceEvenly'

        })
    }
}
export class FlutterWrapCrossAlignment extends ZacBuilder<native.WrapCrossAlignment> {
    static center() {
        return new FlutterWrapCrossAlignment({
            builder: 'f:1:WrapCrossAlignment.center'

        })
    }
    static end() {
        return new FlutterWrapCrossAlignment({
            builder: 'f:1:WrapCrossAlignment.end'

        })
    }
    static start() {
        return new FlutterWrapCrossAlignment({
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
        autoCreate: boolean
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
        autoCreate: boolean
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
        autoCreate: boolean
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
        autoCreate: boolean
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
        autoCreate: boolean
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
        autoCreate: boolean
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
        autoCreate: boolean
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
        autoCreate: boolean
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
        autoCreate: boolean
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
        autoCreate: boolean
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
    static join(data: { separator?: string }) {
        return new IterableTransformer({
            builder: 'z:1:Transformer:Iterable.join',
            ...data
        })
    }
    static contains(data: { element: ZacBuilder<any> | null }) {
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
    static containsKey(data: { key: ZacBuilder<any> | null }) {
        return new MapTransformer({
            builder: 'z:1:Transformer:Map.containsKey',
            ...data
        })
    }
    static containsValue(data: { value: ZacBuilder<any> | null }) {
        return new MapTransformer({
            builder: 'z:1:Transformer:Map.containsValue',
            ...data
        })
    }
    static mapper(data: {
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
    static equals(data: { other: any | null }) {
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
    static equalsSharedValue(data: { value: ZacBuilder<any> | null }) {
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
export class FlutterDialogActions extends ZacAction {
    static showDialog(data: {
        child: ZacBuilder<native.Widget>,
        barrierDismissible?: ZacBuilder<boolean>,
        barrierColor?: ZacBuilder<native.Color>,
        barrierLabel?: ZacBuilder<string>,
        useSafeArea?: ZacBuilder<boolean>,
        useRootNavigator?: ZacBuilder<boolean>,
        routeSettings?: ZacBuilder<native.RouteSettings>
    }) {
        return new FlutterDialogActions({
            builder: 'f:1:showDialog',
            ...data
        })
    }
}
export class FlutterNavigatorActions extends ZacAction {
    static push(data: {
        route: ZacBuilder<native.Route>,
        navigatorState?: ZacBuilder<native.NavigatorState>
    }) {
        return new FlutterNavigatorActions({
            builder: 'f:1:Navigator.push',
            ...data
        })
    }
    static pushNamed(data: {
        routeName: ZacBuilder<string>,
        arguments?: any,
        navigatorState?: ZacBuilder<native.NavigatorState>
    }) {
        return new FlutterNavigatorActions({
            builder: 'f:1:Navigator.pushNamed',
            ...data
        })
    }
    static pop(data: {
        actions?: ZacBuilder<Array<ZacAction>>,
        navigatorState?: ZacBuilder<native.NavigatorState>
    }) {
        return new FlutterNavigatorActions({
            builder: 'f:1:Navigator.pop',
            ...data
        })
    }
    static maybePop(data: {
        actions?: ZacBuilder<Array<ZacAction>>,
        navigatorState?: ZacBuilder<native.NavigatorState>
    }) {
        return new FlutterNavigatorActions({
            builder: 'f:1:Navigator.maybePop',
            ...data
        })
    }
    static pushReplacement(data: {
        route: ZacBuilder<native.Route>,
        result?: ZacBuilder<Array<ZacAction>>,
        navigatorState?: ZacBuilder<native.NavigatorState>
    }) {
        return new FlutterNavigatorActions({
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
        return new FlutterNavigatorActions({
            builder: 'f:1:Navigator.pushReplacementNamed',
            ...data
        })
    }
    static popUntilRouteName(data: {
        routeName: ZacBuilder<string>,
        navigatorState?: ZacBuilder<native.NavigatorState>
    }) {
        return new FlutterNavigatorActions({
            builder: 'z:1:Navigator.popUntilRouteName',
            ...data
        })
    }
}
export class FlutterScaffoldActions extends ZacAction {
    static openDrawer() {
        return new FlutterScaffoldActions({
            builder: 'f:1:Scaffold.openDrawer'

        })
    }
    static openEndDrawer() {
        return new FlutterScaffoldActions({
            builder: 'f:1:Scaffold.openEndDrawer'

        })
    }
    static showBodyScrim(data: {
        value: boolean,
        opacity: ZacBuilder<number>
    }) {
        return new FlutterScaffoldActions({
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
        constraints?: FlutterBoxConstraints,
        enableDrag?: ZacBuilder<boolean>
    }) {
        return new FlutterScaffoldActions({
            builder: 'f:1:Scaffold.showBottomSheet',
            ...data
        })
    }
}
export class FlutterScaffoldMessenger extends ZacAction {
    static showSnackBar(data: { snackBar: FlutterSnackBar }) {
        return new FlutterScaffoldMessenger({
            builder: 'f:1:ScaffoldMessenger.showSnackBar',
            ...data
        })
    }
    static hideCurrentSnackBar() {
        return new FlutterScaffoldMessenger({
            builder: 'f:1:ScaffoldMessenger.hideCurrentSnackBar'

        })
    }
    static removeCurrentSnackBar() {
        return new FlutterScaffoldMessenger({
            builder: 'f:1:ScaffoldMessenger.removeCurrentSnackBar'

        })
    }
    static showMaterialBanner(data: { materialBanner: FlutterMaterialBanner }) {
        return new FlutterScaffoldMessenger({
            builder: 'f:1:ScaffoldMessenger.showMaterialBanner',
            ...data
        })
    }
    static hideCurrentMaterialBanner() {
        return new FlutterScaffoldMessenger({
            builder: 'f:1:ScaffoldMessenger.hideCurrentMaterialBanner'

        })
    }
    static removeCurrentMaterialBanner() {
        return new FlutterScaffoldMessenger({
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
