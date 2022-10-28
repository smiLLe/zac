import { DartDouble, DartInt, FlutterWidget, ZacConverter } from "../base";
import { ZacValue } from "../zac/zac_value";
import { Color, TextDirection } from "./dart_ui";
import { TextStyle, FlutterEdgeInsetsGeometry, FlutterShapeBorder, BorderSide, BorderRadius } from "./painting";
import { BoxConstraints } from "./rendering";
import { FlutterRoute, RouteSettings } from "./widgets/navigator";
declare abstract class FlutterInputBorder extends FlutterShapeBorder {
}
export declare class InputDecoration extends ZacConverter {
    static new(data: {
        icon?: FlutterWidget;
        iconColor?: Color;
        label?: FlutterWidget;
        labelText?: ZacValue<string>;
        labelStyle?: TextStyle;
        floatingLabelStyle?: TextStyle;
        helperText?: ZacValue<string>;
        helperStyle?: TextStyle;
        helperMaxLines?: ZacValue<DartInt>;
        hintText?: ZacValue<string>;
        hintStyle?: TextStyle;
        hintTextDirection?: TextDirection;
        hintMaxLines?: ZacValue<DartInt>;
        errorText?: ZacValue<string>;
        errorStyle?: TextStyle;
        errorMaxLines?: ZacValue<DartInt>;
        isCollapsed?: ZacValue<boolean>;
        isDense?: ZacValue<boolean>;
        contentPadding?: FlutterEdgeInsetsGeometry;
        prefixIcon?: FlutterWidget;
        prefixIconConstraints?: BoxConstraints;
        prefix?: FlutterWidget;
        prefixText?: ZacValue<string>;
        prefixStyle?: TextStyle;
        prefixIconColor?: Color;
        suffixIcon?: FlutterWidget;
        suffix?: FlutterWidget;
        suffixText?: ZacValue<string>;
        suffixStyle?: TextStyle;
        suffixIconColor?: Color;
        suffixIconConstraints?: BoxConstraints;
        counter?: FlutterWidget;
        counterText?: ZacValue<string>;
        counterStyle?: TextStyle;
        filled?: ZacValue<boolean>;
        fillColor?: Color;
        focusColor?: Color;
        hoverColor?: Color;
        errorBorder?: FlutterInputBorder;
        focusedBorder?: FlutterInputBorder;
        focusedErrorBorder?: FlutterInputBorder;
        disabledBorder?: FlutterInputBorder;
        enabledBorder?: FlutterInputBorder;
        border?: FlutterInputBorder;
        enabled?: ZacValue<boolean>;
        semanticCounterText?: ZacValue<string>;
        alignLabelWithHint?: ZacValue<boolean>;
        constraints?: BoxConstraints;
    }): InputDecoration;
}
export declare class OutlineInputBorder extends FlutterInputBorder {
    static new(data: {
        borderSide?: BorderSide;
        borderRadius?: BorderRadius;
        gapPadding?: ZacValue<DartDouble>;
    }): OutlineInputBorder;
}
export declare class UnderlineInputBorder extends FlutterInputBorder {
    static new(data: {
        borderSide?: BorderSide;
        borderRadius?: BorderRadius;
    }): UnderlineInputBorder;
}
export declare class MaterialPageRoute extends FlutterRoute {
    static new(data: {
        child: FlutterWidget;
        settings: RouteSettings;
        maintainState?: ZacValue<boolean>;
        fullscreenDialog?: ZacValue<boolean>;
    }): MaterialPageRoute;
}
export {};
