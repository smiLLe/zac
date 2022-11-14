import { SharedValueFamily, ZacConverter, DartDateTime, DartDouble, DartInt } from "../base";
import { ZacTransformers, SharedValueConsumeType } from "../generated";

type ZacValueTypes = boolean | string | DartDateTime | DartDouble | DartInt | ZacConverter;

export class ZacValueConsumeOnly<T> extends ZacConverter {
    // The generic has to be used in some way so that assigning
    // ZacValue<int> to ZacValue<string> will result in an error.
    private ignoredProp: T | undefined;

    static new(data: {
        family: SharedValueFamily
        transformer?: ZacTransformers,
        select?: ZacTransformers,
        forceConsume?: SharedValueConsumeType,
    }) {
        return new ZacValueConsumeOnly<ZacValueTypes>({
            converter: 'z:1:ZacValue.consume',
            ...data,
        });
    }
}


export class ZacValue<T> extends ZacConverter {
    // The generic has to be used in some way so that assigning
    // ZacValue<int> to ZacValue<string> will result in an error.
    private ignoredProp: T | undefined;

    static new<T extends ZacValueTypes>(data: {
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
        forceConsume?: SharedValueConsumeType,
    }) {
        return new ZacValue<ZacValueTypes>({
            converter: 'z:1:ZacValue.consume',
            ...data,
        });
    }
}

type ZacValueListTypes = boolean | string | DartDateTime | DartDouble | DartInt | ZacConverter;

export class ZacValueList<T> extends ZacConverter {
    // The generic has to be used in some way so that assigning
    // ZacValue<int> to ZacValue<string> will result in an error.
    private ignoredProp: T | undefined;

    static new<T extends ZacValueListTypes>(data: {
        values: Array<T | ZacValue<T>>,
        transformer?: ZacTransformers,
    }) {
        return new ZacValueList<T>({
            converter: 'z:1:ZacValueList',
            ...data,
        });
    }
    static consume(data: {
        family: SharedValueFamily
        transformer?: ZacTransformers,
        select?: ZacTransformers,
        forceConsume?: SharedValueConsumeType,
    }) {
        return new ZacValueList<ZacValueListTypes>({
            converter: 'z:1:ZacValueList.consume',
            ...data,
        });
    }
}

type ZacValueMapTypes = boolean | string | DartDateTime | DartDouble | DartInt | ZacConverter;

export class ZacValueMap<T> extends ZacConverter {
    // The generic has to be used in some way so that assigning
    // ZacValue<int> to ZacValue<string> will result in an error.
    private ignoredProp: T | undefined;

    static new<T extends ZacValueMapTypes>(data: {
        values: { [key: string]: T | ZacValue<T> },
        transformer?: ZacTransformers,
    }) {
        return new ZacValueMap<T>({
            converter: 'z:1:ZacValueMap',
            ...data,
        });
    }
    static consume(data: {
        family: SharedValueFamily
        transformer?: ZacTransformers,
        select?: ZacTransformers,
        forceConsume?: SharedValueConsumeType,
    }) {
        return new ZacValueMap<ZacValueMapTypes>({
            converter: 'z:1:ZacValueMap.consume',
            ...data,
        });
    }
}