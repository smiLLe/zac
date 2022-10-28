import { FlutterWidget, ZacConverterType, ZacValue } from "../base";
import { Key } from "../flutter/foundation";

export class ZacWidgetBuilder extends FlutterWidget {
    static new(data: {
        key?: Key,
        data: ZacValue<FlutterWidget>,
    }) {
        return new ZacWidgetBuilder({ converter: 'z:1:Widget', ...data })
    }
    static map(data: {
        key?: Key,
        data: ZacValue<ZacConverterType>,
    }) {
        return new ZacWidgetBuilder({ converter: 'z:1:Widget.map', ...data })
    }
    static isolate(data: {
        key?: Key,
        data: ZacValue<ZacConverterType>,
        errorChild?: FlutterWidget,
        debugRethrowError?: boolean,
    }) {
        return new ZacWidgetBuilder({ converter: 'z:1:Widget.isolate', ...data })
    }
    static isolateString(data: {
        key?: Key,
        data: ZacValue<string>,
        errorChild?: FlutterWidget,
        debugRethrowError?: boolean,
    }) {
        return new ZacWidgetBuilder({ converter: 'z:1:Widget.isolateString', ...data })
    }
}