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
        value: Array<T>;
        transformer?: ZacTransformers;
    }): ZacValue<T>;
    static consume(data: {
        family: SharedValueFamily;
        transformer?: ZacTransformers;
        select?: ZacTransformers;
        forceConsume?: ZacValueConsumeType;
    }): ZacValue<ZacTypes>;
}
