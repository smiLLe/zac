import { ZacConverter } from "../base";
import { FlutterDartUiShadow } from "./dart_ui";
export class BoxShape extends ZacConverter {
    constructor(data) {
        super(data);
    }
    static circle() {
        return new BoxShape({ converter: 'f:1:BoxShape.circle' });
    }
    static rectangle() {
        return new BoxShape({ converter: 'f:1:BoxShape.rectangle' });
    }
}
export class Axis extends ZacConverter {
    constructor(data) {
        super(data);
    }
    static horizontal() {
        return new Axis({ converter: 'f:1:Axis.horizontal' });
    }
    static vertical() {
        return new Axis({ converter: 'f:1:Axis.vertical' });
    }
}
export class VerticalDirection extends ZacConverter {
    constructor(data) {
        super(data);
    }
    static up() {
        return new VerticalDirection({ converter: 'f:1:VerticalDirection.up' });
    }
    static down() {
        return new VerticalDirection({ converter: 'f:1:VerticalDirection.down' });
    }
}
export class TextOverflow extends ZacConverter {
    constructor(data) {
        super(data);
    }
    static clip() {
        return new TextOverflow({ converter: 'f:1:TextOverflow.clip' });
    }
    static ellipsis() {
        return new TextOverflow({ converter: 'f:1:TextOverflow.ellipsis' });
    }
    static fade() {
        return new TextOverflow({ converter: 'f:1:TextOverflow.fade' });
    }
    static visible() {
        return new TextOverflow({ converter: 'f:1:TextOverflow.visible' });
    }
}
export class StrutStyle extends ZacConverter {
    constructor(data) {
        super(data);
    }
    static new(data) {
        return new StrutStyle(Object.assign({ converter: 'f:1:StrutStyle' }, data));
    }
    static fromTextStyle(data) {
        return new StrutStyle(Object.assign({ converter: 'f:1:StrutStyle.fromTextStyle' }, data));
    }
}
export class TextWidthBasis extends ZacConverter {
    constructor(data) {
        super(data);
    }
    static longestLine() {
        return new TextWidthBasis({ converter: 'f:1:TextWidthBasis.longestLine' });
    }
    static parent() {
        return new TextWidthBasis({ converter: 'f:1:TextWidthBasis.parent' });
    }
}
export class BoxFit extends ZacConverter {
    constructor(data) {
        super(data);
    }
    static contain() {
        return new BoxFit({ converter: 'f:1:BoxFit.contain' });
    }
    static cover() {
        return new BoxFit({ converter: 'f:1:BoxFit.cover' });
    }
    static fill() {
        return new BoxFit({ converter: 'f:1:BoxFit.fill' });
    }
    static fitHeight() {
        return new BoxFit({ converter: 'f:1:BoxFit.fitHeight' });
    }
    static fitWidth() {
        return new BoxFit({ converter: 'f:1:BoxFit.fitWidth' });
    }
    static none() {
        return new BoxFit({ converter: 'f:1:BoxFit.none' });
    }
    static scaleDown() {
        return new BoxFit({ converter: 'f:1:BoxFit.scaleDown' });
    }
}
export class ImageRepeat extends ZacConverter {
    constructor(data) {
        super(data);
    }
    static noRepeat() {
        return new ImageRepeat({ converter: 'f:1:ImageRepeat.noRepeat' });
    }
    static repeat() {
        return new ImageRepeat({ converter: 'f:1:ImageRepeat.repeat' });
    }
    static repeatX() {
        return new ImageRepeat({ converter: 'f:1:ImageRepeat.repeatX' });
    }
    static repeatY() {
        return new ImageRepeat({ converter: 'f:1:ImageRepeat.repeatY' });
    }
}
export class TextStyle extends ZacConverter {
    constructor(data) {
        super(data);
    }
    static new(data) {
        return new TextStyle(Object.assign({ converter: 'f:1:TextStyle' }, data));
    }
}
export class TextAlignVertical extends ZacConverter {
    constructor(data) {
        super(data);
    }
    static new(data) {
        return new TextAlignVertical(Object.assign({ converter: 'f:1:TextAlignVertical' }, data));
    }
    static bottom() {
        return new TextAlignVertical({ converter: 'f:1:TextAlignVertical.bottom' });
    }
    static center() {
        return new TextAlignVertical({ converter: 'f:1:TextAlignVertical.center' });
    }
    static top() {
        return new TextAlignVertical({ converter: 'f:1:TextAlignVertical.top' });
    }
}
export class BoxShadow extends FlutterDartUiShadow {
    constructor(data) {
        super(data);
    }
    static new(data) {
        return new BoxShadow(Object.assign({ converter: 'f:1:BoxShadow' }, data));
    }
}
export class FlutterAlignmentGeometry extends ZacConverter {
}
export class Alignment extends FlutterAlignmentGeometry {
    constructor(data) {
        super(data);
    }
    static new(data) {
        return new Alignment(Object.assign({ converter: 'f:1:Alignment' }, data));
    }
    static bottomCenter() {
        return new Alignment({ converter: 'f:1:Alignment.bottomCenter' });
    }
    static bottomLeft() {
        return new Alignment({ converter: 'f:1:Alignment.bottomLeft' });
    }
    static bottomRight() {
        return new Alignment({ converter: 'f:1:Alignment.bottomRight' });
    }
    static center() {
        return new Alignment({ converter: 'f:1:Alignment.center' });
    }
    static centerLeft() {
        return new Alignment({ converter: 'f:1:Alignment.centerLeft' });
    }
    static centerRight() {
        return new Alignment({ converter: 'f:1:Alignment.centerRight' });
    }
    static topCenter() {
        return new Alignment({ converter: 'f:1:Alignment.topCenter' });
    }
    static topLeft() {
        return new Alignment({ converter: 'f:1:Alignment.topLeft' });
    }
    static topRight() {
        return new Alignment({ converter: 'f:1:Alignment.topRight' });
    }
}
export class AlignmentDirectional extends FlutterAlignmentGeometry {
    constructor(data) {
        super(data);
    }
    static new(data) {
        return new AlignmentDirectional(Object.assign({ converter: 'f:1:AlignmentDirectional' }, data));
    }
    static bottomCenter() {
        return new AlignmentDirectional({ converter: 'f:1:AlignmentDirectional.bottomCenter' });
    }
    static bottomEnd() {
        return new AlignmentDirectional({ converter: 'f:1:AlignmentDirectional.bottomEnd' });
    }
    static bottomStart() {
        return new AlignmentDirectional({ converter: 'f:1:AlignmentDirectional.bottomStart' });
    }
    static center() {
        return new AlignmentDirectional({ converter: 'f:1:AlignmentDirectional.center' });
    }
    static centerEnd() {
        return new AlignmentDirectional({ converter: 'f:1:AlignmentDirectional.centerEnd' });
    }
    static centerStart() {
        return new AlignmentDirectional({ converter: 'f:1:AlignmentDirectional.centerStart' });
    }
    static topCenter() {
        return new AlignmentDirectional({ converter: 'f:1:AlignmentDirectional.topCenter' });
    }
    static topEnd() {
        return new AlignmentDirectional({ converter: 'f:1:AlignmentDirectional.topEnd' });
    }
    static topStart() {
        return new AlignmentDirectional({ converter: 'f:1:AlignmentDirectional.topStart' });
    }
}
export class FractionalOffset extends FlutterAlignmentGeometry {
    constructor(data) {
        super(data);
    }
    static new(data) {
        return new FractionalOffset(Object.assign({ converter: 'f:1:FractionalOffset' }, data));
    }
}
export class FlutterShapeBorder extends ZacConverter {
}
export class FlutterBoxBorder extends FlutterShapeBorder {
}
export class BorderDirectional extends FlutterBoxBorder {
    constructor(data) {
        super(data);
    }
    static new(data) {
        return new BorderDirectional(Object.assign({ converter: 'f:1:BorderDirectional' }, data));
    }
}
export class Border extends FlutterBoxBorder {
    constructor(data) {
        super(data);
    }
    static new(data) {
        return new Border(Object.assign({ converter: 'f:1:Border' }, data));
    }
    static all(data) {
        return new Border(Object.assign({ converter: 'f:1:Border.all' }, data));
    }
}
export class BorderStyle extends FlutterBoxBorder {
    constructor(data) {
        super(data);
    }
    static none() {
        return new BorderStyle({ converter: 'f:1:BorderStyle.none' });
    }
    static solid() {
        return new BorderStyle({ converter: 'f:1:BorderStyle.solid' });
    }
}
export class FlutterBorderRadiusGeometry extends ZacConverter {
}
export class BorderRadius extends FlutterBorderRadiusGeometry {
    constructor(data) {
        super(data);
    }
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
    constructor(data) {
        super(data);
    }
    static new(data) {
        return new BorderSide(Object.assign({ converter: 'f:1:BorderSide' }, data));
    }
}
export class FlutterOutlinedBorder extends FlutterShapeBorder {
}
export class CircleBorder extends FlutterOutlinedBorder {
    constructor(data) {
        super(data);
    }
    static new(data) {
        return new CircleBorder(Object.assign({ converter: 'f:1:CircleBorder' }, data));
    }
}
export class RoundedRectangleBorder extends FlutterOutlinedBorder {
    constructor(data) {
        super(data);
    }
    static new(data) {
        return new RoundedRectangleBorder(Object.assign({ converter: 'f:1:RoundedRectangleBorder' }, data));
    }
}
export class FlutterDecoration extends ZacConverter {
}
export class BoxDecoration extends FlutterDecoration {
    constructor(data) {
        super(data);
    }
    static new(data) {
        return new BoxDecoration(Object.assign({ converter: 'f:1:BoxDecoration' }, data));
    }
}
export class ShapeDecoration extends FlutterDecoration {
    constructor(data) {
        super(data);
    }
    static new(data) {
        return new ShapeDecoration(Object.assign({ converter: 'f:1:ShapeDecoration' }, data));
    }
}
export class FlutterEdgeInsetsGeometry extends ZacConverter {
}
export class EdgeInsets extends FlutterEdgeInsetsGeometry {
    constructor(data) {
        super(data);
    }
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
export class EdgeInsetsDirectional extends FlutterEdgeInsetsGeometry {
    constructor(data) {
        super(data);
    }
    static all(data) {
        return new EdgeInsetsDirectional(Object.assign({ converter: 'f:1:EdgeInsetsDirectional.all' }, data));
    }
    static only(data) {
        return new EdgeInsetsDirectional(Object.assign({ converter: 'f:1:EdgeInsetsDirectional.only' }, data));
    }
}
