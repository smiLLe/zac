import { ZacConverter } from "../base";
export class ZacValue extends ZacConverter {
    static new(data) {
        return new ZacValue(Object.assign({ converter: 'z:1:ZacValue' }, data));
    }
    static consume(data) {
        return new ZacValue(Object.assign({ converter: 'z:1:ZacValue.consume' }, data));
    }
}
export class ZacValueList extends ZacConverter {
    static new(data) {
        return new ZacValue(Object.assign({ converter: 'z:1:ZacValueList' }, data));
    }
    static consume(data) {
        return new ZacValue(Object.assign({ converter: 'z:1:ZacValueList.consume' }, data));
    }
}
