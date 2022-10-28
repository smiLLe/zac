import { ZacConverter } from "../base";
export class HitTestBehavior extends ZacConverter {
    constructor(data) {
        super(data);
    }
    static deferToChild() {
        return new HitTestBehavior({ converter: 'f:1:HitTestBehavior.deferToChild' });
    }
    static opaque() {
        return new HitTestBehavior({ converter: 'f:1:HitTestBehavior.opaque' });
    }
    static translucent() {
        return new HitTestBehavior({ converter: 'f:1:HitTestBehavior.translucent' });
    }
}
export class CrossAxisAlignment extends ZacConverter {
    constructor(data) {
        super(data);
    }
    static baseline() {
        return new CrossAxisAlignment({ converter: 'f:1:CrossAxisAlignment.baseline' });
    }
    static center() {
        return new CrossAxisAlignment({ converter: 'f:1:CrossAxisAlignment.center' });
    }
    static end() {
        return new CrossAxisAlignment({ converter: 'f:1:CrossAxisAlignment.end' });
    }
    static start() {
        return new CrossAxisAlignment({ converter: 'f:1:CrossAxisAlignment.start' });
    }
    static stretch() {
        return new CrossAxisAlignment({ converter: 'f:1:CrossAxisAlignment.stretch' });
    }
}
export class MainAxisAlignment extends ZacConverter {
    constructor(data) {
        super(data);
    }
    static start() {
        return new MainAxisAlignment({ converter: 'f:1:MainAxisAlignment.start' });
    }
    static end() {
        return new MainAxisAlignment({ converter: 'f:1:MainAxisAlignment.end' });
    }
    static center() {
        return new MainAxisAlignment({ converter: 'f:1:MainAxisAlignment.center' });
    }
    static spaceBetween() {
        return new MainAxisAlignment({ converter: 'f:1:MainAxisAlignment.spaceBetween' });
    }
    static spaceAround() {
        return new MainAxisAlignment({ converter: 'f:1:MainAxisAlignment.spaceAround' });
    }
    static spaceEvenly() {
        return new MainAxisAlignment({ converter: 'f:1:MainAxisAlignment.spaceEvenly' });
    }
}
export class MainAxisSize extends ZacConverter {
    constructor(data) {
        super(data);
    }
    static min() {
        return new MainAxisSize({ converter: 'f:1:MainAxisSize.min' });
    }
    static max() {
        return new MainAxisSize({ converter: 'f:1:MainAxisSize.max' });
    }
}
export class FlexFit extends ZacConverter {
    constructor(data) {
        super(data);
    }
    static tight() {
        return new FlexFit({ converter: 'f:1:FlexFit.tight' });
    }
    static loose() {
        return new FlexFit({ converter: 'f:1:FlexFit.loose' });
    }
}
export class WrapAlignment extends ZacConverter {
    constructor(data) {
        super(data);
    }
    static start() {
        return new WrapAlignment({ converter: 'f:1:WrapAlignment.start' });
    }
    static end() {
        return new WrapAlignment({ converter: 'f:1:WrapAlignment.end' });
    }
    static center() {
        return new WrapAlignment({ converter: 'f:1:WrapAlignment.center' });
    }
    static spaceBetween() {
        return new WrapAlignment({ converter: 'f:1:WrapAlignment.spaceBetween' });
    }
    static spaceAround() {
        return new WrapAlignment({ converter: 'f:1:WrapAlignment.spaceAround' });
    }
    static spaceEvenly() {
        return new WrapAlignment({ converter: 'f:1:WrapAlignment.spaceEvenly' });
    }
}
export class WrapCrossAlignment extends ZacConverter {
    constructor(data) {
        super(data);
    }
    static center() {
        return new WrapCrossAlignment({ converter: 'f:1:WrapCrossAlignment.center' });
    }
    static end() {
        return new WrapCrossAlignment({ converter: 'f:1:WrapCrossAlignment.end' });
    }
    static start() {
        return new WrapCrossAlignment({ converter: 'f:1:WrapCrossAlignment.start' });
    }
}
export class StackFit extends ZacConverter {
    constructor(data) {
        super(data);
    }
    static expand() {
        return new StackFit({ converter: 'f:1:StackFit.expand' });
    }
    static loose() {
        return new StackFit({ converter: 'f:1:StackFit.loose' });
    }
    static passthrough() {
        return new StackFit({ converter: 'f:1:StackFit.passthrough' });
    }
}
export class BoxConstraints extends ZacConverter {
    constructor(data) {
        super(data);
    }
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
export class SliverGridDelegate extends ZacConverter {
    constructor(data) {
        super(data);
    }
    static fixedCrossAxisCount(data) {
        return new SliverGridDelegate(Object.assign({ converter: 'f:1:SliverGridDelegateWithFixedCrossAxisCount' }, data));
    }
    static maxCrossAxisExtent(data) {
        return new SliverGridDelegate(Object.assign({ converter: 'f:1:SliverGridDelegateWithMaxCrossAxisExtent' }, data));
    }
}
export class DecorationPosition extends ZacConverter {
    constructor(data) {
        super(data);
    }
    static background() {
        return new DecorationPosition({ converter: 'f:1:DecorationPosition.background' });
    }
    static foreground() {
        return new DecorationPosition({ converter: 'f:1:DecorationPosition.foreground' });
    }
}
