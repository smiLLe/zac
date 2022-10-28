export class ZacConverter {
    constructor(data) {
        this.data = data;
    }
    toJSON() {
        return this.data;
    }
}
export class FlutterWidget extends ZacConverter {
}
export class ZacTransformer extends ZacConverter {
}
export class ZacTransformers extends ZacConverter {
    static new(data) {
        return new ZacTransformers(Object.assign({ converter: 'z:1:ZacValue' }, data));
    }
}
