import { FlutterWidget, SharedValueFamily, ValidTypes, ZacTransformers, ZacValue } from "../base";
import { Key } from "../flutter/foundation";
import { ZacAction } from "./action";

export class SharedValueActions extends ZacAction {
    static update(data: {
        family: SharedValueFamily,
        transformer: ZacTransformers,
    }) {
        return new SharedValueActions({ converter: 'z:1:SharedValue.update', ...data })
    }
    static replaceWith(data: {
        family: SharedValueFamily,
        value: ZacValue<ValidTypes>,
        transformer?: ZacTransformers,
    }) {
        return new SharedValueActions({ converter: 'z:1:SharedValue.replaceWith', ...data })
    }
}

export class SharedValueProvider extends FlutterWidget {
    static new(data: {
        key?: Key,
        value: ValidTypes,
        transformer?: ZacTransformers,
        family: SharedValueFamily,
        child: FlutterWidget,
        autoCreate?: boolean,
    }) {
        return new SharedValueProvider({ converter: 'z:1:SharedValue.provide', ...data })
    }
}