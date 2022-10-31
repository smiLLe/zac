import { SharedValueFamily, ZacTypes, ZacConverter } from "../base";
import { ZacTransformers } from "../generated";
export declare class ZacValueRead<T> extends ZacConverter {
    private ignoredProp;
    static read(data: {
        family: SharedValueFamily;
    }): ZacValue<unknown>;
}
export declare class ZacValue<T> extends ZacValueRead<T> {
    static new<T extends ZacTypes>(data: {
        value: T;
        transformer?: ZacTransformers;
    }): ZacValue<T>;
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
    static new<T extends ZacTypes>(data: {
        value: Array<ZacValue<T>>;
        transformer?: ZacTransformers;
    }): ZacValueList<T>;
    static watch(data: {
        family: SharedValueFamily;
        transformer?: ZacTransformers;
        select?: ZacTransformers;
    }): ZacValueList<unknown>;
}
