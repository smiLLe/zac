import { FlutterWidget, ZacConverter } from "../../base";
import { ZacAction } from "../../zac/action";
export class FlutterRoute extends ZacConverter {
}
export class GetFlutterNavigatorState extends ZacConverter {
}
export class FlutterRouteFactory extends ZacConverter {
}
export class NavigatorState extends GetFlutterNavigatorState {
    static closest() {
        return new NavigatorState({ converter: 'f:1:NavigatorState.closest' });
    }
    static root() {
        return new NavigatorState({ converter: 'f:1:NavigatorState.root' });
    }
}
export class Navigator extends FlutterWidget {
    static new(data) {
        return new Navigator(Object.assign({ converter: 'f:1:Navigator' }, data));
    }
}
export class NavigatorActions extends ZacAction {
    static push(data) {
        return new NavigatorActions(Object.assign({ converter: 'f:1:Navigator.push' }, data));
    }
    static pushNamed(data) {
        return new NavigatorActions(Object.assign({ converter: 'f:1:Navigator.pushNamed' }, data));
    }
    static pop(data) {
        return new NavigatorActions(Object.assign({ converter: 'f:1:Navigator.pop' }, data));
    }
    static maybePop(data) {
        return new NavigatorActions(Object.assign({ converter: 'f:1:Navigator.maybePop' }, data));
    }
    static pushReplacement(data) {
        return new NavigatorActions(Object.assign({ converter: 'f:1:Navigator.pushReplacement' }, data));
    }
    static pushReplacementNamed(data) {
        return new NavigatorActions(Object.assign({ converter: 'f:1:Navigator.pushReplacementNamed' }, data));
    }
}
export class PageRouteBuilder extends FlutterRoute {
    static mew(data) {
        return new PageRouteBuilder(Object.assign({ converter: 'f:1:PageRouteBuilder' }, data));
    }
}
export class RouteSettings extends FlutterRoute {
    static mew(data) {
        return new RouteSettings(Object.assign({ converter: 'f:1:RouteSettings' }, data));
    }
}
