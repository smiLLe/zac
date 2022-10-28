import { ZacConverter } from "../base";
import { ZacValue } from "../zac/zac_value";
import { Brightness, Color } from "./dart_ui";
export declare class SystemUiOverlayStyle extends ZacConverter {
    private constructor();
    static new(data: {
        systemNavigationBarColor?: Color;
        systemNavigationBarDividerColor?: Color;
        systemNavigationBarIconBrightness?: Brightness;
        systemNavigationBarContrastEnforced?: ZacValue<boolean>;
        statusBarColor?: Color;
        statusBarBrightness?: Brightness;
        statusBarIconBrightness?: Brightness;
        systemStatusBarContrastEnforced?: ZacValue<boolean>;
    }): SystemUiOverlayStyle;
}
export declare class TextInputType extends ZacConverter {
    private constructor();
    static datetime(): TextInputType;
    static emailAddress(): TextInputType;
    static multiline(): TextInputType;
    static name_(): TextInputType;
    static none(): TextInputType;
    static number(): TextInputType;
    static phone(): TextInputType;
    static streetAddress(): TextInputType;
    static text(): TextInputType;
    static url(): TextInputType;
    static visiblePassword(): TextInputType;
}
export declare class TextInputAction extends ZacConverter {
    private constructor();
    static continueAction(): TextInputAction;
    static done(): TextInputAction;
    static emergencyCall(): TextInputAction;
    static go(): TextInputAction;
    static join(): TextInputAction;
    static newline(): TextInputAction;
    static next(): TextInputAction;
    static none(): TextInputAction;
    static previous(): TextInputAction;
    static route(): TextInputAction;
    static search(): TextInputAction;
    static send(): TextInputAction;
    static unspecified(): TextInputAction;
}
export declare class TextCapitalization extends ZacConverter {
    private constructor();
    static characters(): TextCapitalization;
    static none(): TextCapitalization;
    static sentences(): TextCapitalization;
    static words(): TextCapitalization;
}
export declare class SmartDashesType extends ZacConverter {
    private constructor();
    static disabled(): SmartDashesType;
    static enabled(): SmartDashesType;
}
export declare class SmartQuotesType extends ZacConverter {
    private constructor();
    static disabled(): SmartQuotesType;
    static enabled(): SmartQuotesType;
}
export declare class ScrollViewKeyboardDismissBehavior extends ZacConverter {
    private constructor();
    static manual(): ScrollViewKeyboardDismissBehavior;
    static onDrag(): ScrollViewKeyboardDismissBehavior;
}
