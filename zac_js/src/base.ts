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

// export abstract class FlutterWidget extends ZacConverter { }

// export abstract class ZacTransformer extends ZacConverter { }

// export class ZacTransformers extends ZacConverter {
//     static new(data: {
//         transformers: Array<ZacTransformer>
//     }) {
//         return new ZacTransformers({
//             converter: 'z:1:ZacValue',
//             ...data
//         });
//     }
// }