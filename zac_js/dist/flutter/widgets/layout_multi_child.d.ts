import { DartDouble, DartInt, FlutterWidget } from "../../base";
import { ZacValue, ZacValueList } from "../../zac/zac_value";
import { Clip, TextBaseline, TextDirection } from "../dart_ui";
import { Key } from "../foundation";
import { Axis, FlutterAlignmentGeometry, FlutterEdgeInsetsGeometry, VerticalDirection } from "../painting";
import { CrossAxisAlignment, MainAxisAlignment, MainAxisSize, SliverGridDelegate, StackFit, WrapAlignment, WrapCrossAlignment } from "../rendering";
import { ScrollViewKeyboardDismissBehavior } from "../services";
import { ScrollPhysics } from "./others";
export declare class Column extends FlutterWidget {
    static new(data: {
        key?: Key;
        mainAxisAlignment?: MainAxisAlignment;
        mainAxisSize?: MainAxisSize;
        crossAxisAlignment?: CrossAxisAlignment;
        textDirection?: TextDirection;
        verticalDirection?: VerticalDirection;
        textBaseline?: TextBaseline;
        children?: ZacValueList<FlutterWidget>;
    }): Column;
}
export declare class GridView extends FlutterWidget {
    static new(data: {
        key?: Key;
        scrollDirection?: Axis;
        reverse?: ZacValue<boolean>;
        primary?: ZacValue<boolean>;
        shrinkWrap?: ZacValue<boolean>;
        padding?: FlutterEdgeInsetsGeometry;
        gridDelegate: SliverGridDelegate;
        addAutomaticKeepAlives?: ZacValue<boolean>;
        addRepaintBoundaries?: ZacValue<boolean>;
        addSemanticIndexes?: ZacValue<boolean>;
        cacheExtent?: ZacValue<DartDouble>;
        children?: ZacValueList<FlutterWidget>;
        semanticChildCount?: ZacValue<DartInt>;
        clipBehavior?: Clip;
        keyboardDismissBehavior?: ScrollViewKeyboardDismissBehavior;
        restorationId?: ZacValue<string>;
    }): GridView;
}
export declare class IndexedStack extends FlutterWidget {
    static new(data: {
        key?: Key;
        alignment?: FlutterAlignmentGeometry;
        textDirection?: TextDirection;
        sizing?: StackFit;
        index?: ZacValue<DartInt>;
        children?: ZacValueList<FlutterWidget>;
    }): IndexedStack;
}
export declare class ListView extends FlutterWidget {
    static new(data: {
        key?: Key;
        scrollDirection?: Axis;
        reverse?: ZacValue<boolean>;
        primary?: ZacValue<boolean>;
        physics?: ScrollPhysics;
        shrinkWrap?: ZacValue<boolean>;
        padding?: FlutterEdgeInsetsGeometry;
        itemExtent?: ZacValue<DartDouble>;
        prototypeItem?: FlutterWidget;
        addAutomaticKeepAlives?: ZacValue<boolean>;
        addRepaintBoundaries?: ZacValue<boolean>;
        addSemanticIndexes?: ZacValue<boolean>;
        cacheExtent?: ZacValue<DartDouble>;
        semanticChildCount?: ZacValue<DartInt>;
        keyboardDismissBehavior?: ScrollViewKeyboardDismissBehavior;
        restorationId?: ZacValue<string>;
        clipBehavior?: Clip;
        children?: ZacValueList<FlutterWidget>;
    }): ListView;
}
export declare class Row extends FlutterWidget {
    static new(data: {
        key?: Key;
        mainAxisAlignment?: MainAxisAlignment;
        mainAxisSize?: MainAxisSize;
        crossAxisAlignment?: CrossAxisAlignment;
        textDirection?: TextDirection;
        verticalDirection?: VerticalDirection;
        textBaseline?: TextBaseline;
        children?: ZacValueList<FlutterWidget>;
    }): Row;
}
export declare class Stack extends FlutterWidget {
    static new(data: {
        key?: Key;
        alignment?: FlutterAlignmentGeometry;
        textDirection?: TextDirection;
        fit?: StackFit;
        clipBehavior?: Clip;
        children?: ZacValueList<FlutterWidget>;
    }): Stack;
}
export declare class Wrap extends FlutterWidget {
    static new(data: {
        key?: Key;
        direction?: Axis;
        alignment?: WrapAlignment;
        spacing?: ZacValue<DartDouble>;
        runSpacing?: ZacValue<DartDouble>;
        runAlignment?: WrapAlignment;
        crossAxisAlignment?: WrapCrossAlignment;
        textDirection?: TextDirection;
        verticalDirection?: VerticalDirection;
        clipBehavior?: Clip;
        children?: ZacValueList<FlutterWidget>;
    }): Wrap;
}
