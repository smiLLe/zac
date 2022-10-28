import { ZacConverter } from "../base";
import { FlutterShapeBorder } from "./painting";
import { FlutterRoute } from "./widgets/navigator";
class FlutterInputBorder extends FlutterShapeBorder {
}
export class InputDecoration extends ZacConverter {
    static new(data) {
        return new InputDecoration(Object.assign({ converter: 'f:1:InputDecoration' }, data));
    }
}
export class OutlineInputBorder extends FlutterInputBorder {
    static new(data) {
        return new OutlineInputBorder(Object.assign({ converter: 'f:1:OutlineInputBorder' }, data));
    }
}
export class UnderlineInputBorder extends FlutterInputBorder {
    static new(data) {
        return new UnderlineInputBorder(Object.assign({ converter: 'f:1:UnderlineInputBorder' }, data));
    }
}
export class MaterialPageRoute extends FlutterRoute {
    static new(data) {
        return new MaterialPageRoute(Object.assign({ converter: 'f:1:MaterialPageRoute' }, data));
    }
}
