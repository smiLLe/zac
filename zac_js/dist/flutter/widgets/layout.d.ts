import { DartDouble, DartInt, FlutterWidget } from "../../base";
import { ZacValue } from "../../zac/zac_value";
import { Clip, Color, Size, TextDirection } from "../dart_ui";
import { Key } from "../foundation";
import { Axis, BoxFit, EdgeInsets, FlutterAlignmentGeometry, FlutterDecoration, FlutterEdgeInsetsGeometry } from "../painting";
import { BoxConstraints, FlexFit } from "../rendering";
import { ScrollViewKeyboardDismissBehavior } from "../services";
export declare class Align extends FlutterWidget {
    private constructor();
    static new(data: {
        key?: Key;
        alignment?: FlutterAlignmentGeometry;
        widthFactor?: ZacValue<DartDouble>;
        heightFactor?: ZacValue<DartDouble>;
        child?: FlutterWidget;
    }): Align;
}
export declare class AspectRatio extends FlutterWidget {
    private constructor();
    static new(data: {
        key?: Key;
        aspectRatio: ZacValue<DartDouble>;
        child?: FlutterWidget;
    }): AspectRatio;
}
export declare class Center extends FlutterWidget {
    private constructor();
    static new(data: {
        key?: Key;
        widthFactor?: ZacValue<DartDouble>;
        heightFactor?: ZacValue<DartDouble>;
        child?: FlutterWidget;
    }): Center;
}
export declare class ConstrainedBox extends FlutterWidget {
    private constructor();
    static new(data: {
        key?: Key;
        constraints: BoxConstraints;
        child?: FlutterWidget;
    }): ConstrainedBox;
}
export declare class Container extends FlutterWidget {
    private constructor();
    static new(data: {
        key?: Key;
        color?: Color;
        margin?: FlutterEdgeInsetsGeometry;
        padding?: FlutterEdgeInsetsGeometry;
        alignment?: FlutterAlignmentGeometry;
        decoration?: FlutterDecoration;
        child?: FlutterWidget;
    }): Container;
}
export declare class Expanded extends FlutterWidget {
    private constructor();
    static new(data: {
        key?: Key;
        flex?: ZacValue<DartInt>;
        child: FlutterWidget;
    }): Expanded;
}
export declare class FittedBox extends FlutterWidget {
    private constructor();
    static new(data: {
        key?: Key;
        fit?: BoxFit;
        alignment?: FlutterAlignmentGeometry;
        clipBehavior?: Clip;
        child?: FlutterWidget;
    }): FittedBox;
}
export declare class Flexible extends FlutterWidget {
    private constructor();
    static new(data: {
        key?: Key;
        flex?: ZacValue<DartInt>;
        fit?: FlexFit;
        child: FlutterWidget;
    }): Flexible;
}
export declare class FractionallySizedBox extends FlutterWidget {
    private constructor();
    static new(data: {
        key?: Key;
        alignment?: FlutterAlignmentGeometry;
        widthFactor?: ZacValue<DartDouble>;
        heightFactor?: ZacValue<DartDouble>;
        child?: FlutterWidget;
    }): FractionallySizedBox;
}
export declare class IntrinsicHeight extends FlutterWidget {
    private constructor();
    static new(data: {
        key?: Key;
        child?: FlutterWidget;
    }): IntrinsicHeight;
}
export declare class IntrinsicWidth extends FlutterWidget {
    private constructor();
    static new(data: {
        key?: Key;
        child?: FlutterWidget;
    }): IntrinsicWidth;
}
export declare class LimitedBox extends FlutterWidget {
    private constructor();
    static new(data: {
        key?: Key;
        maxWidth?: ZacValue<DartDouble>;
        maxHeight?: ZacValue<DartDouble>;
        child?: FlutterWidget;
    }): LimitedBox;
}
export declare class Offstage extends FlutterWidget {
    private constructor();
    static new(data: {
        key?: Key;
        offstage?: ZacValue<boolean>;
        child?: FlutterWidget;
    }): Offstage;
}
export declare class OverflowBox extends FlutterWidget {
    private constructor();
    static new(data: {
        key?: Key;
        alignment?: FlutterAlignmentGeometry;
        minWidth?: ZacValue<DartDouble>;
        maxWidth?: ZacValue<DartDouble>;
        minHeight?: ZacValue<DartDouble>;
        maxHeight?: ZacValue<DartDouble>;
        child?: FlutterWidget;
    }): OverflowBox;
}
export declare class Padding extends FlutterWidget {
    private constructor();
    static new(data: {
        key?: Key;
        padding: FlutterEdgeInsetsGeometry;
        child?: FlutterWidget;
    }): Padding;
}
export declare class Positioned extends FlutterWidget {
    private constructor();
    static new(data: {
        key?: Key;
        left?: ZacValue<DartDouble>;
        top?: ZacValue<DartDouble>;
        right?: ZacValue<DartDouble>;
        bottom?: ZacValue<DartDouble>;
        width?: ZacValue<DartDouble>;
        height?: ZacValue<DartDouble>;
        child: FlutterWidget;
    }): Positioned;
    static directional(data: {
        key?: Key;
        textDirection: TextDirection;
        start?: ZacValue<DartDouble>;
        top?: ZacValue<DartDouble>;
        end?: ZacValue<DartDouble>;
        bottom?: ZacValue<DartDouble>;
        width?: ZacValue<DartDouble>;
        height?: ZacValue<DartDouble>;
        child: FlutterWidget;
    }): Positioned;
    static fill(data: {
        key?: Key;
        left?: ZacValue<DartDouble>;
        top?: ZacValue<DartDouble>;
        right?: ZacValue<DartDouble>;
        bottom?: ZacValue<DartDouble>;
        child: FlutterWidget;
    }): Positioned;
}
export declare class SafeArea extends FlutterWidget {
    private constructor();
    static new(data: {
        key?: Key;
        left?: ZacValue<boolean>;
        top?: ZacValue<boolean>;
        right?: ZacValue<boolean>;
        bottom?: ZacValue<boolean>;
        minimum?: EdgeInsets;
        maintainBottomViewPadding?: ZacValue<boolean>;
        child?: FlutterWidget;
    }): SafeArea;
}
export declare class SingleChildScrollView extends FlutterWidget {
    private constructor();
    static new(data: {
        key?: Key;
        scrollDirection?: Axis;
        reverse?: ZacValue<boolean>;
        padding?: FlutterEdgeInsetsGeometry;
        primary?: ZacValue<boolean>;
        clipBehavior?: Clip;
        restorationId?: ZacValue<string>;
        keyboardDismissBehavior?: ScrollViewKeyboardDismissBehavior;
        child?: FlutterWidget;
    }): SingleChildScrollView;
}
export declare class SizedBox extends FlutterWidget {
    private constructor();
    static new(data: {
        key?: Key;
        width?: ZacValue<DartDouble>;
        height?: ZacValue<DartDouble>;
        child?: FlutterWidget;
    }): SizedBox;
    static expand(data: {
        key?: Key;
        child?: FlutterWidget;
    }): SizedBox;
    static fromSize(data: {
        key?: Key;
        size?: Size;
        child?: FlutterWidget;
    }): SizedBox;
    static shrink(data: {
        key?: Key;
        child?: FlutterWidget;
    }): SizedBox;
    static square(data: {
        key?: Key;
        dimension?: ZacValue<DartDouble>;
        child?: FlutterWidget;
    }): SizedBox;
}
export declare class SizedOverflowBox extends FlutterWidget {
    private constructor();
    static new(data: {
        key?: Key;
        size: Size;
        alignment: FlutterAlignmentGeometry;
        child?: FlutterWidget;
    }): SizedOverflowBox;
}
export declare class Spacer extends FlutterWidget {
    private constructor();
    static new(data: {
        key?: Key;
        flex?: ZacValue<DartInt>;
    }): Spacer;
}
export declare class UnconstrainedBox extends FlutterWidget {
    private constructor();
    static new(data: {
        key?: Key;
        textDirection?: TextDirection;
        alignment?: FlutterAlignmentGeometry;
        constrainedAxis?: Axis;
        clipBehavior?: Clip;
        child?: FlutterWidget;
    }): UnconstrainedBox;
}
