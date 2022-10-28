export type DartInt = number;

export type DartDouble = number;

export type ValidTypes = null | ZacConverter | ZacConverterType | DartInt | DartDouble | string
    | boolean | Array<ValidTypes> | { [key: string]: ValidTypes };

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

    static new<T extends ValidTypes>(data: {
        value: T,
        transformer?: ZacTransformers,
    }) {
        return new ZacValueList<T>({
            converter: 'z:1:ZacValue',
            ...data,
        });
    }
    static watch(data: {
        family: SharedValueFamily
    }) {
        return new ZacValue({
            converter: 'z:1:ZacValue.watch',
            ...data,
        });
    }

    static read(data: {
        family: SharedValueFamily
    }) {
        return new ZacValue({
            converter: 'z:1:ZacValue.read',
            ...data,
        });
    }
}

export class ZacValueList<T> extends ZacConverter {
    // The generic has to be used in some way so that assigning
    // ZacValue<int> to ZacValue<string> will result in an error.
    private ignoredProp: T | undefined;

    static new<T extends ValidTypes>(data: {
        value: Array<ZacValue<T>>,
        transformer?: ZacTransformers,
    }) {
        return new ZacValueList<T>({
            converter: 'z:1:ZacValue',
            ...data,
        });
    }

    static watch(data: {
        family: SharedValueFamily,
        transformer?: ZacTransformers,
        select?: ZacTransformers,
    }) {
        return new ZacValueList({
            converter: 'z:1:ZacValue.watch',
            ...data,
        });
    }

    static read(data: {
        family: SharedValueFamily,
        transformer?: ZacTransformers
    }) {
        return new ZacValueList({
            converter: 'z:1:ZacValue.read',
            ...data,
        });
    }
}

export abstract class ZacTransformer extends ZacConverter { }

export class ZacTransformers extends ZacConverter {
    static new(data: {
        transformers: Array<ZacTransformer>
    }) {
        return new ZacTransformers({
            converter: 'z:1:ZacValue',
            ...data
        });
    }
}