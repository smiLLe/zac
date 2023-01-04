import { SharedValueFamily, ZacConverter, DartDateTime, DartDouble, DartInt } from "../header";
import { ZacTransformers, SharedValueConsumeType } from "../generated";
declare type ZacValueTypes = boolean | string | DartDateTime | DartDouble | DartInt | ZacConverter;
export declare class ZacValueConsumeOnly<T> extends ZacConverter {
    private ignoredProp;
    static new(data: {
        family: SharedValueFamily;
        transformer?: ZacTransformers;
        select?: ZacTransformers;
        forceConsume?: SharedValueConsumeType;
    }): ZacValueConsumeOnly<any>;
}
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
        forceConsume?: SharedValueConsumeType;
    }): ZacValue<any>;
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
        forceConsume?: SharedValueConsumeType;
    }): ZacValueList<any>;
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
        forceConsume?: SharedValueConsumeType;
    }): ZacValueMap<any>;
}
export {};
