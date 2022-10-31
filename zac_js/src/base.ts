export type DartInt = number;
export type DartDouble = number;
export type DartDateTime = string;

export type ZacTypes = ZacConverter | DartDateTime | DartInt | DartDouble | string | boolean | Array<ZacTypes>
    | { [key: string]: ZacTypes };

export type ZacConverterType = { [key: string]: ZacTypes | null | undefined } & {
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
