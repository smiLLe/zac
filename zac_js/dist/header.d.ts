export declare type ZacBuilderData = {
    builder: string;
    [key: string]: unknown;
};
export declare abstract class ZacConvertable {
    protected data: ZacBuilderData;
    protected constructor(data: ZacBuilderData);
    toJSON(): ZacBuilderData;
}
export declare abstract class ZacBuilder<T> extends ZacConvertable {
    private ignoredProp;
}
export declare abstract class ZacListBuilder<T> extends ZacBuilder<Array<T>> {
}
export declare abstract class ZacMapBuilder<T> extends ZacBuilder<{
    [key: string]: T;
}> {
}
export declare abstract class ZacTransformer extends ZacConvertable {
}
export declare abstract class ZacAction extends ZacConvertable {
}
export declare type ZacValueTypes = boolean | string | number;
export declare class ZacValue<T extends ZacValueTypes> extends ZacBuilder<T> {
    static new<T extends ZacValueTypes>(data: T): ZacValue<T>;
}
export declare class ZacValueList<T> extends ZacListBuilder<T> {
    static new<T>(data: Array<T | ZacBuilder<T>>): ZacValueList<T>;
}
export declare class ZacValueMap<T> extends ZacMapBuilder<T> {
    static new<T>(data: {
        [key: string]: T | ZacBuilder<T>;
    }): ZacValueMap<T>;
}
export declare class ConsumeSharedValue<T> extends ZacBuilder<T> {
    static new<T>(data: {
        family: string;
        transformer?: ZacBuilder<Array<ZacTransformer>>;
    }): ConsumeSharedValue<T>;
}
