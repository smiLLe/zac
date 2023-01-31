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


