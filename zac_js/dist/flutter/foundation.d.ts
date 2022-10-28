import { ZacConverter } from "../base";
export declare abstract class Key extends ZacConverter {
}
export declare abstract class LocalKey extends Key {
}
export declare abstract class GlobalKeyNavigatorState extends Key {
}
export declare class ValueKey extends ZacConverter {
    private constructor();
    static new(data: {
        value: string;
    }): ValueKey;
}
