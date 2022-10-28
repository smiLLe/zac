import { FlutterWidget } from "../base";
import { Key } from "../flutter/foundation";

export class UpdateContext extends FlutterWidget {
    static new(data: {
        key?: Key,
        child: FlutterWidget,
    }) {
        return new UpdateContext({ converter: 'z:1:UpdateContext', ...data })
    }
}