import { FlutterWidget } from "../base";
import { ZacAction } from "./action";
export class SharedValueActions extends ZacAction {
    static update(data) {
        return new SharedValueActions(Object.assign({ converter: 'z:1:SharedValue.update' }, data));
    }
    static replaceWith(data) {
        return new SharedValueActions(Object.assign({ converter: 'z:1:SharedValue.replaceWith' }, data));
    }
}
export class SharedValueProvider extends FlutterWidget {
    static new(data) {
        return new SharedValueProvider(Object.assign({ converter: 'z:1:SharedValue.provide' }, data));
    }
}
