import { DartDouble, DartInt, ZacConverter, ZacConverterType } from "../base";
import { ZacValue } from "../zac/zac_value";
import { Size } from "./dart_ui";

export class HitTestBehavior extends ZacConverter {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static deferToChild() {
        return new HitTestBehavior({ converter: 'f:1:HitTestBehavior.deferToChild' })
    }

    static opaque() {
        return new HitTestBehavior({ converter: 'f:1:HitTestBehavior.opaque' })
    }

    static translucent() {
        return new HitTestBehavior({ converter: 'f:1:HitTestBehavior.translucent' })
    }
}

export class CrossAxisAlignment extends ZacConverter {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static baseline() {
        return new CrossAxisAlignment({ converter: 'f:1:CrossAxisAlignment.baseline' })
    }

    static center() {
        return new CrossAxisAlignment({ converter: 'f:1:CrossAxisAlignment.center' })
    }

    static end() {
        return new CrossAxisAlignment({ converter: 'f:1:CrossAxisAlignment.end' })
    }

    static start() {
        return new CrossAxisAlignment({ converter: 'f:1:CrossAxisAlignment.start' })
    }

    static stretch() {
        return new CrossAxisAlignment({ converter: 'f:1:CrossAxisAlignment.stretch' })
    }
}

export class MainAxisAlignment extends ZacConverter {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static start() {
        return new MainAxisAlignment({ converter: 'f:1:MainAxisAlignment.start' })
    }

    static end() {
        return new MainAxisAlignment({ converter: 'f:1:MainAxisAlignment.end' })
    }

    static center() {
        return new MainAxisAlignment({ converter: 'f:1:MainAxisAlignment.center' })
    }

    static spaceBetween() {
        return new MainAxisAlignment({ converter: 'f:1:MainAxisAlignment.spaceBetween' })
    }

    static spaceAround() {
        return new MainAxisAlignment({ converter: 'f:1:MainAxisAlignment.spaceAround' })
    }

    static spaceEvenly() {
        return new MainAxisAlignment({ converter: 'f:1:MainAxisAlignment.spaceEvenly' })
    }
}

export class MainAxisSize extends ZacConverter {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static min() {
        return new MainAxisSize({ converter: 'f:1:MainAxisSize.min' })
    }

    static max() {
        return new MainAxisSize({ converter: 'f:1:MainAxisSize.max' })
    }
}

export class FlexFit extends ZacConverter {
    private constructor(data: ZacConverterType) {
        super(data);
    }
    static tight() {
        return new FlexFit({ converter: 'f:1:FlexFit.tight' })
    }
    static loose() {
        return new FlexFit({ converter: 'f:1:FlexFit.loose' })
    }
}

export class WrapAlignment extends ZacConverter {
    private constructor(data: ZacConverterType) {
        super(data);
    }
    static start() {
        return new WrapAlignment({ converter: 'f:1:WrapAlignment.start' })
    }
    static end() {
        return new WrapAlignment({ converter: 'f:1:WrapAlignment.end' })
    }
    static center() {
        return new WrapAlignment({ converter: 'f:1:WrapAlignment.center' })
    }
    static spaceBetween() {
        return new WrapAlignment({ converter: 'f:1:WrapAlignment.spaceBetween' })
    }
    static spaceAround() {
        return new WrapAlignment({ converter: 'f:1:WrapAlignment.spaceAround' })
    }
    static spaceEvenly() {
        return new WrapAlignment({ converter: 'f:1:WrapAlignment.spaceEvenly' })
    }
}
export class WrapCrossAlignment extends ZacConverter {
    private constructor(data: ZacConverterType) {
        super(data);
    }
    static center() {
        return new WrapCrossAlignment({ converter: 'f:1:WrapCrossAlignment.center' })
    }
    static end() {
        return new WrapCrossAlignment({ converter: 'f:1:WrapCrossAlignment.end' })
    }
    static start() {
        return new WrapCrossAlignment({ converter: 'f:1:WrapCrossAlignment.start' })
    }
}
export class StackFit extends ZacConverter {
    private constructor(data: ZacConverterType) {
        super(data);
    }
    static expand() {
        return new StackFit({ converter: 'f:1:StackFit.expand' })
    }
    static loose() {
        return new StackFit({ converter: 'f:1:StackFit.loose' })
    }
    static passthrough() {
        return new StackFit({ converter: 'f:1:StackFit.passthrough' })
    }
}
export class BoxConstraints extends ZacConverter {
    private constructor(data: ZacConverterType) {
        super(data);
    }
    static new(data: {
        minWidth?: ZacValue<DartDouble>,
        maxWidth?: ZacValue<DartDouble>,
        minHeight?: ZacValue<DartDouble>,
        maxHeight?: ZacValue<DartDouble>,
    }) {
        return new BoxConstraints({ converter: 'f:1:BoxConstraints', ...data })
    }
    static expand(data: {
        width?: ZacValue<DartDouble>
        height?: ZacValue<DartDouble>
    }) {
        return new BoxConstraints({ converter: 'f:1:BoxConstraints.expand', ...data })
    }
    static loose(data: {
        size: Size
    }) {
        return new BoxConstraints({ converter: 'f:1:BoxConstraints.loose', ...data })
    }
    static tight(data: {
        size: Size
    }) {
        return new BoxConstraints({ converter: 'f:1:BoxConstraints.tight', ...data })
    }
    static tightFor(data: {
        width?: ZacValue<DartDouble>,
        height?: ZacValue<DartDouble>
    }) {
        return new BoxConstraints({ converter: 'f:1:BoxConstraints.tightFor', ...data })
    }
    static tightForFinite(data: {
        width?: ZacValue<DartDouble>,
        height?: ZacValue<DartDouble>
    }) {
        return new BoxConstraints({ converter: 'f:1:BoxConstraints.tightForFinite', ...data })
    }
}
export class SliverGridDelegate extends ZacConverter {
    private constructor(data: ZacConverterType) {
        super(data);
    }
    static fixedCrossAxisCount(data: {
        crossAxisCount: DartInt,
        mainAxisSpacing?: ZacValue<DartDouble>,
        crossAxisSpacing?: ZacValue<DartDouble>,
        childAspectRatio?: ZacValue<DartDouble>,
        mainAxisExtent?: ZacValue<DartDouble>
    }) {
        return new SliverGridDelegate({ converter: 'f:1:SliverGridDelegateWithFixedCrossAxisCount', ...data })
    }

    static maxCrossAxisExtent(data: {
        maxCrossAxisExtent: ZacValue<DartDouble>,
        mainAxisSpacing?: ZacValue<DartDouble>,
        crossAxisSpacing?: ZacValue<DartDouble>,
        childAspectRatio?: ZacValue<DartDouble>,
        mainAxisExtent?: ZacValue<DartDouble>
    }) {
        return new SliverGridDelegate({ converter: 'f:1:SliverGridDelegateWithMaxCrossAxisExtent', ...data })
    }
}
export class DecorationPosition extends ZacConverter {
    private constructor(data: ZacConverterType) {
        super(data);
    }
    static background() {
        return new DecorationPosition({ converter: 'f:1:DecorationPosition.background' })
    }
    static foreground() {
        return new DecorationPosition({ converter: 'f:1:DecorationPosition.foreground' })
    }
}