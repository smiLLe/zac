import { FlutterWidget } from "../../base";
export class Column extends FlutterWidget {
    static new(data) {
        return new Column(Object.assign({ converter: 'f:1:Column' }, data));
    }
}
export class GridView extends FlutterWidget {
    static new(data) {
        return new GridView(Object.assign({ converter: 'f:1:GridView' }, data));
    }
}
export class IndexedStack extends FlutterWidget {
    static new(data) {
        return new IndexedStack(Object.assign({ converter: 'f:1:IndexedStack' }, data));
    }
}
export class ListView extends FlutterWidget {
    static new(data) {
        return new ListView(Object.assign({ converter: 'f:1:ListView' }, data));
    }
}
export class Row extends FlutterWidget {
    static new(data) {
        return new Row(Object.assign({ converter: 'f:1:Row' }, data));
    }
}
export class Stack extends FlutterWidget {
    static new(data) {
        return new Stack(Object.assign({ converter: 'f:1:Stack' }, data));
    }
}
export class Wrap extends FlutterWidget {
    static new(data) {
        return new Wrap(Object.assign({ converter: 'f:1:Wrap' }, data));
    }
}
