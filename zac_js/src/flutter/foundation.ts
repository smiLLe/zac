import { ZacConverter, ZacConverterType } from "../base";

export abstract class Key extends ZacConverter { }
export abstract class LocalKey extends Key { }
export abstract class GlobalKeyNavigatorState extends Key { }

export class ValueKey extends ZacConverter {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static new(data: { value: string }) {
        return new ValueKey({ converter: 'f:1:ValueKey', ...data })
    }
}