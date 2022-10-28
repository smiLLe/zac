import { DartDouble, DartInt, ZacConverter } from "../base";
import { ZacValue } from "../zac/zac_value";
import { Size } from "./dart_ui";
export declare class HitTestBehavior extends ZacConverter {
    private constructor();
    static deferToChild(): HitTestBehavior;
    static opaque(): HitTestBehavior;
    static translucent(): HitTestBehavior;
}
export declare class CrossAxisAlignment extends ZacConverter {
    private constructor();
    static baseline(): CrossAxisAlignment;
    static center(): CrossAxisAlignment;
    static end(): CrossAxisAlignment;
    static start(): CrossAxisAlignment;
    static stretch(): CrossAxisAlignment;
}
export declare class MainAxisAlignment extends ZacConverter {
    private constructor();
    static start(): MainAxisAlignment;
    static end(): MainAxisAlignment;
    static center(): MainAxisAlignment;
    static spaceBetween(): MainAxisAlignment;
    static spaceAround(): MainAxisAlignment;
    static spaceEvenly(): MainAxisAlignment;
}
export declare class MainAxisSize extends ZacConverter {
    private constructor();
    static min(): MainAxisSize;
    static max(): MainAxisSize;
}
export declare class FlexFit extends ZacConverter {
    private constructor();
    static tight(): FlexFit;
    static loose(): FlexFit;
}
export declare class WrapAlignment extends ZacConverter {
    private constructor();
    static start(): WrapAlignment;
    static end(): WrapAlignment;
    static center(): WrapAlignment;
    static spaceBetween(): WrapAlignment;
    static spaceAround(): WrapAlignment;
    static spaceEvenly(): WrapAlignment;
}
export declare class WrapCrossAlignment extends ZacConverter {
    private constructor();
    static center(): WrapCrossAlignment;
    static end(): WrapCrossAlignment;
    static start(): WrapCrossAlignment;
}
export declare class StackFit extends ZacConverter {
    private constructor();
    static expand(): StackFit;
    static loose(): StackFit;
    static passthrough(): StackFit;
}
export declare class BoxConstraints extends ZacConverter {
    private constructor();
    static new(data: {
        minWidth?: ZacValue<DartDouble>;
        maxWidth?: ZacValue<DartDouble>;
        minHeight?: ZacValue<DartDouble>;
        maxHeight?: ZacValue<DartDouble>;
    }): BoxConstraints;
    static expand(data: {
        width?: ZacValue<DartDouble>;
        height?: ZacValue<DartDouble>;
    }): BoxConstraints;
    static loose(data: {
        size: Size;
    }): BoxConstraints;
    static tight(data: {
        size: Size;
    }): BoxConstraints;
    static tightFor(data: {
        width?: ZacValue<DartDouble>;
        height?: ZacValue<DartDouble>;
    }): BoxConstraints;
    static tightForFinite(data: {
        width?: ZacValue<DartDouble>;
        height?: ZacValue<DartDouble>;
    }): BoxConstraints;
}
export declare class SliverGridDelegate extends ZacConverter {
    private constructor();
    static fixedCrossAxisCount(data: {
        crossAxisCount: DartInt;
        mainAxisSpacing?: ZacValue<DartDouble>;
        crossAxisSpacing?: ZacValue<DartDouble>;
        childAspectRatio?: ZacValue<DartDouble>;
        mainAxisExtent?: ZacValue<DartDouble>;
    }): SliverGridDelegate;
    static maxCrossAxisExtent(data: {
        maxCrossAxisExtent: ZacValue<DartDouble>;
        mainAxisSpacing?: ZacValue<DartDouble>;
        crossAxisSpacing?: ZacValue<DartDouble>;
        childAspectRatio?: ZacValue<DartDouble>;
        mainAxisExtent?: ZacValue<DartDouble>;
    }): SliverGridDelegate;
}
export declare class DecorationPosition extends ZacConverter {
    private constructor();
    static background(): DecorationPosition;
    static foreground(): DecorationPosition;
}
