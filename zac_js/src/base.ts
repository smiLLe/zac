export type DartInt = number;

export type DartDouble = number;

export type ValidTypes = null | ZacConverter | ZacConverterType | DartInt | DartDouble | string | boolean | { [key: string]: ValidTypes } | Array<ValidTypes>;

export type SharedValueFamily = DartInt | DartDouble | string;

export interface ZacConverterType {
    [key: string]: ValidTypes | undefined
    converter: string;
}

export abstract class ZacConverter {
    private data: ZacConverterType;
    constructor(data: ZacConverterType) {
        this.data = data;
    }

    toJSON() {
        return this.data;
    }
}

export abstract class FlutterWidget extends ZacConverter { }

export class ZacValue<T> extends ZacConverter {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    // The generic has to be used in some way so that assigning
    // ZacValue<int> to ZacValue<string> will result in an error.
    private ignoredProp: T | undefined;

    static new<T extends ValidTypes>(data: T) {
        return new ZacValue<T>({
            converter: 'z:1:ZacValue',
            value: data,
        });
    }

    static watch(data: {
        family: SharedValueFamily
    }) {
        return new ZacValue({
            converter: 'z:1:ZacValue.watch',
            value: data,
        });
    }

    static read(data: {
        family: SharedValueFamily
    }) {
        return new ZacValue({
            converter: 'z:1:ZacValue.read',
            value: data,
        });
    }
}
