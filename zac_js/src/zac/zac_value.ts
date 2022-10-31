import { SharedValueFamily, ZacTypes, ZacConverter } from "../base";
import { ZacTransformers } from "../generated";

export class ZacValueRead<T> extends ZacConverter {
    // The generic has to be used in some way so that assigning
    // ZacValue<int> to ZacValue<string> will result in an error.
    private ignoredProp: T | undefined;

    static read(data: {
        family: SharedValueFamily
    }) {
        return new ZacValue({
            converter: 'z:1:ZacValue.read',
            ...data,
        });
    }
}

export class ZacValue<T> extends ZacValueRead<T> {
    static new<T extends ZacTypes>(data: {
        value: T,
        transformer?: ZacTransformers,
    }) {
        return new ZacValue<T>({
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
}

export class ZacValueListRead<T> extends ZacConverter {
    // The generic has to be used in some way so that assigning
    // ZacValue<int> to ZacValue<string> will result in an error.
    private ignoredProp: T | undefined;

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


export class ZacValueList<T> extends ZacValueListRead<T> {
    static new<T extends ZacTypes>(data: {
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

}

// export class ZacValueActions extends ZacAction {
//     static asActionPayload(data: {
//         value: ZacValueRead<ValidTypes>,
//         actions: ZacActions
//     }) {
//         return new ZacValueActions({ converter: 'z:1:ZacValue.asActionPayload', ...data })
//     }
// }