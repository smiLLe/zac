import { FlutterWidget, SharedValueFamily, ValidTypes, ZacConverter, ZacTransformer } from "../base";
import { Key } from "../flutter/foundation";
import { ZacAction } from "./action";
import { ZacValue } from "./zac_value";
export declare class ZacTransition extends ZacConverter {
    static new(data: {
        event: string;
        target: string;
    }): ZacTransition;
}
export declare class ZacStateConfig extends ZacConverter {
    static new(data: {
        widget: FlutterWidget;
        on?: Array<ZacTransition>;
    }): ZacStateConfig;
}
export declare class ZacStateMachineProvider extends FlutterWidget {
    static new(data: {
        key?: Key;
        family: ZacValue<string>;
        initialState: ZacValue<string>;
        states: {
            [key: string]: ZacStateConfig;
        };
        child: FlutterWidget;
        initialContext?: ZacValue<ValidTypes>;
    }): ZacStateMachineProvider;
}
export declare class ZacStateMachineBuildState extends FlutterWidget {
    static new(data: {
        key?: Key;
        family: ZacValue<string>;
        states: Array<string>;
        unmappedStateWidget?: FlutterWidget;
    }): ZacStateMachineBuildState;
}
export declare class ZacStateMachineActions extends ZacAction {
    static send(data: {
        family: SharedValueFamily;
        event: ZacValue<string>;
    }): ZacStateMachineActions;
    static trySend(data: {
        family: SharedValueFamily;
        event: ZacValue<string>;
    }): ZacStateMachineActions;
}
export declare class ZacStateMachineTransformer extends ZacTransformer {
    static pickState(): ZacStateMachineActions;
    static pickContext(): ZacStateMachineActions;
}
