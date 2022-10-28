import { DartDouble, DartInt, FlutterWidget, ZacConverterType } from "../../base";
import { ZacValue } from "../../zac/zac_value";
import { Clip, Color, Size, TextDirection } from "../dart_ui";
import { Key } from "../foundation";
import { Axis, BoxFit, EdgeInsets, FlutterAlignmentGeometry, FlutterDecoration, FlutterEdgeInsetsGeometry } from "../painting";
import { BoxConstraints, FlexFit } from "../rendering";
import { ScrollViewKeyboardDismissBehavior } from "../services";

export class Align extends FlutterWidget {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static new(data: {
        key?: Key,
        alignment?: FlutterAlignmentGeometry,
        widthFactor?: ZacValue<DartDouble>,
        heightFactor?: ZacValue<DartDouble>,
        child?: FlutterWidget,
    }) {
        return new Align({ converter: 'f:1:Align', ...data })
    }
}
export class AspectRatio extends FlutterWidget {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static new(data: {
        key?: Key,
        aspectRatio: ZacValue<DartDouble>,
        child?: FlutterWidget,
    }) {
        return new AspectRatio({ converter: 'f:1:AspectRatio', ...data })
    }
}
export class Center extends FlutterWidget {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static new(data: {
        key?: Key,
        widthFactor?: ZacValue<DartDouble>,
        heightFactor?: ZacValue<DartDouble>,
        child?: FlutterWidget,
    }) {
        return new Center({ converter: 'f:1:Center', ...data })
    }
}
export class ConstrainedBox extends FlutterWidget {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static new(data: {
        key?: Key,
        constraints: BoxConstraints,
        child?: FlutterWidget,
    }) {
        return new ConstrainedBox({ converter: 'f:1:ConstrainedBox', ...data })
    }
}
export class Container extends FlutterWidget {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static new(data: {
        key?: Key,
        color?: Color,
        margin?: FlutterEdgeInsetsGeometry,
        padding?: FlutterEdgeInsetsGeometry,
        alignment?: FlutterAlignmentGeometry,
        decoration?: FlutterDecoration,
        child?: FlutterWidget,
    }) {
        return new Container({ converter: 'f:1:Container', ...data })
    }
}
export class Expanded extends FlutterWidget {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static new(data: {
        key?: Key,
        flex?: ZacValue<DartInt>,
        child: FlutterWidget,
    }) {
        return new Expanded({ converter: 'f:1:Expanded', ...data })
    }
}
export class FittedBox extends FlutterWidget {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static new(data: {
        key?: Key,
        fit?: BoxFit,
        alignment?: FlutterAlignmentGeometry,
        clipBehavior?: Clip,
        child?: FlutterWidget,
    }) {
        return new FittedBox({ converter: 'f:1:FittedBox', ...data })
    }
}
export class Flexible extends FlutterWidget {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static new(data: {
        key?: Key,
        flex?: ZacValue<DartInt>,
        fit?: FlexFit,
        child: FlutterWidget,
    }) {
        return new Flexible({ converter: 'f:1:Flexible', ...data })
    }
}
export class FractionallySizedBox extends FlutterWidget {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static new(data: {
        key?: Key,
        alignment?: FlutterAlignmentGeometry,
        widthFactor?: ZacValue<DartDouble>,
        heightFactor?: ZacValue<DartDouble>
        child?: FlutterWidget,
    }) {
        return new FractionallySizedBox({ converter: 'f:1:FractionallySizedBox', ...data })
    }
}
export class IntrinsicHeight extends FlutterWidget {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static new(data: {
        key?: Key,
        child?: FlutterWidget,
    }) {
        return new IntrinsicHeight({ converter: 'f:1:IntrinsicHeight', ...data })
    }
}
export class IntrinsicWidth extends FlutterWidget {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static new(data: {
        key?: Key,
        child?: FlutterWidget,
    }) {
        return new IntrinsicWidth({ converter: 'f:1:IntrinsicWidth', ...data })
    }
}
export class LimitedBox extends FlutterWidget {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static new(data: {
        key?: Key,
        maxWidth?: ZacValue<DartDouble>,
        maxHeight?: ZacValue<DartDouble>,
        child?: FlutterWidget,
    }) {
        return new LimitedBox({ converter: 'f:1:LimitedBox', ...data })
    }
}
export class Offstage extends FlutterWidget {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static new(data: {
        key?: Key,
        offstage?: ZacValue<boolean>,
        child?: FlutterWidget,
    }) {
        return new Offstage({ converter: 'f:1:Offstage', ...data })
    }
}
export class OverflowBox extends FlutterWidget {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static new(data: {
        key?: Key,
        alignment?: FlutterAlignmentGeometry,
        minWidth?: ZacValue<DartDouble>,
        maxWidth?: ZacValue<DartDouble>,
        minHeight?: ZacValue<DartDouble>,
        maxHeight?: ZacValue<DartDouble>,
        child?: FlutterWidget,
    }) {
        return new OverflowBox({ converter: 'f:1:OverflowBox', ...data })
    }
}
export class Padding extends FlutterWidget {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static new(data: {
        key?: Key,
        padding: FlutterEdgeInsetsGeometry,
        child?: FlutterWidget,
    }) {
        return new Padding({ converter: 'f:1:Padding', ...data })
    }
}
export class Positioned extends FlutterWidget {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static new(data: {
        key?: Key,
        left?: ZacValue<DartDouble>,
        top?: ZacValue<DartDouble>,
        right?: ZacValue<DartDouble>,
        bottom?: ZacValue<DartDouble>,
        width?: ZacValue<DartDouble>,
        height?: ZacValue<DartDouble>,
        child: FlutterWidget,
    }) {
        return new Positioned({ converter: 'f:1:Positioned', ...data })
    }

    static directional(data: {
        key?: Key,
        textDirection: TextDirection,
        start?: ZacValue<DartDouble>,
        top?: ZacValue<DartDouble>,
        end?: ZacValue<DartDouble>,
        bottom?: ZacValue<DartDouble>,
        width?: ZacValue<DartDouble>,
        height?: ZacValue<DartDouble>,
        child: FlutterWidget,
    }) {
        return new Positioned({ converter: 'f:1:Positioned.directional', ...data })
    }

    static fill(data: {
        key?: Key,
        left?: ZacValue<DartDouble>,
        top?: ZacValue<DartDouble>,
        right?: ZacValue<DartDouble>,
        bottom?: ZacValue<DartDouble>,
        child: FlutterWidget,
    }) {
        return new Positioned({ converter: 'f:1:Positioned.fill', ...data })
    }
}
export class SafeArea extends FlutterWidget {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static new(data: {
        key?: Key,
        left?: ZacValue<boolean>,
        top?: ZacValue<boolean>,
        right?: ZacValue<boolean>,
        bottom?: ZacValue<boolean>,
        minimum?: EdgeInsets,
        maintainBottomViewPadding?: ZacValue<boolean>,
        child?: FlutterWidget,
    }) {
        return new SafeArea({ converter: 'f:1:SafeArea', ...data })
    }
}
export class SingleChildScrollView extends FlutterWidget {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static new(data: {
        key?: Key,
        scrollDirection?: Axis,
        reverse?: ZacValue<boolean>,
        padding?: FlutterEdgeInsetsGeometry,
        primary?: ZacValue<boolean>,
        clipBehavior?: Clip,
        restorationId?: ZacValue<string>,
        keyboardDismissBehavior?: ScrollViewKeyboardDismissBehavior,
        child?: FlutterWidget,
    }) {
        return new SingleChildScrollView({ converter: 'f:1:SingleChildScrollView', ...data })
    }
}
export class SizedBox extends FlutterWidget {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static new(data: {
        key?: Key,
        width?: ZacValue<DartDouble>,
        height?: ZacValue<DartDouble>,
        child?: FlutterWidget,
    }) {
        return new SizedBox({ converter: 'f:1:SizedBox', ...data })
    }

    static expand(data: {
        key?: Key,
        child?: FlutterWidget,
    }) {
        return new SizedBox({ converter: 'f:1:SizedBox.expand', ...data })
    }

    static fromSize(data: {
        key?: Key,
        size?: Size,
        child?: FlutterWidget,
    }) {
        return new SizedBox({ converter: 'f:1:SizedBox.fromSize', ...data })
    }

    static shrink(data: {
        key?: Key,
        child?: FlutterWidget,
    }) {
        return new SizedBox({ converter: 'f:1:SizedBox.shrink', ...data })
    }

    static square(data: {
        key?: Key,
        dimension?: ZacValue<DartDouble>,
        child?: FlutterWidget,
    }) {
        return new SizedBox({ converter: 'f:1:SizedBox.square', ...data })
    }
}
export class SizedOverflowBox extends FlutterWidget {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static new(data: {
        key?: Key,
        size: Size,
        alignment: FlutterAlignmentGeometry,
        child?: FlutterWidget,
    }) {
        return new SizedOverflowBox({ converter: 'f:1:SizedOverflowBox', ...data })
    }
}
export class Spacer extends FlutterWidget {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static new(data: {
        key?: Key,
        flex?: ZacValue<DartInt>
    }) {
        return new Spacer({ converter: 'f:1:Spacer', ...data })
    }
}
export class UnconstrainedBox extends FlutterWidget {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static new(data: {
        key?: Key,
        textDirection?: TextDirection,
        alignment?: FlutterAlignmentGeometry,
        constrainedAxis?: Axis,
        clipBehavior?: Clip,
        child?: FlutterWidget,
    }) {
        return new UnconstrainedBox({ converter: 'f:1:UnconstrainedBox', ...data })
    }
}