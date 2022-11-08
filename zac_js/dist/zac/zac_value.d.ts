import { SharedValueFamily, ZacConverter, DartDateTime, DartDouble, DartInt } from "../base";
import { ZacTransformers, ZacValueConsumeType } from "../generated";
declare type ZacValueTypes = boolean | string | DartDateTime | DartDouble | DartInt | ZacConverter;
export declare class ZacValue<T> extends ZacConverter {
    private ignoredProp;
    static new<T extends ZacValueTypes>(data: {
        value: T;
        transformer?: ZacTransformers;
    }): ZacValue<T>;
    static consume(data: {
        family: SharedValueFamily;
        transformer?: ZacTransformers;
        select?: ZacTransformers;
        forceConsume?: ZacValueConsumeType;
    }): ZacValue<ZacValueTypes>;
}
declare type ZacValueListTypes = boolean | string | DartDateTime | DartDouble | DartInt | ZacConverter;
export declare class ZacValueList<T> extends ZacConverter {
    private ignoredProp;
    static new<T extends ZacValueListTypes>(data: {
        values: Array<T | ZacValue<T>>;
        transformer?: ZacTransformers;
    }): ZacValueList<T>;
    static consume(data: {
        family: SharedValueFamily;
        transformer?: ZacTransformers;
        select?: ZacTransformers;
        forceConsume?: ZacValueConsumeType;
    }): ZacValueList<ZacValueListTypes>;
}
declare type ZacValueMapTypes = boolean | string | DartDateTime | DartDouble | DartInt | ZacConverter;
export declare class ZacValueMap<T> extends ZacConverter {
    private ignoredProp;
    static new<T extends ZacValueMapTypes>(data: {
        values: {
            [key: string]: T | ZacValue<T>;
        };
        transformer?: ZacTransformers;
    }): ZacValueMap<T>;
    static consume(data: {
        family: SharedValueFamily;
        transformer?: ZacTransformers;
        select?: ZacTransformers;
        forceConsume?: ZacValueConsumeType;
    }): ZacValueMap<ZacValueMapTypes>;
}
export {};
