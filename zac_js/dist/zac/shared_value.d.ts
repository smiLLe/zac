import { FlutterWidget, SharedValueFamily, ValidTypes, ZacTransformers } from "../base";
import { Key } from "../flutter/foundation";
import { ZacAction } from "./action";
import { ZacValue } from "./zac_value";
export declare class SharedValueActions extends ZacAction {
    static update(data: {
        family: SharedValueFamily;
        transformer: ZacTransformers;
    }): SharedValueActions;
    static replaceWith(data: {
        family: SharedValueFamily;
        value: ZacValue<ValidTypes>;
        transformer?: ZacTransformers;
    }): SharedValueActions;
}
export declare class SharedValueProvider extends FlutterWidget {
    static new(data: {
        key?: Key;
        value: ValidTypes;
        transformer?: ZacTransformers;
        family: SharedValueFamily;
        child: FlutterWidget;
        autoCreate?: boolean;
    }): SharedValueProvider;
}
