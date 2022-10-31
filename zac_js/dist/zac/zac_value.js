import { ZacConverter } from "../base";
export class ZacValueRead extends ZacConverter {
    static read(data) {
        return new ZacValue(Object.assign({ converter: 'z:1:ZacValue.read' }, data));
    }
}
export class ZacValue extends ZacValueRead {
    static new(data) {
        return new ZacValue(Object.assign({ converter: 'z:1:ZacValue' }, data));
    }
    static watch(data) {
        return new ZacValue(Object.assign({ converter: 'z:1:ZacValue.watch' }, data));
    }
}
export class ZacValueListRead extends ZacConverter {
    static read(data) {
        return new ZacValueList(Object.assign({ converter: 'z:1:ZacValue.read' }, data));
    }
}
export class ZacValueList extends ZacValueListRead {
    static new(data) {
        return new ZacValueList(Object.assign({ converter: 'z:1:ZacValue' }, data));
    }
    static watch(data) {
        return new ZacValueList(Object.assign({ converter: 'z:1:ZacValue.watch' }, data));
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
