class Color extends ZacConverter {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static fromARGB(data: {
        a: DartInt,
        r: DartInt,
        g: DartInt,
        b: DartInt,
    }) {
        return new Color({
            converter: 'f:1:Color.fromARGB',
            ...data
        })
    }

    static fromRGBO(data: {
        r: DartInt,
        g: DartInt,
        b: DartInt,
        opacity: ZacValue<DartDouble>,
    }) {
        return new Color({
            converter: 'f:1:Color.fromRGBO',
            ...data
        })
    }
}

class Offset extends ZacConverter {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static new(data: { dx: ZacValue<DartDouble>, dy: ZacValue<DartDouble> }) {
        return new Offset({
            converter: 'f:1:Offset',
            ...data
        })
    }

    static fromDirection(data: { direction: ZacValue<DartDouble>, distance?: ZacValue<DartDouble> }) {
        return new Offset({
            converter: 'f:1:Offset.fromDirection',
            ...data
        })
    }
}
class BlurStyle extends ZacConverter {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static inner() {
        return new BlurStyle({ converter: 'f:1:BlurSyle.inner' })
    }

    static normal() {
        return new BlurStyle({ converter: 'f:1:BlurSyle.normal' })
    }

    static outer() {
        return new BlurStyle({ converter: 'f:1:BlurSyle.outer' })
    }

    static solid() {
        return new BlurStyle({ converter: 'f:1:BlurSyle.solid' })
    }
}

class Radius extends ZacConverter {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static circular(data: { radius: ZacValue<DartDouble> }) {
        return new Radius({ converter: 'f:1:Radius.circular', ...data })
    }

    static elliptical(data: { x: ZacValue<DartDouble>, y: ZacValue<DartDouble> }) {
        return new Radius({ converter: 'f:1:Radius.elliptical', ...data })
    }
}

class TextDirection extends ZacConverter {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static rtl() {
        return new TextDirection({ converter: 'f:1:TextDirection.rtl' })
    }

    static ltr() {
        return new TextDirection({ converter: 'f:1:TextDirection.ltr' })
    }

}