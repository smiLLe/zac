import { FlutterWidget, ValidTypes, ZacConverter } from "../../base";
import { ZacAction, ZacActions } from "../../zac/action";
import { ZacValue } from "../../zac/zac_value";
import { Color } from "../dart_ui";
import { Key } from "../foundation";
export declare abstract class FlutterRoute extends ZacConverter {
}
export declare abstract class GetFlutterNavigatorState extends ZacConverter {
}
export declare abstract class FlutterRouteFactory extends ZacConverter {
}
export declare class NavigatorState extends GetFlutterNavigatorState {
    static closest(): NavigatorState;
    static root(): NavigatorState;
}
export declare class Navigator extends FlutterWidget {
    static new(data: {
        key?: Key;
        onGenerateRoute?: FlutterRouteFactory;
        onUnknownRoute?: FlutterRouteFactory;
        initialRoute?: ZacValue<string>;
        requestFocus?: ZacValue<boolean>;
    }): Navigator;
}
export declare class NavigatorActions extends ZacAction {
    static push(data: {
        route: FlutterRoute;
        navigatorState?: GetFlutterNavigatorState;
    }): NavigatorActions;
    static pushNamed(data: {
        routeName: ZacValue<string>;
        arguments?: ValidTypes;
        navigatorState?: GetFlutterNavigatorState;
    }): NavigatorActions;
    static pop(data: {
        actions?: ZacActions;
        navigatorState?: GetFlutterNavigatorState;
    }): NavigatorActions;
    static maybePop(data: {
        actions?: ZacActions;
        navigatorState?: GetFlutterNavigatorState;
    }): NavigatorActions;
    static pushReplacement(data: {
        route: FlutterRoute;
        result?: ZacActions;
        navigatorState?: GetFlutterNavigatorState;
    }): NavigatorActions;
    static pushReplacementNamed(data: {
        routeName: ZacValue<string>;
        arguments?: ValidTypes;
        result?: ZacActions;
        navigatorState?: GetFlutterNavigatorState;
    }): NavigatorActions;
}
export declare class PageRouteBuilder extends FlutterRoute {
    static mew(data: {
        child: FlutterWidget;
        settings?: RouteSettings;
        opaque?: ZacValue<boolean>;
        barrierDismissible?: ZacValue<boolean>;
        barrierColor?: Color;
        barrierLabel?: ZacValue<string>;
        maintainState?: ZacValue<boolean>;
        fullscreenDialog?: ZacValue<boolean>;
    }): PageRouteBuilder;
}
export declare class RouteSettings extends FlutterRoute {
    static mew(data: {
        name?: ZacValue<string>;
        arguments?: ValidTypes;
    }): RouteSettings;
}
