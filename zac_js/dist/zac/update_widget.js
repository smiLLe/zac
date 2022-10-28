import { FlutterWidget } from "../base";
export class UpdateContext extends FlutterWidget {
    static new(data) {
        return new UpdateContext(Object.assign({ converter: 'z:1:UpdateContext' }, data));
    }
}
