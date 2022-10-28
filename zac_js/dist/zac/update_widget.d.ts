import { FlutterWidget } from "../base";
import { Key } from "../flutter/foundation";
export declare class UpdateContext extends FlutterWidget {
    static new(data: {
        key?: Key;
        child: FlutterWidget;
    }): UpdateContext;
}
