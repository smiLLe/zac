export type DartDateTime = string;

export type ZacBuilderData = {
    builder: string;
    [key: string]: unknown;
};

export abstract class ZacConvertable {
    protected data: ZacBuilderData;
    constructor(data: ZacBuilderData) {
        this.data = data;
    }

    toJSON() {
        return this.data;
    }
}

export abstract class ZacBuilder<T> extends ZacConvertable {
    private ignoredProp: T | undefined;
}
export abstract class ZacListBuilder<T> extends ZacBuilder<Array<T>> { }
export abstract class ZacMapBuilder<T> extends ZacBuilder<{ [key: string]: T }> { }


export abstract class ZacTransformer extends ZacConvertable { }
export abstract class ZacAction extends ZacConvertable { }

export type ZacValueTypes = boolean | string | number | DartDateTime;

export class ZacValue<T extends ZacValueTypes> extends ZacBuilder<T> {
    static new<T extends ZacValueTypes>(data: T) {
        return new ZacValue<T>({
            builder: 'z:1:ZacValue',
            value: data,
        });
    }
}

export class ZacValueList<T> extends ZacListBuilder<T> {
    static new<T>(data: Array<T | ZacBuilder<T>>) {
        return new ZacValueList<T>({
            builder: 'z:1:ZacValueList',
            items: data,
        });
    }
}

export class ZacValueMap<T> extends ZacMapBuilder<T> {
    static new<T>(data: { [key: string]: T | ZacBuilder<T> }) {
        return new ZacValueMap<T>({
            builder: 'z:1:ZacValueMap',
            items: data,
        });
    }
}

export class ConsumeSharedValue<T> extends ZacBuilder<T> {
    static new<T>(data: {
        family: string,
        transformer?: ZacBuilder<Array<ZacTransformer>>,
    }) {
        return new ConsumeSharedValue<T>({
            builder: 'z:1:SharedValue.consume',
            ...data,
        });
    }
}