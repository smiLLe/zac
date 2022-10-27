class Align extends FlutterWidget {
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
class AspectRatio extends FlutterWidget {
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
class Center extends FlutterWidget {
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
class ConstrainedBox extends FlutterWidget {
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
class Container extends FlutterWidget {
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
class Expanded extends FlutterWidget {
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
class FittedBox extends FlutterWidget {
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
class Flexible extends FlutterWidget {
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
class FractionallySizedBox extends FlutterWidget {
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
class IntrinsicHeight extends FlutterWidget {
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
class IntrinsicWidth extends FlutterWidget {
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
class LimitedBox extends FlutterWidget {
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
class Offstage extends FlutterWidget {
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
class OverflowBox extends FlutterWidget {
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
class Padding extends FlutterWidget {
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
class Positioned extends FlutterWidget {
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
class SafeArea extends FlutterWidget {
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
class SingleChildScrollView extends FlutterWidget {
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
class SizedBox extends FlutterWidget {
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
class SizedOverflowBox extends FlutterWidget {
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
class Spacer extends FlutterWidget {
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
class UnconstrainedBox extends FlutterWidget {
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