import { FlutterWidget, ZacConverter } from "../../base";
export class Builder extends FlutterWidget {
    constructor(data) {
        super(data);
    }
    static new(data) {
        return new Builder(Object.assign({ converter: 'f:1:Builder' }, data));
    }
}
export class ClipOval extends FlutterWidget {
    constructor(data) {
        super(data);
    }
    static new(data) {
        return new ClipOval(Object.assign({ converter: 'f:1:ClipOval' }, data));
    }
}
export class ClipRect extends FlutterWidget {
    constructor(data) {
        super(data);
    }
    static new(data) {
        return new ClipRect(Object.assign({ converter: 'f:1:ClipRect' }, data));
    }
}
export class DecoratedBox extends FlutterWidget {
    constructor(data) {
        super(data);
    }
    static new(data) {
        return new DecoratedBox(Object.assign({ converter: 'f:1:DecoratedBox' }, data));
    }
}
export class FractionalTranslation extends FlutterWidget {
    constructor(data) {
        super(data);
    }
    static new(data) {
        return new FractionalTranslation(Object.assign({ converter: 'f:1:FractionalTranslation' }, data));
    }
}
export class GestureDetector extends FlutterWidget {
    constructor(data) {
        super(data);
    }
    static new(data) {
        return new GestureDetector(Object.assign({ converter: 'f:1:GestureDetector' }, data));
    }
}
export class Icon extends FlutterWidget {
    constructor(data) {
        super(data);
    }
    static new(data) {
        return new Icon(Object.assign({ converter: 'f:1:Icon' }, data));
    }
}
export class IconData extends FlutterWidget {
    constructor(data) {
        super(data);
    }
    static new(data) {
        return new IconData(Object.assign({ converter: 'f:1:IconData' }, data));
    }
}
export class IconThemeData extends FlutterWidget {
    static new(data) {
        return new IconThemeData(Object.assign({ converter: 'f:1:IconThemeData' }, data));
    }
}
export class IgnorePointer extends FlutterWidget {
    constructor(data) {
        super(data);
    }
    static new(data) {
        return new IgnorePointer(Object.assign({ converter: 'f:1:IgnorePointer' }, data));
    }
}
export class FlutterImage extends FlutterWidget {
    constructor(data) {
        super(data);
    }
    static network(data) {
        return new FlutterImage(Object.assign({ converter: 'f:1:Image.network' }, data));
    }
    static asset(data) {
        return new FlutterImage(Object.assign({ converter: 'f:1:Image.asset' }, data));
    }
}
export class InteractiveViewer extends FlutterWidget {
    constructor(data) {
        super(data);
    }
    static new(data) {
        return new InteractiveViewer(Object.assign({ converter: 'f:1:InteractiveViewer' }, data));
    }
}
export class Opacity extends FlutterWidget {
    constructor(data) {
        super(data);
    }
    static new(data) {
        return new Opacity(Object.assign({ converter: 'f:1:Opacity' }, data));
    }
}
export class RotatedBox extends FlutterWidget {
    constructor(data) {
        super(data);
    }
    static new(data) {
        return new RotatedBox(Object.assign({ converter: 'f:1:RotatedBox' }, data));
    }
}
export class ScrollPhysics extends ZacConverter {
}
export class AlwaysScrollableScrollPhysics extends ScrollPhysics {
    constructor(data) {
        super(data);
    }
    static new(data) {
        return new AlwaysScrollableScrollPhysics(Object.assign({ converter: 'f:1:AlwaysScrollableScrollPhysics' }, data));
    }
}
export class BouncingScrollPhysics extends ScrollPhysics {
    constructor(data) {
        super(data);
    }
    static new(data) {
        return new BouncingScrollPhysics(Object.assign({ converter: 'f:1:BouncingScrollPhysics' }, data));
    }
}
export class ClampingScrollPhysics extends ScrollPhysics {
    constructor(data) {
        super(data);
    }
    static new(data) {
        return new ClampingScrollPhysics(Object.assign({ converter: 'f:1:ClampingScrollPhysics' }, data));
    }
}
export class FlutterText extends FlutterWidget {
    constructor(data) {
        super(data);
    }
    static new(data) {
        return new FlutterText(Object.assign({ converter: 'f:1:Text' }, data));
    }
}
