import { ZacConverter } from "../base";
export class ZacAction extends ZacConverter {
}
export class ZacActions extends ZacConverter {
    static new(data) {
        return new ZacActions(Object.assign({ converter: 'z:1:Actions' }, data));
    }
}
export class ExecuteActions extends ZacConverter {
    static once(data) {
        return new ExecuteActions(Object.assign({ converter: 'z:1:ExecuteActions.once' }, data));
    }
    static listen(data) {
        return new ExecuteActions(Object.assign({ converter: 'z:1:ExecuteActions.listen' }, data));
    }
}
