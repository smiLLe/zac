import { FlutterWidget, ZacConverter } from "../../base";
import { ZacAction } from "../../zac/action";
export class AppBar extends FlutterWidget {
    static new(data) {
        return new AppBar(Object.assign({ converter: 'f:1:AppBar' }, data));
    }
}
export class ButtonBar extends FlutterWidget {
    static new(data) {
        return new ButtonBar(Object.assign({ converter: 'f:1:ButtonBar' }, data));
    }
}
export class ElevatedButton extends FlutterWidget {
    static new(data) {
        return new ElevatedButton(Object.assign({ converter: 'f:1:ElevatedButton' }, data));
    }
    static icon(data) {
        return new ElevatedButton(Object.assign({ converter: 'f:1:ElevatedButton.icon' }, data));
    }
}
export class OutlinedButton extends FlutterWidget {
    static new(data) {
        return new OutlinedButton(Object.assign({ converter: 'f:1:OutlinedButton' }, data));
    }
    static icon(data) {
        return new OutlinedButton(Object.assign({ converter: 'f:1:OutlinedButton.icon' }, data));
    }
}
export class TextButton extends FlutterWidget {
    static new(data) {
        return new TextButton(Object.assign({ converter: 'f:1:TextButton' }, data));
    }
    static icon(data) {
        return new TextButton(Object.assign({ converter: 'f:1:TextButton.icon' }, data));
    }
}
export class Card extends FlutterWidget {
    static new(data) {
        return new Card(Object.assign({ converter: 'f:1:Card' }, data));
    }
}
export class Dialog extends FlutterWidget {
    static new(data) {
        return new Dialog(Object.assign({ converter: 'f:1:Dialog' }, data));
    }
    static alert(data) {
        return new Dialog(Object.assign({ converter: 'f:1:AlertDialog' }, data));
    }
    static simple(data) {
        return new Dialog(Object.assign({ converter: 'f:1:SimpleDialog' }, data));
    }
    static simpleOption(data) {
        return new Dialog(Object.assign({ converter: 'f:1:SimpleDialogOption' }, data));
    }
}
export class DialogActions extends ZacAction {
    static showDialog(data) {
        return new DialogActions(Object.assign({ converter: 'f:1:showDialog' }, data));
    }
}
export class Divider extends FlutterWidget {
    static new(data) {
        return new Divider(Object.assign({ converter: 'f:1:Divider' }, data));
    }
}
export class Drawer extends FlutterWidget {
    static new(data) {
        return new Drawer(Object.assign({ converter: 'f:1:Drawer' }, data));
    }
}
export class ListTile extends FlutterWidget {
    static new(data) {
        return new ListTile(Object.assign({ converter: 'f:1:ListTile' }, data));
    }
}
export class MaterialApp extends FlutterWidget {
    static new(data) {
        return new MaterialApp(Object.assign({ converter: 'f:1:MaterialApp' }, data));
    }
}
export class Material extends FlutterWidget {
    static new(data) {
        return new Material(Object.assign({ converter: 'f:1:Material' }, data));
    }
}
export class ProgressIndicator extends FlutterWidget {
    static linear(data) {
        return new ProgressIndicator(Object.assign({ converter: 'f:1:LinearProgressIndicator' }, data));
    }
    static circular(data) {
        return new ProgressIndicator(Object.assign({ converter: 'f:1:CircularProgressIndicator' }, data));
    }
}
export class RefreshIndicator extends FlutterWidget {
    static new(data) {
        return new RefreshIndicator(Object.assign({ converter: 'f:1:RefreshIndicator' }, data));
    }
}
RefreshIndicator.familyName = 'refresh_indicator';
export class RefreshIndicatorTriggerMode extends FlutterWidget {
    static onEdge() {
        return new RefreshIndicatorTriggerMode({ converter: 'f:1:RefreshIndicatorTriggerMode.onEdge' });
    }
    static anywhere() {
        return new RefreshIndicatorTriggerMode({ converter: 'f:1:RefreshIndicatorTriggerMode.anywhere' });
    }
}
export class Scaffold extends FlutterWidget {
    static new(data) {
        return new Scaffold(Object.assign({ converter: 'f:1:Scaffold' }, data));
    }
}
export class ScaffoldActions extends ZacAction {
    static openDrawer() {
        return new ScaffoldActions({ converter: 'f:1:Scaffold.openDrawer' });
    }
    static openEndDrawer() {
        return new ScaffoldActions({ converter: 'f:1:Scaffold.openEndDrawer' });
    }
    static showBodyScrim(data) {
        return new ScaffoldActions(Object.assign({ converter: 'f:1:Scaffold.showBodyScrim' }, data));
    }
    static showBottomSheet(data) {
        return new ScaffoldActions(Object.assign({ converter: 'f:1:Scaffold.showBottomSheet' }, data));
    }
}
export class ScaffoldMessenger extends ZacAction {
    static showSnackBar(data) {
        return new ScaffoldMessenger(Object.assign({ converter: 'f:1:ScaffoldMessenger.showSnackBar' }, data));
    }
    static hideCurrentSnackBar() {
        return new ScaffoldMessenger({ converter: 'f:1:ScaffoldMessenger.hideCurrentSnackBar' });
    }
    static removeCurrentSnackBar() {
        return new ScaffoldMessenger({ converter: 'f:1:ScaffoldMessenger.removeCurrentSnackBar' });
    }
    static showMaterialBanner(data) {
        return new ScaffoldMessenger(Object.assign({ converter: 'f:1:ScaffoldMessenger.showMaterialBanner' }, data));
    }
    static hideCurrentMaterialBanner() {
        return new ScaffoldMessenger({ converter: 'f:1:ScaffoldMessenger.hideCurrentMaterialBanner' });
    }
    static removeCurrentMaterialBanner() {
        return new ScaffoldMessenger({ converter: 'f:1:ScaffoldMessenger.removeCurrentMaterialBanner' });
    }
}
export class SnackBar extends FlutterWidget {
    static new(data) {
        return new SnackBar(Object.assign({ converter: 'f:1:SnackBar' }, data));
    }
}
export class SnackBarBehavior extends ZacConverter {
    static fixed() {
        return new SnackBarBehavior({ converter: 'f:1:SnackBarBehavior.fixed' });
    }
    static floating() {
        return new SnackBarBehavior({ converter: 'f:1:SnackBarBehavior.floating' });
    }
}
export class SnackBarAction extends FlutterWidget {
    static new(data) {
        return new SnackBarAction(Object.assign({ converter: 'f:1:SnackBarAction' }, data));
    }
}
export class MaterialBanner extends FlutterWidget {
    static new(data) {
        return new MaterialBanner(Object.assign({ converter: 'f:1:MaterialBanner' }, data));
    }
}
export class SelectableText extends FlutterWidget {
    static new(data) {
        return new SelectableText(Object.assign({ converter: 'f:1:SelectableText' }, data));
    }
}
export class TextField extends FlutterWidget {
    static new(data) {
        return new TextField(Object.assign({ converter: 'f:1:TextField' }, data));
    }
}
