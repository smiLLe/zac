import { FlutterWidget, ZacConverterType } from "../base";
import { Key } from "../flutter/foundation";
import { ZacValue } from "./zac_value";
export declare class ZacWidgetBuilder extends FlutterWidget {
    static new(data: {
        key?: Key;
        data: ZacValue<FlutterWidget>;
    }): ZacWidgetBuilder;
    static map(data: {
        key?: Key;
        data: ZacValue<ZacConverterType>;
    }): ZacWidgetBuilder;
    static isolate(data: {
        key?: Key;
        data: ZacValue<ZacConverterType>;
        errorChild?: FlutterWidget;
        debugRethrowError?: boolean;
    }): ZacWidgetBuilder;
    static isolateString(data: {
        key?: Key;
        data: ZacValue<string>;
        errorChild?: FlutterWidget;
        debugRethrowError?: boolean;
    }): ZacWidgetBuilder;
}
