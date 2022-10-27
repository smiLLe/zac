type DartInt = number;

type DartDouble = number;

type ValidTypes = ZacConverter | DartInt | DartDouble | string | boolean | { [key: string]: ValidTypes } | Array<ValidTypes>;

interface ZacConverterType {
    [key: string]: ValidTypes
    converter: string;
}

abstract class ZacConverter {
    private data: ZacConverterType;
    constructor(data: ZacConverterType) {
        this.data = data;
    }

    toJSON() {
        return this.data;
    }
}

abstract class FlutterWidget extends ZacConverter { }

class ZacValue<T> extends ZacConverter {
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
        family: string
    }) {
        return new ZacValue({
            converter: 'z:1:ZacValue.watch',
            value: data,
        });
    }

    static read(data: {
        family: string
    }) {
        return new ZacValue({
            converter: 'z:1:ZacValue.read',
            value: data,
        });
    }
}
