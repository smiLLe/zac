import { FlutterWidget, ZacConverter, ZacTransformer } from "../base";
import { ZacAction } from "./action";
export class ZacTransition extends ZacConverter {
    static new(data) {
        return new ZacTransition(Object.assign({ converter: 'z:1:StateMachine:Transition' }, data));
    }
}
export class ZacStateConfig extends ZacConverter {
    static new(data) {
        return new ZacStateConfig(Object.assign({ converter: 'z:1:StateMachine:StateConfig' }, data));
    }
}
export class ZacStateMachineProvider extends FlutterWidget {
    static new(data) {
        return new ZacStateMachineProvider(Object.assign({ converter: 'z:1:StateMachine.provide' }, data));
    }
}
export class ZacStateMachineBuildState extends FlutterWidget {
    static new(data) {
        return new ZacStateMachineBuildState(Object.assign({ converter: 'z:1:StateMachine:BuildState' }, data));
    }
}
export class ZacStateMachineActions extends ZacAction {
    static send(data) {
        return new ZacStateMachineActions(Object.assign({ converter: 'z:1:StateMachine:Action.send' }, data));
    }
    static trySend(data) {
        return new ZacStateMachineActions(Object.assign({ converter: 'z:1:StateMachine:Action.trySend' }, data));
    }
}
export class ZacStateMachineTransformer extends ZacTransformer {
    static pickState() {
        return new ZacStateMachineActions({ converter: 'z:1:StateMachine:Transformer.pickState' });
    }
    static pickContext() {
        return new ZacStateMachineActions({ converter: 'z:1:StateMachine:Transformer.pickContext' });
    }
}
