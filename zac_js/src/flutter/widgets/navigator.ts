import { FlutterWidget, ValidTypes, ZacConverter, ZacValue } from "../../base";
import { ZacAction, ZacActions } from "../../zac/action";
import { Color } from "../dart_ui";
import { Key } from "../foundation";

export abstract class FlutterRoute extends ZacConverter { }
export abstract class GetFlutterNavigatorState extends ZacConverter { }
export abstract class FlutterRouteFactory extends ZacConverter { }

export class NavigatorState extends GetFlutterNavigatorState {
    static closest() {
        return new NavigatorState({ converter: 'f:1:NavigatorState.closest' })
    }
    static root() {
        return new NavigatorState({ converter: 'f:1:NavigatorState.root' })
    }
}
export class Navigator extends FlutterWidget {
    static new(data: {
        key?: Key,
        onGenerateRoute?: FlutterRouteFactory,
        onUnknownRoute?: FlutterRouteFactory,
        initialRoute?: ZacValue<string>,
        requestFocus?: ZacValue<boolean>
    }) {
        return new Navigator({ converter: 'f:1:Navigator', ...data })
    }
}
export class NavigatorActions extends ZacAction {
    static push(data: {
        route: FlutterRoute,
        navigatorState?: GetFlutterNavigatorState
    }) {
        return new NavigatorActions({ converter: 'f:1:Navigator.push', ...data })
    }
    static pushNamed(data: {
        routeName: ZacValue<string>,
        arguments?: ValidTypes,
        navigatorState?: GetFlutterNavigatorState
    }) {
        return new NavigatorActions({ converter: 'f:1:Navigator.pushNamed', ...data })
    }
    static pop(data: {
        actions?: ZacActions,
        navigatorState?: GetFlutterNavigatorState
    }) {
        return new NavigatorActions({ converter: 'f:1:Navigator.pop', ...data })
    }
    static maybePop(data: {
        actions?: ZacActions,
        navigatorState?: GetFlutterNavigatorState
    }) {
        return new NavigatorActions({ converter: 'f:1:Navigator.maybePop', ...data })
    }
    static pushReplacement(data: {
        route: FlutterRoute,
        result?: ZacActions,
        navigatorState?: GetFlutterNavigatorState
    }) {
        return new NavigatorActions({ converter: 'f:1:Navigator.pushReplacement', ...data })
    }
    static pushReplacementNamed(data: {
        routeName: ZacValue<string>,
        arguments?: ValidTypes,
        result?: ZacActions,
        navigatorState?: GetFlutterNavigatorState
    }) {
        return new NavigatorActions({ converter: 'f:1:Navigator.pushReplacementNamed', ...data })
    }
}
export class PageRouteBuilder extends FlutterRoute {
    static mew(data: {
        child: FlutterWidget,
        settings?: RouteSettings,
        opaque?: ZacValue<boolean>,
        barrierDismissible?: ZacValue<boolean>,
        barrierColor?: Color,
        barrierLabel?: ZacValue<string>,
        maintainState?: ZacValue<boolean>,
        fullscreenDialog?: ZacValue<boolean>
    }) {
        return new PageRouteBuilder({ converter: 'f:1:PageRouteBuilder', ...data })
    }
}
export class RouteSettings extends FlutterRoute {
    static mew(data: {
        name?: ZacValue<string>,
        arguments?: ValidTypes,
    }) {
        return new RouteSettings({ converter: 'f:1:RouteSettings', ...data })
    }
}