import { SharedValueFamily, ZacTypes, ZacConverter } from "../base";
import { ZacTransformers, ZacValueConsumeType } from "../generated";
export declare class ZacValue<T> extends ZacConverter {
    private ignoredProp;
    static new<T extends ZacTypes>(data: {
        value: T;
        transformer?: ZacTransformers;
    }): ZacValue<T>;
    static consume(data: {
        family: SharedValueFamily;
        transformer?: ZacTransformers;
        select?: ZacTransformers;
        forceConsume?: ZacValueConsumeType;
    }): ZacValue<ZacTypes>;
}
export declare class ZacValueList<T> extends ZacConverter {
    private ignoredProp;
    static new<T extends ZacTypes>(data: {
        values: Array<T | ZacValue<T>>;
        transformer?: ZacTransformers;
    }): ZacValueList<T>;
    static consume(data: {
        family: SharedValueFamily;
        transformer?: ZacTransformers;
        select?: ZacTransformers;
        forceConsume?: ZacValueConsumeType;
    }): ZacValueList<ZacTypes>;
}
export declare class ZacValueMap<T> extends ZacConverter {
    private ignoredProp;
    static new<T extends ZacTypes>(data: {
        values: {
            [key: string]: T | ZacValue<T>;
        };
        transformer?: ZacTransformers;
    }): ZacValue<T>;
    static consume(data: {
        family: SharedValueFamily;
        transformer?: ZacTransformers;
        select?: ZacTransformers;
        forceConsume?: ZacValueConsumeType;
    }): ZacValueMap<ZacTypes>;
}
