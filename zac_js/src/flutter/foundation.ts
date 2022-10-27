abstract class Key extends ZacConverter { }
abstract class LocalKey extends Key { }
abstract class GlobalKeyNavigatorState extends Key { }

class ValueKey extends ZacConverter {
    private constructor(data: ZacConverterType) {
        super(data);
    }

    static new(data: { value: string }) {
        return new ValueKey({ converter: 'f:1:ValueKey', ...data })
    }
}