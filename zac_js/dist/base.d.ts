export declare type DartInt = number;
export declare type DartDouble = number;
export declare type ValidTypes = null | ZacConverter | ZacConverterType | DartInt | DartDouble | string | boolean | Array<ValidTypes> | {
    [key: string]: ValidTypes;
};
export declare type SharedValueFamily = DartInt | DartDouble | string;
export interface ZacConverterType {
    [key: string]: ValidTypes | undefined;
    converter: string;
}
export declare abstract class ZacConverter {
    private data;
    constructor(data: ZacConverterType);
    toJSON(): ZacConverterType;
}
export declare abstract class FlutterWidget extends ZacConverter {
}
export declare abstract class ZacTransformer extends ZacConverter {
}
export declare class ZacTransformers extends ZacConverter {
    static new(data: {
        transformers: Array<ZacTransformer>;
    }): ZacTransformers;
}
