import { ZacConverter } from "../base";
export class Key extends ZacConverter {
}
export class LocalKey extends Key {
}
export class GlobalKeyNavigatorState extends Key {
}
export class ValueKey extends ZacConverter {
    constructor(data) {
        super(data);
    }
    static new(data) {
        return new ValueKey(Object.assign({ converter: 'f:1:ValueKey' }, data));
    }
}
