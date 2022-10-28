import { ValidTypes, ZacValueRead } from "../base";
import { ZacAction, ZacActions } from "./action";

export class ZacValueActions extends ZacAction {
    static asActionPayload(data: {
        value: ZacValueRead<ValidTypes>,
        actions: ZacActions
    }) {
        return new ZacValueActions({ converter: 'z:1:ZacValue.asActionPayload', ...data })
    }
}