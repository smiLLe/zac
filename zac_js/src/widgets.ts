class SizedBox extends FlutterWidget {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static new(data: { child?: FlutterWidget }) {
        return new SizedBox({
            converter: 'f:1:SizedBox',
            ...data
        })
    }

    static shrink() {
        return new SizedBox({
            converter: 'f:1:SizedBox.shrink'
        })
    }
}


class Container extends FlutterWidget {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static new() {
        return new Container({
            converter: 'f:1:Container'
        })
    }
}



