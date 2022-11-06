import { SharedValueFamily, ZacTypes, ZacConverter } from "../base";
import { ZacTransformers, ZacValueConsumeType } from "../generated";

export class ZacValue<T> extends ZacConverter {
    // The generic has to be used in some way so that assigning
    // ZacValue<int> to ZacValue<string> will result in an error.
    private ignoredProp: T | undefined;

    static new<T extends ZacTypes>(data: {
        value: T,
        transformer?: ZacTransformers,
    }) {
        return new ZacValue<T>({
            converter: 'z:1:ZacValue',
            ...data,
        });
    }
    static consume(data: {
        family: SharedValueFamily
        transformer?: ZacTransformers,
        select?: ZacTransformers,
        forceConsume?: ZacValueConsumeType,
    }) {
        return new ZacValue<ZacTypes>({
            converter: 'z:1:ZacValue.consume',
            ...data,
        });
    }
}
export class ZacValueList<T> extends ZacConverter {
    // The generic has to be used in some way so that assigning
    // ZacValue<int> to ZacValue<string> will result in an error.
    private ignoredProp: T | undefined;

    static new<T extends ZacTypes>(data: {
        value: Array<T>,
        transformer?: ZacTransformers,
    }) {
        return new ZacValue<T>({
            converter: 'z:1:ZacValueList',
            ...data,
        });
    }
    static consume(data: {
        family: SharedValueFamily
        transformer?: ZacTransformers,
        select?: ZacTransformers,
        forceConsume?: ZacValueConsumeType,
    }) {
        return new ZacValue<ZacTypes>({
            converter: 'z:1:ZacValueList.consume',
            ...data,
        });
    }
}