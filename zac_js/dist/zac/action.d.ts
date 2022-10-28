import { FlutterWidget, SharedValueFamily, ZacConverter } from "../base";
export declare abstract class ZacAction extends ZacConverter {
}
export declare class ZacActions extends ZacConverter {
    static new(data: {
        actions: Array<ZacAction>;
    }): ZacActions;
}
export declare class ExecuteActions extends ZacConverter {
    static once(data: {
        actions: ZacActions;
        child?: FlutterWidget;
    }): ExecuteActions;
    static listen(data: {
        actions: ZacActions;
        family: SharedValueFamily;
        child?: FlutterWidget;
    }): ExecuteActions;
}
