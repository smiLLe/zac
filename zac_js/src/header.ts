export type SharedValueFamily = string;

export type ZacBuilderData = {
    builder: string;
    [key: string]: unknown;
};

export abstract class ZacConvertable {
    protected data: ZacBuilderData;
    protected constructor(data: ZacBuilderData) {
        this.data = data;
    }

    toJSON() {
        return this.data;
    }
}

export abstract class ZacBuilder<T> extends ZacConvertable {
    // Type T must be used somewhere in this class so that TypeScript will make
    // checks to types.
    //
    // This would be a valid assignment if T was not used somewhere
    // const a: ZacBuilder<nativeTypes.Container> = Container.new();
    // const b: ZacBuilder<nativeTypes.Container> = SizedBox.new();
    private _doNotUse!: T;

    // Create the public getter or otherwise d.ts files will just omit T
    public get doNotUse(): T {
        return this._doNotUse;
    }
}
export abstract class ZacListBuilder<T> extends ZacBuilder<Array<T>> { }
export abstract class ZacMapBuilder<T> extends ZacBuilder<{ [key: string]: T }> { }

export abstract class ZacTransform { }
export abstract class ZacAction { }

export type ZacValueTypes = boolean | string | number;

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


export class SharedValueConsumeType extends ZacConvertable {
    static watch(data?: { select?: ZacListBuilder<ZacTransform> }) {
        return new SharedValueConsumeType({
            builder: "z:1:SharedValueConsume.watch",
            ...data,
        });
    }
    static read() {
        return new SharedValueConsumeType({
            builder: "z:1:SharedValueConsume.read",
        });
    }
}

export class ConsumeSharedValue<T> extends ZacBuilder<T> {
    static new<T>(data: {
        family: string,
        transformer?: ZacListBuilder<ZacTransform>,
        forceConsume?: SharedValueConsumeType,
    }) {
        return new ConsumeSharedValue<T>({
            builder: 'z:1:SharedValue.consume',
            ...data,
        });
    }
}

export class ConsumeSharedValueList<T> extends ZacListBuilder<T> {
    static new<T>(data: {
        family: string,
        transformer?: ZacListBuilder<ZacTransform>,
        itemTransformer?: ZacListBuilder<ZacTransform>,
        forceConsume?: SharedValueConsumeType,
    }) {
        return new ConsumeSharedValue<T>({
            builder: 'z:1:SharedValueList.consume',
            ...data,
        });
    }
}

export class ConsumeSharedValueMap<T> extends ZacMapBuilder<T> {
    static new<T>(data: {
        family: string,
        transformer?: ZacListBuilder<ZacTransform>,
        itemTransformer?: ZacListBuilder<ZacTransform>,
        forceConsume?: SharedValueConsumeType,
    }) {
        return new ConsumeSharedValue<T>({
            builder: 'z:1:SharedValueMap.consume',
            ...data,
        });
    }
}