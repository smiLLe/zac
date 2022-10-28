import { FlutterWidget, SharedValueFamily, ValidTypes, ZacConverter, ZacTransformer } from "../base";
import { Key } from "../flutter/foundation";
import { ZacAction } from "./action";
import { ZacValue } from "./zac_value";

export class ZacTransition extends ZacConverter {
    static new(data: {
        event: string,
        target: string,
    }) {
        return new ZacTransition({ converter: 'z:1:StateMachine:Transition', ...data })
    }
}
export class ZacStateConfig extends ZacConverter {
    static new(data: {
        widget: FlutterWidget,
        on?: Array<ZacTransition>,
    }) {
        return new ZacStateConfig({ converter: 'z:1:StateMachine:StateConfig', ...data })
    }
}
export class ZacStateMachineProvider extends FlutterWidget {
    static new(data: {
        key?: Key,
        family: ZacValue<string>,
        initialState: ZacValue<string>,
        states: { [key: string]: ZacStateConfig },
        child: FlutterWidget,
        initialContext?: ZacValue<ValidTypes>,
    }) {
        return new ZacStateMachineProvider({ converter: 'z:1:StateMachine.provide', ...data })
    }
}
export class ZacStateMachineBuildState extends FlutterWidget {
    static new(data: {
        key?: Key,
        family: ZacValue<string>,
        states: Array<string>,
        unmappedStateWidget?: FlutterWidget,
    }) {
        return new ZacStateMachineBuildState({ converter: 'z:1:StateMachine:BuildState', ...data })
    }
}
export class ZacStateMachineActions extends ZacAction {
    static send(data: {
        family: SharedValueFamily,
        event: ZacValue<string>,
    }) {
        return new ZacStateMachineActions({ converter: 'z:1:StateMachine:Action.send', ...data })
    }
    static trySend(data: {
        family: SharedValueFamily,
        event: ZacValue<string>,
    }) {
        return new ZacStateMachineActions({ converter: 'z:1:StateMachine:Action.trySend', ...data })
    }
}
export class ZacStateMachineTransformer extends ZacTransformer {
    static pickState() {
        return new ZacStateMachineActions({ converter: 'z:1:StateMachine:Transformer.pickState' })
    }
    static pickContext() {
        return new ZacStateMachineActions({ converter: 'z:1:StateMachine:Transformer.pickContext' })
    }
}