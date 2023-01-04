export class ZacConvertable {
    constructor(data) {
        this.data = data;
    }
    toJSON() {
        return this.data;
    }
}
export class ZacBuilder extends ZacConvertable {
}
export class ZacListBuilder extends ZacBuilder {
}
export class ZacMapBuilder extends ZacBuilder {
}
export class ZacTransformer extends ZacConvertable {
}
export class ZacAction extends ZacConvertable {
}
export class ZacValue extends ZacBuilder {
    static new(data) {
        return new ZacValue({
            builder: 'z:1:ZacValue',
            value: data,
        });
    }
}
export class ZacValueList extends ZacListBuilder {
    static new(data) {
        return new ZacValueList({
            builder: 'z:1:ZacValueList',
            items: data,
        });
    }
}
export class ZacValueMap extends ZacMapBuilder {
    static new(data) {
        return new ZacValueMap({
            builder: 'z:1:ZacValueMap',
            items: data,
        });
    }
}
export class ConsumeSharedValue extends ZacBuilder {
    static new(data) {
        return new ConsumeSharedValue(Object.assign({ builder: 'z:1:SharedValue.consume' }, data));
    }
}
