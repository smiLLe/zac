export declare type DartInt = number;
export declare type DartDouble = number;
export declare type DartDateTime = string;
export declare type ZacTypes = ZacConverter | DartDateTime | DartInt | DartDouble | string | boolean | Array<ZacTypes> | {
    [key: string]: ZacTypes;
};
export declare type ZacConverterType = {
    [key: string]: ZacTypes | null | undefined;
} & {
    converter: string;
};
export declare type SharedValueFamily = string | number;
export declare abstract class ZacConverter {
    private data;
    constructor(data: ZacConverterType);
    toJSON(): ZacConverterType;
}
