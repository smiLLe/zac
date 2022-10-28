import { FlutterWidget } from "../base";
export class ZacWidgetBuilder extends FlutterWidget {
    static new(data) {
        return new ZacWidgetBuilder(Object.assign({ converter: 'z:1:Widget' }, data));
    }
    static map(data) {
        return new ZacWidgetBuilder(Object.assign({ converter: 'z:1:Widget.map' }, data));
    }
    static isolate(data) {
        return new ZacWidgetBuilder(Object.assign({ converter: 'z:1:Widget.isolate' }, data));
    }
    static isolateString(data) {
        return new ZacWidgetBuilder(Object.assign({ converter: 'z:1:Widget.isolateString' }, data));
    }
}
