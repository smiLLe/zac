import { FlutterWidget, SharedValueFamily, ZacConverter } from "../base"

export abstract class ZacAction extends ZacConverter { }

export class ZacActions extends ZacConverter {
    static new(data: {
        actions: Array<ZacAction>,
    }) {
        return new ZacActions({ converter: 'z:1:Actions', ...data })
    }
}

export class ExecuteActions extends ZacConverter {
    static once(data: {
        actions: ZacActions,
        child?: FlutterWidget
    }) {
        return new ExecuteActions({ converter: 'z:1:ExecuteActions.once', ...data })
    }
    static listen(data: {
        actions: ZacActions,
        family: SharedValueFamily,
        child?: FlutterWidget,
    }) {
        return new ExecuteActions({ converter: 'z:1:ExecuteActions.listen', ...data })
    }
}