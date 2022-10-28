import { SharedValueFamily, ValidTypes, ZacConverter, ZacTransformers } from "../base";
import { ZacAction, ZacActions } from "./action";
export declare class ZacValueRead<T> extends ZacConverter {
    private ignoredProp;
    static read(data: {
        family: SharedValueFamily;
    }): ZacValue<unknown>;
}
export declare class ZacValue<T> extends ZacValueRead<T> {
    static new<T extends ValidTypes>(data: {
        value: T;
        transformer?: ZacTransformers;
    }): ZacValueList<T>;
    static watch(data: {
        family: SharedValueFamily;
    }): ZacValue<unknown>;
}
export declare class ZacValueListRead<T> extends ZacConverter {
    private ignoredProp;
    static read(data: {
        family: SharedValueFamily;
        transformer?: ZacTransformers;
    }): ZacValueList<unknown>;
}
export declare class ZacValueList<T> extends ZacValueListRead<T> {
    static new<T extends ValidTypes>(data: {
        value: Array<ZacValue<T>>;
        transformer?: ZacTransformers;
    }): ZacValueList<T>;
    static watch(data: {
        family: SharedValueFamily;
        transformer?: ZacTransformers;
        select?: ZacTransformers;
    }): ZacValueList<unknown>;
}
export declare class ZacValueActions extends ZacAction {
    static asActionPayload(data: {
        value: ZacValueRead<ValidTypes>;
        actions: ZacActions;
    }): ZacValueActions;
}
