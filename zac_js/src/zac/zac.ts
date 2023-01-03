export type DartInt = number;
export type DartDouble = number;
export type DartNum = number;
export type DartDateTime = string;
export type DartBuiltIn = DartInt | DartNum | DartDouble | DartDateTime | string | boolean;

export type ZacTypes = DartBuiltIn | Array<ZacTypes>
    | { [key: string]: ZacTypes };

export type ZacConverterType = { [key: string]: ZacTypes | null | undefined } & {
    converter: string;
}

abstract class ZacBuilder<T> {
    private _ignoredProp: T | undefined;

    private data: ZacConverterType;
    constructor(data: ZacConverterType) {
        this.data = data;
    }

    toJSON() {
        return this.data;
    }
}


type CompleterVoid = {
    _CompleterVoid: never;
}
type ScrollController = {
    _ScrollController: never;
}

class CompleterVoidBuilder extends ZacBuilder<CompleterVoid> {
    static new() {
        return new CompleterVoidBuilder({
            converter: "f:1:CompleterVoid",
        });
    }
}
class ScrollControllerBuilder extends ZacBuilder<ScrollController> {
    static new() {
        return new ScrollControllerBuilder({
            converter: "f:1:ScrollController",
        });
    }
}

class IntBuilder extends ZacBuilder<DartInt> {
    static new() {
        return new IntBuilder({
            converter: "f:1:IntBuilder",
        });
    }
}

type ZacValue<T> = T extends DartBuiltIn ? T | ZacBuilder<T> : ZacBuilder<T>;
type ZacValueList<T> = Array<T | ZacBuilder<T>>
    | { converter: 'z:1:ZacValueList', items: Array<T | ZacBuilder<T>> }
    | {
        converter: 'z:1:ZacValueList.consume',
        family: string,
        // ZacTransformers? transformer,
        // ZacTransformers? itemTransformer,
        // ZacTransformers? select,
        // SharedValueConsumeType? forceConsume,
    };
